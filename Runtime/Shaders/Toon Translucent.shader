// Upgrade NOTE: upgraded instancing buffer 'Legoman99573ToonTranslucent' to new syntax.

// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Legoman99573/Toon Translucent"
{
	Properties
	{
		[Header(Standard Setup)][Header()][Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Main Texture)]_MainTex("Albedo (RGB) and Transparency (A)", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,1)
		_Cutoff("Alpha Cutoff", Range( 0 , 1)) = 0.5
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Metallic Setup)]_MetallicGlossMap("Metalic (R) and Smoothness (A)", 2D) = "white" {}
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_Glossiness("Smoothness", Range( 0 , 1)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Normal Map Setup)][Normal]_BumpMap("Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Scale", Float) = 1
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Height Map Setup (Only Works for Fallbacks))]_ParallaxMap("Height Map (G)", 2D) = "white" {}
		_Parallax("Height Scale", Range( 0.005 , 0.08)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Occlusion Culling Setup)]_OcclusionMap("Occlusion", 2D) = "white" {}
		_OcclusionStrength("Occlusion Strength", Float) = 1
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Detail Mask Setup)]_DetailMask("Detail Mask (A)", 2D) = "white" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Emission Setup)]_EmissionMap("Emission", 2D) = "white" {}
		[HDR][Gamma]_EmissionColor("Color", Color) = (0,0,0,0)
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Detail Albedo Setup)]_DetailAlbedoMap("Detail Albedo x2", 2D) = "white" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Detail Normal Map Setup)][Normal]_DetailNormalMap("Detail Normal Map", 2D) = "bump" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(AudioLink Setup)][ToggleUI]_EnableAudioLink("Enable AudioLink", Float) = 0
		_EmissionMapAudioLink0("Emission Map", 2D) = "gray" {}
		_DetailNormalMapScale("Detail Normal Scale", Float) = 1
		[HDR]_EmissionColorAudioLink0("Emission Color", Color) = (0,0,0,1)
		_EmissionScale("Emission Scale", Float) = 1
		[Header(Audio Section)][IntRange][Enum(Bass,0,Low Mid,1,High Mid,2,Treble,3)]_Band("Band", Range( 0 , 3)) = 0
		_Delay("Delay", Range( 0 , 1)) = 0
		[Header(Pulse Across UVs)]_Pulse("Pulse", Range( 0 , 1)) = 0
		_AudioHueShift("Audio Hue Shift", Float) = 0
		_PulseRotation("Pulse Rotation", Range( 0 , 360)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Toon Map Setup)][Header(Will disable Metallic and Ambient Occlusion Setups)][ToggleUI]_EnableToon("Enable  Toon", Float) = 1
		[SingleLineTexture]_ToonRamp("Toon Ramp", 2D) = "white" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(MatCap Setup)][ToggleUI]_EnableMatCap("Enable MatCap", Float) = 0
		[Header()][Tooltip(Multiplied with the texture for the albedo channel)]_MatCapMask("MatCap Mask", 2D) = "white" {}
		[HDR]_MatCap("MatCap 1", 2D) = "white" {}
		[HDR][Gamma]_MatCapColor("MatCap 1 Color", Color) = (1,1,1,1)
		_AddMatCap("Add MatCap", Range( 0 , 1)) = 1
		[Header(MatCap 2 Setup)][ToggleUI]_EnableMatCap2("Enable MatCap 2", Float) = 0
		_MatCapAdditive("MatCap 2", 2D) = "white" {}
		[HDR][Gamma]_MatCapColorAdditive("MatCap 2 Color", Color) = (1,1,1,1)
		_AddMatCapAdditive("Add MatCap 2", Range( 0 , 1)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Glitter Setup)][ToggleUI]_EnableGlitter("Enable Glitter", Float) = 0
		_Glitter("Glitter", 2D) = "white" {}
		_GlitterNoise("Glitter Noise", 2D) = "white" {}
		_NoiseSpeed("Noise Speed", Vector) = (1,1,0,0)
		[HDR][Gamma]_GlitterColor("Glitter Color", Color) = (0,0,0,0)
		_GlitterMap("Glitter Map", 2D) = "white" {}
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Rim Lighting Setup)][ToggleUI]_RimOverride("Enable Rim", Range( 0 , 1)) = 0
		_RimTint("Rim Tint", Color) = (1,1,1,1)
		_RimOffset("Rim Offset", Float) = 1
		_RimPower("Rim Power", Range( 0 , 1)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Specular Map Setup)][ToggleUI]_EnableSpecular("Enable Specular", Float) = 0
		_SpecGlossMap("Specular Map (RGB)", 2D) = "white" {}
		_SpecColorToon("Specular Color", Color) = (0.2,0.2,0.2,1)
		_GlossyReflections("Specular Gloss", Range( 0 , 1)) = 0
		_SpecularHighlights("Spec Intensity", Range( 0 , 1)) = 0.56
		_SpecularLightMix("Specular Light Mix", Range( 0 , 1)) = 0
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Glint Setup)][ToggleUI]_EnableGlint("Enable Glint", Float) = 0
		_GlintMap("Glint Map", 2D) = "white" {}
		[HDR][Gamma]_GlintColor("Color", Color) = (0,0,0,0)
		[IntRange][Enum(False,0,True,1)]_InvertDirection("Invert Direction", Range( 0 , 1)) = 1
		_TailHeadFalloff("Tail Head Falloff", Range( 0 , 1)) = 0.5
		_SizeSpeedInterval("Size Speed Interval", Vector) = (1,1,1,0)
		_GlintFresnel("Fresnel Bias, Scale, Power", Vector) = (0,0,0,0)
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Hue Shift)][Toggle]_EnableHueShift("Enable Hue Shift", Range( 0 , 1)) = 0
		_HueSaturationMap("Hue Saturation Map", 2D) = "white" {}
		_Saturation("Saturation", Range( 0 , 1)) = 0
		_Value("Value", Float) = 1
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Render Options)][IntRange][Enum(Off,0,Front,1,Back,2)]_CullingMode("Cull Mode", Range( 0 , 2)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullingMode]
		Blend SrcAlpha OneMinusSrcAlpha , SrcAlpha OneMinusSrcAlpha
		BlendOp Add , Add
		AlphaToMask On
		CGPROGRAM
		#include "UnityPBSLighting.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#pragma target 5.0
		#pragma multi_compile_instancing
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
		#endif//ASE Sampling Macros

		#pragma surface surf StandardCustomLighting keepalpha addshadow fullforwardshadows dithercrossfade vertex:vertexDataFunc 

		struct appdata_full_custom
		{
			float4 vertex : POSITION;
			float4 tangent : TANGENT;
			float3 normal : NORMAL;
			float4 texcoord : TEXCOORD0;
			float4 texcoord1 : TEXCOORD1;
			float4 texcoord2 : TEXCOORD2;
			float4 texcoord3 : TEXCOORD3;
			float4 color : COLOR;
			UNITY_VERTEX_INPUT_INSTANCE_ID
			float4 ase_texcoord4 : TEXCOORD4;
			float4 ase_texcoord6 : TEXCOORD6;
		};
		struct Input
		{
			float2 uv_texcoord;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
			float2 ase_texcoord5;
			float3 worldRefl;
			float2 uv3_texcoord3;
			float2 ase_texcoord7;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		UNITY_DECLARE_TEX2D_NOSAMPLER(_ParallaxMap);
		SamplerState sampler_ParallaxMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_Linear_Repeat;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailAlbedoMap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_HueSaturationMap);
		SamplerState sampler_HueSaturationMap;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ToonRamp);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailNormalMap);
		SamplerState sampler_ToonRamp;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailMask);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissionMapAudioLink0);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MetallicGlossMap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_OcclusionMap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MatCap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MatCapMask);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MatCapAdditive);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_GlitterMap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_GlitterNoise);
		SamplerState sampler_GlitterNoise;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_Glitter);
		SamplerState sampler_Glitter;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_SpecGlossMap);
		uniform float4 _GlintColor;
		uniform float3 _SizeSpeedInterval;
		uniform float _TailHeadFalloff;
		uniform float3 _GlintFresnel;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_GlintMap);

		UNITY_INSTANCING_BUFFER_START(Legoman99573ToonTranslucent)
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMapAudioLink0_ST)
#define _EmissionMapAudioLink0_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapMask_ST)
#define _MatCapMask_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColor)
#define _MatCapColor_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _OcclusionMap_ST)
#define _OcclusionMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterMap_ST)
#define _GlitterMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlintMap_ST)
#define _GlintMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MetallicGlossMap_ST)
#define _MetallicGlossMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _Glitter_ST)
#define _Glitter_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterColor)
#define _GlitterColor_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _RimTint)
#define _RimTint_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColorAudioLink0)
#define _EmissionColorAudioLink0_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColor)
#define _EmissionColor_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMap_ST)
#define _EmissionMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailMask_ST)
#define _DetailMask_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColorAdditive)
#define _MatCapColorAdditive_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecColorToon)
#define _SpecColorToon_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailNormalMap_ST)
#define _DetailNormalMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecGlossMap_ST)
#define _SpecGlossMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _BumpMap_ST)
#define _BumpMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MainTex_ST)
#define _MainTex_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
#define _Color_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailAlbedoMap_ST)
#define _DetailAlbedoMap_ST_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float2, _NoiseSpeed)
#define _NoiseSpeed_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _InvertDirection)
#define _InvertDirection_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableSpecular)
#define _EnableSpecular_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap)
#define _EnableMatCap_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularHighlights)
#define _SpecularHighlights_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _GlossyReflections)
#define _GlossyReflections_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOverride)
#define _RimOverride_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlitter)
#define _EnableGlitter_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOffset)
#define _RimOffset_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _RimPower)
#define _RimPower_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap2)
#define _EnableMatCap2_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularLightMix)
#define _SpecularLightMix_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Cutoff)
#define _Cutoff_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Metallic)
#define _Metallic_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCap)
#define _AddMatCap_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Parallax)
#define _Parallax_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _CullingMode)
#define _CullingMode_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Saturation)
#define _Saturation_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Value)
#define _Value_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableHueShift)
#define _EnableHueShift_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _BumpScale)
#define _BumpScale_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _DetailNormalMapScale)
#define _DetailNormalMapScale_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableToon)
#define _EnableToon_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Band)
#define _Band_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _PulseRotation)
#define _PulseRotation_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Pulse)
#define _Pulse_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Delay)
#define _Delay_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _AudioHueShift)
#define _AudioHueShift_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EmissionScale)
#define _EmissionScale_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableAudioLink)
#define _EnableAudioLink_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _Glossiness)
#define _Glossiness_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _OcclusionStrength)
#define _OcclusionStrength_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCapAdditive)
#define _AddMatCapAdditive_arr Legoman99573ToonTranslucent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlint)
#define _EnableGlint_arr Legoman99573ToonTranslucent
		UNITY_INSTANCING_BUFFER_END(Legoman99573ToonTranslucent)


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		struct Gradient
		{
			int type;
			int colorsLength;
			int alphasLength;
			float4 colors[8];
			float2 alphas[8];
		};


		Gradient NewGradient(int type, int colorsLength, int alphasLength, 
		float4 colors0, float4 colors1, float4 colors2, float4 colors3, float4 colors4, float4 colors5, float4 colors6, float4 colors7,
		float2 alphas0, float2 alphas1, float2 alphas2, float2 alphas3, float2 alphas4, float2 alphas5, float2 alphas6, float2 alphas7)
		{
			Gradient g;
			g.type = type;
			g.colorsLength = colorsLength;
			g.alphasLength = alphasLength;
			g.colors[ 0 ] = colors0;
			g.colors[ 1 ] = colors1;
			g.colors[ 2 ] = colors2;
			g.colors[ 3 ] = colors3;
			g.colors[ 4 ] = colors4;
			g.colors[ 5 ] = colors5;
			g.colors[ 6 ] = colors6;
			g.colors[ 7 ] = colors7;
			g.alphas[ 0 ] = alphas0;
			g.alphas[ 1 ] = alphas1;
			g.alphas[ 2 ] = alphas2;
			g.alphas[ 3 ] = alphas3;
			g.alphas[ 4 ] = alphas4;
			g.alphas[ 5 ] = alphas5;
			g.alphas[ 6 ] = alphas6;
			g.alphas[ 7 ] = alphas7;
			return g;
		}


		float3 RGBToHSV(float3 c)
		{
			float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
			float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
			float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
			float d = q.x - min( q.w, q.y );
			float e = 1.0e-10;
			return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
		}

		inline float AudioLinkLerp3_g148( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		float IfAudioLinkv2Exists1_g152(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		void vertexDataFunc( inout appdata_full_custom v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			o.ase_texcoord5 = v.ase_texcoord4;
			o.ase_texcoord7 = v.ase_texcoord6;
		}

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 tex2DNode1279 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 _DetailMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailMask_ST_arr, _DetailMask_ST);
			float2 uv_DetailMask = i.uv_texcoord * _DetailMask_ST_Instance.xy + _DetailMask_ST_Instance.zw;
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 tex2DNode1278 = SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap );
			float Opacity1287 = ( tex2DNode1279.a * _Color_Instance.a * SAMPLE_TEXTURE2D( _DetailMask, sampler_Linear_Repeat, uv_DetailMask ).a * tex2DNode1278.a );
			SurfaceOutputStandard s1273 = (SurfaceOutputStandard ) 0;
			Gradient gradient1509 = NewGradient( 0, 8, 2, float4( 1, 0, 0, 0 ), float4( 1, 0.3372549, 0, 0.1250019 ), float4( 1, 0.8745099, 0, 0.2500038 ), float4( 0.01568628, 1, 0, 0.3750057 ), float4( 0, 1, 0.9843138, 0.5000076 ), float4( 0, 0.02352941, 1, 0.6249943 ), float4( 0.882353, 0, 1, 0.7499962 ), float4( 0.882353, 0, 0, 1 ), float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float _Saturation_Instance = UNITY_ACCESS_INSTANCED_PROP(_Saturation_arr, _Saturation);
			float _Value_Instance = UNITY_ACCESS_INSTANCED_PROP(_Value_arr, _Value);
			float3 hsvTorgb1504 = HSVToRGB( float3(0,_Saturation_Instance,_Value_Instance) );
			float4 temp_output_1508_0 = ( float4( hsvTorgb1504 , 0.0 ) * SAMPLE_TEXTURE2D( _HueSaturationMap, sampler_HueSaturationMap, 0 ) );
			float4 temp_cast_13 = (1.0).xxxx;
			float _EnableHueShift_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableHueShift_arr, _EnableHueShift);
			float4 lerpResult7_g165 = lerp( temp_cast_13 , temp_output_1508_0 , _EnableHueShift_Instance);
			float4 temp_output_1282_0 = ( tex2DNode1279 * tex2DNode1278 * temp_output_1508_0 * lerpResult7_g165 );
			float4 albedo1280 = ( temp_output_1282_0 * _Color_Instance );
			s1273.Albedo = albedo1280.rgb;
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1270 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			s1273.Normal = normalize( WorldNormalVector( i , NormalMap1270 ) );
			float4 _EmissionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMap_ST_arr, _EmissionMap_ST);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST_Instance.xy + _EmissionMap_ST_Instance.zw;
			float4 _EmissionColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColor_arr, _EmissionColor);
			float3 temp_cast_17 = (0.0).xxx;
			float4 _EmissionMapAudioLink0_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMapAudioLink0_ST_arr, _EmissionMapAudioLink0_ST);
			float2 uv4_EmissionMapAudioLink0 = i.ase_texcoord5.xy * _EmissionMapAudioLink0_ST_Instance.xy + _EmissionMapAudioLink0_ST_Instance.zw;
			float4 _EmissionColorAudioLink0_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColorAudioLink0_arr, _EmissionColorAudioLink0);
			float _Band_Instance = UNITY_ACCESS_INSTANCED_PROP(_Band_arr, _Band);
			int Band3_g148 = (int)_Band_Instance;
			float2 break6_g150 = i.uv_texcoord;
			float temp_output_5_0_g150 = ( break6_g150.x - 0.5 );
			float _PulseRotation_Instance = UNITY_ACCESS_INSTANCED_PROP(_PulseRotation_arr, _PulseRotation);
			float temp_output_2_0_g150 = radians( _PulseRotation_Instance );
			float temp_output_3_0_g150 = cos( temp_output_2_0_g150 );
			float temp_output_8_0_g150 = sin( temp_output_2_0_g150 );
			float temp_output_20_0_g150 = ( 1.0 / ( abs( temp_output_3_0_g150 ) + abs( temp_output_8_0_g150 ) ) );
			float temp_output_7_0_g150 = ( break6_g150.y - 0.5 );
			float2 appendResult16_g150 = (float2(( ( ( temp_output_5_0_g150 * temp_output_3_0_g150 * temp_output_20_0_g150 ) + ( temp_output_7_0_g150 * temp_output_8_0_g150 * temp_output_20_0_g150 ) ) + 0.5 ) , ( ( ( temp_output_7_0_g150 * temp_output_3_0_g150 * temp_output_20_0_g150 ) - ( temp_output_5_0_g150 * temp_output_8_0_g150 * temp_output_20_0_g150 ) ) + 0.5 )));
			float _Pulse_Instance = UNITY_ACCESS_INSTANCED_PROP(_Pulse_arr, _Pulse);
			float _Delay_Instance = UNITY_ACCESS_INSTANCED_PROP(_Delay_arr, _Delay);
			float Delay3_g148 = ( ( (_Delay_Instance + (( appendResult16_g150.x * _Pulse_Instance ) - 0.0) * (1.0 - _Delay_Instance) / (1.0 - 0.0)) % 1.0 ) * 128.0 );
			float localAudioLinkLerp3_g148 = AudioLinkLerp3_g148( Band3_g148 , Delay3_g148 );
			float temp_output_1230_0 = localAudioLinkLerp3_g148;
			float3 hsvTorgb1228 = RGBToHSV( ( SAMPLE_TEXTURE2D( _EmissionMapAudioLink0, sampler_Linear_Repeat, uv4_EmissionMapAudioLink0 ) * _EmissionColorAudioLink0_Instance * temp_output_1230_0 ).rgb );
			float _AudioHueShift_Instance = UNITY_ACCESS_INSTANCED_PROP(_AudioHueShift_arr, _AudioHueShift);
			float hueShift1248 = _AudioHueShift_Instance;
			float amplitude1224 = temp_output_1230_0;
			float3 hsvTorgb1225 = HSVToRGB( float3(( hsvTorgb1228.x + ( hueShift1248 * amplitude1224 ) ),hsvTorgb1228.y,hsvTorgb1228.z) );
			float _EmissionScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionScale_arr, _EmissionScale);
			float localIfAudioLinkv2Exists1_g152 = IfAudioLinkv2Exists1_g152();
			float _EnableAudioLink_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableAudioLink_arr, _EnableAudioLink);
			float3 lerpResult7_g154 = lerp( temp_cast_17 , ( ( hsvTorgb1225 * _EmissionScale_Instance ) * localIfAudioLinkv2Exists1_g152 ) , _EnableAudioLink_Instance);
			float3 AudioLink1220 = lerpResult7_g154;
			float4 Emission1275 = ( ( SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) * _EmissionColor_Instance ) + float4( AudioLink1220 , 0.0 ) );
			s1273.Emission = Emission1275.rgb;
			float4 _MetallicGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MetallicGlossMap_ST_arr, _MetallicGlossMap_ST);
			float2 uv_MetallicGlossMap = i.uv_texcoord * _MetallicGlossMap_ST_Instance.xy + _MetallicGlossMap_ST_Instance.zw;
			float4 tex2DNode1255 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_Linear_Repeat, uv_MetallicGlossMap );
			float _Metallic_Instance = UNITY_ACCESS_INSTANCED_PROP(_Metallic_arr, _Metallic);
			float Metallic1372 = ( tex2DNode1255.r * _Metallic_Instance );
			s1273.Metallic = Metallic1372;
			float _Glossiness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glossiness_arr, _Glossiness);
			float Smoothness1376 = ( tex2DNode1255.a * _Glossiness_Instance );
			s1273.Smoothness = Smoothness1376;
			float4 _OcclusionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionMap_ST_arr, _OcclusionMap_ST);
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST_Instance.xy + _OcclusionMap_ST_Instance.zw;
			float _OcclusionStrength_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionStrength_arr, _OcclusionStrength);
			float AO1251 = ( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_Linear_Repeat, uv_OcclusionMap ).g * _OcclusionStrength_Instance );
			s1273.Occlusion = AO1251;

			data.light = gi.light;

			UnityGI gi1273 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g1273 = UnityGlossyEnvironmentSetup( s1273.Smoothness, data.worldViewDir, s1273.Normal, float3(0,0,0));
			gi1273 = UnityGlobalIllumination( data, s1273.Occlusion, s1273.Normal, g1273 );
			#endif

			float3 surfResult1273 = LightingStandard ( s1273, viewDir, gi1273 ).rgb;
			surfResult1273 += s1273.Emission;

			#ifdef UNITY_PASS_FORWARDADD//1273
			surfResult1273 -= s1273.Emission;
			#endif//1273
			float3 StandardSetup1215 = surfResult1273;
			float3 temp_cast_22 = (0.0).xxx;
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float3 lerpResult7_g163 = lerp( StandardSetup1215 , temp_cast_22 , _EnableToon_Instance);
			float4 temp_cast_24 = (0.0).xxxx;
			float4 temp_cast_25 = (0.0).xxxx;
			float3 lerpResult7_g158 = lerp( ( ( mul( float4( (WorldNormalVector( i , NormalMap1270 )) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , ( ( mul( float4( normalize( WorldReflectionVector( i , NormalMap1270 ) ) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , 0.5);
			float3 temp_output_1453_0 = lerpResult7_g158;
			float4 _MatCapColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColor_arr, _MatCapColor);
			float4 _MatCapMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapMask_ST_arr, _MatCapMask_ST);
			float2 uv2_MatCapMask = i.uv3_texcoord3 * _MatCapMask_ST_Instance.xy + _MatCapMask_ST_Instance.zw;
			float4 tex2DNode1420 = SAMPLE_TEXTURE2D( _MatCapMask, sampler_Linear_Repeat, uv2_MatCapMask );
			float _AddMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCap_arr, _AddMatCap);
			float4 temp_cast_31 = (0.0).xxxx;
			float4 _MatCapColorAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColorAdditive_arr, _MatCapColorAdditive);
			float _AddMatCapAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCapAdditive_arr, _AddMatCapAdditive);
			float _EnableMatCap2_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap2_arr, _EnableMatCap2);
			float4 lerpResult7_g157 = lerp( temp_cast_31 , ( ( SAMPLE_TEXTURE2D( _MatCapAdditive, sampler_Linear_Repeat, temp_output_1453_0.xy ) * _MatCapColorAdditive_Instance * ( 1.0 - tex2DNode1420 ) ) * _AddMatCapAdditive_Instance ) , _EnableMatCap2_Instance);
			float _EnableMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap_arr, _EnableMatCap);
			float4 lerpResult7_g155 = lerp( temp_cast_25 , ( ( ( SAMPLE_TEXTURE2D( _MatCap, sampler_Linear_Repeat, temp_output_1453_0.xy ) * _MatCapColor_Instance * tex2DNode1420 ) * _AddMatCap_Instance ) + lerpResult7_g157 ) , _EnableMatCap_Instance);
			float4 temp_output_1428_0 = lerpResult7_g155;
			float4 MatCap1440 = temp_output_1428_0;
			float4 StandardShading1438 = ( ( tex2DNode1279 * _Color_Instance ) + MatCap1440 );
			float4 temp_cast_33 = (0.0).xxxx;
			float4 _GlitterMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterMap_ST_arr, _GlitterMap_ST);
			float2 uv6_GlitterMap = i.ase_texcoord7.xy * _GlitterMap_ST_Instance.xy + _GlitterMap_ST_Instance.zw;
			float2 _NoiseSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_NoiseSpeed_arr, _NoiseSpeed);
			float2 panner1403 = ( _Time.y * _NoiseSpeed_Instance + i.uv_texcoord);
			float3 hsvTorgb3_g151 = HSVToRGB( float3(SAMPLE_TEXTURE2D( _GlitterNoise, sampler_GlitterNoise, panner1403 ).r,1.0,1.0) );
			float normalizeResult1391 = normalize( ( hsvTorgb3_g151.z - 0.9999 ) );
			float3 temp_cast_34 = (normalizeResult1391).xxx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 normalizeResult1406 = normalize( ase_worldViewDir );
			float dotResult1388 = dot( temp_cast_34 , ( 1.0 - normalizeResult1406 ) );
			float3 temp_cast_35 = (saturate( dotResult1388 )).xxx;
			float grayscale1392 = Luminance(temp_cast_35);
			float4 _Glitter_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glitter_ST_arr, _Glitter_ST);
			float2 uv_Glitter = i.uv_texcoord * _Glitter_ST_Instance.xy + _Glitter_ST_Instance.zw;
			float4 _GlitterColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterColor_arr, _GlitterColor);
			float _EnableGlitter_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlitter_arr, _EnableGlitter);
			float4 lerpResult7_g153 = lerp( temp_cast_33 , ( ( SAMPLE_TEXTURE2D( _GlitterMap, sampler_Linear_Repeat, uv6_GlitterMap ) * grayscale1392 ) * ( SAMPLE_TEXTURE2D( _Glitter, sampler_Glitter, uv_Glitter ) * _GlitterColor_Instance ) ) , _EnableGlitter_Instance);
			float4 glitterRender1416 = lerpResult7_g153;
			float _RimOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOffset_arr, _RimOffset);
			float dotResult1244 = dot( normalize( (WorldNormalVector( i , NormalMap1270 )) ) , ase_worldViewDir );
			float normalviewdir1245 = dotResult1244;
			float saferPower1351 = abs( ( 1.0 - saturate( ( _RimOffset_Instance + normalviewdir1245 ) ) ) );
			float _RimPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimPower_arr, _RimPower);
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1240 = dot( normalize( (WorldNormalVector( i , NormalMap1270 )) ) , ase_worldlightDir );
			float NormalLightDir1241 = dotResult1240;
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 _RimTint_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimTint_arr, _RimTint);
			float _RimOverride_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOverride_arr, _RimOverride);
			float4 Rim_Lighting1340 = ( ( saturate( ( pow( saferPower1351 , _RimPower_Instance ) * ( NormalLightDir1241 * ase_lightAtten ) ) ) * ( ase_lightColor * _RimTint_Instance ) ) * _RimOverride_Instance );
			float4 temp_cast_36 = (0.0).xxxx;
			float dotResult1295 = dot( ( ase_worldViewDir + _WorldSpaceLightPos0.xyz ) , (WorldNormalVector( i , NormalMap1270 )) );
			float _GlossyReflections_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlossyReflections_arr, _GlossyReflections);
			float smoothstepResult1408 = smoothstep( 1.1 , 1.12 , pow( dotResult1295 , ( ( 1.0 - _GlossyReflections_Instance ) * 20.0 ) ));
			float4 _SpecGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecGlossMap_ST_arr, _SpecGlossMap_ST);
			float2 uv_SpecGlossMap = i.uv_texcoord * _SpecGlossMap_ST_Instance.xy + _SpecGlossMap_ST_Instance.zw;
			float4 _SpecColorToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecColorToon_arr, _SpecColorToon);
			float _SpecularLightMix_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularLightMix_arr, _SpecularLightMix);
			float4 lerpResult1304 = lerp( _SpecColorToon_Instance , ase_lightColor , _SpecularLightMix_Instance);
			float _SpecularHighlights_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularHighlights_arr, _SpecularHighlights);
			float _EnableSpecular_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableSpecular_arr, _EnableSpecular);
			float4 lerpResult7_g159 = lerp( temp_cast_36 , ( ase_lightAtten * ( ( smoothstepResult1408 * ( SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_Linear_Repeat, uv_SpecGlossMap ) * lerpResult1304 ) ) * _SpecularHighlights_Instance ) ) , _EnableSpecular_Instance);
			float4 Specular1421 = lerpResult7_g159;
			float4 temp_cast_37 = (0.0).xxxx;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float _InvertDirection_Instance = UNITY_ACCESS_INSTANCED_PROP(_InvertDirection_arr, _InvertDirection);
			float lerpResult1327 = lerp( ase_vertex3Pos.y , -ase_vertex3Pos.y , _InvertDirection_Instance);
			float temp_output_1333_0 = ( _SizeSpeedInterval.x * _SizeSpeedInterval.y );
			float mulTime1335 = _Time.y * temp_output_1333_0;
			float temp_output_1315_0 = ( fmod( ( ( lerpResult1327 * _SizeSpeedInterval.x ) + mulTime1335 ) , ( ( temp_output_1333_0 + 1.0 ) * _SizeSpeedInterval.z ) ) + ( _TailHeadFalloff - 1.0 ) );
			float saferPower1322 = abs( ( 1.0 - ( saturate( ( temp_output_1315_0 * ( -1.0 / ( 1.0 - _TailHeadFalloff ) ) ) ) + saturate( ( temp_output_1315_0 * ( 1.0 / _TailHeadFalloff ) ) ) ) ) );
			float fresnelNdotV1313 = dot( (WorldNormalVector( i , NormalMap1270 )), ase_worldViewDir );
			float fresnelNode1313 = ( _GlintFresnel.x + _GlintFresnel.y * pow( max( 1.0 - fresnelNdotV1313 , 0.0001 ), _GlintFresnel.z ) );
			float4 _GlintMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlintMap_ST_arr, _GlintMap_ST);
			float2 uv_GlintMap = i.uv_texcoord * _GlintMap_ST_Instance.xy + _GlintMap_ST_Instance.zw;
			float _EnableGlint_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlint_arr, _EnableGlint);
			float4 lerpResult7_g156 = lerp( temp_cast_37 , ( ( _GlintColor * pow( saferPower1322 , 5.0 ) * fresnelNode1313 * 2.0 ) * SAMPLE_TEXTURE2D( _GlintMap, sampler_Linear_Repeat, uv_GlintMap ) ) , _EnableGlint_Instance);
			float4 Glint1431 = lerpResult7_g156;
			float4 ToonShading1274 = ( ( StandardShading1438 + Emission1275 ) + glitterRender1416 + Rim_Lighting1340 + Specular1421 + Glint1431 );
			float4 lerpResult7_g161 = lerp( temp_cast_24 , ToonShading1274 , _EnableToon_Instance);
			float4 color1501 = IsGammaSpace() ? float4(0.4622642,0.4622642,0.4622642,1) : float4(0.1807607,0.1807607,0.1807607,1);
			c.rgb = ( float4( lerpResult7_g163 , 0.0 ) + ( lerpResult7_g161 * color1501 ) ).rgb;
			c.a = Opacity1287;
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
			float _Cutoff_Instance = UNITY_ACCESS_INSTANCED_PROP(_Cutoff_arr, _Cutoff);
			float _Parallax_Instance = UNITY_ACCESS_INSTANCED_PROP(_Parallax_arr, _Parallax);
			float _CullingMode_Instance = UNITY_ACCESS_INSTANCED_PROP(_CullingMode_arr, _CullingMode);
			float4 temp_cast_0 = (0.0).xxxx;
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 tex2DNode1279 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 tex2DNode1278 = SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap );
			Gradient gradient1509 = NewGradient( 0, 8, 2, float4( 1, 0, 0, 0 ), float4( 1, 0.3372549, 0, 0.1250019 ), float4( 1, 0.8745099, 0, 0.2500038 ), float4( 0.01568628, 1, 0, 0.3750057 ), float4( 0, 1, 0.9843138, 0.5000076 ), float4( 0, 0.02352941, 1, 0.6249943 ), float4( 0.882353, 0, 1, 0.7499962 ), float4( 0.882353, 0, 0, 1 ), float2( 1, 0 ), float2( 1, 1 ), 0, 0, 0, 0, 0, 0 );
			float _Saturation_Instance = UNITY_ACCESS_INSTANCED_PROP(_Saturation_arr, _Saturation);
			float _Value_Instance = UNITY_ACCESS_INSTANCED_PROP(_Value_arr, _Value);
			float3 hsvTorgb1504 = HSVToRGB( float3(0,_Saturation_Instance,_Value_Instance) );
			float4 temp_output_1508_0 = ( float4( hsvTorgb1504 , 0.0 ) * SAMPLE_TEXTURE2D( _HueSaturationMap, sampler_HueSaturationMap, 0 ) );
			float4 temp_cast_4 = (1.0).xxxx;
			float _EnableHueShift_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableHueShift_arr, _EnableHueShift);
			float4 lerpResult7_g165 = lerp( temp_cast_4 , temp_output_1508_0 , _EnableHueShift_Instance);
			float4 temp_output_1282_0 = ( tex2DNode1279 * tex2DNode1278 * temp_output_1508_0 * lerpResult7_g165 );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 albedo1280 = ( temp_output_1282_0 * _Color_Instance );
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1270 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1240 = dot( normalize( (WorldNormalVector( i , NormalMap1270 )) ) , ase_worldlightDir );
			float NormalLightDir1241 = dotResult1240;
			float2 temp_cast_7 = ((NormalLightDir1241*0.5 + 0.5)).xx;
			float4 Shadow1218 = ( albedo1280 * SAMPLE_TEXTURE2D( _ToonRamp, sampler_ToonRamp, temp_cast_7 ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 Lighting1217 = ( Shadow1218 * ( ase_lightColor * float4( ( float3(0,0,0) + 1 ) , 0.0 ) ) );
			float4 color1501 = IsGammaSpace() ? float4(0.4622642,0.4622642,0.4622642,1) : float4(0.1807607,0.1807607,0.1807607,1);
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float4 lerpResult7_g162 = lerp( temp_cast_0 , ( Lighting1217 * color1501 ) , _EnableToon_Instance);
			o.Emission = lerpResult7_g162.rgb;
		}

		ENDCG
	}
	Fallback "Standard"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;80;914.1671,19.9218;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Legoman99573/Toon Translucent;False;False;False;False;False;False;False;False;False;False;False;False;True;False;True;False;False;False;False;False;True;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;TransparentCutout;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;2;5;False;_SrcBlend;10;False;_SrcDST;2;5;False;_SrcBlend;10;False;;0;False;;1;False;;0;False;0;0.1226415,0.1226415,0.1226415,0;VertexScale;True;False;Cylindrical;False;True;Relative;0;Standard;-1;-1;-1;-1;0;True;0;0;True;_CullingMode;-1;0;True;_Cutoff;1;Include;./Includes/AudioLink.cginc;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1193;-3569.207,3145.76;Inherit;False;3548.67;1426.547;;26;1461;1436;1422;1421;1411;1410;1409;1408;1307;1306;1305;1304;1303;1302;1301;1300;1299;1298;1297;1296;1295;1294;1293;1292;1291;1290;Specular;0.3411765,0.3411765,0.3411765,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1194;-3567.312,2010.538;Inherit;False;3543.927;1046.716;;19;1460;1357;1356;1355;1354;1353;1352;1351;1350;1349;1348;1347;1346;1345;1344;1343;1342;1341;1340;Rim Lighting;0.4623167,0.6132076,0.4367658,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1195;-6034.458,-1942.37;Inherit;False;2025.41;1477.179;;24;1287;1285;1284;1464;1442;1441;1438;1286;1283;1282;1281;1280;1279;1278;1277;1504;1506;1507;1508;1509;1510;1511;1512;1513;Albedo and Transparency;0.1009256,0.6804498,0.7924528,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1196;-2617.471,-368.5172;Inherit;False;711.3267;381.5787;;2;1455;1288;Used Components;0.772549,0.5450981,0.4392157,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1197;-8058.229,-1414.236;Inherit;False;1996.66;787.3569;;11;1484;1385;1384;1383;1382;1381;1380;1379;1378;1276;1275;Emission;0.3490196,0.5176471,0.5607843,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1198;-3979.387,-1416.62;Inherit;False;2307.922;955.9736;;9;1485;1483;1482;1471;1470;1469;1468;1462;1274;Toon Shading;0.509434,0.2418903,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1199;-2099.332,76.61353;Inherit;False;807.2709;492.0006;;8;1486;1361;1360;1359;1358;1273;1272;1215;Standard Shading;0.8078432,0.7294118,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1200;-3277.656,68.17091;Inherit;False;1111.183;505.3101;;7;1271;1270;1269;1268;1267;1266;1265;Normal Map;0,0.3058824,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1201;-3577.657,620.7119;Inherit;False;3556.902;1343.892;;34;1467;1466;1465;1463;1454;1453;1452;1451;1450;1449;1448;1447;1446;1445;1444;1440;1439;1429;1428;1427;1420;1289;1264;1263;1262;1261;1260;1259;1258;1257;1256;1214;1213;1212;MatCap;0,1,0.8470588,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1202;-1641.16,-1411.935;Inherit;False;1098.461;950.1898;;8;1443;1376;1375;1372;1371;1339;1255;1254;Metallic and Smoothness;1,0,0,0.2117647;0;0
