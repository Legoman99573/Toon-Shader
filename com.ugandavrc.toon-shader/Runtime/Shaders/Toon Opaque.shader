// Upgrade NOTE: upgraded instancing buffer 'Legoman99573ToonOpaque' to new syntax.

// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Legoman99573/Toon Opaque"
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
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
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
		UNITY_DECLARE_TEX2D_NOSAMPLER(_ToonRamp);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		UNITY_DECLARE_TEX2D_NOSAMPLER(_DetailNormalMap);
		SamplerState sampler_ToonRamp;
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

		UNITY_INSTANCING_BUFFER_START(Legoman99573ToonOpaque)
			UNITY_DEFINE_INSTANCED_PROP(float4, _OcclusionMap_ST)
#define _OcclusionMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterMap_ST)
#define _GlitterMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapMask_ST)
#define _MatCapMask_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColor)
#define _MatCapColor_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlintMap_ST)
#define _GlintMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _Glitter_ST)
#define _Glitter_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterColor)
#define _GlitterColor_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MetallicGlossMap_ST)
#define _MetallicGlossMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _RimTint)
#define _RimTint_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColorAdditive)
#define _MatCapColorAdditive_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColorAudioLink0)
#define _EmissionColorAudioLink0_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMapAudioLink0_ST)
#define _EmissionMapAudioLink0_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecGlossMap_ST)
#define _SpecGlossMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMap_ST)
#define _EmissionMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecColorToon)
#define _SpecColorToon_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _MainTex_ST)
#define _MainTex_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailNormalMap_ST)
#define _DetailNormalMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailAlbedoMap_ST)
#define _DetailAlbedoMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
#define _Color_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColor)
#define _EmissionColor_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float4, _BumpMap_ST)
#define _BumpMap_ST_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float2, _NoiseSpeed)
#define _NoiseSpeed_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _InvertDirection)
#define _InvertDirection_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableSpecular)
#define _EnableSpecular_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularHighlights)
#define _SpecularHighlights_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOffset)
#define _RimOffset_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _RimPower)
#define _RimPower_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOverride)
#define _RimOverride_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _GlossyReflections)
#define _GlossyReflections_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularLightMix)
#define _SpecularLightMix_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlitter)
#define _EnableGlitter_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap)
#define _EnableMatCap_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Cutoff)
#define _Cutoff_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCapAdditive)
#define _AddMatCapAdditive_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Parallax)
#define _Parallax_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _CullingMode)
#define _CullingMode_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _BumpScale)
#define _BumpScale_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _DetailNormalMapScale)
#define _DetailNormalMapScale_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableToon)
#define _EnableToon_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Band)
#define _Band_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _PulseRotation)
#define _PulseRotation_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap2)
#define _EnableMatCap2_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Pulse)
#define _Pulse_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _AudioHueShift)
#define _AudioHueShift_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EmissionScale)
#define _EmissionScale_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableAudioLink)
#define _EnableAudioLink_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Metallic)
#define _Metallic_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Glossiness)
#define _Glossiness_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _OcclusionStrength)
#define _OcclusionStrength_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCap)
#define _AddMatCap_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _Delay)
#define _Delay_arr Legoman99573ToonOpaque
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlint)
#define _EnableGlint_arr Legoman99573ToonOpaque
		UNITY_INSTANCING_BUFFER_END(Legoman99573ToonOpaque)


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

		inline float AudioLinkLerp3_g176( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		float IfAudioLinkv2Exists1_g180(  )
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
			SurfaceOutputStandard s1630 = (SurfaceOutputStandard ) 0;
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 tex2DNode1853 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 tex2DNode1843 = SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap );
			float4 temp_output_1852_0 = ( tex2DNode1853 * tex2DNode1843 );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 albedo1855 = ( temp_output_1852_0 * _Color_Instance );
			s1630.Albedo = albedo1855.rgb;
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1627 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			s1630.Normal = normalize( WorldNormalVector( i , NormalMap1627 ) );
			float4 _EmissionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMap_ST_arr, _EmissionMap_ST);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST_Instance.xy + _EmissionMap_ST_Instance.zw;
			float4 _EmissionColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColor_arr, _EmissionColor);
			float3 temp_cast_5 = (0.0).xxx;
			float4 _EmissionMapAudioLink0_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMapAudioLink0_ST_arr, _EmissionMapAudioLink0_ST);
			float2 uv4_EmissionMapAudioLink0 = i.ase_texcoord5.xy * _EmissionMapAudioLink0_ST_Instance.xy + _EmissionMapAudioLink0_ST_Instance.zw;
			float4 _EmissionColorAudioLink0_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColorAudioLink0_arr, _EmissionColorAudioLink0);
			float _Band_Instance = UNITY_ACCESS_INSTANCED_PROP(_Band_arr, _Band);
			int Band3_g176 = (int)_Band_Instance;
			float2 break6_g178 = i.uv_texcoord;
			float temp_output_5_0_g178 = ( break6_g178.x - 0.5 );
			float _PulseRotation_Instance = UNITY_ACCESS_INSTANCED_PROP(_PulseRotation_arr, _PulseRotation);
			float temp_output_2_0_g178 = radians( _PulseRotation_Instance );
			float temp_output_3_0_g178 = cos( temp_output_2_0_g178 );
			float temp_output_8_0_g178 = sin( temp_output_2_0_g178 );
			float temp_output_20_0_g178 = ( 1.0 / ( abs( temp_output_3_0_g178 ) + abs( temp_output_8_0_g178 ) ) );
			float temp_output_7_0_g178 = ( break6_g178.y - 0.5 );
			float2 appendResult16_g178 = (float2(( ( ( temp_output_5_0_g178 * temp_output_3_0_g178 * temp_output_20_0_g178 ) + ( temp_output_7_0_g178 * temp_output_8_0_g178 * temp_output_20_0_g178 ) ) + 0.5 ) , ( ( ( temp_output_7_0_g178 * temp_output_3_0_g178 * temp_output_20_0_g178 ) - ( temp_output_5_0_g178 * temp_output_8_0_g178 * temp_output_20_0_g178 ) ) + 0.5 )));
			float _Pulse_Instance = UNITY_ACCESS_INSTANCED_PROP(_Pulse_arr, _Pulse);
			float _Delay_Instance = UNITY_ACCESS_INSTANCED_PROP(_Delay_arr, _Delay);
			float Delay3_g176 = ( ( (_Delay_Instance + (( appendResult16_g178.x * _Pulse_Instance ) - 0.0) * (1.0 - _Delay_Instance) / (1.0 - 0.0)) % 1.0 ) * 128.0 );
			float localAudioLinkLerp3_g176 = AudioLinkLerp3_g176( Band3_g176 , Delay3_g176 );
			float temp_output_1587_0 = localAudioLinkLerp3_g176;
			float3 hsvTorgb1585 = RGBToHSV( ( SAMPLE_TEXTURE2D( _EmissionMapAudioLink0, sampler_Linear_Repeat, uv4_EmissionMapAudioLink0 ) * _EmissionColorAudioLink0_Instance * temp_output_1587_0 ).rgb );
			float _AudioHueShift_Instance = UNITY_ACCESS_INSTANCED_PROP(_AudioHueShift_arr, _AudioHueShift);
			float hueShift1605 = _AudioHueShift_Instance;
			float amplitude1581 = temp_output_1587_0;
			float3 hsvTorgb1582 = HSVToRGB( float3(( hsvTorgb1585.x + ( hueShift1605 * amplitude1581 ) ),hsvTorgb1585.y,hsvTorgb1585.z) );
			float _EmissionScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionScale_arr, _EmissionScale);
			float localIfAudioLinkv2Exists1_g180 = IfAudioLinkv2Exists1_g180();
			float _EnableAudioLink_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableAudioLink_arr, _EnableAudioLink);
			float3 lerpResult7_g182 = lerp( temp_cast_5 , ( ( hsvTorgb1582 * _EmissionScale_Instance ) * localIfAudioLinkv2Exists1_g180 ) , _EnableAudioLink_Instance);
			float3 AudioLink1577 = lerpResult7_g182;
			float4 Emission1632 = ( ( SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) * _EmissionColor_Instance ) + float4( AudioLink1577 , 0.0 ) );
			s1630.Emission = Emission1632.rgb;
			float4 _MetallicGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MetallicGlossMap_ST_arr, _MetallicGlossMap_ST);
			float2 uv_MetallicGlossMap = i.uv_texcoord * _MetallicGlossMap_ST_Instance.xy + _MetallicGlossMap_ST_Instance.zw;
			float4 tex2DNode1612 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_Linear_Repeat, uv_MetallicGlossMap );
			float _Metallic_Instance = UNITY_ACCESS_INSTANCED_PROP(_Metallic_arr, _Metallic);
			float Metallic1717 = ( tex2DNode1612.r * _Metallic_Instance );
			s1630.Metallic = Metallic1717;
			float _Glossiness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glossiness_arr, _Glossiness);
			float Smoothness1721 = ( tex2DNode1612.a * _Glossiness_Instance );
			s1630.Smoothness = Smoothness1721;
			float4 _OcclusionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionMap_ST_arr, _OcclusionMap_ST);
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST_Instance.xy + _OcclusionMap_ST_Instance.zw;
			float _OcclusionStrength_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionStrength_arr, _OcclusionStrength);
			float AO1608 = ( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_Linear_Repeat, uv_OcclusionMap ).g * _OcclusionStrength_Instance );
			s1630.Occlusion = AO1608;

			data.light = gi.light;

			UnityGI gi1630 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g1630 = UnityGlossyEnvironmentSetup( s1630.Smoothness, data.worldViewDir, s1630.Normal, float3(0,0,0));
			gi1630 = UnityGlobalIllumination( data, s1630.Occlusion, s1630.Normal, g1630 );
			#endif

			float3 surfResult1630 = LightingStandard ( s1630, viewDir, gi1630 ).rgb;
			surfResult1630 += s1630.Emission;

			#ifdef UNITY_PASS_FORWARDADD//1630
			surfResult1630 -= s1630.Emission;
			#endif//1630
			float3 StandardSetup1572 = surfResult1630;
			float3 temp_cast_10 = (0.0).xxx;
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float3 lerpResult7_g189 = lerp( StandardSetup1572 , temp_cast_10 , _EnableToon_Instance);
			float4 temp_cast_12 = (0.0).xxxx;
			float4 temp_cast_13 = (0.0).xxxx;
			float3 lerpResult7_g186 = lerp( ( ( mul( float4( (WorldNormalVector( i , NormalMap1627 )) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , ( ( mul( float4( normalize( WorldReflectionVector( i , NormalMap1627 ) ) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , 0.5);
			float3 temp_output_1795_0 = lerpResult7_g186;
			float4 _MatCapColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColor_arr, _MatCapColor);
			float4 _MatCapMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapMask_ST_arr, _MatCapMask_ST);
			float2 uv2_MatCapMask = i.uv3_texcoord3 * _MatCapMask_ST_Instance.xy + _MatCapMask_ST_Instance.zw;
			float4 tex2DNode1765 = SAMPLE_TEXTURE2D( _MatCapMask, sampler_Linear_Repeat, uv2_MatCapMask );
			float _AddMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCap_arr, _AddMatCap);
			float4 temp_cast_19 = (0.0).xxxx;
			float4 _MatCapColorAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColorAdditive_arr, _MatCapColorAdditive);
			float _AddMatCapAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCapAdditive_arr, _AddMatCapAdditive);
			float _EnableMatCap2_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap2_arr, _EnableMatCap2);
			float4 lerpResult7_g185 = lerp( temp_cast_19 , ( ( SAMPLE_TEXTURE2D( _MatCapAdditive, sampler_Linear_Repeat, temp_output_1795_0.xy ) * _MatCapColorAdditive_Instance * ( 1.0 - tex2DNode1765 ) ) * _AddMatCapAdditive_Instance ) , _EnableMatCap2_Instance);
			float _EnableMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap_arr, _EnableMatCap);
			float4 lerpResult7_g183 = lerp( temp_cast_13 , ( ( ( SAMPLE_TEXTURE2D( _MatCap, sampler_Linear_Repeat, temp_output_1795_0.xy ) * _MatCapColor_Instance * tex2DNode1765 ) * _AddMatCap_Instance ) + lerpResult7_g185 ) , _EnableMatCap_Instance);
			float4 temp_output_1773_0 = lerpResult7_g183;
			float4 MatCap1784 = temp_output_1773_0;
			float4 StandardShading1856 = ( ( tex2DNode1853 * _Color_Instance ) + MatCap1784 );
			float4 temp_cast_21 = (0.0).xxxx;
			float4 _GlitterMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterMap_ST_arr, _GlitterMap_ST);
			float2 uv6_GlitterMap = i.ase_texcoord7.xy * _GlitterMap_ST_Instance.xy + _GlitterMap_ST_Instance.zw;
			float2 _NoiseSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_NoiseSpeed_arr, _NoiseSpeed);
			float2 panner1748 = ( _Time.y * _NoiseSpeed_Instance + i.uv_texcoord);
			float3 hsvTorgb3_g179 = HSVToRGB( float3(SAMPLE_TEXTURE2D( _GlitterNoise, sampler_GlitterNoise, panner1748 ).r,1.0,1.0) );
			float normalizeResult1736 = normalize( ( hsvTorgb3_g179.z - 0.9999 ) );
			float3 temp_cast_22 = (normalizeResult1736).xxx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 normalizeResult1751 = normalize( ase_worldViewDir );
			float dotResult1733 = dot( temp_cast_22 , ( 1.0 - normalizeResult1751 ) );
			float3 temp_cast_23 = (saturate( dotResult1733 )).xxx;
			float grayscale1737 = Luminance(temp_cast_23);
			float4 _Glitter_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glitter_ST_arr, _Glitter_ST);
			float2 uv_Glitter = i.uv_texcoord * _Glitter_ST_Instance.xy + _Glitter_ST_Instance.zw;
			float4 _GlitterColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterColor_arr, _GlitterColor);
			float _EnableGlitter_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlitter_arr, _EnableGlitter);
			float4 lerpResult7_g181 = lerp( temp_cast_21 , ( ( SAMPLE_TEXTURE2D( _GlitterMap, sampler_Linear_Repeat, uv6_GlitterMap ) * grayscale1737 ) * ( SAMPLE_TEXTURE2D( _Glitter, sampler_Glitter, uv_Glitter ) * _GlitterColor_Instance ) ) , _EnableGlitter_Instance);
			float4 glitterRender1761 = lerpResult7_g181;
			float _RimOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOffset_arr, _RimOffset);
			float dotResult1601 = dot( normalize( (WorldNormalVector( i , NormalMap1627 )) ) , ase_worldViewDir );
			float normalviewdir1602 = dotResult1601;
			float saferPower1696 = abs( ( 1.0 - saturate( ( _RimOffset_Instance + normalviewdir1602 ) ) ) );
			float _RimPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimPower_arr, _RimPower);
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1597 = dot( normalize( (WorldNormalVector( i , NormalMap1627 )) ) , ase_worldlightDir );
			float NormalLightDir1598 = dotResult1597;
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 _RimTint_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimTint_arr, _RimTint);
			float _RimOverride_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOverride_arr, _RimOverride);
			float4 Rim_Lighting1685 = ( ( saturate( ( pow( saferPower1696 , _RimPower_Instance ) * ( NormalLightDir1598 * ase_lightAtten ) ) ) * ( ase_lightColor * _RimTint_Instance ) ) * _RimOverride_Instance );
			float4 temp_cast_24 = (0.0).xxxx;
			float dotResult1641 = dot( ( ase_worldViewDir + _WorldSpaceLightPos0.xyz ) , (WorldNormalVector( i , NormalMap1627 )) );
			float _GlossyReflections_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlossyReflections_arr, _GlossyReflections);
			float smoothstepResult1753 = smoothstep( 1.1 , 1.12 , pow( dotResult1641 , ( ( 1.0 - _GlossyReflections_Instance ) * 20.0 ) ));
			float4 _SpecGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecGlossMap_ST_arr, _SpecGlossMap_ST);
			float2 uv_SpecGlossMap = i.uv_texcoord * _SpecGlossMap_ST_Instance.xy + _SpecGlossMap_ST_Instance.zw;
			float4 _SpecColorToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecColorToon_arr, _SpecColorToon);
			float _SpecularLightMix_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularLightMix_arr, _SpecularLightMix);
			float4 lerpResult1650 = lerp( _SpecColorToon_Instance , ase_lightColor , _SpecularLightMix_Instance);
			float _SpecularHighlights_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularHighlights_arr, _SpecularHighlights);
			float _EnableSpecular_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableSpecular_arr, _EnableSpecular);
			float4 lerpResult7_g187 = lerp( temp_cast_24 , ( ase_lightAtten * ( ( smoothstepResult1753 * ( SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_Linear_Repeat, uv_SpecGlossMap ) * lerpResult1650 ) ) * _SpecularHighlights_Instance ) ) , _EnableSpecular_Instance);
			float4 Specular1766 = lerpResult7_g187;
			float4 temp_cast_25 = (0.0).xxxx;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float _InvertDirection_Instance = UNITY_ACCESS_INSTANCED_PROP(_InvertDirection_arr, _InvertDirection);
			float lerpResult1672 = lerp( ase_vertex3Pos.y , -ase_vertex3Pos.y , _InvertDirection_Instance);
			float temp_output_1678_0 = ( _SizeSpeedInterval.x * _SizeSpeedInterval.y );
			float mulTime1680 = _Time.y * temp_output_1678_0;
			float temp_output_1660_0 = ( fmod( ( ( lerpResult1672 * _SizeSpeedInterval.x ) + mulTime1680 ) , ( ( temp_output_1678_0 + 1.0 ) * _SizeSpeedInterval.z ) ) + ( _TailHeadFalloff - 1.0 ) );
			float saferPower1667 = abs( ( 1.0 - ( saturate( ( temp_output_1660_0 * ( -1.0 / ( 1.0 - _TailHeadFalloff ) ) ) ) + saturate( ( temp_output_1660_0 * ( 1.0 / _TailHeadFalloff ) ) ) ) ) );
			float fresnelNdotV1658 = dot( (WorldNormalVector( i , NormalMap1627 )), ase_worldViewDir );
			float fresnelNode1658 = ( _GlintFresnel.x + _GlintFresnel.y * pow( max( 1.0 - fresnelNdotV1658 , 0.0001 ), _GlintFresnel.z ) );
			float4 _GlintMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlintMap_ST_arr, _GlintMap_ST);
			float2 uv_GlintMap = i.uv_texcoord * _GlintMap_ST_Instance.xy + _GlintMap_ST_Instance.zw;
			float _EnableGlint_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlint_arr, _EnableGlint);
			float4 lerpResult7_g184 = lerp( temp_cast_25 , ( ( _GlintColor * pow( saferPower1667 , 5.0 ) * fresnelNode1658 * 2.0 ) * SAMPLE_TEXTURE2D( _GlintMap, sampler_Linear_Repeat, uv_GlintMap ) ) , _EnableGlint_Instance);
			float4 Glint1776 = lerpResult7_g184;
			float4 ToonShading1631 = ( ( StandardShading1856 + Emission1632 ) + glitterRender1761 + Rim_Lighting1685 + Specular1766 + Glint1776 );
			float4 lerpResult7_g190 = lerp( temp_cast_12 , ToonShading1631 , _EnableToon_Instance);
			float4 color1835 = IsGammaSpace() ? float4(0.4622642,0.4622642,0.4622642,1) : float4(0.1807607,0.1807607,0.1807607,1);
			c.rgb = ( float4( lerpResult7_g189 , 0.0 ) + ( lerpResult7_g190 * color1835 ) ).rgb;
			c.a = 1;
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
			float4 tex2DNode1853 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 tex2DNode1843 = SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap );
			float4 temp_output_1852_0 = ( tex2DNode1853 * tex2DNode1843 );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 albedo1855 = ( temp_output_1852_0 * _Color_Instance );
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1627 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1597 = dot( normalize( (WorldNormalVector( i , NormalMap1627 )) ) , ase_worldlightDir );
			float NormalLightDir1598 = dotResult1597;
			float2 temp_cast_1 = ((NormalLightDir1598*0.5 + 0.5)).xx;
			float4 Shadow1575 = ( albedo1855 * SAMPLE_TEXTURE2D( _ToonRamp, sampler_ToonRamp, temp_cast_1 ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 Lighting1574 = ( Shadow1575 * ( ase_lightColor * float4( ( float3(0,0,0) + 1 ) , 0.0 ) ) );
			float4 color1835 = IsGammaSpace() ? float4(0.4622642,0.4622642,0.4622642,1) : float4(0.1807607,0.1807607,0.1807607,1);
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float4 lerpResult7_g188 = lerp( temp_cast_0 , ( Lighting1574 * color1835 ) , _EnableToon_Instance);
			o.Emission = lerpResult7_g188.rgb;
		}

		ENDCG
	}
	Fallback "Standard"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;80;1147.167,25.9218;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Legoman99573/Toon Opaque;False;False;False;False;False;False;False;False;False;False;False;False;True;False;True;False;False;False;False;False;True;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;5;False;_SrcBlend;10;False;_SrcDST;0;5;False;_SrcBlend;10;False;;0;False;;1;False;;0;False;0;0.1226415,0.1226415,0.1226415,0;VertexScale;True;False;Cylindrical;False;True;Relative;0;Standard;-1;-1;-1;-1;0;True;0;0;True;_CullingMode;-1;0;True;_Cutoff;1;Include;./Includes/AudioLink.cginc;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1549;-3334.517,3211.965;Inherit;False;3548.67;1426.547;;26;1803;1781;1767;1766;1756;1755;1754;1753;1653;1652;1651;1650;1649;1648;1647;1646;1645;1644;1643;1642;1641;1640;1639;1638;1637;1636;Specular;0.3411765,0.3411765,0.3411765,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1550;-3332.622,2076.743;Inherit;False;3543.927;1046.716;;19;1802;1702;1701;1700;1699;1698;1697;1696;1695;1694;1693;1692;1691;1690;1689;1688;1687;1686;1685;Rim Lighting;0.4623167,0.6132076,0.4367658,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1551;-5760.163,-1341.514;Inherit;False;1954.689;914.2401;;15;1856;1855;1854;1853;1852;1851;1850;1849;1848;1847;1846;1845;1844;1843;1842;Albedo and Transparency;0.1009256,0.6804498,0.7924528,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1552;-2382.781,-302.3123;Inherit;False;711.3267;381.5787;;2;1797;1634;Used Components;0.772549,0.5450981,0.4392157,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1553;-7823.538,-1348.031;Inherit;False;1996.66;787.3569;;11;1825;1730;1729;1728;1727;1726;1725;1724;1723;1633;1632;Emission;0.3490196,0.5176471,0.5607843,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1554;-3744.697,-1350.415;Inherit;False;2307.922;955.9736;;9;1826;1824;1823;1812;1811;1810;1809;1804;1631;Toon Shading;0.509434,0.2418903,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1555;-1864.642,142.8184;Inherit;False;807.2709;492.0006;;8;1827;1706;1705;1704;1703;1630;1629;1572;Standard Shading;0.8078432,0.7294118,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1556;-3042.966,134.3758;Inherit;False;1111.183;505.3101;;7;1628;1627;1626;1625;1624;1623;1622;Normal Map;0,0.3058824,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1557;-3342.967,686.9167;Inherit;False;3556.902;1343.892;;34;1808;1807;1806;1805;1796;1795;1794;1793;1792;1791;1790;1789;1788;1787;1786;1784;1783;1774;1773;1772;1765;1635;1621;1620;1619;1618;1617;1616;1615;1614;1613;1571;1570;1569;MatCap;0,1,0.8470588,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1558;-1406.469,-1345.73;Inherit;False;1098.461;950.1898;;8;1785;1721;1720;1717;1716;1684;1612;1611;Metallic and Smoothness;1,0,0,0.2117647;0;0
