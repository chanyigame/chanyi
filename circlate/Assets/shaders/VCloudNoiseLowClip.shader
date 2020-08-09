Shader "Custom/VCloudNoiseLowClip"
{
	Properties
	{
		[MaterialToggle] _isToggled("Use ScenesLight", Float) = 1
		[MaterialToggle] _isView("is View", Float) = 1
		[MaterialToggle] _useView("Use View", Float) = 1
		_Speed("Speed", Float) = 0
		_Speed2("Speed2", Float) = 0
		_3DNoise ("3D Noise", 3D) = "white" {}
		[HDR]_color("color",Color) = (1,1,1,1)
		_Shadowcolor("Shadowcolor",Color) = (1,1,1,1)
		_directlight("directlight",Vector) = (1,1,1,1)
		_ViewDirect("ViewDirect",Vector) = (1,1,1,1)
		_Scale("Scale",Float) =  1
		_Scale2("Scale2",Float) =  1
		_InvFade("InvFade",Range(0,1)) =  1
		_height("height",Range(0,1)) =  1
		_BackSssStrength("BackSssStrength",Float) = 1
	}
	SubShader
	{
		//Tags { "RenderType"="Opaque" }
		Tags {"Queue"="Transparent"}
		Blend SrcAlpha OneMinusSrcAlpha
		LOD 100
		ZWrite On


		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.05
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.10
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.15
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.20
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.25
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.30
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.35
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.40
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.45
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.50
			#include "VCloudNoise.cginc"
			ENDCG
		}
		 Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.55
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.60
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.65
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.70
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.75
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.80
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.85
			#include "VCloudNoise.cginc"
			ENDCG
		}
				Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#define OFFSET 0.875
			#pragma multi_compile_instancing
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.90
			#include "VCloudNoise.cginc"
			ENDCG
		}
				Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#define OFFSET 0.925
			#pragma multi_compile_instancing
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.95
			#include "VCloudNoise.cginc"
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#define OFFSET 0.975
			#pragma multi_compile_instancing
			#include "VCloudNoise.cginc"
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 1.00
			#include "VCloudNoise.cginc"
			ENDCG
		}
	}
	Fallback "diffuse"
}
