#pragma target 3.0

#pragma vertex vert
#pragma fragment frag
#pragma multi_compile_instancing

#include "UnityCG.cginc"
#include "Lighting.cginc"
#include "AutoLight.cginc"
struct appdata
{
	float4 vertex : POSITION;
	float4 normal : NORMAL;
};

struct v2f
{
	float3 uv : TEXCOORD0;
	float4 vertex : SV_POSITION;
	SHADOW_COORDS(2)
	float3 worldNormal : TEXCOORD3;
	float4 projPos : TEXCOORD4;
	float3 view : TEXCOORD5;
};

float _isToggled;
float _isView;
float _useView;
float4 _color;
float _Speed;
float _Speed2;
float _Scale;
float _Scale2;
float _BackSssStrength;
float _InvFade;
float _height;
float _fresnelBase;
float _fresnelScale;
float _fresnelIndensity;
float4 _fresnelCol;
float4 _Shadowcolor;
float4 _directlight;
float4 _ViewDirect;
UNITY_DECLARE_DEPTH_TEXTURE(_CameraDepthTexture);
sampler3D _3DNoise;

v2f vert_OffsetAlpha (appdata v)
{
	
	v2f o;
	o.view = WorldSpaceViewDir(v.vertex);
	o.vertex = UnityObjectToClipPos(v.vertex + v.normal * OFFSET * _height );
	o.worldNormal = mul(v.normal,(float3x3)unity_WorldToObject);
	o.uv = v.vertex.xyz*0.5 + 0.5 + normalize(v.normal) * (OFFSET)/10;
	//计算顶点在屏幕空间的位置（没有进行透视除法）
	o.projPos = ComputeScreenPos(o.vertex);
	//计算顶点距离相机的距离
	COMPUTE_EYEDEPTH(o.projPos.z);
	//TRANSFER_SHADOW(o);
	return o;
}

fixed4 frag_OffsetAlpha (v2f i) : SV_Target
{
	//return _color;
	fixed3 worldNormal = normalize(i.worldNormal);
		// 如果是平行光，直接获取光源方向
	fixed3 worldLightDir =_isToggled == 0 ?  normalize(_WorldSpaceLightPos0.xyz)  : normalize(_directlight.xyz);
	float3 nowView = normalize(i.view);
	//如果isView被勾选，则使用自定义视角方向，值继承自当前视角(暂废弃，准备写入C#)
	//_ViewDirect.xyz = _isView == 0 ? _ViewDirect.xyz : nowView;
	float3 viewDir = _isView == 0 ? nowView : normalize(_ViewDirect.xyz);
	fixed4 col1 = tex3D(_3DNoise, float3((i.uv.x + _Time.y *_Speed)/_Scale, (i.uv.y + _Time.y *_Speed)/_Scale, (i.uv.z + _Time.y *_Speed)/_Scale));
	fixed4 col2 = tex3D(_3DNoise, float3((i.uv.x + _Time.y *_Speed2)/_Scale2, (i.uv.y + _Time.y *_Speed2)/_Scale2, (i.uv.z + _Time.y *_Speed2)/_Scale2));
	fixed4 col = col1 *0.8 +col2 *0.2;

	half dither = frac((sin(i.vertex.x*col.g+ i.vertex.y*col.r  ) * 99 + 11)* 9);
	half clipRate = pow(OFFSET ,2);

	clip( col.r +0.1 - clipRate);
	//clip( col.r + 0.1 -(1 - clipRate));
	//float4 FinalColor = float4((1 - (1-FinalAttuation) * (1 -_Shadowcolor.rgb))*_color.rgb ,1);
	float fresnel = pow(1 - saturate(dot(worldNormal, nowView)),(1- clipRate )*_fresnelScale);
	float4 FinalColor =  float4( clipRate *_color.rgb - (1 - clipRate) * _Shadowcolor.rgb ,1-OFFSET);
	///(1 - ) *
	//fixed shadow = saturate(lerp(SHADOW_ATTENUATION(i),1.0,distance(i.vertex.xyz,_WorldSpaceCameraPos.xyz)));
	//return float4(FinalColor,1);
	float _SceneDepth = SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, i.uv);
	float sceneZ = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE_PROJ(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)));
	float partZ = i.projPos.z;
	float fade = saturate(_InvFade * (sceneZ - partZ));

	FinalColor.rgb = lerp(FinalColor.rgb,_Shadowcolor,1-clipRate);
	FinalColor.rgb = lerp(FinalColor.rgb,_fresnelCol,fresnel -clipRate/_fresnelIndensity) * _fresnelCol.a;
	FinalColor.a = 1-clipRate;
	//FinalColor =float4( fresnel,fresnel,fresnel,1) ;
	FinalColor.a  *= fade;

	// col.a = smoothstep(0,1,pow(1-OFFSET,2));//fade;
	//float4 FinalColor = float4(1 - (1-col.r) * (1 -_color.rgb) ,1);
	//return _ViewDirect;
	return FinalColor;//float4(col.r,col.r,col.r,col.a);
}