Node;AmplifyShaderEditor.CommentaryNode;1559;-1568.06,-304.123;Inherit;False;1076.269;357.3183;;5;1722;1610;1609;1608;1607;Ambient Occlusion;0,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1560;-7826.913,-476.1881;Inherit;False;1998.691;619.2851;;7;1820;1715;1714;1713;1712;1711;1606;Height Map (unused);1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1561;-3037.846,-317.3269;Inherit;False;623.561;400.0698;;2;1719;1718;Sampler States;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1562;-7833.692,1608.043;Inherit;False;4441.134;2135.596;;25;1769;1768;1761;1752;1751;1750;1749;1748;1747;1746;1745;1744;1743;1742;1741;1740;1739;1738;1737;1736;1735;1734;1733;1732;1731;Glitter;1,0.004716992,0.964993,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1563;-4226.743,120.8277;Inherit;False;1148.977;502.5762;;5;1604;1603;1602;1601;1600;Normal View Dir;0.2641509,0.2641509,0.2641509,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1564;-4221.867,-314.9755;Inherit;False;1138.415;395.5507;;6;1801;1599;1598;1597;1596;1595;Normal Light Dir;0.4339623,0.4339623,0.4339623,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1565;-7832.339,671.9299;Inherit;False;4435.092;886.3752;;31;1771;1770;1764;1763;1760;1759;1758;1757;1710;1709;1708;1707;1605;1594;1593;1592;1591;1590;1589;1588;1587;1586;1585;1584;1583;1582;1581;1580;1579;1578;1577;AudioLink;0.5566038,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1566;-7826.509,202.9922;Inherit;False;2019.533;432.7555;;7;1821;1813;1800;1799;1798;1576;1575;Shadow;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1567;-5756.453,-312.724;Inherit;False;1493.02;934.3415;;9;1822;1819;1818;1817;1816;1815;1814;1574;1573;Lighting;0.9384004,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1568;-7826.054,3812.621;Inherit;False;4431.949;816.9406;;38;1782;1780;1779;1778;1777;1776;1775;1762;1683;1682;1681;1680;1679;1678;1677;1676;1675;1674;1673;1672;1671;1670;1669;1668;1667;1666;1665;1664;1663;1662;1661;1660;1659;1658;1657;1656;1655;1654;Glint;0.9986145,1,0.4103774,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1569;-1109.385,1128.7;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1570;-683.421,1291.609;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1571;-1395.82,1533.409;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1572;-1263.37,247.1667;Inherit;False;StandardSetup;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1573;-5415.955,-262.724;Inherit;False;1575;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1574;-4487.953,-22.72388;Inherit;False;Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1575;-6030.976,341.6698;Inherit;True;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1576;-6332.033,347.6171;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1577;-3621.25,1046.62;Inherit;False;AudioLink;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1578;-4988.476,905.5399;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1579;-4523.855,1158.739;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1580;-5149.953,1153.802;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1581;-5658.617,1344.648;Inherit;False;amplitude;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;1582;-4805.953,1059.803;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1583;-5363.476,1085.541;Inherit;False;1605;hueShift;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1584;-5587.662,1059.93;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RGBToHSVNode;1585;-5369.476,854.5399;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1586;-5369.953,1190.802;Inherit;False;1581;amplitude;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1587;-6020.502,1245.177;Inherit;False;4BandAmplitudeLerp;-1;;176;3cf4b6e83381a9a4f84f8cf857bc3af5;0;2;2;INT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1588;-6469.015,1296.433;Inherit;False;BandPulse;-1;;177;c478702160369ce4480fa2fb6d734ffa;0;3;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1589;-6196.707,1305.479;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;128;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1590;-6048.662,721.9298;Inherit;True;Property;_EmissionMapAudioLink0;Emission Map;18;0;Create;False;0;0;0;False;0;False;-1;None;None;True;4;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1591;-6493.471,1066.074;Inherit;False;InstancedProperty;_Band;Band;22;3;[Header];[IntRange];[Enum];Create;True;1;Audio Section;4;Bass;0;Low Mid;1;High Mid;2;Treble;3;0;False;0;False;0;0;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1592;-5994.586,1004.209;Inherit;False;InstancedProperty;_EmissionColorAudioLink0;Emission Color;20;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1593;-4803.257,1223.639;Inherit;False;InstancedProperty;_EmissionScale;Emission Scale;21;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1594;-6368.521,737.296;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1595;-3964.021,-119.4093;Inherit;False;True;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1596;-3933.022,-261.409;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1597;-3609.719,-173.4248;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1598;-3307.455,-174.5951;Inherit;False;NormalLightDir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1599;-4171.867,-264.9755;Inherit;False;1627;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1600;-3917.63,179.2611;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1601;-3644.631,198.261;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1602;-3382.959,192.8728;Inherit;False;normalviewdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1603;-3911.21,416.4593;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1604;-4176.744,170.8278;Inherit;False;1627;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1605;-6446.293,890.0894;Inherit;False;hueShift;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1606;-6052.224,-254.6396;Inherit;False;heightMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1607;-900.1375,-160.5227;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1608;-696.0782,-114.5006;Inherit;False;AO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1609;-1274.535,-254.1227;Inherit;True;Property;_OcclusionMap;Occlusion;10;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Occlusion Culling Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1610;-1518.06,-229.0332;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1611;-1356.469,-1061.905;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;1612;-1114.166,-1091.361;Inherit;True;Property;_MetallicGlossMap;Metalic (R) and Smoothness (A);3;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Metallic Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1613;-2174.52,1590.611;Inherit;True;Property;_MatCapAdditive;MatCap 2;35;0;Create;False;0;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1614;-2147.64,986.3206;Inherit;False;InstancedProperty;_MatCapColor;MatCap 1 Color;32;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1615;-2084.821,1805.111;Inherit;False;InstancedProperty;_MatCapColorAdditive;MatCap 2 Color;36;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1616;-1785.819,1545.111;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1617;-1661.018,1814.212;Inherit;False;InstancedProperty;_AddMatCapAdditive;Add MatCap 2;37;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1618;-1654.039,995.4844;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1619;-1822.219,1237.012;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1620;-2167.671,1216.406;Inherit;True;Property;_MatCap;MatCap 1;31;1;[HDR];Create;False;0;0;0;False;0;False;-1;None;1e806559f8a67954ea54ac67a14419f2;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerStateNode;1621;-2524.7,1511.851;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1622;-2973.856,457.6623;Inherit;False;InstancedProperty;_DetailNormalMapScale;Detail Normal Scale;19;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1623;-2947.116,232.4759;Inherit;False;InstancedProperty;_BumpScale;Normal Scale;7;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1624;-2751.693,184.3758;Inherit;True;Property;_BumpMap;Normal Map;6;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1625;-2746.184,409.6858;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;16;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1626;-2992.966,326.2645;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1627;-2155.783,283.4321;Inherit;False;NormalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;1628;-2443.992,288.1668;Inherit;True;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1629;-1814.641,192.8184;Inherit;False;1855;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomStandardSurface;1630;-1508.879,249.6292;Inherit;False;Metallic;Tangent;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,1;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1631;-1771.324,-1068.488;Inherit;False;ToonShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1632;-6048.188,-1298.031;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1633;-6338.455,-1270.791;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1634;-2044.758,-253.3108;Inherit;False;InstancedProperty;_Cutoff;Alpha Cutoff;2;0;Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Back;1;Front;2;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1635;-2428.35,736.9168;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1636;-3002.482,3261.965;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightPos;1637;-3051.386,3443.77;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldNormalVector;1638;-3007.971,3561.15;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1639;-3284.517,3542.348;Inherit;False;1627;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1640;-2691.97,3362.331;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1641;-2444.97,3434.331;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1642;-2120.97,3434.331;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1643;-881.7056,3448.357;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1644;-573.7055,3429.357;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;1645;-945.7054,3349.357;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1646;-1518.508,3437.253;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1647;-1630.938,3704.907;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1648;-1970.746,3676.06;Inherit;True;Property;_SpecGlossMap;Specular Map (RGB);49;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1649;-1279.705,3556.357;Inherit;False;InstancedProperty;_SpecularHighlights;Spec Intensity;52;0;Create;False;0;0;0;False;0;False;0.56;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1650;-1773.277,3917.049;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1651;-2041.282,3985.52;Inherit;False;InstancedProperty;_SpecColorToon;Specular Color;50;0;Create;False;0;0;0;True;0;False;0.2,0.2,0.2,1;0.1999999,0.1999999,0.1999999,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;1652;-1985.935,4168.624;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1653;-2097.934,4293.625;Inherit;False;InstancedProperty;_SpecularLightMix;Specular Light Mix;53;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1654;-6170.473,4082.284;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1655;-6826.473,3986.282;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1656;-6650.473,4018.282;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.27;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1657;-6170.473,4210.284;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1658;-4991.425,4355.616;Inherit;True;Standard;WorldNormal;ViewDir;False;True;5;0;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.01;False;2;FLOAT;1;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1659;-5978.473,4306.285;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1660;-5962.473,4018.282;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1661;-5978.473,4178.284;Inherit;False;2;0;FLOAT;-1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1662;-5674.473,4242.284;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2.25;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1663;-5674.473,4018.282;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1664;-5530.473,4242.284;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1665;-5338.473,4114.284;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1666;-5194.473,4114.284;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1667;-5002.473,4114.284;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1668;-5530.473,4018.282;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1669;-4412.698,4091.336;Inherit;True;4;4;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;1670;-5581.401,4364.829;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1671;-5826.476,4389.478;Inherit;False;1627;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1672;-7034.026,3950.851;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FmodOpNode;1673;-6426.473,4018.282;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1674;-7306.026,3861.85;Inherit;False;InstancedProperty;_InvertDirection;Invert Direction;57;2;[IntRange];[Enum];Create;True;0;2;False;0;True;1;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1675;-4746.473,3954.282;Float;False;Property;_GlintColor;Color;56;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;1676;-5370.473,4434.284;Float;False;Property;_GlintFresnel;Fresnel Bias, Scale, Power;60;0;Create;False;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1677;-6522.473,4322.284;Float;False;Property;_TailHeadFalloff;Tail Head Falloff;58;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1678;-7007.835,4463.263;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1679;-6496.121,4229.883;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;1680;-6882.18,4186.743;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1681;-6798.637,4254.456;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1682;-7256.858,4264.173;Float;False;Property;_SizeSpeedInterval;Size Speed Interval;59;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1683;-4675.122,4486.258;Inherit;False;Constant;_Float4;Float 4;62;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1684;-1130.146,-1266.646;Inherit;False;InstancedProperty;_Metallic;Metallic;4;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1685;-119.5755,2147.222;Inherit;True;Rim_Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1686;-610.3629,2152.142;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1687;-1057.443,2154.382;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1688;-1337.316,2429.277;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;1689;-1669.957,2394.194;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;1690;-1720.228,2531.194;Inherit;False;InstancedProperty;_RimTint;Rim Tint;45;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;1691;-1453.02,2164.16;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1692;-1732.858,2163.964;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1693;-1974.605,2542.653;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1694;-2183.877,2517.299;Inherit;False;1598;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1695;-2209.146,2626.923;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1696;-2072.353,2162.436;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1697;-2345.367,2421.596;Inherit;False;InstancedProperty;_RimPower;Rim Power;47;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1698;-3196.976,2845.91;Inherit;False;1602;normalviewdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1699;-3166.506,2752.616;Inherit;False;InstancedProperty;_RimOffset;Rim Offset;46;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1700;-2981.269,2793.085;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1701;-2649.328,2452.563;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1702;-2370.143,2200.566;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1703;-1823.641,261.8184;Inherit;False;1627;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1704;-1811.045,399.6308;Inherit;False;1717;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1705;-1808.32,537.7636;Inherit;False;1608;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1706;-1827.137,468.8369;Inherit;False;1721;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1707;-7818.29,801.8657;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1708;-7350.515,806.8417;Inherit;False;RotateUVFill;-1;;178;459952d587cbfe742a7e7f4a8a0a4169;0;2;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1709;-7516.595,929.6986;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1710;-6945.151,1065.709;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;1711;-7523.528,-402.6431;Inherit;True;Property;_ParallaxMap;Height Map (G);8;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Height Map Setup (Only Works for Fallbacks);0;0;True;0;False;-1;None;None;True;0;True;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;1712;-7399.86,-158.865;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1713;-7011.997,-266.2976;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1714;-6597.447,-252.9322;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1715;-7027.259,-5.866463;Inherit;False;InstancedProperty;_Parallax;Height Scale;9;0;Create;False;0;0;0;True;0;False;0;0.02;0.005;0.08;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1716;-743.7491,-1294.46;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1717;-536.7535,-1286.519;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1718;-2999.992,-207.9452;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1719;-2644.681,-211.4688;Inherit;False;samplerState;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1720;-753.2906,-975.4299;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1721;-526.8257,-980.6038;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1722;-1216.252,-40.27229;Inherit;False;InstancedProperty;_OcclusionStrength;Occlusion Strength;11;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1723;-7548.808,-975.1548;Inherit;True;Property;_EmissionMap;Emission;13;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Emission Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1724;-7149.891,-862.0942;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1725;-6490.324,-1206.011;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1726;-7013.217,-1001.486;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1727;-6641.271,-1080.446;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1728;-6659.177,-968.5909;Inherit;False;1577;AudioLink;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1729;-7789.259,-926.3287;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode;1730;-6990.358,-1067.979;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1731;-7554.836,2093.277;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1732;-6414.154,2130.388;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1733;-5421.065,2296.118;Inherit;True;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1734;-5143.065,2295.118;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1735;-6720.175,2108.118;Inherit;True;Simple HUE;-1;;179;32abb5f0db087604486c2db83a2e817a;0;1;1;FLOAT;0;False;4;FLOAT3;6;FLOAT;7;FLOAT;5;FLOAT;8
Node;AmplifyShaderEditor.NormalizeNode;1736;-6023.998,2159.725;Inherit;True;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;1737;-4713.724,2292.285;Inherit;True;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1738;-4305.232,2288.07;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1739;-4270.268,2683.278;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1740;-4664.772,2646.434;Inherit;True;Property;_Glitter;Glitter;39;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1741;-4590.125,2830.537;Inherit;False;InstancedProperty;_GlitterColor;Glitter Color;42;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1742;-4628.641,2085.737;Inherit;True;Property;_GlitterMap;Glitter Map;43;0;Create;False;0;0;0;False;0;False;-1;None;None;True;6;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1743;-4025.335,2441.77;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1744;-4990.58,2103.737;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleTimeNode;1745;-7560.239,2381.667;Inherit;True;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1746;-7106.354,2109.292;Inherit;True;Property;_GlitterNoise;Glitter Noise;40;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1747;-6672.015,2370.052;Inherit;False;Constant;_GlitterOffset;GlitterOffset;62;0;Create;True;0;0;0;False;0;False;0.9999;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;1748;-7313.479,2151.428;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1749;-7559.306,2234.646;Inherit;False;InstancedProperty;_NoiseSpeed;Noise Speed;41;0;Create;False;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1750;-6150.692,2535.026;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1751;-5932.669,2539.843;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1752;-5646.822,2540.59;Inherit;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1753;-1863.97,3438.331;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1.1;False;2;FLOAT;1.12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1754;-2704.89,3695.719;Inherit;False;InstancedProperty;_GlossyReflections;Specular Gloss;51;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1755;-2442.724,3698.215;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1756;-2266.962,3677.75;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1757;-7814.942,940.9069;Inherit;False;InstancedProperty;_PulseRotation;Pulse Rotation;26;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1758;-6790.639,888.0493;Inherit;False;InstancedProperty;_AudioHueShift;Audio Hue Shift;25;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1759;-6810.797,1348.925;Inherit;False;InstancedProperty;_Pulse;Pulse;24;1;[Header];Create;True;1;Pulse Across UVs;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1760;-6809.876,1450.763;Inherit;False;InstancedProperty;_Delay;Delay;23;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1761;-3571.79,2465.196;Inherit;False;glitterRender;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PosVertexDataNode;1762;-7762.472,3920.281;Inherit;True;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1763;-4214.558,1089.547;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1764;-4494.558,1357.548;Inherit;False;IsAudioLink;-1;;180;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1765;-2219.333,738.0076;Inherit;True;Property;_MatCapMask;MatCap Mask;30;1;[Header];Create;True;1;;0;0;False;1;Tooltip(Multiplied with the texture for the albedo channel);False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1766;-62.66055,3401.101;Inherit;True;Specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1767;-623.5938,3639.172;Inherit;False;InstancedProperty;_EnableSpecular;Enable Specular;48;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Specular Map Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1768;-3811.277,2472.164;Inherit;True;Switch;-1;;181;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1769;-3997.276,2668.164;Inherit;False;InstancedProperty;_EnableGlitter;Enable Glitter;38;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glitter Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1770;-3945.558,1059.636;Inherit;True;Switch;-1;;182;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1771;-4217.558,1299.637;Inherit;False;InstancedProperty;_EnableAudioLink;Enable AudioLink;17;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;AudioLink Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1772;-1285.803,1780.852;Inherit;False;InstancedProperty;_EnableMatCap2;Enable MatCap 2;34;2;[Header];[ToggleUI];Create;True;1;MatCap 2 Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1773;-398.1778,1327.079;Inherit;True;Switch;-1;;183;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1774;-670.1779,1567.079;Inherit;False;InstancedProperty;_EnableMatCap;Enable MatCap;29;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;MatCap Setup;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1775;-3866.777,4077.521;Inherit;True;Switch;-1;;184;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1776;-3586.957,4074.076;Inherit;False;Glint;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1777;-4004.097,4444.458;Inherit;False;InstancedProperty;_EnableGlint;Enable Glint;54;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glint Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1778;-7242.471,4002.282;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1779;-4099.018,4099.29;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1780;-4427.872,4337.605;Inherit;True;Property;_GlintMap;Glint Map;55;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1781;-2307,3843.35;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1782;-4629.188,4388.882;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1783;-125.4598,1386.495;Inherit;False;matcapToggle;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1784;-138.0188,1265.515;Inherit;False;MatCap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1785;-1095.253,-872.3368;Inherit;False;InstancedProperty;_Glossiness;Smoothness;5;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1786;-2611.683,1226.572;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;1787;-3007.179,1065.042;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.WorldReflectionVector;1788;-3061.654,1249.551;Inherit;False;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1789;-2798.171,799.8854;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1790;-2637.918,865.3303;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1791;-2600.61,981.4075;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1792;-3112.466,863.6906;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;1793;-2562.251,1343.996;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1794;-1041.803,1437.852;Inherit;True;Switch;-1;;185;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1795;-2426.701,1092.259;Inherit;True;Switch;-1;;186;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1796;-2771.936,1161.127;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1797;-2332.781,-252.3124;Inherit;False;InstancedProperty;_CullingMode;Cull Mode;61;3;[Header];[IntRange];[Enum];Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Front;1;Back;2;0;True;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1798;-7733.669,398.4301;Inherit;False;Constant;_Float0;Float 0;3;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1799;-7512.351,374.2868;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1800;-7045.812,401.4388;Inherit;True;Property;_ToonRamp;Toon Ramp;28;1;[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;5e1c3434a8caf65468843b3228c570fc;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightAttenuation;1801;-4184.338,-113.3933;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1802;-1039.798,2593.154;Inherit;False;InstancedProperty;_RimOverride;Enable Rim;44;2;[Header];[ToggleUI];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Rim Lighting Setup;2;Disabled;0;Enabled;1;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1803;-351.5938,3399.172;Inherit;True;Switch;-1;;187;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1804;-2300.696,-1140.148;Inherit;True;5;5;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1805;-3327.891,1115.304;Inherit;False;1627;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1806;-1636.942,1367.084;Inherit;False;InstancedProperty;_AddMatCap;Add MatCap;33;0;Create;False;0;0;0;False;0;False;1;0.6;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1807;-3088.412,1440.557;Inherit;False;Constant;_Offset;Offset;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1808;-2933.712,1538.357;Inherit;False;Constant;_MatCapNormalReflection;Normal Reflection Mix;30;1;[Header];Create;False;2;0 for Normals;1 For Reflections;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1809;-3417.25,-846.0679;Inherit;False;1761;glitterRender;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1810;-3412.755,-766.804;Inherit;False;1685;Rim_Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1811;-3396.948,-689.3583;Inherit;False;1766;Specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1812;-3399.167,-610.444;Inherit;False;1776;Glint;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1813;-7786.882,259.9272;Inherit;False;1598;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;1814;-5495.955,-70.72385;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LightAttenuation;1815;-5626.726,312.8506;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1816;-5342.794,199.0107;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;1817;-5615.955,199.2763;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1818;-5750.453,27.52405;Inherit;False;1627;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1819;-5120.47,74.4466;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1820;-7758.078,-394.3365;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1821;-6552.899,252.9922;Inherit;False;1855;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1822;-4773.038,-76.09525;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1823;-3451.636,-1156.218;Inherit;False;1856;StandardShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1824;-3416.761,-953.5139;Inherit;False;1632;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1825;-7410.47,-744.8773;Inherit;False;InstancedProperty;_EmissionColor;Color;14;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1826;-2963.09,-1143.4;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1827;-1812.886,331.6201;Inherit;False;1632;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1828;316.9337,280.0313;Inherit;False;1631;ToonShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1829;322.3307,202.2895;Inherit;False;Constant;_Float2;Float 2;62;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1830;903.7231,152.8608;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1831;301.4313,60.60749;Inherit;False;1572;StandardSetup;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1832;889.4893,-55.77592;Inherit;False;1851;Opacity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1833;843.0709,395.6452;Inherit;True;Switch;-1;;188;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1834;301.1919,597.8571;Inherit;False;1574;Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1835;490.6905,834.2048;Inherit;False;Constant;_Color2;Color;1;0;Create;False;0;0;0;False;0;False;0.4622642,0.4622642,0.4622642,1;0.5471698,0.5471698,0.5471698,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1836;810.6904,610.2049;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1837;537.6483,567.8911;Inherit;False;1606;heightMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1838;607.6904,650.2049;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1839;307.7816,470.0829;Inherit;False;InstancedProperty;_EnableToon;Enable  Toon;27;2;[Header];[ToggleUI];Create;True;3;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Toon Map Setup;Will disable Metallic and Ambient Occlusion Setups;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1840;563.3309,1.28949;Inherit;True;Switch;-1;;189;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT;1;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1841;564.7819,212.0829;Inherit;True;Switch;-1;;190;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1842;-4552.397,-826.6754;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1843;-5508.496,-1291.514;Inherit;True;Property;_DetailAlbedoMap;Detail Albedo x2;15;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Albedo Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1844;-4363.91,-1032.425;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1845;-4660.801,-1083.697;Inherit;False;AlbedoTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1846;-5059.797,-783.8989;Inherit;True;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1847;-4281.73,-736.4045;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1848;-5750.247,-1052.819;Inherit;False;1719;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.ColorNode;1849;-5416.407,-887.6781;Inherit;False;InstancedProperty;_Color;Color;1;0;Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1850;-5487.566,-721.9265;Inherit;True;Property;_DetailMask;Detail Mask (A);12;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Mask Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1851;-4808.251,-754.3013;Inherit;False;Opacity;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1852;-4882.906,-1036.341;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1853;-5510.523,-1100.712;Inherit;True;Property;_MainTex;Albedo (RGB) and Transparency (A);0;1;[Header];Create;False;4;Standard Setup;;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Main Texture;0;0;False;0;False;-1;None;d04b94b8c10a03042a99b16a91d7e3e0;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1854;-4537.697,-579.975;Inherit;False;1784;MatCap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1855;-4020.588,-1009.833;Inherit;False;albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1856;-4030.726,-810.5101;Inherit;False;StandardShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
WireConnection;80;2;1833;0
WireConnection;80;13;1830;0
WireConnection;1569;0;1618;0
WireConnection;1569;1;1806;0
WireConnection;1570;0;1569;0
WireConnection;1570;1;1794;0
WireConnection;1571;0;1616;0
WireConnection;1571;1;1617;0
WireConnection;1572;0;1630;0
WireConnection;1574;0;1822;0
WireConnection;1575;0;1576;0
WireConnection;1576;0;1821;0
WireConnection;1576;1;1800;0
WireConnection;1577;0;1770;0
WireConnection;1578;0;1585;1
WireConnection;1578;1;1580;0
WireConnection;1579;0;1582;0
WireConnection;1579;1;1593;0
WireConnection;1580;0;1583;0
WireConnection;1580;1;1586;0
WireConnection;1581;0;1587;0
WireConnection;1582;0;1578;0
WireConnection;1582;1;1585;2
WireConnection;1582;2;1585;3
WireConnection;1584;0;1590;0
WireConnection;1584;1;1592;0
WireConnection;1584;2;1587;0
WireConnection;1585;0;1584;0
WireConnection;1587;2;1591;0
WireConnection;1587;4;1589;0
WireConnection;1588;1;1710;0
WireConnection;1588;2;1759;0
WireConnection;1588;3;1760;0
WireConnection;1589;0;1588;0
WireConnection;1590;7;1594;0
WireConnection;1596;0;1599;0
WireConnection;1597;0;1596;0
WireConnection;1597;1;1595;0
WireConnection;1598;0;1597;0
WireConnection;1600;0;1604;0
WireConnection;1601;0;1600;0
WireConnection;1601;1;1603;0
WireConnection;1602;0;1601;0
WireConnection;1605;0;1758;0
WireConnection;1606;0;1714;0
WireConnection;1607;0;1609;2
WireConnection;1607;1;1722;0
WireConnection;1608;0;1607;0
WireConnection;1609;7;1610;0
WireConnection;1612;7;1611;0
WireConnection;1613;1;1795;0
WireConnection;1613;7;1621;0
WireConnection;1616;0;1613;0
WireConnection;1616;1;1615;0
WireConnection;1616;2;1619;0
WireConnection;1618;0;1620;0
WireConnection;1618;1;1614;0
WireConnection;1618;2;1765;0
WireConnection;1619;0;1765;0
WireConnection;1620;1;1795;0
WireConnection;1620;7;1621;0
WireConnection;1624;5;1623;0
WireConnection;1624;7;1626;0
WireConnection;1625;5;1622;0
WireConnection;1625;7;1626;0
WireConnection;1627;0;1628;0
WireConnection;1628;0;1624;0
WireConnection;1628;1;1625;0
WireConnection;1630;0;1629;0
WireConnection;1630;1;1703;0
WireConnection;1630;2;1827;0
WireConnection;1630;3;1704;0
WireConnection;1630;4;1706;0
WireConnection;1630;5;1705;0
WireConnection;1631;0;1804;0
WireConnection;1632;0;1633;0
WireConnection;1633;0;1725;0
WireConnection;1633;1;1728;0
WireConnection;1638;0;1639;0
WireConnection;1640;0;1636;0
WireConnection;1640;1;1637;1
WireConnection;1641;0;1640;0
WireConnection;1641;1;1638;0
WireConnection;1642;0;1641;0
WireConnection;1642;1;1756;0
WireConnection;1643;0;1646;0
WireConnection;1643;1;1649;0
WireConnection;1644;0;1645;0
WireConnection;1644;1;1643;0
WireConnection;1646;0;1753;0
WireConnection;1646;1;1647;0
WireConnection;1647;0;1648;0
WireConnection;1647;1;1650;0
WireConnection;1648;7;1781;0
WireConnection;1650;0;1651;0
WireConnection;1650;1;1652;0
WireConnection;1650;2;1653;0
WireConnection;1654;0;1677;0
WireConnection;1655;0;1672;0
WireConnection;1655;1;1682;1
WireConnection;1656;0;1655;0
WireConnection;1656;1;1680;0
WireConnection;1657;0;1677;0
WireConnection;1658;0;1670;0
WireConnection;1658;1;1676;1
WireConnection;1658;2;1676;2
WireConnection;1658;3;1676;3
WireConnection;1659;1;1677;0
WireConnection;1660;0;1673;0
WireConnection;1660;1;1654;0
WireConnection;1661;1;1657;0
WireConnection;1662;0;1660;0
WireConnection;1662;1;1659;0
WireConnection;1663;0;1660;0
WireConnection;1663;1;1661;0
WireConnection;1664;0;1662;0
WireConnection;1665;0;1668;0
WireConnection;1665;1;1664;0
WireConnection;1666;0;1665;0
WireConnection;1667;0;1666;0
WireConnection;1668;0;1663;0
WireConnection;1669;0;1675;0
WireConnection;1669;1;1667;0
WireConnection;1669;2;1658;0
WireConnection;1669;3;1683;0
WireConnection;1670;0;1671;0
WireConnection;1672;0;1762;2
WireConnection;1672;1;1778;0
WireConnection;1672;2;1674;0
WireConnection;1673;0;1656;0
WireConnection;1673;1;1679;0
WireConnection;1678;0;1682;1
WireConnection;1678;1;1682;2
WireConnection;1679;0;1681;0
WireConnection;1679;1;1682;3
WireConnection;1680;0;1678;0
WireConnection;1681;0;1678;0
WireConnection;1685;0;1686;0
WireConnection;1686;0;1687;0
WireConnection;1686;1;1802;0
WireConnection;1687;0;1691;0
WireConnection;1687;1;1688;0
WireConnection;1688;0;1689;0
WireConnection;1688;1;1690;0
WireConnection;1691;0;1692;0
WireConnection;1692;0;1696;0
WireConnection;1692;1;1693;0
WireConnection;1693;0;1694;0
WireConnection;1693;1;1695;0
WireConnection;1696;0;1702;0
WireConnection;1696;1;1697;0
WireConnection;1700;0;1699;0
WireConnection;1700;1;1698;0
WireConnection;1701;0;1700;0
WireConnection;1702;0;1701;0
WireConnection;1708;1;1707;0
WireConnection;1708;2;1709;0
WireConnection;1709;0;1757;0
WireConnection;1710;0;1708;0
WireConnection;1711;7;1820;0
WireConnection;1713;0;1711;2
WireConnection;1713;1;1712;0
WireConnection;1714;0;1713;0
WireConnection;1714;1;1715;0
WireConnection;1716;0;1612;1
WireConnection;1716;1;1684;0
WireConnection;1717;0;1716;0
WireConnection;1719;0;1718;0
WireConnection;1720;0;1612;4
WireConnection;1720;1;1785;0
WireConnection;1721;0;1720;0
WireConnection;1723;7;1729;0
WireConnection;1724;0;1723;0
WireConnection;1724;1;1825;0
WireConnection;1725;0;1727;0
WireConnection;1726;0;1724;0
WireConnection;1727;0;1730;0
WireConnection;1730;0;1726;0
WireConnection;1732;0;1735;8
WireConnection;1732;1;1747;0
WireConnection;1733;0;1736;0
WireConnection;1733;1;1752;0
WireConnection;1734;0;1733;0
WireConnection;1735;1;1746;1
WireConnection;1736;0;1732;0
WireConnection;1737;0;1734;0
WireConnection;1738;0;1742;0
WireConnection;1738;1;1737;0
WireConnection;1739;0;1740;0
WireConnection;1739;1;1741;0
WireConnection;1742;7;1744;0
WireConnection;1743;0;1738;0
WireConnection;1743;1;1739;0
WireConnection;1746;1;1748;0
WireConnection;1748;0;1731;0
WireConnection;1748;2;1749;0
WireConnection;1748;1;1745;0
WireConnection;1751;0;1750;0
WireConnection;1752;0;1751;0
WireConnection;1753;0;1642;0
WireConnection;1755;0;1754;0
WireConnection;1756;0;1755;0
WireConnection;1761;0;1768;0
WireConnection;1763;0;1579;0
WireConnection;1763;1;1764;0
WireConnection;1765;7;1635;0
WireConnection;1766;0;1803;0
WireConnection;1768;3;1743;0
WireConnection;1768;8;1769;0
WireConnection;1770;3;1763;0
WireConnection;1770;8;1771;0
WireConnection;1773;3;1570;0
WireConnection;1773;8;1774;0
WireConnection;1775;3;1779;0
WireConnection;1775;8;1777;0
WireConnection;1776;0;1775;0
WireConnection;1778;0;1762;2
WireConnection;1779;0;1669;0
WireConnection;1779;1;1780;0
WireConnection;1780;7;1782;0
WireConnection;1783;0;1773;0
WireConnection;1784;0;1773;0
WireConnection;1786;0;1796;0
WireConnection;1786;1;1807;0
WireConnection;1788;0;1805;0
WireConnection;1789;0;1792;0
WireConnection;1789;1;1787;0
WireConnection;1790;0;1789;0
WireConnection;1790;1;1807;0
WireConnection;1791;0;1790;0
WireConnection;1791;1;1807;0
WireConnection;1792;0;1805;0
WireConnection;1793;0;1786;0
WireConnection;1793;1;1807;0
WireConnection;1794;3;1571;0
WireConnection;1794;8;1772;0
WireConnection;1795;2;1791;0
WireConnection;1795;3;1793;0
WireConnection;1795;8;1808;0
WireConnection;1796;0;1788;0
WireConnection;1796;1;1787;0
WireConnection;1799;0;1813;0
WireConnection;1799;1;1798;0
WireConnection;1799;2;1798;0
WireConnection;1800;1;1799;0
WireConnection;1803;3;1644;0
WireConnection;1803;8;1767;0
WireConnection;1804;0;1826;0
WireConnection;1804;1;1809;0
WireConnection;1804;2;1810;0
WireConnection;1804;3;1811;0
WireConnection;1804;4;1812;0
WireConnection;1816;0;1817;0
WireConnection;1816;1;1815;0
WireConnection;1817;0;1818;0
WireConnection;1819;0;1814;0
WireConnection;1819;1;1816;0
WireConnection;1822;0;1573;0
WireConnection;1822;1;1819;0
WireConnection;1826;0;1823;0
WireConnection;1826;1;1824;0
WireConnection;1830;0;1840;0
WireConnection;1830;1;1836;0
WireConnection;1833;2;1829;0
WireConnection;1833;3;1838;0
WireConnection;1833;8;1839;0
WireConnection;1836;0;1841;0
WireConnection;1836;1;1835;0
WireConnection;1838;0;1834;0
WireConnection;1838;1;1835;0
WireConnection;1840;2;1831;0
WireConnection;1840;3;1829;0
WireConnection;1840;8;1839;0
WireConnection;1841;2;1829;0
WireConnection;1841;3;1828;0
WireConnection;1841;8;1839;0
WireConnection;1842;0;1853;0
WireConnection;1842;1;1849;0
WireConnection;1843;7;1848;0
WireConnection;1844;0;1852;0
WireConnection;1844;1;1849;0
WireConnection;1845;0;1852;0
WireConnection;1846;0;1853;4
WireConnection;1846;1;1849;4
WireConnection;1846;2;1850;4
WireConnection;1846;3;1843;4
WireConnection;1847;0;1842;0
WireConnection;1847;1;1854;0
WireConnection;1850;7;1848;0
WireConnection;1851;0;1846;0
WireConnection;1852;0;1853;0
WireConnection;1852;1;1843;0
WireConnection;1853;7;1848;0
WireConnection;1855;0;1844;0
WireConnection;1856;0;1847;0
ASEEND*/
//CHKSM=DD384934E13C0A62340F466DF1F029C61FD1CCF3