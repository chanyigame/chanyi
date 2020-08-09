Shader "Custom/VCloudNoiseAlpha"
{
	Properties
	{
		_Speed("Speed", Float) = 0
		_Speed2("Speed2", Float) = 0
		_3DNoise ("3D Noise", 3D) = "white" {}
		[HDR]_color("color",Color) = (1,1,1,1)
		[HDR]_Shadowcolor("Shadowcolor",Color) = (1,1,1,1)
		_Scale("Scale",Float) =  1
		_Scale2("Scale2",Float) =  1
		_InvFade("InvFade",Range(0,1)) =  1
		_height("height",Range(0,1)) =  1
		_fresnelBase("fresnelBase", Range(0, 1)) = 1
		_fresnelScale("fresnelScale", Range(0, 2)) = 1
		_fresnelIndensity("fresnelIndensity", Range(1, 5)) = 5
		[HDR]_fresnelCol("_fresnelCol", Color) = (1,1,1,1)
	}
	SubShader
	{
		Tags {"Queue"="Transparent"}
		Blend SrcAlpha OneMinusSrcAlpha
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#define OFFSET 0.0
			#pragma multi_compile_instancing
			#include "VCloudNoise.cginc"
			ENDCG
		}


		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.10
			#include "VCloudNoise.cginc"
			ENDCG
		}


		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.20
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.30
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.35
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.40
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.45
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.50
			#include "VCloudNoise.cginc"
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.55
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.60
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.65
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.70
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.725
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.75
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.775
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.80
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.825
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.85
			#include "VCloudNoise.cginc"
			ENDCG
		}
				Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.875
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.9
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.925
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 0.95
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetAlpha
			#pragma fragment frag_OffsetAlpha
			#pragma multi_compile_instancing
			#define OFFSET 1.0
			#include "VCloudNoise.cginc"
			ENDCG
		}

	}
}
