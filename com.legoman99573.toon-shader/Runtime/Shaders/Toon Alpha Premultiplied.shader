// Upgrade NOTE: upgraded instancing buffer 'Legoman99573ToonAlphaPremultiplied' to new syntax.

// Made with Amplify Shader Editor v1.9.1.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Legoman99573/Toon Alpha Premultiplied"
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
		[Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Render Options)][IntRange][Enum(Off,0,Front,1,Back,2)]_CullingMode("Cull Mode", Range( 0 , 2)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullingMode]
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

		#pragma surface surf StandardCustomLighting alpha:premul keepalpha addshadow fullforwardshadows dithercrossfade vertex:vertexDataFunc 

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

		UNITY_INSTANCING_BUFFER_START(Legoman99573ToonAlphaPremultiplied)
			UNITY_DEFINE_INSTANCED_PROP(float4, _OcclusionMap_ST)
#define _OcclusionMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterMap_ST)
#define _GlitterMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapMask_ST)
#define _MatCapMask_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColor)
#define _MatCapColor_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlintMap_ST)
#define _GlintMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _Glitter_ST)
#define _Glitter_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterColor)
#define _GlitterColor_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _MetallicGlossMap_ST)
#define _MetallicGlossMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _RimTint)
#define _RimTint_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColorAdditive)
#define _MatCapColorAdditive_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColorAudioLink0)
#define _EmissionColorAudioLink0_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMapAudioLink0_ST)
#define _EmissionMapAudioLink0_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColor)
#define _EmissionColor_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecGlossMap_ST)
#define _SpecGlossMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailMask_ST)
#define _DetailMask_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecColorToon)
#define _SpecColorToon_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _MainTex_ST)
#define _MainTex_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailNormalMap_ST)
#define _DetailNormalMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailAlbedoMap_ST)
#define _DetailAlbedoMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
#define _Color_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMap_ST)
#define _EmissionMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float4, _BumpMap_ST)
#define _BumpMap_ST_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float2, _NoiseSpeed)
#define _NoiseSpeed_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _InvertDirection)
#define _InvertDirection_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableSpecular)
#define _EnableSpecular_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularHighlights)
#define _SpecularHighlights_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOffset)
#define _RimOffset_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _RimPower)
#define _RimPower_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOverride)
#define _RimOverride_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _GlossyReflections)
#define _GlossyReflections_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularLightMix)
#define _SpecularLightMix_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlitter)
#define _EnableGlitter_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap)
#define _EnableMatCap_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _Cutoff)
#define _Cutoff_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCapAdditive)
#define _AddMatCapAdditive_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _Parallax)
#define _Parallax_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _CullingMode)
#define _CullingMode_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _BumpScale)
#define _BumpScale_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _DetailNormalMapScale)
#define _DetailNormalMapScale_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableToon)
#define _EnableToon_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _Band)
#define _Band_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _PulseRotation)
#define _PulseRotation_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap2)
#define _EnableMatCap2_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _Pulse)
#define _Pulse_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _AudioHueShift)
#define _AudioHueShift_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EmissionScale)
#define _EmissionScale_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableAudioLink)
#define _EnableAudioLink_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _Metallic)
#define _Metallic_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _Glossiness)
#define _Glossiness_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _OcclusionStrength)
#define _OcclusionStrength_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCap)
#define _AddMatCap_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _Delay)
#define _Delay_arr Legoman99573ToonAlphaPremultiplied
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlint)
#define _EnableGlint_arr Legoman99573ToonAlphaPremultiplied
		UNITY_INSTANCING_BUFFER_END(Legoman99573ToonAlphaPremultiplied)


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
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

		inline float AudioLinkLerp3_g146( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		float IfAudioLinkv2Exists1_g150(  )
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
			float4 tex2DNode1278 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 _DetailMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailMask_ST_arr, _DetailMask_ST);
			float2 uv_DetailMask = i.uv_texcoord * _DetailMask_ST_Instance.xy + _DetailMask_ST_Instance.zw;
			float Opacity1286 = ( tex2DNode1278.a * _Color_Instance.a * SAMPLE_TEXTURE2D( _DetailMask, sampler_Linear_Repeat, uv_DetailMask ).a );
			SurfaceOutputStandard s1272 = (SurfaceOutputStandard ) 0;
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 temp_output_1281_0 = ( tex2DNode1278 * SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap ) );
			float4 albedo1279 = ( temp_output_1281_0 * _Color_Instance );
			s1272.Albedo = albedo1279.rgb;
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1269 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			s1272.Normal = normalize( WorldNormalVector( i , NormalMap1269 ) );
			float4 _EmissionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMap_ST_arr, _EmissionMap_ST);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST_Instance.xy + _EmissionMap_ST_Instance.zw;
			float4 _EmissionColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColor_arr, _EmissionColor);
			float3 temp_cast_5 = (0.0).xxx;
			float4 _EmissionMapAudioLink0_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMapAudioLink0_ST_arr, _EmissionMapAudioLink0_ST);
			float2 uv4_EmissionMapAudioLink0 = i.ase_texcoord5.xy * _EmissionMapAudioLink0_ST_Instance.xy + _EmissionMapAudioLink0_ST_Instance.zw;
			float4 _EmissionColorAudioLink0_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColorAudioLink0_arr, _EmissionColorAudioLink0);
			float _Band_Instance = UNITY_ACCESS_INSTANCED_PROP(_Band_arr, _Band);
			int Band3_g146 = (int)_Band_Instance;
			float2 break6_g148 = i.uv_texcoord;
			float temp_output_5_0_g148 = ( break6_g148.x - 0.5 );
			float _PulseRotation_Instance = UNITY_ACCESS_INSTANCED_PROP(_PulseRotation_arr, _PulseRotation);
			float temp_output_2_0_g148 = radians( _PulseRotation_Instance );
			float temp_output_3_0_g148 = cos( temp_output_2_0_g148 );
			float temp_output_8_0_g148 = sin( temp_output_2_0_g148 );
			float temp_output_20_0_g148 = ( 1.0 / ( abs( temp_output_3_0_g148 ) + abs( temp_output_8_0_g148 ) ) );
			float temp_output_7_0_g148 = ( break6_g148.y - 0.5 );
			float2 appendResult16_g148 = (float2(( ( ( temp_output_5_0_g148 * temp_output_3_0_g148 * temp_output_20_0_g148 ) + ( temp_output_7_0_g148 * temp_output_8_0_g148 * temp_output_20_0_g148 ) ) + 0.5 ) , ( ( ( temp_output_7_0_g148 * temp_output_3_0_g148 * temp_output_20_0_g148 ) - ( temp_output_5_0_g148 * temp_output_8_0_g148 * temp_output_20_0_g148 ) ) + 0.5 )));
			float _Pulse_Instance = UNITY_ACCESS_INSTANCED_PROP(_Pulse_arr, _Pulse);
			float _Delay_Instance = UNITY_ACCESS_INSTANCED_PROP(_Delay_arr, _Delay);
			float Delay3_g146 = ( ( (_Delay_Instance + (( appendResult16_g148.x * _Pulse_Instance ) - 0.0) * (1.0 - _Delay_Instance) / (1.0 - 0.0)) % 1.0 ) * 128.0 );
			float localAudioLinkLerp3_g146 = AudioLinkLerp3_g146( Band3_g146 , Delay3_g146 );
			float temp_output_1229_0 = localAudioLinkLerp3_g146;
			float3 hsvTorgb1227 = RGBToHSV( ( SAMPLE_TEXTURE2D( _EmissionMapAudioLink0, sampler_Linear_Repeat, uv4_EmissionMapAudioLink0 ) * _EmissionColorAudioLink0_Instance * temp_output_1229_0 ).rgb );
			float _AudioHueShift_Instance = UNITY_ACCESS_INSTANCED_PROP(_AudioHueShift_arr, _AudioHueShift);
			float hueShift1247 = _AudioHueShift_Instance;
			float amplitude1223 = temp_output_1229_0;
			float3 hsvTorgb1224 = HSVToRGB( float3(( hsvTorgb1227.x + ( hueShift1247 * amplitude1223 ) ),hsvTorgb1227.y,hsvTorgb1227.z) );
			float _EmissionScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionScale_arr, _EmissionScale);
			float localIfAudioLinkv2Exists1_g150 = IfAudioLinkv2Exists1_g150();
			float _EnableAudioLink_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableAudioLink_arr, _EnableAudioLink);
			float3 lerpResult7_g152 = lerp( temp_cast_5 , ( ( hsvTorgb1224 * _EmissionScale_Instance ) * localIfAudioLinkv2Exists1_g150 ) , _EnableAudioLink_Instance);
			float3 AudioLink1219 = lerpResult7_g152;
			float4 Emission1274 = ( ( SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) * _EmissionColor_Instance ) + float4( AudioLink1219 , 0.0 ) );
			s1272.Emission = Emission1274.rgb;
			float4 _MetallicGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MetallicGlossMap_ST_arr, _MetallicGlossMap_ST);
			float2 uv_MetallicGlossMap = i.uv_texcoord * _MetallicGlossMap_ST_Instance.xy + _MetallicGlossMap_ST_Instance.zw;
			float4 tex2DNode1254 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_Linear_Repeat, uv_MetallicGlossMap );
			float _Metallic_Instance = UNITY_ACCESS_INSTANCED_PROP(_Metallic_arr, _Metallic);
			float Metallic1371 = ( tex2DNode1254.r * _Metallic_Instance );
			s1272.Metallic = Metallic1371;
			float _Glossiness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glossiness_arr, _Glossiness);
			float Smoothness1375 = ( tex2DNode1254.a * _Glossiness_Instance );
			s1272.Smoothness = Smoothness1375;
			float4 _OcclusionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionMap_ST_arr, _OcclusionMap_ST);
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST_Instance.xy + _OcclusionMap_ST_Instance.zw;
			float _OcclusionStrength_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionStrength_arr, _OcclusionStrength);
			float AO1250 = ( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_Linear_Repeat, uv_OcclusionMap ).g * _OcclusionStrength_Instance );
			s1272.Occlusion = AO1250;

			data.light = gi.light;

			UnityGI gi1272 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g1272 = UnityGlossyEnvironmentSetup( s1272.Smoothness, data.worldViewDir, s1272.Normal, float3(0,0,0));
			gi1272 = UnityGlobalIllumination( data, s1272.Occlusion, s1272.Normal, g1272 );
			#endif

			float3 surfResult1272 = LightingStandard ( s1272, viewDir, gi1272 ).rgb;
			surfResult1272 += s1272.Emission;

			#ifdef UNITY_PASS_FORWARDADD//1272
			surfResult1272 -= s1272.Emission;
			#endif//1272
			float3 StandardSetup1214 = surfResult1272;
			float3 temp_cast_10 = (0.0).xxx;
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float3 lerpResult7_g158 = lerp( StandardSetup1214 , temp_cast_10 , _EnableToon_Instance);
			float4 temp_cast_12 = (0.0).xxxx;
			float4 temp_cast_13 = (0.0).xxxx;
			float3 lerpResult7_g156 = lerp( ( ( mul( float4( (WorldNormalVector( i , NormalMap1269 )) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , ( ( mul( float4( normalize( WorldReflectionVector( i , NormalMap1269 ) ) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , 0.5);
			float3 temp_output_1452_0 = lerpResult7_g156;
			float4 _MatCapColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColor_arr, _MatCapColor);
			float4 _MatCapMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapMask_ST_arr, _MatCapMask_ST);
			float2 uv2_MatCapMask = i.uv3_texcoord3 * _MatCapMask_ST_Instance.xy + _MatCapMask_ST_Instance.zw;
			float4 tex2DNode1419 = SAMPLE_TEXTURE2D( _MatCapMask, sampler_Linear_Repeat, uv2_MatCapMask );
			float _AddMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCap_arr, _AddMatCap);
			float4 temp_cast_19 = (0.0).xxxx;
			float4 _MatCapColorAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColorAdditive_arr, _MatCapColorAdditive);
			float _AddMatCapAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCapAdditive_arr, _AddMatCapAdditive);
			float _EnableMatCap2_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap2_arr, _EnableMatCap2);
			float4 lerpResult7_g155 = lerp( temp_cast_19 , ( ( SAMPLE_TEXTURE2D( _MatCapAdditive, sampler_Linear_Repeat, temp_output_1452_0.xy ) * _MatCapColorAdditive_Instance * ( 1.0 - tex2DNode1419 ) ) * _AddMatCapAdditive_Instance ) , _EnableMatCap2_Instance);
			float _EnableMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap_arr, _EnableMatCap);
			float4 lerpResult7_g153 = lerp( temp_cast_13 , ( ( ( SAMPLE_TEXTURE2D( _MatCap, sampler_Linear_Repeat, temp_output_1452_0.xy ) * _MatCapColor_Instance * tex2DNode1419 ) * _AddMatCap_Instance ) + lerpResult7_g155 ) , _EnableMatCap_Instance);
			float4 temp_output_1427_0 = lerpResult7_g153;
			float4 MatCap1439 = temp_output_1427_0;
			float4 StandardShading1437 = ( ( tex2DNode1278 * _Color_Instance ) + MatCap1439 );
			float4 temp_cast_21 = (0.0).xxxx;
			float4 _GlitterMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterMap_ST_arr, _GlitterMap_ST);
			float2 uv6_GlitterMap = i.ase_texcoord7.xy * _GlitterMap_ST_Instance.xy + _GlitterMap_ST_Instance.zw;
			float2 _NoiseSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_NoiseSpeed_arr, _NoiseSpeed);
			float2 panner1402 = ( _Time.y * _NoiseSpeed_Instance + i.uv_texcoord);
			float3 hsvTorgb3_g149 = HSVToRGB( float3(SAMPLE_TEXTURE2D( _GlitterNoise, sampler_GlitterNoise, panner1402 ).r,1.0,1.0) );
			float normalizeResult1390 = normalize( ( hsvTorgb3_g149.z - 0.9999 ) );
			float3 temp_cast_22 = (normalizeResult1390).xxx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 normalizeResult1405 = normalize( ase_worldViewDir );
			float dotResult1387 = dot( temp_cast_22 , ( 1.0 - normalizeResult1405 ) );
			float3 temp_cast_23 = (saturate( dotResult1387 )).xxx;
			float grayscale1391 = Luminance(temp_cast_23);
			float4 _Glitter_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glitter_ST_arr, _Glitter_ST);
			float2 uv_Glitter = i.uv_texcoord * _Glitter_ST_Instance.xy + _Glitter_ST_Instance.zw;
			float4 _GlitterColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterColor_arr, _GlitterColor);
			float _EnableGlitter_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlitter_arr, _EnableGlitter);
			float4 lerpResult7_g151 = lerp( temp_cast_21 , ( ( SAMPLE_TEXTURE2D( _GlitterMap, sampler_Linear_Repeat, uv6_GlitterMap ) * grayscale1391 ) * ( SAMPLE_TEXTURE2D( _Glitter, sampler_Glitter, uv_Glitter ) * _GlitterColor_Instance ) ) , _EnableGlitter_Instance);
			float4 glitterRender1415 = lerpResult7_g151;
			float _RimOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOffset_arr, _RimOffset);
			float dotResult1243 = dot( normalize( (WorldNormalVector( i , NormalMap1269 )) ) , ase_worldViewDir );
			float normalviewdir1244 = dotResult1243;
			float saferPower1350 = abs( ( 1.0 - saturate( ( _RimOffset_Instance + normalviewdir1244 ) ) ) );
			float _RimPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimPower_arr, _RimPower);
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1239 = dot( normalize( (WorldNormalVector( i , NormalMap1269 )) ) , ase_worldlightDir );
			float NormalLightDir1240 = dotResult1239;
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 _RimTint_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimTint_arr, _RimTint);
			float _RimOverride_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOverride_arr, _RimOverride);
			float4 Rim_Lighting1339 = ( ( saturate( ( pow( saferPower1350 , _RimPower_Instance ) * ( NormalLightDir1240 * ase_lightAtten ) ) ) * ( ase_lightColor * _RimTint_Instance ) ) * _RimOverride_Instance );
			float4 temp_cast_24 = (0.0).xxxx;
			float dotResult1294 = dot( ( ase_worldViewDir + _WorldSpaceLightPos0.xyz ) , (WorldNormalVector( i , NormalMap1269 )) );
			float _GlossyReflections_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlossyReflections_arr, _GlossyReflections);
			float smoothstepResult1407 = smoothstep( 1.1 , 1.12 , pow( dotResult1294 , ( ( 1.0 - _GlossyReflections_Instance ) * 20.0 ) ));
			float4 _SpecGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecGlossMap_ST_arr, _SpecGlossMap_ST);
			float2 uv_SpecGlossMap = i.uv_texcoord * _SpecGlossMap_ST_Instance.xy + _SpecGlossMap_ST_Instance.zw;
			float4 _SpecColorToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecColorToon_arr, _SpecColorToon);
			float _SpecularLightMix_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularLightMix_arr, _SpecularLightMix);
			float4 lerpResult1303 = lerp( _SpecColorToon_Instance , ase_lightColor , _SpecularLightMix_Instance);
			float _SpecularHighlights_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularHighlights_arr, _SpecularHighlights);
			float _EnableSpecular_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableSpecular_arr, _EnableSpecular);
			float4 lerpResult7_g157 = lerp( temp_cast_24 , ( ase_lightAtten * ( ( smoothstepResult1407 * ( SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_Linear_Repeat, uv_SpecGlossMap ) * lerpResult1303 ) ) * _SpecularHighlights_Instance ) ) , _EnableSpecular_Instance);
			float4 Specular1420 = lerpResult7_g157;
			float4 temp_cast_25 = (0.0).xxxx;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float _InvertDirection_Instance = UNITY_ACCESS_INSTANCED_PROP(_InvertDirection_arr, _InvertDirection);
			float lerpResult1326 = lerp( ase_vertex3Pos.y , -ase_vertex3Pos.y , _InvertDirection_Instance);
			float temp_output_1332_0 = ( _SizeSpeedInterval.x * _SizeSpeedInterval.y );
			float mulTime1334 = _Time.y * temp_output_1332_0;
			float temp_output_1314_0 = ( fmod( ( ( lerpResult1326 * _SizeSpeedInterval.x ) + mulTime1334 ) , ( ( temp_output_1332_0 + 1.0 ) * _SizeSpeedInterval.z ) ) + ( _TailHeadFalloff - 1.0 ) );
			float saferPower1321 = abs( ( 1.0 - ( saturate( ( temp_output_1314_0 * ( -1.0 / ( 1.0 - _TailHeadFalloff ) ) ) ) + saturate( ( temp_output_1314_0 * ( 1.0 / _TailHeadFalloff ) ) ) ) ) );
			float fresnelNdotV1312 = dot( (WorldNormalVector( i , NormalMap1269 )), ase_worldViewDir );
			float fresnelNode1312 = ( _GlintFresnel.x + _GlintFresnel.y * pow( max( 1.0 - fresnelNdotV1312 , 0.0001 ), _GlintFresnel.z ) );
			float4 _GlintMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlintMap_ST_arr, _GlintMap_ST);
			float2 uv_GlintMap = i.uv_texcoord * _GlintMap_ST_Instance.xy + _GlintMap_ST_Instance.zw;
			float _EnableGlint_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlint_arr, _EnableGlint);
			float4 lerpResult7_g154 = lerp( temp_cast_25 , ( ( _GlintColor * pow( saferPower1321 , 5.0 ) * fresnelNode1312 * 2.0 ) * SAMPLE_TEXTURE2D( _GlintMap, sampler_Linear_Repeat, uv_GlintMap ) ) , _EnableGlint_Instance);
			float4 Glint1430 = lerpResult7_g154;
			float4 ToonShading1273 = ( ( StandardShading1437 + Emission1274 ) + glitterRender1415 + Rim_Lighting1339 + Specular1420 + Glint1430 );
			float4 lerpResult7_g159 = lerp( temp_cast_12 , ToonShading1273 , _EnableToon_Instance);
			c.rgb = ( float4( lerpResult7_g158 , 0.0 ) + lerpResult7_g159 ).rgb;
			c.a = Opacity1286;
			c.rgb *= c.a;
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
			float4 tex2DNode1278 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 temp_output_1281_0 = ( tex2DNode1278 * SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap ) );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 albedo1279 = ( temp_output_1281_0 * _Color_Instance );
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1269 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1239 = dot( normalize( (WorldNormalVector( i , NormalMap1269 )) ) , ase_worldlightDir );
			float NormalLightDir1240 = dotResult1239;
			float2 temp_cast_1 = ((NormalLightDir1240*0.5 + 0.5)).xx;
			float4 Shadow1217 = ( albedo1279 * SAMPLE_TEXTURE2D( _ToonRamp, sampler_ToonRamp, temp_cast_1 ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 Lighting1216 = ( Shadow1217 * ( ase_lightColor * float4( ( float3(0,0,0) + 1 ) , 0.0 ) ) );
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float4 lerpResult7_g160 = lerp( temp_cast_0 , Lighting1216 , _EnableToon_Instance);
			o.Emission = lerpResult7_g160.rgb;
		}

		ENDCG
	}
	Fallback "Standard"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19105
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;80;914.1671,19.9218;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Legoman99573/Toon Alpha Premultiplied;False;False;False;False;False;False;False;False;False;False;False;False;True;False;True;False;False;False;False;False;True;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Premultiply;0.5;True;True;0;False;Transparent;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;3;1;False;_SrcBlend;10;False;_SrcDST;2;5;False;_SrcBlend;10;False;;0;False;;1;False;;0;False;0;0.1226415,0.1226415,0.1226415,0;VertexScale;True;False;Cylindrical;False;True;Relative;0;Standard;-1;-1;-1;-1;0;True;0;0;True;_CullingMode;-1;0;True;_Cutoff;1;Include;./Includes/AudioLink.cginc;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1192;-3618.418,3069.862;Inherit;False;3548.67;1426.547;;26;1460;1435;1421;1420;1410;1409;1408;1407;1306;1305;1304;1303;1302;1301;1300;1299;1298;1297;1296;1295;1294;1293;1292;1291;1290;1289;Specular;0.3411765,0.3411765,0.3411765,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1193;-3616.523,1934.64;Inherit;False;3543.927;1046.716;;19;1459;1356;1355;1354;1353;1352;1351;1350;1349;1348;1347;1346;1345;1344;1343;1342;1341;1340;1339;Rim Lighting;0.4623167,0.6132076,0.4367658,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1194;-6051.732,-1492.65;Inherit;False;1972.41;956.1793;;15;1463;1441;1440;1437;1286;1285;1284;1283;1282;1281;1280;1279;1278;1277;1276;Albedo and Transparency;0.1009256,0.6804498,0.7924528,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1195;-2666.682,-444.4144;Inherit;False;711.3267;381.5787;;2;1454;1287;Used Components;0.772549,0.5450981,0.4392157,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1196;-8107.441,-1490.134;Inherit;False;1996.66;787.3569;;11;1483;1384;1383;1382;1381;1380;1379;1378;1377;1275;1274;Emission;0.3490196,0.5176471,0.5607843,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1197;-4028.598,-1492.518;Inherit;False;2307.922;955.9736;;9;1484;1482;1481;1470;1469;1468;1467;1461;1273;Toon Shading;0.509434,0.2418903,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1198;-2148.543,0.7162323;Inherit;False;807.2709;492.0006;;8;1485;1360;1359;1358;1357;1272;1271;1214;Standard Shading;0.8078432,0.7294118,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1199;-3326.867,-7.726364;Inherit;False;1111.183;505.3101;;7;1270;1269;1268;1267;1266;1265;1264;Normal Map;0,0.3058824,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1200;-3626.868,544.8146;Inherit;False;3556.902;1343.892;;34;1466;1465;1464;1462;1453;1452;1451;1450;1449;1448;1447;1446;1445;1444;1443;1439;1438;1428;1427;1426;1419;1288;1263;1262;1261;1260;1259;1258;1257;1256;1255;1213;1212;1211;MatCap;0,1,0.8470588,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1201;-1690.371,-1487.833;Inherit;False;1098.461;950.1898;;8;1442;1375;1374;1371;1370;1338;1254;1253;Metallic and Smoothness;1,0,0,0.2117647;0;0
Node;AmplifyShaderEditor.CommentaryNode;1202;-1851.963,-446.2252;Inherit;False;1076.269;357.3183;;5;1376;1252;1251;1250;1249;Ambient Occlusion;0,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1203;-8110.816,-618.2903;Inherit;False;1998.691;619.2851;;7;1478;1369;1368;1367;1366;1365;1248;Height Map (unused);1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1204;-3321.747,-459.4292;Inherit;False;623.561;400.0698;;2;1373;1372;Sampler States;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1205;-8117.596,1465.94;Inherit;False;4441.134;2135.596;;25;1423;1422;1415;1406;1405;1404;1403;1402;1401;1400;1399;1398;1397;1396;1395;1394;1393;1392;1391;1390;1389;1388;1387;1386;1385;Glitter;1,0.004716992,0.964993,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1206;-4510.645,-21.27446;Inherit;False;1148.977;502.5762;;5;1246;1245;1244;1243;1242;Normal View Dir;0.2641509,0.2641509,0.2641509,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1207;-4505.769,-457.0776;Inherit;False;1138.415;395.5507;;6;1458;1241;1240;1239;1238;1237;Normal Light Dir;0.4339623,0.4339623,0.4339623,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1208;-8116.243,529.8278;Inherit;False;4435.092;886.3752;;31;1425;1424;1418;1417;1414;1413;1412;1411;1364;1363;1362;1361;1247;1236;1235;1234;1233;1232;1231;1230;1229;1228;1227;1226;1225;1224;1223;1222;1221;1220;1219;AudioLink;0.5566038,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1209;-8110.412,60.89003;Inherit;False;2019.533;432.7555;;7;1479;1471;1457;1456;1455;1218;1217;Shadow;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1210;-6040.356,-454.8262;Inherit;False;1493.02;934.3415;;9;1480;1477;1476;1475;1474;1473;1472;1216;1215;Lighting;0.9384004,1,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1211;-1393.287,986.5973;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1212;-967.3224,1149.506;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1213;-1679.722,1391.306;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1214;-1547.272,105.0645;Inherit;False;StandardSetup;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1215;-5699.858,-404.8263;Inherit;False;1217;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1216;-4771.855,-164.826;Inherit;False;Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1217;-6314.878,199.5676;Inherit;True;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1218;-6615.935,205.5149;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1219;-3905.151,904.5173;Inherit;False;AudioLink;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1220;-5272.378,763.4377;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1221;-4807.758,1016.636;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1222;-5433.855,1011.699;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1223;-5942.52,1202.545;Inherit;False;amplitude;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;1224;-5089.855,917.7013;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1225;-5647.378,943.4384;Inherit;False;1247;hueShift;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1226;-5871.565,917.8284;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RGBToHSVNode;1227;-5653.378,712.4379;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1228;-5653.855,1048.699;Inherit;False;1223;amplitude;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1229;-6304.405,1103.074;Inherit;False;4BandAmplitudeLerp;-1;;146;3cf4b6e83381a9a4f84f8cf857bc3af5;0;2;2;INT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1230;-6752.917,1154.33;Inherit;False;BandPulse;-1;;147;c478702160369ce4480fa2fb6d734ffa;0;3;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1231;-6480.609,1163.376;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;128;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1232;-6332.565,579.8278;Inherit;True;Property;_EmissionMapAudioLink0;Emission Map;18;0;Create;False;0;0;0;False;0;False;-1;None;None;True;4;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1233;-6777.373,923.9713;Inherit;False;InstancedProperty;_Band;Band;22;3;[Header];[IntRange];[Enum];Create;True;1;Audio Section;4;Bass;0;Low Mid;1;High Mid;2;Treble;3;0;False;0;False;0;0;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1234;-6278.489,862.1073;Inherit;False;InstancedProperty;_EmissionColorAudioLink0;Emission Color;20;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1235;-5087.159,1081.536;Inherit;False;InstancedProperty;_EmissionScale;Emission Scale;21;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1236;-6652.424,595.1938;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1237;-4247.924,-261.5114;Inherit;False;True;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1238;-4216.925,-403.5112;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1239;-3893.621,-315.527;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1240;-3591.355,-316.6971;Inherit;False;NormalLightDir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1241;-4455.769,-407.0776;Inherit;False;1269;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1242;-4201.532,37.15894;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1243;-3928.533,56.15883;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1244;-3666.86,50.77074;Inherit;False;normalviewdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1245;-4195.112,274.3571;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1246;-4460.646,28.72563;Inherit;False;1269;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1247;-6730.196,747.9871;Inherit;False;hueShift;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1248;-6336.126,-396.7417;Inherit;False;heightMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1249;-1184.039,-302.6248;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1250;-979.9795,-256.6026;Inherit;False;AO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1251;-1558.437,-396.2247;Inherit;True;Property;_OcclusionMap;Occlusion;10;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Occlusion Culling Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1252;-1801.963,-371.1354;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1253;-1640.371,-1204.008;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;1254;-1398.068,-1233.464;Inherit;True;Property;_MetallicGlossMap;Metalic (R) and Smoothness (A);3;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Metallic Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1255;-2458.422,1448.508;Inherit;True;Property;_MatCapAdditive;MatCap 2;35;0;Create;False;0;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1256;-2431.541,844.2184;Inherit;False;InstancedProperty;_MatCapColor;MatCap 1 Color;32;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1257;-2368.722,1663.008;Inherit;False;InstancedProperty;_MatCapColorAdditive;MatCap 2 Color;36;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1258;-2069.721,1403.008;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1259;-1944.921,1672.109;Inherit;False;InstancedProperty;_AddMatCapAdditive;Add MatCap 2;37;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1260;-1937.941,853.3823;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1261;-2106.121,1094.909;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1262;-2451.572,1074.303;Inherit;True;Property;_MatCap;MatCap 1;31;1;[HDR];Create;False;0;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerStateNode;1263;-2808.601,1369.748;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1264;-3257.757,315.5602;Inherit;False;InstancedProperty;_DetailNormalMapScale;Detail Normal Scale;19;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1265;-3231.017,90.37375;Inherit;False;InstancedProperty;_BumpScale;Normal Scale;7;0;Create;False;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1266;-3035.594,42.27364;Inherit;True;Property;_BumpMap;Normal Map;6;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1267;-3030.085,267.5836;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;16;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1268;-3276.867,184.1623;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1269;-2439.684,141.3299;Inherit;False;NormalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;1270;-2727.893,146.0646;Inherit;True;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1271;-2098.543,50.71623;Inherit;False;1279;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomStandardSurface;1272;-1792.781,107.527;Inherit;False;Metallic;Tangent;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,1;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1273;-2055.226,-1210.59;Inherit;False;ToonShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1274;-6332.092,-1440.134;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1275;-6622.357,-1412.894;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1276;-4843.967,-977.811;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1277;-5800.064,-1442.65;Inherit;True;Property;_DetailAlbedoMap;Detail Albedo x2;15;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Albedo Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1278;-5802.094,-1251.848;Inherit;True;Property;_MainTex;Albedo (RGB) and Transparency (A);0;1;[Header];Create;False;4;Standard Setup;;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Main Texture;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1279;-4312.157,-1160.968;Inherit;False;albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;-4655.478,-1183.561;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1281;-5151.074,-1164.076;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1282;-4952.369,-1234.833;Inherit;False;AlbedoTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1283;-5707.975,-1038.814;Inherit;False;InstancedProperty;_Color;Color;1;0;Create;False;0;0;0;False;0;False;1,1,1,1;0.8,0.8,0.8,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1284;-5797.337,-845.7621;Inherit;True;Property;_DetailMask;Detail Mask (A);12;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Mask Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1285;-5351.367,-935.0345;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1286;-5190.822,-882.0371;Inherit;False;Opacity;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1287;-2328.659,-395.413;Inherit;False;InstancedProperty;_Cutoff;Alpha Cutoff;2;0;Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Back;1;Front;2;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1288;-2712.251,594.8146;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1289;-3286.383,3119.862;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightPos;1290;-3335.287,3301.667;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldNormalVector;1291;-3291.872,3419.047;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1292;-3568.418,3400.245;Inherit;False;1269;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1293;-2975.871,3220.228;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1294;-2728.871,3292.228;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1295;-2404.871,3292.228;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1296;-1165.606,3306.254;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1297;-857.6067,3287.254;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;1298;-1229.606,3207.254;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1299;-1802.41,3295.15;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1300;-1914.841,3562.805;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1301;-2254.647,3533.957;Inherit;True;Property;_SpecGlossMap;Specular Map (RGB);49;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1302;-1563.607,3414.254;Inherit;False;InstancedProperty;_SpecularHighlights;Spec Intensity;52;0;Create;False;0;0;0;False;0;False;0.56;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1303;-2057.179,3774.946;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1304;-2325.183,3843.417;Inherit;False;InstancedProperty;_SpecColorToon;Specular Color;50;0;Create;False;0;0;0;True;0;False;0.2,0.2,0.2,1;0.1999999,0.1999999,0.1999999,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;1305;-2269.836,4026.521;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1306;-2381.835,4151.521;Inherit;False;InstancedProperty;_SpecularLightMix;Specular Light Mix;53;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1307;-8109.958,3670.518;Inherit;False;4431.949;816.9406;;38;1436;1434;1433;1432;1431;1430;1429;1416;1337;1336;1335;1334;1333;1332;1331;1330;1329;1328;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;1315;1314;1313;1312;1311;1310;1309;1308;Glint;0.9986145,1,0.4103774,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1308;-6454.375,3940.181;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1309;-7110.375,3844.18;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1310;-6934.375,3876.18;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.27;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1311;-6454.375,4068.181;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1312;-5275.327,4213.513;Inherit;True;Standard;WorldNormal;ViewDir;False;True;5;0;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.01;False;2;FLOAT;1;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1313;-6262.375,4164.181;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1314;-6246.375,3876.18;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1315;-6262.375,4036.181;Inherit;False;2;0;FLOAT;-1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1316;-5958.375,4100.181;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2.25;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1317;-5958.375,3876.18;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1318;-5814.375,4100.181;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1319;-5622.375,3972.181;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1320;-5478.375,3972.181;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1321;-5286.375,3972.181;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1322;-5814.375,3876.18;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1323;-4696.6,3949.233;Inherit;True;4;4;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;1324;-5865.304,4222.727;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1325;-6110.379,4247.375;Inherit;False;1269;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1326;-7317.929,3808.748;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FmodOpNode;1327;-6710.375,3876.18;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1328;-7589.93,3719.747;Inherit;False;InstancedProperty;_InvertDirection;Invert Direction;57;2;[IntRange];[Enum];Create;True;0;2;False;0;True;1;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1329;-5030.375,3812.18;Float;False;Property;_GlintColor;Color;56;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;1330;-5654.375,4292.181;Float;False;Property;_GlintFresnel;Fresnel Bias, Scale, Power;60;0;Create;False;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1331;-6806.375,4180.181;Float;False;Property;_TailHeadFalloff;Tail Head Falloff;58;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1332;-7291.739,4321.16;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1333;-6780.023,4087.78;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;1334;-7166.082,4044.64;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1335;-7082.539,4112.354;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1336;-7540.762,4122.07;Float;False;Property;_SizeSpeedInterval;Size Speed Interval;59;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1337;-4959.024,4344.155;Inherit;False;Constant;_Float4;Float 4;62;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1338;-1414.048,-1408.749;Inherit;False;InstancedProperty;_Metallic;Metallic;4;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1339;-403.4772,2005.119;Inherit;True;Rim_Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1340;-894.2642,2010.039;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1341;-1341.345,2012.279;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1342;-1621.218,2287.174;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;1343;-1953.859,2252.091;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;1344;-2004.131,2389.091;Inherit;False;InstancedProperty;_RimTint;Rim Tint;45;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;1345;-1736.923,2022.057;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1346;-2016.76,2021.861;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1347;-2258.507,2400.55;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1348;-2467.778,2375.196;Inherit;False;1240;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1349;-2493.048,2484.82;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1350;-2356.255,2020.333;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1351;-2629.268,2279.493;Inherit;False;InstancedProperty;_RimPower;Rim Power;47;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1352;-3480.877,2703.808;Inherit;False;1244;normalviewdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1353;-3450.407,2610.514;Inherit;False;InstancedProperty;_RimOffset;Rim Offset;46;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1354;-3265.17,2650.983;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1355;-2933.229,2310.46;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1356;-2654.044,2058.463;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1357;-2107.543,119.7162;Inherit;False;1269;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1358;-2094.947,257.5286;Inherit;False;1371;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1359;-2092.222,395.6614;Inherit;False;1250;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1360;-2111.039,326.7347;Inherit;False;1375;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1361;-8102.194,659.7636;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1362;-7634.418,664.7396;Inherit;False;RotateUVFill;-1;;148;459952d587cbfe742a7e7f4a8a0a4169;0;2;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1363;-7800.498,787.5966;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1364;-7229.054,923.6073;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;1365;-7807.432,-544.7452;Inherit;True;Property;_ParallaxMap;Height Map (G);8;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Height Map Setup (Only Works for Fallbacks);0;0;True;0;False;-1;None;None;True;0;True;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;1366;-7683.764,-300.9671;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1367;-7295.9,-408.3998;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1368;-6881.349,-395.0343;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1369;-7311.162,-147.9685;Inherit;False;InstancedProperty;_Parallax;Height Scale;9;0;Create;False;0;0;0;True;0;False;0;0.02;0.005;0.08;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1370;-1027.651,-1436.563;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1371;-820.6549,-1428.622;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1372;-3283.893,-350.0472;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1373;-2928.582,-353.5709;Inherit;False;samplerState;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1374;-1037.192,-1117.532;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1375;-810.7269,-1122.706;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1376;-1500.154,-182.3743;Inherit;False;InstancedProperty;_OcclusionStrength;Occlusion Strength;11;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1377;-7832.711,-1117.257;Inherit;True;Property;_EmissionMap;Emission;13;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Emission Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1378;-7433.795,-1004.197;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1379;-6774.226,-1348.114;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1380;-7297.12,-1143.589;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1381;-6925.174,-1222.549;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1382;-6943.079,-1110.693;Inherit;False;1219;AudioLink;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1383;-8073.162,-1068.431;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode;1384;-7274.262,-1210.082;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1385;-7838.739,1951.174;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1386;-6698.056,1988.285;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1387;-5704.968,2154.015;Inherit;True;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1388;-5426.968,2153.015;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1389;-7004.077,1966.015;Inherit;True;Simple HUE;-1;;149;32abb5f0db087604486c2db83a2e817a;0;1;1;FLOAT;0;False;4;FLOAT3;6;FLOAT;7;FLOAT;5;FLOAT;8
Node;AmplifyShaderEditor.NormalizeNode;1390;-6307.901,2017.622;Inherit;True;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;1391;-4997.626,2150.182;Inherit;True;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1392;-4589.135,2145.967;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1393;-4554.171,2541.175;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1394;-4948.675,2504.331;Inherit;True;Property;_Glitter;Glitter;39;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1395;-4874.028,2688.435;Inherit;False;InstancedProperty;_GlitterColor;Glitter Color;42;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1396;-4912.543,1943.634;Inherit;True;Property;_GlitterMap;Glitter Map;43;0;Create;False;0;0;0;False;0;False;-1;None;None;True;6;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1397;-4309.237,2299.667;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1398;-5274.482,1961.634;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleTimeNode;1399;-7844.143,2239.564;Inherit;True;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1400;-7390.258,1967.189;Inherit;True;Property;_GlitterNoise;Glitter Noise;40;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1401;-6955.917,2227.949;Inherit;False;Constant;_GlitterOffset;GlitterOffset;62;0;Create;True;0;0;0;False;0;False;0.9999;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;1402;-7597.383,2009.325;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1403;-7843.208,2092.543;Inherit;False;InstancedProperty;_NoiseSpeed;Noise Speed;41;0;Create;False;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1404;-6434.596,2392.923;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1405;-6216.572,2397.74;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1406;-5930.724,2398.487;Inherit;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1407;-2147.872,3296.228;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1.1;False;2;FLOAT;1.12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1408;-2988.791,3553.616;Inherit;False;InstancedProperty;_GlossyReflections;Specular Gloss;51;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1409;-2726.625,3556.112;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1410;-2550.863,3535.648;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1411;-8098.846,798.8046;Inherit;False;InstancedProperty;_PulseRotation;Pulse Rotation;26;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1412;-7074.541,745.9473;Inherit;False;InstancedProperty;_AudioHueShift;Audio Hue Shift;25;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1413;-7094.7,1206.822;Inherit;False;InstancedProperty;_Pulse;Pulse;24;1;[Header];Create;True;1;Pulse Across UVs;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1414;-7093.779,1308.66;Inherit;False;InstancedProperty;_Delay;Delay;23;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1415;-3855.691,2323.093;Inherit;False;glitterRender;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PosVertexDataNode;1416;-8046.375,3778.179;Inherit;True;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1417;-4498.46,947.4453;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1418;-4778.46,1215.445;Inherit;False;IsAudioLink;-1;;150;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1419;-2503.234,595.9055;Inherit;True;Property;_MatCapMask;MatCap Mask;30;1;[Header];Create;True;1;;0;0;False;1;Tooltip(Multiplied with the texture for the albedo channel);False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1420;-346.5618,3258.998;Inherit;True;Specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1421;-907.4951,3497.069;Inherit;False;InstancedProperty;_EnableSpecular;Enable Specular;48;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Specular Map Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1422;-4095.178,2330.061;Inherit;True;Switch;-1;;151;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1423;-4281.178,2526.061;Inherit;False;InstancedProperty;_EnableGlitter;Enable Glitter;38;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glitter Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1424;-4229.46,917.5343;Inherit;True;Switch;-1;;152;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1425;-4501.46,1157.534;Inherit;False;InstancedProperty;_EnableAudioLink;Enable AudioLink;17;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;AudioLink Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1426;-1569.705,1638.749;Inherit;False;InstancedProperty;_EnableMatCap2;Enable MatCap 2;34;2;[Header];[ToggleUI];Create;True;1;MatCap 2 Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1427;-682.0792,1184.976;Inherit;True;Switch;-1;;153;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1428;-954.0792,1424.976;Inherit;False;InstancedProperty;_EnableMatCap;Enable MatCap;29;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;MatCap Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1429;-4150.679,3935.418;Inherit;True;Switch;-1;;154;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1430;-3870.858,3931.973;Inherit;False;Glint;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1431;-4287.999,4302.355;Inherit;False;InstancedProperty;_EnableGlint;Enable Glint;54;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glint Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1432;-7526.375,3860.18;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1433;-4382.921,3957.188;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1434;-4711.775,4195.502;Inherit;True;Property;_GlintMap;Glint Map;55;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1435;-2590.901,3701.247;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1436;-4913.09,4246.779;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1437;-4322.295,-961.646;Inherit;False;StandardShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1438;-409.3611,1244.392;Inherit;False;matcapToggle;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1439;-421.9203,1123.412;Inherit;False;MatCap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1440;-4829.265,-731.1105;Inherit;False;1439;MatCap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1441;-4573.3,-887.5403;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1442;-1379.155,-1014.439;Inherit;False;InstancedProperty;_Glossiness;Smoothness;5;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1443;-2895.584,1084.469;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;1444;-3291.08,922.9393;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.WorldReflectionVector;1445;-3345.554,1107.448;Inherit;False;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1446;-3082.072,657.7833;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1447;-2921.819,723.2282;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1448;-2884.511,839.3054;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1449;-3396.367,721.5883;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;1450;-2846.152,1201.893;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1451;-1325.705,1295.749;Inherit;True;Switch;-1;;155;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1452;-2710.602,950.1564;Inherit;True;Switch;-1;;156;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1453;-3055.837,1019.024;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1454;-2616.682,-394.4144;Inherit;False;InstancedProperty;_CullingMode;Cull Mode;61;3;[Header];[IntRange];[Enum];Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Front;1;Back;2;0;True;0;False;0;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1455;-8017.572,256.3279;Inherit;False;Constant;_Float0;Float 0;3;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1456;-7796.255,232.1846;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1457;-7329.714,259.3366;Inherit;True;Property;_ToonRamp;Toon Ramp;28;1;[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightAttenuation;1458;-4468.241,-255.4955;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1459;-1323.7,2451.051;Inherit;False;InstancedProperty;_RimOverride;Enable Rim;44;2;[Header];[ToggleUI];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Rim Lighting Setup;2;Disabled;0;Enabled;1;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1460;-635.4951,3257.069;Inherit;True;Switch;-1;;157;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1461;-2584.597,-1282.251;Inherit;True;5;5;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1462;-3611.792,973.2013;Inherit;False;1269;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1463;-6041.817,-1203.955;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1464;-1920.844,1224.981;Inherit;False;InstancedProperty;_AddMatCap;Add MatCap;33;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1465;-3372.313,1298.454;Inherit;False;Constant;_Offset;Offset;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1466;-3217.613,1396.254;Inherit;False;Constant;_MatCapNormalReflection;Normal Reflection Mix;30;1;[Header];Create;False;2;0 for Normals;1 For Reflections;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1467;-3701.151,-988.1702;Inherit;False;1415;glitterRender;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1468;-3696.656,-908.9063;Inherit;False;1339;Rim_Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1469;-3680.849,-831.4604;Inherit;False;1420;Specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1470;-3683.068,-752.5461;Inherit;False;1430;Glint;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1471;-8070.785,117.825;Inherit;False;1240;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;1472;-5779.857,-212.826;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LightAttenuation;1473;-5910.628,170.7484;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1474;-5626.697,56.90854;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;1475;-5899.857,57.17413;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1476;-6034.356,-114.5781;Inherit;False;1269;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1477;-5404.372,-67.65556;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1478;-8041.98,-536.4387;Inherit;False;1373;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1479;-6836.802,110.89;Inherit;False;1279;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1480;-5056.94,-218.1974;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1481;-3735.538,-1298.321;Inherit;False;1437;StandardShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1482;-3700.662,-1095.616;Inherit;False;1274;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1483;-7694.372,-886.9795;Inherit;False;InstancedProperty;_EmissionColor;Color;14;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1484;-3246.991,-1285.503;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1485;-2096.788,189.5179;Inherit;False;1274;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1486;234.5878,-402.8781;Inherit;False;1286;Opacity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1487;33.03247,137.9291;Inherit;False;1273;ToonShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1488;23.88025,327.9807;Inherit;False;InstancedProperty;_EnableToon;Enable  Toon;27;2;[Header];[ToggleUI];Create;True;3;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Toon Map Setup;Will disable Metallic and Ambient Occlusion Setups;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1489;279.4295,-140.8126;Inherit;True;Switch;-1;;158;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT;1;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1490;38.42944,60.18733;Inherit;False;Constant;_Float2;Float 2;62;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1491;619.8218,10.75864;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1492;17.52997,-81.49466;Inherit;False;1214;StandardSetup;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1493;280.8803,69.98074;Inherit;True;Switch;-1;;159;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1494;581.1696,291.543;Inherit;True;Switch;-1;;160;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1495;251.2904,417.7549;Inherit;False;1216;Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1496;246.7469,512.7889;Inherit;False;1248;heightMap;1;0;OBJECT;;False;1;FLOAT3;0
WireConnection;80;2;1494;0
WireConnection;80;9;1486;0
WireConnection;80;13;1491;0
WireConnection;1211;0;1260;0
WireConnection;1211;1;1464;0
WireConnection;1212;0;1211;0
WireConnection;1212;1;1451;0
WireConnection;1213;0;1258;0
WireConnection;1213;1;1259;0
WireConnection;1214;0;1272;0
WireConnection;1216;0;1480;0
WireConnection;1217;0;1218;0
WireConnection;1218;0;1479;0
WireConnection;1218;1;1457;0
WireConnection;1219;0;1424;0
WireConnection;1220;0;1227;1
WireConnection;1220;1;1222;0
WireConnection;1221;0;1224;0
WireConnection;1221;1;1235;0
WireConnection;1222;0;1225;0
WireConnection;1222;1;1228;0
WireConnection;1223;0;1229;0
WireConnection;1224;0;1220;0
WireConnection;1224;1;1227;2
WireConnection;1224;2;1227;3
WireConnection;1226;0;1232;0
WireConnection;1226;1;1234;0
WireConnection;1226;2;1229;0
WireConnection;1227;0;1226;0
WireConnection;1229;2;1233;0
WireConnection;1229;4;1231;0
WireConnection;1230;1;1364;0
WireConnection;1230;2;1413;0
WireConnection;1230;3;1414;0
WireConnection;1231;0;1230;0
WireConnection;1232;7;1236;0
WireConnection;1238;0;1241;0
WireConnection;1239;0;1238;0
WireConnection;1239;1;1237;0
WireConnection;1240;0;1239;0
WireConnection;1242;0;1246;0
WireConnection;1243;0;1242;0
WireConnection;1243;1;1245;0
WireConnection;1244;0;1243;0
WireConnection;1247;0;1412;0
WireConnection;1248;0;1368;0
WireConnection;1249;0;1251;2
WireConnection;1249;1;1376;0
WireConnection;1250;0;1249;0
WireConnection;1251;7;1252;0
WireConnection;1254;7;1253;0
WireConnection;1255;1;1452;0
WireConnection;1255;7;1263;0
WireConnection;1258;0;1255;0
WireConnection;1258;1;1257;0
WireConnection;1258;2;1261;0
WireConnection;1260;0;1262;0
WireConnection;1260;1;1256;0
WireConnection;1260;2;1419;0
WireConnection;1261;0;1419;0
WireConnection;1262;1;1452;0
WireConnection;1262;7;1263;0
WireConnection;1266;5;1265;0
WireConnection;1266;7;1268;0
WireConnection;1267;5;1264;0
WireConnection;1267;7;1268;0
WireConnection;1269;0;1270;0
WireConnection;1270;0;1266;0
WireConnection;1270;1;1267;0
WireConnection;1272;0;1271;0
WireConnection;1272;1;1357;0
WireConnection;1272;2;1485;0
WireConnection;1272;3;1358;0
WireConnection;1272;4;1360;0
WireConnection;1272;5;1359;0
WireConnection;1273;0;1461;0
WireConnection;1274;0;1275;0
WireConnection;1275;0;1379;0
WireConnection;1275;1;1382;0
WireConnection;1276;0;1278;0
WireConnection;1276;1;1283;0
WireConnection;1277;7;1463;0
WireConnection;1278;7;1463;0
WireConnection;1279;0;1280;0
WireConnection;1280;0;1281;0
WireConnection;1280;1;1283;0
WireConnection;1281;0;1278;0
WireConnection;1281;1;1277;0
WireConnection;1282;0;1281;0
WireConnection;1284;7;1463;0
WireConnection;1285;0;1278;4
WireConnection;1285;1;1283;4
WireConnection;1285;2;1284;4
WireConnection;1286;0;1285;0
WireConnection;1291;0;1292;0
WireConnection;1293;0;1289;0
WireConnection;1293;1;1290;1
WireConnection;1294;0;1293;0
WireConnection;1294;1;1291;0
WireConnection;1295;0;1294;0
WireConnection;1295;1;1410;0
WireConnection;1296;0;1299;0
WireConnection;1296;1;1302;0
WireConnection;1297;0;1298;0
WireConnection;1297;1;1296;0
WireConnection;1299;0;1407;0
WireConnection;1299;1;1300;0
WireConnection;1300;0;1301;0
WireConnection;1300;1;1303;0
WireConnection;1301;7;1435;0
WireConnection;1303;0;1304;0
WireConnection;1303;1;1305;0
WireConnection;1303;2;1306;0
WireConnection;1308;0;1331;0
WireConnection;1309;0;1326;0
WireConnection;1309;1;1336;1
WireConnection;1310;0;1309;0
WireConnection;1310;1;1334;0
WireConnection;1311;0;1331;0
WireConnection;1312;0;1324;0
WireConnection;1312;1;1330;1
WireConnection;1312;2;1330;2
WireConnection;1312;3;1330;3
WireConnection;1313;1;1331;0
WireConnection;1314;0;1327;0
WireConnection;1314;1;1308;0
WireConnection;1315;1;1311;0
WireConnection;1316;0;1314;0
WireConnection;1316;1;1313;0
WireConnection;1317;0;1314;0
WireConnection;1317;1;1315;0
WireConnection;1318;0;1316;0
WireConnection;1319;0;1322;0
WireConnection;1319;1;1318;0
WireConnection;1320;0;1319;0
WireConnection;1321;0;1320;0
WireConnection;1322;0;1317;0
WireConnection;1323;0;1329;0
WireConnection;1323;1;1321;0
WireConnection;1323;2;1312;0
WireConnection;1323;3;1337;0
WireConnection;1324;0;1325;0
WireConnection;1326;0;1416;2
WireConnection;1326;1;1432;0
WireConnection;1326;2;1328;0
WireConnection;1327;0;1310;0
WireConnection;1327;1;1333;0
WireConnection;1332;0;1336;1
WireConnection;1332;1;1336;2
WireConnection;1333;0;1335;0
WireConnection;1333;1;1336;3
WireConnection;1334;0;1332;0
WireConnection;1335;0;1332;0
WireConnection;1339;0;1340;0
WireConnection;1340;0;1341;0
WireConnection;1340;1;1459;0
WireConnection;1341;0;1345;0
WireConnection;1341;1;1342;0
WireConnection;1342;0;1343;0
WireConnection;1342;1;1344;0
WireConnection;1345;0;1346;0
WireConnection;1346;0;1350;0
WireConnection;1346;1;1347;0
WireConnection;1347;0;1348;0
WireConnection;1347;1;1349;0
WireConnection;1350;0;1356;0
WireConnection;1350;1;1351;0
WireConnection;1354;0;1353;0
WireConnection;1354;1;1352;0
WireConnection;1355;0;1354;0
WireConnection;1356;0;1355;0
WireConnection;1362;1;1361;0
WireConnection;1362;2;1363;0
WireConnection;1363;0;1411;0
WireConnection;1364;0;1362;0
WireConnection;1365;7;1478;0
WireConnection;1367;0;1365;2
WireConnection;1367;1;1366;0
WireConnection;1368;0;1367;0
WireConnection;1368;1;1369;0
WireConnection;1370;0;1254;1
WireConnection;1370;1;1338;0
WireConnection;1371;0;1370;0
WireConnection;1373;0;1372;0
WireConnection;1374;0;1254;4
WireConnection;1374;1;1442;0
WireConnection;1375;0;1374;0
WireConnection;1377;7;1383;0
WireConnection;1378;0;1377;0
WireConnection;1378;1;1483;0
WireConnection;1379;0;1381;0
WireConnection;1380;0;1378;0
WireConnection;1381;0;1384;0
WireConnection;1384;0;1380;0
WireConnection;1386;0;1389;8
WireConnection;1386;1;1401;0
WireConnection;1387;0;1390;0
WireConnection;1387;1;1406;0
WireConnection;1388;0;1387;0
WireConnection;1389;1;1400;1
WireConnection;1390;0;1386;0
WireConnection;1391;0;1388;0
WireConnection;1392;0;1396;0
WireConnection;1392;1;1391;0
WireConnection;1393;0;1394;0
WireConnection;1393;1;1395;0
WireConnection;1396;7;1398;0
WireConnection;1397;0;1392;0
WireConnection;1397;1;1393;0
WireConnection;1400;1;1402;0
WireConnection;1402;0;1385;0
WireConnection;1402;2;1403;0
WireConnection;1402;1;1399;0
WireConnection;1405;0;1404;0
WireConnection;1406;0;1405;0
WireConnection;1407;0;1295;0
WireConnection;1409;0;1408;0
WireConnection;1410;0;1409;0
WireConnection;1415;0;1422;0
WireConnection;1417;0;1221;0
WireConnection;1417;1;1418;0
WireConnection;1419;7;1288;0
WireConnection;1420;0;1460;0
WireConnection;1422;3;1397;0
WireConnection;1422;8;1423;0
WireConnection;1424;3;1417;0
WireConnection;1424;8;1425;0
WireConnection;1427;3;1212;0
WireConnection;1427;8;1428;0
WireConnection;1429;3;1433;0
WireConnection;1429;8;1431;0
WireConnection;1430;0;1429;0
WireConnection;1432;0;1416;2
WireConnection;1433;0;1323;0
WireConnection;1433;1;1434;0
WireConnection;1434;7;1436;0
WireConnection;1437;0;1441;0
WireConnection;1438;0;1427;0
WireConnection;1439;0;1427;0
WireConnection;1441;0;1276;0
WireConnection;1441;1;1440;0
WireConnection;1443;0;1453;0
WireConnection;1443;1;1465;0
WireConnection;1445;0;1462;0
WireConnection;1446;0;1449;0
WireConnection;1446;1;1444;0
WireConnection;1447;0;1446;0
WireConnection;1447;1;1465;0
WireConnection;1448;0;1447;0
WireConnection;1448;1;1465;0
WireConnection;1449;0;1462;0
WireConnection;1450;0;1443;0
WireConnection;1450;1;1465;0
WireConnection;1451;3;1213;0
WireConnection;1451;8;1426;0
WireConnection;1452;2;1448;0
WireConnection;1452;3;1450;0
WireConnection;1452;8;1466;0
WireConnection;1453;0;1445;0
WireConnection;1453;1;1444;0
WireConnection;1456;0;1471;0
WireConnection;1456;1;1455;0
WireConnection;1456;2;1455;0
WireConnection;1457;1;1456;0
WireConnection;1460;3;1297;0
WireConnection;1460;8;1421;0
WireConnection;1461;0;1484;0
WireConnection;1461;1;1467;0
WireConnection;1461;2;1468;0
WireConnection;1461;3;1469;0
WireConnection;1461;4;1470;0
WireConnection;1474;0;1475;0
WireConnection;1474;1;1473;0
WireConnection;1475;0;1476;0
WireConnection;1477;0;1472;0
WireConnection;1477;1;1474;0
WireConnection;1480;0;1215;0
WireConnection;1480;1;1477;0
WireConnection;1484;0;1481;0
WireConnection;1484;1;1482;0
WireConnection;1489;2;1492;0
WireConnection;1489;3;1490;0
WireConnection;1489;8;1488;0
WireConnection;1491;0;1489;0
WireConnection;1491;1;1493;0
WireConnection;1493;2;1490;0
WireConnection;1493;3;1487;0
WireConnection;1493;8;1488;0
WireConnection;1494;2;1490;0
WireConnection;1494;3;1495;0
WireConnection;1494;8;1488;0
ASEEND*/
//CHKSM=BA34403EE19A4C2CF7D431B0F472CB7962636DF7