v2f vert_OffsetClip (appdata v)
{
	v2f o;
	o.vertex = UnityObjectToClipPos(v.vertex + v.normal * OFFSET * _height );
	o.worldNormal = mul(v.normal,(float3x3)unity_WorldToObject);
	o.uv = v.vertex.xyz*0.5 + 0.5 + normalize(v.normal) * (OFFSET)/10;
	//计算顶点在屏幕空间的位置（没有进行透视除法）
	o.projPos = ComputeScreenPos(o.vertex);
	//计算顶点距离相机的距离
	COMPUTE_EYEDEPTH(o.projPos.z);
	//TRANSFER_SHADOW(o);
	return o;
}

fixed4 frag_OffsetClip (v2f i) : SV_Target
{
	//return _color;
	fixed3 worldNormal = normalize(i.worldNormal);
		// 如果是平行光，直接获取光源方向
	fixed3 worldLightDir = normalize(_directlight.xyz);
	float3 nowView = normalize(i.view);
	//如果isView被勾选，则使用自定义视角方向，值继承自当前视角(暂废弃，准备写入C#)
	//_ViewDirect.xyz = _isView == 0 ? _ViewDirect.xyz : nowView;
	float3 viewDir = _isView == 0 ? nowView : normalize(_ViewDirect.xyz);
	fixed4 col1 = tex3D(_3DNoise, float3((i.uv.x + _Time.y *_Speed)/_Scale, (i.uv.y + _Time.y *_Speed)/_Scale, (i.uv.z + _Time.y *_Speed)/_Scale));
	fixed4 col2 = tex3D(_3DNoise, float3((i.uv.x + _Time.y *_Speed2)/_Scale2, (i.uv.y + _Time.y *_Speed2)/_Scale2, (i.uv.z + _Time.y *_Speed2)/_Scale2));
	fixed4 col = col1 *0.8 +col2 *0.2;

	half dither = frac((sin(i.vertex.x*col.g+ i.vertex.y*col.r  ) * 99 + 11)* 9);
	half clipRate = pow(OFFSET ,2);
	clip(col.r + 0.1 -clipRate  );
	//clip( 0.85 - dither );
	half NdotL = max(0,_useView == 0 ? dot(worldNormal,worldLightDir) : (dot(worldNormal,worldLightDir)+1)*0.5);
	half smoothNdotL = saturate(pow(NdotL,2-clipRate));
	half3 backLitDir = worldNormal* _BackSssStrength + worldLightDir;
	half backSSS = saturate(dot(-backLitDir,viewDir)) ;
	backSSS = saturate(pow(backSSS,2 + clipRate*2)*1.5);
	half NdotV = max(0,dot(worldNormal,viewDir));
	half smoothNdotV = saturate(pow(NdotV,2-clipRate));
	half FinalAttuation =_useView == 0 ? saturate(smoothNdotV * 0.5 + saturate (smoothNdotL ) *(1 - NdotV*0.5)) : smoothNdotL ;
	//float4 FinalColor = float4((1 - (1-FinalAttuation) * (1 -_Shadowcolor.rgb))*_color.rgb ,1);
	
	float4 FinalColor =  float4( FinalAttuation *_color.rgb + (1-FinalAttuation) * _Shadowcolor.rgb  ,1);
	///(1 - ) *
	//fixed shadow = saturate(lerp(SHADOW_ATTENUATION(i),1.0,distance(i.vertex.xyz,_WorldSpaceCameraPos.xyz)));
	//return float4(FinalColor,1);
	//FinalColor.rgb = lerp(FinalColor.rgb,_Shadowcolor,1-clipRate);
	float _SceneDepth = SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, i.uv);
	float sceneZ = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE_PROJ(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)));
	float partZ = i.projPos.z;
	float fade = saturate(_InvFade * (sceneZ - partZ));
	FinalColor.a  *= fade;
	// col.a = smoothstep(0,1,pow(1-OFFSET,2));//fade;
	//float4 FinalColor = float4(1 - (1-col.r) * (1 -_color.rgb) ,1);
	//return _ViewDirect;
	return FinalColor;//float4(col.r,col.r,col.r,col.a);
}