Node;AmplifyShaderEditor.CommentaryNode;1203;-1802.751,-370.3279;Inherit;False;1076.269;357.3183;;5;1377;1253;1252;1251;1250;Ambient Occlusion;0,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1204;-8061.604,-542.393;Inherit;False;1998.691;619.2851;;7;1479;1370;1369;1368;1367;1366;1249;Height Map (unused);1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1205;-3272.536,-383.5319;Inherit;False;623.561;400.0698;;2;1374;1373;Sampler States;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1206;-8068.383,1541.838;Inherit;False;4441.134;2135.596;;25;1424;1423;1416;1407;1406;1405;1404;1403;1402;1401;1400;1399;1398;1397;1396;1395;1394;1393;1392;1391;1390;1389;1388;1387;1386;Glitter;1,0.004716992,0.964993,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1207;-4461.434,54.62281;Inherit;False;1148.977;502.5762;;5;1247;1246;1245;1244;1243;Normal View Dir;0.2641509,0.2641509,0.2641509,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1208;-4456.558,-381.1804;Inherit;False;1138.415;395.5507;;6;1459;1242;1241;1240;1239;1238;Normal Light Dir;0.4339623,0.4339623,0.4339623,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1209;-8067.03,605.7251;Inherit;False;4435.092;886.3752;;31;1426;1425;1419;1418;1415;1414;1413;1412;1365;1364;1363;1362;1248;1237;1236;1235;1234;1233;1232;1231;1230;1229;1228;1227;1226;1225;1224;1223;1222;1221;1220;AudioLink;0.5566038,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1210;-8061.199,136.7873;Inherit;False;2019.533;432.7555;;7;1480;1472;1458;1457;1456;1219;1218;Shadow;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1211;-5991.144,-378.9289;Inherit;False;1493.02;934.3415;;9;1481;1478;1477;1476;1475;1474;1473;1217;1216;Lighting;0.9384004,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1308;-8060.745,3746.416;Inherit;False;4431.949;816.9406;;38;1437;1435;1434;1433;1432;1431;1430;1417;1338;1337;1336;1335;1334;1333;1332;1331;1330;1329;1328;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;1315;1314;1313;1312;1311;1310;1309;Glint;0.9986145,1,0.4103774,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1212;-1344.076,1062.495;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1213;-918.1113,1225.404;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1214;-1630.511,1467.204;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1215;-1498.061,180.9618;Inherit;False;StandardSetup;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1216;-5650.646,-328.929;Inherit;False;1218;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1217;-4722.644,-88.92868;Inherit;False;Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1218;-6265.667,275.4649;Inherit;True;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1219;-6566.724,281.4122;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1220;-3855.94,980.4146;Inherit;False;AudioLink;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1221;-5223.167,839.335;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1222;-4758.547,1092.534;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1223;-5384.644,1087.597;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1224;-5893.308,1278.443;Inherit;False;amplitude;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;1225;-5040.644,993.5986;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1226;-5598.167,1019.336;Inherit;False;1248;hueShift;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1227;-5822.353,993.7256;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RGBToHSVNode;1228;-5604.167,788.3351;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1229;-5604.644,1124.597;Inherit;False;1224;amplitude;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1230;-6255.194,1178.972;Inherit;False;4BandAmplitudeLerp;-1;;148;3cf4b6e83381a9a4f84f8cf857bc3af5;0;2;2;INT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1231;-6703.706,1230.228;Inherit;False;BandPulse;-1;;149;c478702160369ce4480fa2fb6d734ffa;0;3;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1232;-6431.398,1239.274;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;128;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1233;-6283.353,655.725;Inherit;True;Property;_EmissionMapAudioLink0;Emission Map;18;0;Create;False;0;0;0;False;0;False;-1;None;None;True;4;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1234;-6728.162,999.8687;Inherit;False;InstancedProperty;_Band;Band;22;3;[Header];[IntRange];[Enum];Create;True;1;Audio Section;4;Bass;0;Low Mid;1;High Mid;2;Treble;3;0;False;0;False;0;0;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1235;-6229.278,938.0045;Inherit;False;InstancedProperty;_EmissionColorAudioLink0;Emission Color;20;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1236;-5037.948,1157.434;Inherit;False;InstancedProperty;_EmissionScale;Emission Scale;21;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1237;-6603.212,671.0911;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1238;-4198.712,-185.6141;Inherit;False;True;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1239;-4167.713,-327.6139;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1240;-3844.41,-239.6297;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1241;-3542.145,-240.7999;Inherit;False;NormalLightDir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1242;-4406.558,-331.1804;Inherit;False;1270;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1243;-4152.321,113.0562;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1244;-3879.322,132.0561;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1245;-3617.649,126.668;Inherit;False;normalviewdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1246;-4145.901,350.2544;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1247;-4411.435,104.6229;Inherit;False;1270;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1248;-6680.985,823.8845;Inherit;False;hueShift;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1249;-6286.915,-320.8445;Inherit;False;heightMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1250;-1134.828,-226.7275;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1251;-930.7685,-180.7054;Inherit;False;AO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1252;-1509.226,-320.3275;Inherit;True;Property;_OcclusionMap;Occlusion;10;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Occlusion Culling Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1253;-1752.751,-295.2381;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1254;-1591.16,-1128.11;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;1255;-1348.857,-1157.566;Inherit;True;Property;_MetallicGlossMap;Metalic (R) and Smoothness (A);3;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Metallic Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1256;-2409.21,1524.406;Inherit;True;Property;_MatCapAdditive;MatCap 2;35;0;Create;False;0;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1257;-2382.33,920.1157;Inherit;False;InstancedProperty;_MatCapColor;MatCap 1 Color;32;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1258;-2319.511,1738.906;Inherit;False;InstancedProperty;_MatCapColorAdditive;MatCap 2 Color;36;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1259;-2020.51,1478.906;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1260;-1895.709,1748.007;Inherit;False;InstancedProperty;_AddMatCapAdditive;Add MatCap 2;37;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1261;-1888.73,929.2796;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1262;-2056.91,1170.807;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1263;-2402.361,1150.201;Inherit;True;Property;_MatCap;MatCap 1;31;1;[HDR];Create;False;0;0;0;False;0;False;-1;None;1e806559f8a67954ea54ac67a14419f2;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerStateNode;1264;-2759.39,1445.646;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1265;-3208.546,391.4574;Inherit;False;InstancedProperty;_DetailNormalMapScale;Detail Normal Scale;19;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1266;-3181.806,166.271;Inherit;False;InstancedProperty;_BumpScale;Normal Scale;7;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1267;-2986.383,118.1709;Inherit;True;Property;_BumpMap;Normal Map;6;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1268;-2980.874,343.4809;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;16;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1269;-3227.656,260.0596;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1270;-2390.473,217.2272;Inherit;False;NormalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;1271;-2678.682,221.9619;Inherit;True;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1272;-2049.332,126.6135;Inherit;False;1280;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomStandardSurface;1273;-1743.57,183.4243;Inherit;False;Metallic;Tangent;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,1;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1274;-2006.015,-1134.693;Inherit;False;ToonShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1275;-6282.88,-1364.236;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1276;-6573.146,-1336.996;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1277;-4826.693,-1427.531;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1278;-5782.79,-1892.37;Inherit;True;Property;_DetailAlbedoMap;Detail Albedo x2;15;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Albedo Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1280;-4294.883,-1610.689;Inherit;False;albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1281;-4638.204,-1633.281;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1283;-4935.095,-1684.553;Inherit;False;AlbedoTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1286;-5334.093,-1384.755;Inherit;True;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1288;-2279.448,-319.5157;Inherit;False;InstancedProperty;_Cutoff;Alpha Cutoff;2;0;Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Back;1;Front;2;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1289;-2663.04,670.712;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1290;-3237.172,3195.76;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightPos;1291;-3286.076,3377.565;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldNormalVector;1292;-3242.661,3494.945;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1293;-3519.207,3476.143;Inherit;False;1270;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1294;-2926.66,3296.126;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1295;-2679.66,3368.126;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1296;-2355.66,3368.126;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1297;-1116.396,3382.152;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1298;-808.3959,3363.152;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;1299;-1180.396,3283.152;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1300;-1753.199,3371.048;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1301;-1865.629,3638.703;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1302;-2205.436,3609.855;Inherit;True;Property;_SpecGlossMap;Specular Map (RGB);49;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1303;-1514.396,3490.152;Inherit;False;InstancedProperty;_SpecularHighlights;Spec Intensity;52;0;Create;False;0;0;0;False;0;False;0.56;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1304;-2007.968,3850.844;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1305;-2275.972,3919.315;Inherit;False;InstancedProperty;_SpecColorToon;Specular Color;50;0;Create;False;0;0;0;True;0;False;0.2,0.2,0.2,1;0.1999999,0.1999999,0.1999999,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;1306;-2220.625,4102.419;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1307;-2332.624,4227.419;Inherit;False;InstancedProperty;_SpecularLightMix;Specular Light Mix;53;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1309;-6405.164,4016.079;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1310;-7061.164,3920.078;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1311;-6885.164,3952.078;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.27;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1312;-6405.164,4144.079;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1313;-5226.116,4289.411;Inherit;True;Standard;WorldNormal;ViewDir;False;True;5;0;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.01;False;2;FLOAT;1;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1314;-6213.164,4240.079;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1315;-6197.164,3952.078;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1316;-6213.164,4112.079;Inherit;False;2;0;FLOAT;-1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1317;-5909.164,4176.079;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2.25;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1318;-5909.164,3952.078;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1319;-5765.164,4176.079;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1320;-5573.164,4048.079;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1321;-5429.164,4048.079;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1322;-5237.164,4048.079;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1323;-5765.164,3952.078;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1324;-4647.389,4025.131;Inherit;True;4;4;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;1325;-5816.093,4298.624;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1326;-6061.167,4323.273;Inherit;False;1270;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1327;-7268.718,3884.646;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FmodOpNode;1328;-6661.164,3952.078;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1329;-7540.717,3795.645;Inherit;False;InstancedProperty;_InvertDirection;Invert Direction;57;2;[IntRange];[Enum];Create;True;0;2;False;0;True;1;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1330;-4981.164,3888.078;Float;False;Property;_GlintColor;Color;56;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;1331;-5605.164,4368.079;Float;False;Property;_GlintFresnel;Fresnel Bias, Scale, Power;60;0;Create;False;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1332;-6757.164,4256.079;Float;False;Property;_TailHeadFalloff;Tail Head Falloff;58;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1333;-7242.527,4397.058;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1334;-6730.812,4163.678;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;1335;-7116.871,4120.538;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1336;-7033.328,4188.251;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1337;-7491.549,4197.968;Float;False;Property;_SizeSpeedInterval;Size Speed Interval;59;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1338;-4909.813,4420.053;Inherit;False;Constant;_Float4;Float 4;62;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1339;-1364.837,-1332.851;Inherit;False;InstancedProperty;_Metallic;Metallic;4;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1340;-354.2659,2081.017;Inherit;True;Rim_Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1341;-845.0532,2085.937;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1342;-1292.134,2088.177;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1343;-1572.007,2363.072;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;1344;-1904.648,2327.989;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;1345;-1954.919,2464.989;Inherit;False;InstancedProperty;_RimTint;Rim Tint;45;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;1346;-1687.711,2097.955;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1347;-1967.549,2097.759;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1348;-2209.295,2476.448;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1349;-2418.567,2451.094;Inherit;False;1241;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1350;-2443.836,2560.718;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1351;-2307.043,2096.231;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1352;-2580.057,2355.391;Inherit;False;InstancedProperty;_RimPower;Rim Power;47;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1353;-3431.666,2779.706;Inherit;False;1245;normalviewdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1354;-3401.196,2686.412;Inherit;False;InstancedProperty;_RimOffset;Rim Offset;46;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1355;-3215.959,2726.881;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1356;-2884.018,2386.358;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1357;-2604.833,2134.361;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1358;-2058.332,195.6135;Inherit;False;1270;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1359;-2045.736,333.4259;Inherit;False;1372;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1360;-2043.011,471.5587;Inherit;False;1251;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1361;-2061.828,402.632;Inherit;False;1376;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1362;-8052.981,735.6609;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1363;-7585.206,740.6369;Inherit;False;RotateUVFill;-1;;150;459952d587cbfe742a7e7f4a8a0a4169;0;2;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1364;-7751.286,863.4938;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1365;-7179.843,999.5046;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;1366;-7758.219,-468.848;Inherit;True;Property;_ParallaxMap;Height Map (G);8;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Height Map Setup (Only Works for Fallbacks);0;0;True;0;False;-1;None;None;True;0;True;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;1367;-7634.551,-225.0698;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1368;-7246.688,-332.5026;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1369;-6832.138,-319.1371;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1370;-7261.95,-72.07126;Inherit;False;InstancedProperty;_Parallax;Height Scale;9;0;Create;False;0;0;0;True;0;False;0;0.02;0.005;0.08;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1371;-978.4394,-1360.665;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1372;-771.4438,-1352.724;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1373;-3234.682,-274.15;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1374;-2879.371,-277.6736;Inherit;False;samplerState;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1375;-987.9809,-1041.635;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1376;-761.5161,-1046.809;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1377;-1450.943,-106.4771;Inherit;False;InstancedProperty;_OcclusionStrength;Occlusion Strength;11;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1378;-7783.499,-1041.36;Inherit;True;Property;_EmissionMap;Emission;13;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Emission Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1379;-7384.583,-928.2993;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1380;-6725.015,-1272.216;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1381;-7247.908,-1067.691;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1382;-6875.962,-1146.651;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1383;-6893.868,-1034.796;Inherit;False;1220;AudioLink;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1384;-8023.95,-992.5338;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode;1385;-7225.05,-1134.184;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1386;-7789.527,2027.072;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1387;-6648.845,2064.183;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1388;-5655.757,2229.913;Inherit;True;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1389;-5377.757,2228.913;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1390;-6954.866,2041.913;Inherit;True;Simple HUE;-1;;151;32abb5f0db087604486c2db83a2e817a;0;1;1;FLOAT;0;False;4;FLOAT3;6;FLOAT;7;FLOAT;5;FLOAT;8
Node;AmplifyShaderEditor.NormalizeNode;1391;-6258.689,2093.52;Inherit;True;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;1392;-4948.415,2226.08;Inherit;True;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1393;-4539.924,2221.865;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1394;-4504.959,2617.073;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1395;-4899.464,2580.229;Inherit;True;Property;_Glitter;Glitter;39;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1396;-4824.817,2764.333;Inherit;False;InstancedProperty;_GlitterColor;Glitter Color;42;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1397;-4863.332,2019.532;Inherit;True;Property;_GlitterMap;Glitter Map;43;0;Create;False;0;0;0;False;0;False;-1;None;None;True;6;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1398;-4260.026,2375.565;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1399;-5225.271,2037.532;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleTimeNode;1400;-7794.93,2315.462;Inherit;True;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1401;-7341.046,2043.087;Inherit;True;Property;_GlitterNoise;Glitter Noise;40;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1402;-6906.706,2303.847;Inherit;False;Constant;_GlitterOffset;GlitterOffset;62;0;Create;True;0;0;0;False;0;False;0.9999;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;1403;-7548.17,2085.223;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1404;-7793.996,2168.441;Inherit;False;InstancedProperty;_NoiseSpeed;Noise Speed;41;0;Create;False;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1405;-6385.384,2468.821;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1406;-6167.361,2473.638;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1407;-5881.513,2474.385;Inherit;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1408;-2098.661,3372.126;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1.1;False;2;FLOAT;1.12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1409;-2939.58,3629.514;Inherit;False;InstancedProperty;_GlossyReflections;Specular Gloss;51;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1410;-2677.414,3632.01;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1411;-2501.652,3611.546;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1412;-8049.633,874.702;Inherit;False;InstancedProperty;_PulseRotation;Pulse Rotation;26;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1413;-7025.33,821.8445;Inherit;False;InstancedProperty;_AudioHueShift;Audio Hue Shift;25;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1414;-7045.489,1282.72;Inherit;False;InstancedProperty;_Pulse;Pulse;24;1;[Header];Create;True;1;Pulse Across UVs;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1415;-7044.568,1384.558;Inherit;False;InstancedProperty;_Delay;Delay;23;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1416;-3806.48,2398.991;Inherit;False;glitterRender;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PosVertexDataNode;1417;-7997.163,3854.077;Inherit;True;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1418;-4449.249,1023.342;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1419;-4729.249,1291.343;Inherit;False;IsAudioLink;-1;;152;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1420;-2454.023,671.8028;Inherit;True;Property;_MatCapMask;MatCap Mask;30;1;[Header];Create;True;1;;0;0;False;1;Tooltip(Multiplied with the texture for the albedo channel);False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1421;-297.3509,3334.896;Inherit;True;Specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1422;-858.2841,3572.967;Inherit;False;InstancedProperty;_EnableSpecular;Enable Specular;48;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Specular Map Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1423;-4045.967,2405.959;Inherit;True;Switch;-1;;153;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1424;-4231.967,2601.959;Inherit;False;InstancedProperty;_EnableGlitter;Enable Glitter;38;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glitter Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1425;-4180.249,993.4316;Inherit;True;Switch;-1;;154;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1426;-4452.249,1233.432;Inherit;False;InstancedProperty;_EnableAudioLink;Enable AudioLink;17;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;AudioLink Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1427;-1520.494,1714.647;Inherit;False;InstancedProperty;_EnableMatCap2;Enable MatCap 2;34;2;[Header];[ToggleUI];Create;True;1;MatCap 2 Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1428;-632.8681,1260.874;Inherit;True;Switch;-1;;155;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1429;-904.8682,1500.874;Inherit;False;InstancedProperty;_EnableMatCap;Enable MatCap;29;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;MatCap Setup;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1430;-4101.468,4011.316;Inherit;True;Switch;-1;;156;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1431;-3821.647,4007.871;Inherit;False;Glint;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1432;-4238.788,4378.253;Inherit;False;InstancedProperty;_EnableGlint;Enable Glint;54;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glint Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1433;-7477.163,3936.078;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1434;-4333.709,4033.085;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1435;-4662.563,4271.4;Inherit;True;Property;_GlintMap;Glint Map;55;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1436;-2541.69,3777.145;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1437;-4863.879,4322.677;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1438;-4305.02,-1411.366;Inherit;False;StandardShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1439;-360.1502,1320.29;Inherit;False;matcapToggle;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1440;-372.7093,1199.31;Inherit;False;MatCap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1441;-4811.991,-1180.831;Inherit;False;1440;MatCap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1442;-4556.026,-1337.26;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1443;-1329.944,-938.5419;Inherit;False;InstancedProperty;_Glossiness;Smoothness;5;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1444;-2846.373,1160.367;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;1445;-3241.869,998.8367;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.WorldReflectionVector;1446;-3296.343,1183.346;Inherit;False;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1447;-3032.861,733.6806;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1448;-2872.608,799.1255;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1449;-2835.3,915.2027;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1450;-3347.156,797.4857;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;1451;-2796.941,1277.791;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1452;-1276.494,1371.647;Inherit;True;Switch;-1;;157;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1453;-2661.391,1026.054;Inherit;True;Switch;-1;;158;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1454;-3006.626,1094.922;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1455;-2567.471,-318.5172;Inherit;False;InstancedProperty;_CullingMode;Cull Mode;65;3;[Header];[IntRange];[Enum];Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Front;1;Back;2;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1456;-7968.36,332.2252;Inherit;False;Constant;_Float0;Float 0;3;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1457;-7747.042,308.0819;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1458;-7280.503,335.2339;Inherit;True;Property;_ToonRamp;Toon Ramp;28;1;[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;5e1c3434a8caf65468843b3228c570fc;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightAttenuation;1459;-4419.03,-179.5982;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1460;-1274.489,2526.949;Inherit;False;InstancedProperty;_RimOverride;Enable Rim;44;2;[Header];[ToggleUI];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Rim Lighting Setup;2;Disabled;0;Enabled;1;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1461;-586.2841,3332.967;Inherit;True;Switch;-1;;159;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1462;-2535.386,-1206.353;Inherit;True;5;5;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1463;-3562.581,1049.099;Inherit;False;1270;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1464;-6024.542,-1653.675;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1465;-1871.633,1300.879;Inherit;False;InstancedProperty;_AddMatCap;Add MatCap;33;0;Create;False;0;0;0;False;0;False;1;0.6;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1466;-3323.102,1374.352;Inherit;False;Constant;_Offset;Offset;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1467;-3168.402,1472.152;Inherit;False;Constant;_MatCapNormalReflection;Normal Reflection Mix;30;1;[Header];Create;False;2;0 for Normals;1 For Reflections;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1468;-3651.94,-912.2729;Inherit;False;1416;glitterRender;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1469;-3647.445,-833.009;Inherit;False;1340;Rim_Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1470;-3631.638,-755.5632;Inherit;False;1421;Specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1471;-3633.857,-676.6489;Inherit;False;1431;Glint;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1472;-8021.573,193.7223;Inherit;False;1241;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;1473;-5730.646,-136.9287;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LightAttenuation;1474;-5861.417,246.6457;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1475;-5577.486,132.8058;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;1476;-5850.646,133.0714;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1477;-5985.144,-38.68081;Inherit;False;1270;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1478;-5355.161,8.241692;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1479;-7992.768,-460.5414;Inherit;False;1374;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1480;-6787.591,186.7873;Inherit;False;1280;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1481;-5007.729,-142.3001;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1482;-3686.327,-1222.423;Inherit;False;1438;StandardShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1483;-3651.451,-1019.719;Inherit;False;1275;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1484;-7645.16,-811.0822;Inherit;False;InstancedProperty;_EmissionColor;Color;14;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1485;-3197.78,-1209.605;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1486;-2047.577,265.4152;Inherit;False;1275;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1488;82.24342,213.8264;Inherit;False;1274;ToonShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1491;87.6404,136.0846;Inherit;False;Constant;_Float2;Float 2;62;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1492;669.0328,86.65591;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1493;66.74098,-5.597397;Inherit;False;1215;StandardSetup;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1487;654.7989,-121.9808;Inherit;False;1287;Opacity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1495;608.3806,329.4403;Inherit;True;Switch;-1;;162;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1496;66.5015,531.6522;Inherit;False;1217;Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1501;256,768;Inherit;False;Constant;_Color2;Color;1;0;Create;False;0;0;0;False;0;False;0.4622642,0.4622642,0.4622642,1;0.5471698,0.5471698,0.5471698,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1499;576,544;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1497;302.9578,501.6862;Inherit;False;1249;heightMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1500;373,584;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1284;-5690.701,-1488.534;Inherit;False;InstancedProperty;_Color;Color;1;0;Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1285;-5761.862,-1322.782;Inherit;True;Property;_DetailMask;Detail Mask (A);12;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Mask Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1287;-5082.547,-1355.157;Inherit;False;Opacity;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1489;73.09131,403.878;Inherit;False;InstancedProperty;_EnableToon;Enable  Toon;27;2;[Header];[ToggleUI];Create;True;3;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Toon Map Setup;Will disable Metallic and Ambient Occlusion Setups;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1490;328.6404,-64.91537;Inherit;True;Switch;-1;;163;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT;1;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;1504;-5380.543,-1018.069;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GradientNode;1509;-5710.127,-1075.559;Inherit;False;0;8;2;1,0,0,0;1,0.3372549,0,0.1250019;1,0.8745099,0,0.2500038;0.01568628,1,0,0.3750057;0,1,0.9843138,0.5000076;0,0.02352941,1,0.6249943;0.882353,0,1,0.7499962;0.882353,0,0,1;1,0;1,1;0;1;OBJECT;0
Node;AmplifyShaderEditor.SamplerNode;1510;-5383.923,-732.5083;Inherit;True;Property;_HueSaturationMap;Hue Saturation Map;62;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1508;-5001.626,-1026.159;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1506;-5766.242,-939.3945;Inherit;False;InstancedProperty;_Saturation;Saturation;63;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1507;-5631.868,-787.5939;Inherit;False;InstancedProperty;_Value;Value;64;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1494;330.0914,145.878;Inherit;True;Switch;-1;;161;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1282;-5157.2,-1637.196;Inherit;True;4;4;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1512;-5812.527,-751.9086;Inherit;False;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.FunctionNode;1511;-4768.761,-1037.039;Inherit;True;Switch;-1;;165;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;1;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1279;-5784.819,-1701.568;Inherit;True;Property;_MainTex;Albedo (RGB) and Transparency (A);0;1;[Header];Create;False;4;Standard Setup;;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Main Texture;0;0;False;0;False;-1;None;d04b94b8c10a03042a99b16a91d7e3e0;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1513;-5081.358,-728.4664;Inherit;False;InstancedProperty;_EnableHueShift;Enable Hue Shift;61;2;[Header];[Toggle];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Hue Shift;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
WireConnection;80;2;1495;0
WireConnection;80;9;1487;0
WireConnection;80;13;1492;0
WireConnection;1212;0;1261;0
WireConnection;1212;1;1465;0
WireConnection;1213;0;1212;0
WireConnection;1213;1;1452;0
WireConnection;1214;0;1259;0
WireConnection;1214;1;1260;0
WireConnection;1215;0;1273;0
WireConnection;1217;0;1481;0
WireConnection;1218;0;1219;0
WireConnection;1219;0;1480;0
WireConnection;1219;1;1458;0
WireConnection;1220;0;1425;0
WireConnection;1221;0;1228;1
WireConnection;1221;1;1223;0
WireConnection;1222;0;1225;0
WireConnection;1222;1;1236;0
WireConnection;1223;0;1226;0
WireConnection;1223;1;1229;0
WireConnection;1224;0;1230;0
WireConnection;1225;0;1221;0
WireConnection;1225;1;1228;2
WireConnection;1225;2;1228;3
WireConnection;1227;0;1233;0
WireConnection;1227;1;1235;0
WireConnection;1227;2;1230;0
WireConnection;1228;0;1227;0
WireConnection;1230;2;1234;0
WireConnection;1230;4;1232;0
WireConnection;1231;1;1365;0
WireConnection;1231;2;1414;0
WireConnection;1231;3;1415;0
WireConnection;1232;0;1231;0
WireConnection;1233;7;1237;0
WireConnection;1239;0;1242;0
WireConnection;1240;0;1239;0
WireConnection;1240;1;1238;0
WireConnection;1241;0;1240;0
WireConnection;1243;0;1247;0
WireConnection;1244;0;1243;0
WireConnection;1244;1;1246;0
WireConnection;1245;0;1244;0
WireConnection;1248;0;1413;0
WireConnection;1249;0;1369;0
WireConnection;1250;0;1252;2
WireConnection;1250;1;1377;0
WireConnection;1251;0;1250;0
WireConnection;1252;7;1253;0
WireConnection;1255;7;1254;0
WireConnection;1256;1;1453;0
WireConnection;1256;7;1264;0
WireConnection;1259;0;1256;0
WireConnection;1259;1;1258;0
WireConnection;1259;2;1262;0
WireConnection;1261;0;1263;0
WireConnection;1261;1;1257;0
WireConnection;1261;2;1420;0
WireConnection;1262;0;1420;0
WireConnection;1263;1;1453;0
WireConnection;1263;7;1264;0
WireConnection;1267;5;1266;0
WireConnection;1267;7;1269;0
WireConnection;1268;5;1265;0
WireConnection;1268;7;1269;0
WireConnection;1270;0;1271;0
WireConnection;1271;0;1267;0
WireConnection;1271;1;1268;0
WireConnection;1273;0;1272;0
WireConnection;1273;1;1358;0
WireConnection;1273;2;1486;0
WireConnection;1273;3;1359;0
WireConnection;1273;4;1361;0
WireConnection;1273;5;1360;0
WireConnection;1274;0;1462;0
WireConnection;1275;0;1276;0
WireConnection;1276;0;1380;0
WireConnection;1276;1;1383;0
WireConnection;1277;0;1279;0
WireConnection;1277;1;1284;0
WireConnection;1278;7;1464;0
WireConnection;1280;0;1281;0
WireConnection;1281;0;1282;0
WireConnection;1281;1;1284;0
WireConnection;1283;0;1282;0
WireConnection;1286;0;1279;4
WireConnection;1286;1;1284;4
WireConnection;1286;2;1285;4
WireConnection;1286;3;1278;4
WireConnection;1292;0;1293;0
WireConnection;1294;0;1290;0
WireConnection;1294;1;1291;1
WireConnection;1295;0;1294;0
WireConnection;1295;1;1292;0
WireConnection;1296;0;1295;0
WireConnection;1296;1;1411;0
WireConnection;1297;0;1300;0
WireConnection;1297;1;1303;0
WireConnection;1298;0;1299;0
WireConnection;1298;1;1297;0
WireConnection;1300;0;1408;0
WireConnection;1300;1;1301;0
WireConnection;1301;0;1302;0
WireConnection;1301;1;1304;0
WireConnection;1302;7;1436;0
WireConnection;1304;0;1305;0
WireConnection;1304;1;1306;0
WireConnection;1304;2;1307;0
WireConnection;1309;0;1332;0
WireConnection;1310;0;1327;0
WireConnection;1310;1;1337;1
WireConnection;1311;0;1310;0
WireConnection;1311;1;1335;0
WireConnection;1312;0;1332;0
WireConnection;1313;0;1325;0
WireConnection;1313;1;1331;1
WireConnection;1313;2;1331;2
WireConnection;1313;3;1331;3
WireConnection;1314;1;1332;0
WireConnection;1315;0;1328;0
WireConnection;1315;1;1309;0
WireConnection;1316;1;1312;0
WireConnection;1317;0;1315;0
WireConnection;1317;1;1314;0
WireConnection;1318;0;1315;0
WireConnection;1318;1;1316;0
WireConnection;1319;0;1317;0
WireConnection;1320;0;1323;0
WireConnection;1320;1;1319;0
WireConnection;1321;0;1320;0
WireConnection;1322;0;1321;0
WireConnection;1323;0;1318;0
WireConnection;1324;0;1330;0
WireConnection;1324;1;1322;0
WireConnection;1324;2;1313;0
WireConnection;1324;3;1338;0
WireConnection;1325;0;1326;0
WireConnection;1327;0;1417;2
WireConnection;1327;1;1433;0
WireConnection;1327;2;1329;0
WireConnection;1328;0;1311;0
WireConnection;1328;1;1334;0
WireConnection;1333;0;1337;1
WireConnection;1333;1;1337;2
WireConnection;1334;0;1336;0
WireConnection;1334;1;1337;3
WireConnection;1335;0;1333;0
WireConnection;1336;0;1333;0
WireConnection;1340;0;1341;0
WireConnection;1341;0;1342;0
WireConnection;1341;1;1460;0
WireConnection;1342;0;1346;0
WireConnection;1342;1;1343;0
WireConnection;1343;0;1344;0
WireConnection;1343;1;1345;0
WireConnection;1346;0;1347;0
WireConnection;1347;0;1351;0
WireConnection;1347;1;1348;0
WireConnection;1348;0;1349;0
WireConnection;1348;1;1350;0
WireConnection;1351;0;1357;0
WireConnection;1351;1;1352;0
WireConnection;1355;0;1354;0
WireConnection;1355;1;1353;0
WireConnection;1356;0;1355;0
WireConnection;1357;0;1356;0
WireConnection;1363;1;1362;0
WireConnection;1363;2;1364;0
WireConnection;1364;0;1412;0
WireConnection;1365;0;1363;0
WireConnection;1366;7;1479;0
WireConnection;1368;0;1366;2
WireConnection;1368;1;1367;0
WireConnection;1369;0;1368;0
WireConnection;1369;1;1370;0
WireConnection;1371;0;1255;1
WireConnection;1371;1;1339;0
WireConnection;1372;0;1371;0
WireConnection;1374;0;1373;0
WireConnection;1375;0;1255;4
WireConnection;1375;1;1443;0
WireConnection;1376;0;1375;0
WireConnection;1378;7;1384;0
WireConnection;1379;0;1378;0
WireConnection;1379;1;1484;0
WireConnection;1380;0;1382;0
WireConnection;1381;0;1379;0
WireConnection;1382;0;1385;0
WireConnection;1385;0;1381;0
WireConnection;1387;0;1390;8
WireConnection;1387;1;1402;0
WireConnection;1388;0;1391;0
WireConnection;1388;1;1407;0
WireConnection;1389;0;1388;0
WireConnection;1390;1;1401;1
WireConnection;1391;0;1387;0
WireConnection;1392;0;1389;0
WireConnection;1393;0;1397;0
WireConnection;1393;1;1392;0
WireConnection;1394;0;1395;0
WireConnection;1394;1;1396;0
WireConnection;1397;7;1399;0
WireConnection;1398;0;1393;0
WireConnection;1398;1;1394;0
WireConnection;1401;1;1403;0
WireConnection;1403;0;1386;0
WireConnection;1403;2;1404;0
WireConnection;1403;1;1400;0
WireConnection;1406;0;1405;0
WireConnection;1407;0;1406;0
WireConnection;1408;0;1296;0
WireConnection;1410;0;1409;0
WireConnection;1411;0;1410;0
WireConnection;1416;0;1423;0
WireConnection;1418;0;1222;0
WireConnection;1418;1;1419;0
WireConnection;1420;7;1289;0
WireConnection;1421;0;1461;0
WireConnection;1423;3;1398;0
WireConnection;1423;8;1424;0
WireConnection;1425;3;1418;0
WireConnection;1425;8;1426;0
WireConnection;1428;3;1213;0
WireConnection;1428;8;1429;0
WireConnection;1430;3;1434;0
WireConnection;1430;8;1432;0
WireConnection;1431;0;1430;0
WireConnection;1433;0;1417;2
WireConnection;1434;0;1324;0
WireConnection;1434;1;1435;0
WireConnection;1435;7;1437;0
WireConnection;1438;0;1442;0
WireConnection;1439;0;1428;0
WireConnection;1440;0;1428;0
WireConnection;1442;0;1277;0
WireConnection;1442;1;1441;0
WireConnection;1444;0;1454;0
WireConnection;1444;1;1466;0
WireConnection;1446;0;1463;0
WireConnection;1447;0;1450;0
WireConnection;1447;1;1445;0
WireConnection;1448;0;1447;0
WireConnection;1448;1;1466;0
WireConnection;1449;0;1448;0
WireConnection;1449;1;1466;0
WireConnection;1450;0;1463;0
WireConnection;1451;0;1444;0
WireConnection;1451;1;1466;0
WireConnection;1452;3;1214;0
WireConnection;1452;8;1427;0
WireConnection;1453;2;1449;0
WireConnection;1453;3;1451;0
WireConnection;1453;8;1467;0
WireConnection;1454;0;1446;0
WireConnection;1454;1;1445;0
WireConnection;1457;0;1472;0
WireConnection;1457;1;1456;0
WireConnection;1457;2;1456;0
WireConnection;1458;1;1457;0
WireConnection;1461;3;1298;0
WireConnection;1461;8;1422;0
WireConnection;1462;0;1485;0
WireConnection;1462;1;1468;0
WireConnection;1462;2;1469;0
WireConnection;1462;3;1470;0
WireConnection;1462;4;1471;0
WireConnection;1475;0;1476;0
WireConnection;1475;1;1474;0
WireConnection;1476;0;1477;0
WireConnection;1478;0;1473;0
WireConnection;1478;1;1475;0
WireConnection;1481;0;1216;0
WireConnection;1481;1;1478;0
WireConnection;1485;0;1482;0
WireConnection;1485;1;1483;0
WireConnection;1492;0;1490;0
WireConnection;1492;1;1499;0
WireConnection;1495;2;1491;0
WireConnection;1495;3;1500;0
WireConnection;1495;8;1489;0
WireConnection;1499;0;1494;0
WireConnection;1499;1;1501;0
WireConnection;1500;0;1496;0
WireConnection;1500;1;1501;0
WireConnection;1285;7;1464;0
WireConnection;1287;0;1286;0
WireConnection;1490;2;1493;0
WireConnection;1490;3;1491;0
WireConnection;1490;8;1489;0
WireConnection;1504;0;1509;0
WireConnection;1504;1;1506;0
WireConnection;1504;2;1507;0
WireConnection;1510;1;1512;0
WireConnection;1508;0;1504;0
WireConnection;1508;1;1510;0
WireConnection;1494;2;1491;0
WireConnection;1494;3;1488;0
WireConnection;1494;8;1489;0
WireConnection;1282;0;1279;0
WireConnection;1282;1;1278;0
WireConnection;1282;2;1508;0
WireConnection;1282;3;1511;0
WireConnection;1512;0;1464;0
WireConnection;1511;3;1508;0
WireConnection;1511;8;1513;0
WireConnection;1279;7;1464;0
ASEEND*/
//CHKSM=04601DFFB92EF939D8B54C35AE265FEB37DDB151