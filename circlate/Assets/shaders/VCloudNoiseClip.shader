Shader "Custom/VCloudNoiseClip"
{
	Properties
	{
		[MaterialToggle] _isToggled("Use 3D Noise", Float) = 0
		_Speed("Speed", Float) = 0
		_2DNoise ("2D Noise", 2D) = "white" {}
		_3DNoise ("3D Noise", 3D) = "white" {}
		_Shadowcolor("Shadowcolor",Color) = (1,1,1,1)
		_Scale("offset",Float) =  1
		_BackSssStrength("BackSssStrength",Float) = 1
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		//Blend SrcAlpha OneMinusSrcAlpha
		LOD 100


		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.00
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.02
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.04
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.06
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.08
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
			#define OFFSET 0.12
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.14
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.16
			#include "VCloudNoise.cginc"
			ENDCG
		}
				Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#define OFFSET 0.18
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
			#define OFFSET 0.22
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.24
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.26
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.28
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
			#define OFFSET 0.32
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.34
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.36
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.38
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
			#define OFFSET 0.42
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.44
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.46
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.48
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
			#define OFFSET 0.52
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.54
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.56
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.58
			#include "VCloudNoise.cginc"
			ENDCG
		}
				Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#define OFFSET 0.60
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
			#define OFFSET 0.62
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.64
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.66
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.68
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
			#define OFFSET 0.72
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.74
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.76
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.78
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
			#define OFFSET 0.82
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.84
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.86
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.88
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
			#pragma multi_compile_instancing
			#define OFFSET 0.92
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.94
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.96
			#include "VCloudNoise.cginc"
			ENDCG
		}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert_OffsetClip
			#pragma fragment frag_OffsetClip
			#pragma multi_compile_instancing
			#define OFFSET 0.98
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
}
