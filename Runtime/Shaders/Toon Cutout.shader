// Upgrade NOTE: upgraded instancing buffer 'Legoman99573ToonCutout' to new syntax.

// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Legoman99573/Toon Cutout"
{
	Properties
	{
		[Header(Standard Setup)][Header()][Header(__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________)][Header(Main Texture)]_MainTex("Albedo (RGB) and Transparency (A)", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,1)
		_Cutoff( "Mask Clip Value", Range( 0 , 1) ) = 0.5
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
		[HideInInspector] _texcoord3( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
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
		uniform float _Cutoff = 0;

		UNITY_INSTANCING_BUFFER_START(Legoman99573ToonCutout)
			UNITY_DEFINE_INSTANCED_PROP(float4, _OcclusionMap_ST)
#define _OcclusionMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColorAdditive)
#define _MatCapColorAdditive_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapMask_ST)
#define _MatCapMask_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColor)
#define _MatCapColor_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _Glitter_ST)
#define _Glitter_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlintMap_ST)
#define _GlintMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterColor)
#define _GlitterColor_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _MetallicGlossMap_ST)
#define _MetallicGlossMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _RimTint)
#define _RimTint_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterMap_ST)
#define _GlitterMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecColorToon)
#define _SpecColorToon_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColorAudioLink0)
#define _EmissionColorAudioLink0_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMapAudioLink0_ST)
#define _EmissionMapAudioLink0_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecGlossMap_ST)
#define _SpecGlossMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMap_ST)
#define _EmissionMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailMask_ST)
#define _DetailMask_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _MainTex_ST)
#define _MainTex_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailAlbedoMap_ST)
#define _DetailAlbedoMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
#define _Color_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _BumpMap_ST)
#define _BumpMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailNormalMap_ST)
#define _DetailNormalMap_ST_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColor)
#define _EmissionColor_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float2, _NoiseSpeed)
#define _NoiseSpeed_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _InvertDirection)
#define _InvertDirection_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlitter)
#define _EnableGlitter_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOffset)
#define _RimOffset_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _RimPower)
#define _RimPower_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularHighlights)
#define _SpecularHighlights_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOverride)
#define _RimOverride_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _GlossyReflections)
#define _GlossyReflections_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularLightMix)
#define _SpecularLightMix_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableSpecular)
#define _EnableSpecular_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap)
#define _EnableMatCap_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _Parallax)
#define _Parallax_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCapAdditive)
#define _AddMatCapAdditive_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _CullingMode)
#define _CullingMode_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _BumpScale)
#define _BumpScale_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _DetailNormalMapScale)
#define _DetailNormalMapScale_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableToon)
#define _EnableToon_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _Band)
#define _Band_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _PulseRotation)
#define _PulseRotation_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _Pulse)
#define _Pulse_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _Delay)
#define _Delay_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _AudioHueShift)
#define _AudioHueShift_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EmissionScale)
#define _EmissionScale_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableAudioLink)
#define _EnableAudioLink_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _Metallic)
#define _Metallic_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _Glossiness)
#define _Glossiness_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _OcclusionStrength)
#define _OcclusionStrength_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCap)
#define _AddMatCap_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap2)
#define _EnableMatCap2_arr Legoman99573ToonCutout
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlint)
#define _EnableGlint_arr Legoman99573ToonCutout
		UNITY_INSTANCING_BUFFER_END(Legoman99573ToonCutout)


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

		inline float AudioLinkLerp3_g161( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		float IfAudioLinkv2Exists1_g165(  )
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
			float4 tex2DNode1600 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 _DetailMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailMask_ST_arr, _DetailMask_ST);
			float2 uv_DetailMask = i.uv_texcoord * _DetailMask_ST_Instance.xy + _DetailMask_ST_Instance.zw;
			float Opacity1607 = ( tex2DNode1600.a * _Color_Instance.a * SAMPLE_TEXTURE2D( _DetailMask, sampler_Linear_Repeat, uv_DetailMask ).a );
			SurfaceOutputStandard s1594 = (SurfaceOutputStandard ) 0;
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 temp_output_1603_0 = ( tex2DNode1600 * SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap ) );
			float4 albedo1601 = ( temp_output_1603_0 * _Color_Instance );
			s1594.Albedo = albedo1601.rgb;
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1591 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			s1594.Normal = normalize( WorldNormalVector( i , NormalMap1591 ) );
			float4 _EmissionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMap_ST_arr, _EmissionMap_ST);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST_Instance.xy + _EmissionMap_ST_Instance.zw;
			float4 _EmissionColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColor_arr, _EmissionColor);
			float3 temp_cast_5 = (0.0).xxx;
			float4 _EmissionMapAudioLink0_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMapAudioLink0_ST_arr, _EmissionMapAudioLink0_ST);
			float2 uv4_EmissionMapAudioLink0 = i.ase_texcoord5.xy * _EmissionMapAudioLink0_ST_Instance.xy + _EmissionMapAudioLink0_ST_Instance.zw;
			float4 _EmissionColorAudioLink0_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColorAudioLink0_arr, _EmissionColorAudioLink0);
			float _Band_Instance = UNITY_ACCESS_INSTANCED_PROP(_Band_arr, _Band);
			int Band3_g161 = (int)_Band_Instance;
			float2 break6_g163 = i.uv_texcoord;
			float temp_output_5_0_g163 = ( break6_g163.x - 0.5 );
			float _PulseRotation_Instance = UNITY_ACCESS_INSTANCED_PROP(_PulseRotation_arr, _PulseRotation);
			float temp_output_2_0_g163 = radians( _PulseRotation_Instance );
			float temp_output_3_0_g163 = cos( temp_output_2_0_g163 );
			float temp_output_8_0_g163 = sin( temp_output_2_0_g163 );
			float temp_output_20_0_g163 = ( 1.0 / ( abs( temp_output_3_0_g163 ) + abs( temp_output_8_0_g163 ) ) );
			float temp_output_7_0_g163 = ( break6_g163.y - 0.5 );
			float2 appendResult16_g163 = (float2(( ( ( temp_output_5_0_g163 * temp_output_3_0_g163 * temp_output_20_0_g163 ) + ( temp_output_7_0_g163 * temp_output_8_0_g163 * temp_output_20_0_g163 ) ) + 0.5 ) , ( ( ( temp_output_7_0_g163 * temp_output_3_0_g163 * temp_output_20_0_g163 ) - ( temp_output_5_0_g163 * temp_output_8_0_g163 * temp_output_20_0_g163 ) ) + 0.5 )));
			float _Pulse_Instance = UNITY_ACCESS_INSTANCED_PROP(_Pulse_arr, _Pulse);
			float _Delay_Instance = UNITY_ACCESS_INSTANCED_PROP(_Delay_arr, _Delay);
			float Delay3_g161 = ( ( (_Delay_Instance + (( appendResult16_g163.x * _Pulse_Instance ) - 0.0) * (1.0 - _Delay_Instance) / (1.0 - 0.0)) % 1.0 ) * 128.0 );
			float localAudioLinkLerp3_g161 = AudioLinkLerp3_g161( Band3_g161 , Delay3_g161 );
			float temp_output_1551_0 = localAudioLinkLerp3_g161;
			float3 hsvTorgb1549 = RGBToHSV( ( SAMPLE_TEXTURE2D( _EmissionMapAudioLink0, sampler_Linear_Repeat, uv4_EmissionMapAudioLink0 ) * _EmissionColorAudioLink0_Instance * temp_output_1551_0 ).rgb );
			float _AudioHueShift_Instance = UNITY_ACCESS_INSTANCED_PROP(_AudioHueShift_arr, _AudioHueShift);
			float hueShift1569 = _AudioHueShift_Instance;
			float amplitude1545 = temp_output_1551_0;
			float3 hsvTorgb1546 = HSVToRGB( float3(( hsvTorgb1549.x + ( hueShift1569 * amplitude1545 ) ),hsvTorgb1549.y,hsvTorgb1549.z) );
			float _EmissionScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionScale_arr, _EmissionScale);
			float localIfAudioLinkv2Exists1_g165 = IfAudioLinkv2Exists1_g165();
			float _EnableAudioLink_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableAudioLink_arr, _EnableAudioLink);
			float3 lerpResult7_g167 = lerp( temp_cast_5 , ( ( hsvTorgb1546 * _EmissionScale_Instance ) * localIfAudioLinkv2Exists1_g165 ) , _EnableAudioLink_Instance);
			float3 AudioLink1541 = lerpResult7_g167;
			float4 Emission1596 = ( ( SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) * _EmissionColor_Instance ) + float4( AudioLink1541 , 0.0 ) );
			s1594.Emission = Emission1596.rgb;
			float4 _MetallicGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MetallicGlossMap_ST_arr, _MetallicGlossMap_ST);
			float2 uv_MetallicGlossMap = i.uv_texcoord * _MetallicGlossMap_ST_Instance.xy + _MetallicGlossMap_ST_Instance.zw;
			float4 tex2DNode1576 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_Linear_Repeat, uv_MetallicGlossMap );
			float _Metallic_Instance = UNITY_ACCESS_INSTANCED_PROP(_Metallic_arr, _Metallic);
			float Metallic1692 = ( tex2DNode1576.r * _Metallic_Instance );
			s1594.Metallic = Metallic1692;
			float _Glossiness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glossiness_arr, _Glossiness);
			float Smoothness1696 = ( tex2DNode1576.a * _Glossiness_Instance );
			s1594.Smoothness = Smoothness1696;
			float4 _OcclusionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionMap_ST_arr, _OcclusionMap_ST);
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST_Instance.xy + _OcclusionMap_ST_Instance.zw;
			float _OcclusionStrength_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionStrength_arr, _OcclusionStrength);
			float AO1572 = ( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_Linear_Repeat, uv_OcclusionMap ).g * _OcclusionStrength_Instance );
			s1594.Occlusion = AO1572;

			data.light = gi.light;

			UnityGI gi1594 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g1594 = UnityGlossyEnvironmentSetup( s1594.Smoothness, data.worldViewDir, s1594.Normal, float3(0,0,0));
			gi1594 = UnityGlobalIllumination( data, s1594.Occlusion, s1594.Normal, g1594 );
			#endif

			float3 surfResult1594 = LightingStandard ( s1594, viewDir, gi1594 ).rgb;
			surfResult1594 += s1594.Emission;

			#ifdef UNITY_PASS_FORWARDADD//1594
			surfResult1594 -= s1594.Emission;
			#endif//1594
			float3 StandardSetup1536 = surfResult1594;
			float3 temp_cast_10 = (0.0).xxx;
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float3 lerpResult7_g173 = lerp( StandardSetup1536 , temp_cast_10 , _EnableToon_Instance);
			float4 temp_cast_12 = (0.0).xxxx;
			float4 temp_cast_13 = (0.0).xxxx;
			float3 lerpResult7_g171 = lerp( ( ( mul( float4( (WorldNormalVector( i , NormalMap1591 )) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , ( ( mul( float4( normalize( WorldReflectionVector( i , NormalMap1591 ) ) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , 0.5);
			float3 temp_output_1773_0 = lerpResult7_g171;
			float4 _MatCapColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColor_arr, _MatCapColor);
			float4 _MatCapMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapMask_ST_arr, _MatCapMask_ST);
			float2 uv2_MatCapMask = i.uv3_texcoord3 * _MatCapMask_ST_Instance.xy + _MatCapMask_ST_Instance.zw;
			float4 tex2DNode1740 = SAMPLE_TEXTURE2D( _MatCapMask, sampler_Linear_Repeat, uv2_MatCapMask );
			float _AddMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCap_arr, _AddMatCap);
			float4 temp_cast_19 = (0.0).xxxx;
			float4 _MatCapColorAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColorAdditive_arr, _MatCapColorAdditive);
			float _AddMatCapAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCapAdditive_arr, _AddMatCapAdditive);
			float _EnableMatCap2_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap2_arr, _EnableMatCap2);
			float4 lerpResult7_g170 = lerp( temp_cast_19 , ( ( SAMPLE_TEXTURE2D( _MatCapAdditive, sampler_Linear_Repeat, temp_output_1773_0.xy ) * _MatCapColorAdditive_Instance * ( 1.0 - tex2DNode1740 ) ) * _AddMatCapAdditive_Instance ) , _EnableMatCap2_Instance);
			float _EnableMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap_arr, _EnableMatCap);
			float4 lerpResult7_g168 = lerp( temp_cast_13 , ( ( ( SAMPLE_TEXTURE2D( _MatCap, sampler_Linear_Repeat, temp_output_1773_0.xy ) * _MatCapColor_Instance * tex2DNode1740 ) * _AddMatCap_Instance ) + lerpResult7_g170 ) , _EnableMatCap_Instance);
			float4 temp_output_1748_0 = lerpResult7_g168;
			float4 MatCap1760 = temp_output_1748_0;
			float4 StandardShading1758 = ( ( tex2DNode1600 * _Color_Instance ) + MatCap1760 );
			float4 temp_cast_21 = (0.0).xxxx;
			float4 _GlitterMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterMap_ST_arr, _GlitterMap_ST);
			float2 uv6_GlitterMap = i.ase_texcoord7.xy * _GlitterMap_ST_Instance.xy + _GlitterMap_ST_Instance.zw;
			float2 _NoiseSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_NoiseSpeed_arr, _NoiseSpeed);
			float2 panner1723 = ( _Time.y * _NoiseSpeed_Instance + i.uv_texcoord);
			float3 hsvTorgb3_g164 = HSVToRGB( float3(SAMPLE_TEXTURE2D( _GlitterNoise, sampler_GlitterNoise, panner1723 ).r,1.0,1.0) );
			float normalizeResult1711 = normalize( ( hsvTorgb3_g164.z - 0.9999 ) );
			float3 temp_cast_22 = (normalizeResult1711).xxx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 normalizeResult1726 = normalize( ase_worldViewDir );
			float dotResult1708 = dot( temp_cast_22 , ( 1.0 - normalizeResult1726 ) );
			float3 temp_cast_23 = (saturate( dotResult1708 )).xxx;
			float grayscale1712 = Luminance(temp_cast_23);
			float4 _Glitter_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glitter_ST_arr, _Glitter_ST);
			float2 uv_Glitter = i.uv_texcoord * _Glitter_ST_Instance.xy + _Glitter_ST_Instance.zw;
			float4 _GlitterColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterColor_arr, _GlitterColor);
			float _EnableGlitter_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlitter_arr, _EnableGlitter);
			float4 lerpResult7_g166 = lerp( temp_cast_21 , ( ( SAMPLE_TEXTURE2D( _GlitterMap, sampler_Linear_Repeat, uv6_GlitterMap ) * grayscale1712 ) * ( SAMPLE_TEXTURE2D( _Glitter, sampler_Glitter, uv_Glitter ) * _GlitterColor_Instance ) ) , _EnableGlitter_Instance);
			float4 glitterRender1736 = lerpResult7_g166;
			float _RimOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOffset_arr, _RimOffset);
			float dotResult1565 = dot( normalize( (WorldNormalVector( i , NormalMap1591 )) ) , ase_worldViewDir );
			float normalviewdir1566 = dotResult1565;
			float saferPower1671 = abs( ( 1.0 - saturate( ( _RimOffset_Instance + normalviewdir1566 ) ) ) );
			float _RimPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimPower_arr, _RimPower);
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1561 = dot( normalize( (WorldNormalVector( i , NormalMap1591 )) ) , ase_worldlightDir );
			float NormalLightDir1562 = dotResult1561;
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 _RimTint_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimTint_arr, _RimTint);
			float _RimOverride_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOverride_arr, _RimOverride);
			float4 Rim_Lighting1660 = ( ( saturate( ( pow( saferPower1671 , _RimPower_Instance ) * ( NormalLightDir1562 * ase_lightAtten ) ) ) * ( ase_lightColor * _RimTint_Instance ) ) * _RimOverride_Instance );
			float4 temp_cast_24 = (0.0).xxxx;
			float dotResult1615 = dot( ( ase_worldViewDir + _WorldSpaceLightPos0.xyz ) , (WorldNormalVector( i , NormalMap1591 )) );
			float _GlossyReflections_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlossyReflections_arr, _GlossyReflections);
			float smoothstepResult1728 = smoothstep( 1.1 , 1.12 , pow( dotResult1615 , ( ( 1.0 - _GlossyReflections_Instance ) * 20.0 ) ));
			float4 _SpecGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecGlossMap_ST_arr, _SpecGlossMap_ST);
			float2 uv_SpecGlossMap = i.uv_texcoord * _SpecGlossMap_ST_Instance.xy + _SpecGlossMap_ST_Instance.zw;
			float4 _SpecColorToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecColorToon_arr, _SpecColorToon);
			float _SpecularLightMix_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularLightMix_arr, _SpecularLightMix);
			float4 lerpResult1624 = lerp( _SpecColorToon_Instance , ase_lightColor , _SpecularLightMix_Instance);
			float _SpecularHighlights_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularHighlights_arr, _SpecularHighlights);
			float _EnableSpecular_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableSpecular_arr, _EnableSpecular);
			float4 lerpResult7_g172 = lerp( temp_cast_24 , ( ase_lightAtten * ( ( smoothstepResult1728 * ( SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_Linear_Repeat, uv_SpecGlossMap ) * lerpResult1624 ) ) * _SpecularHighlights_Instance ) ) , _EnableSpecular_Instance);
			float4 Specular1741 = lerpResult7_g172;
			float4 temp_cast_25 = (0.0).xxxx;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float _InvertDirection_Instance = UNITY_ACCESS_INSTANCED_PROP(_InvertDirection_arr, _InvertDirection);
			float lerpResult1647 = lerp( ase_vertex3Pos.y , -ase_vertex3Pos.y , _InvertDirection_Instance);
			float temp_output_1653_0 = ( _SizeSpeedInterval.x * _SizeSpeedInterval.y );
			float mulTime1655 = _Time.y * temp_output_1653_0;
			float temp_output_1635_0 = ( fmod( ( ( lerpResult1647 * _SizeSpeedInterval.x ) + mulTime1655 ) , ( ( temp_output_1653_0 + 1.0 ) * _SizeSpeedInterval.z ) ) + ( _TailHeadFalloff - 1.0 ) );
			float saferPower1642 = abs( ( 1.0 - ( saturate( ( temp_output_1635_0 * ( -1.0 / ( 1.0 - _TailHeadFalloff ) ) ) ) + saturate( ( temp_output_1635_0 * ( 1.0 / _TailHeadFalloff ) ) ) ) ) );
			float fresnelNdotV1633 = dot( (WorldNormalVector( i , NormalMap1591 )), ase_worldViewDir );
			float fresnelNode1633 = ( _GlintFresnel.x + _GlintFresnel.y * pow( max( 1.0 - fresnelNdotV1633 , 0.0001 ), _GlintFresnel.z ) );
			float4 _GlintMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlintMap_ST_arr, _GlintMap_ST);
			float2 uv_GlintMap = i.uv_texcoord * _GlintMap_ST_Instance.xy + _GlintMap_ST_Instance.zw;
			float _EnableGlint_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlint_arr, _EnableGlint);
			float4 lerpResult7_g169 = lerp( temp_cast_25 , ( ( _GlintColor * pow( saferPower1642 , 5.0 ) * fresnelNode1633 * 2.0 ) * SAMPLE_TEXTURE2D( _GlintMap, sampler_Linear_Repeat, uv_GlintMap ) ) , _EnableGlint_Instance);
			float4 Glint1751 = lerpResult7_g169;
			float4 ToonShading1595 = ( ( StandardShading1758 + Emission1596 ) + glitterRender1736 + Rim_Lighting1660 + Specular1741 + Glint1751 );
			float4 lerpResult7_g174 = lerp( temp_cast_12 , ToonShading1595 , _EnableToon_Instance);
			float4 color1818 = IsGammaSpace() ? float4(0.4627451,0.4627451,0.4627451,1) : float4(0.1811642,0.1811642,0.1811642,1);
			c.rgb = ( float4( lerpResult7_g173 , 0.0 ) + ( lerpResult7_g174 * color1818 ) ).rgb;
			c.a = 1;
			clip( Opacity1607 - _Cutoff );
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
			float _Parallax_Instance = UNITY_ACCESS_INSTANCED_PROP(_Parallax_arr, _Parallax);
			float _CullingMode_Instance = UNITY_ACCESS_INSTANCED_PROP(_CullingMode_arr, _CullingMode);
			float4 temp_cast_0 = (0.0).xxxx;
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 tex2DNode1600 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 temp_output_1603_0 = ( tex2DNode1600 * SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap ) );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 albedo1601 = ( temp_output_1603_0 * _Color_Instance );
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1591 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1561 = dot( normalize( (WorldNormalVector( i , NormalMap1591 )) ) , ase_worldlightDir );
			float NormalLightDir1562 = dotResult1561;
			float2 temp_cast_1 = ((NormalLightDir1562*0.5 + 0.5)).xx;
			float4 Shadow1539 = ( albedo1601 * SAMPLE_TEXTURE2D( _ToonRamp, sampler_ToonRamp, temp_cast_1 ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 Lighting1538 = ( Shadow1539 * ( ase_lightColor * float4( ( float3(0,0,0) + 1 ) , 0.0 ) ) );
			float4 color1818 = IsGammaSpace() ? float4(0.4627451,0.4627451,0.4627451,1) : float4(0.1811642,0.1811642,0.1811642,1);
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float4 lerpResult7_g175 = lerp( temp_cast_0 , ( Lighting1538 * color1818 ) , _EnableToon_Instance);
			o.Emission = lerpResult7_g175.rgb;
		}

		ENDCG
	}
	Fallback "Standard"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;80;914.1671,19.9218;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Legoman99573/Toon Cutout;False;False;False;False;False;False;False;False;False;False;False;False;True;False;True;False;False;False;False;False;True;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Masked;0;True;True;0;False;TransparentCutout;;AlphaTest;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;5;False;_SrcBlend;10;False;_SrcDST;2;5;False;_SrcBlend;10;False;;0;False;;1;False;;0;False;0;0.1226415,0.1226415,0.1226415,0;VertexScale;True;False;Cylindrical;False;True;Relative;0;Standard;0;-1;-1;-1;0;True;0;0;True;_CullingMode;-1;0;False;_Cutoff;1;Include;./Includes/AudioLink.cginc;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1514;-3564.996,3135.865;Inherit;False;3548.67;1426.547;;26;1781;1756;1742;1741;1731;1730;1729;1728;1627;1626;1625;1624;1623;1622;1621;1620;1619;1618;1617;1616;1615;1614;1613;1612;1611;1610;Specular;0.3411765,0.3411765,0.3411765,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1515;-3563.101,2000.643;Inherit;False;3543.927;1046.716;;19;1780;1677;1676;1675;1674;1673;1672;1671;1670;1669;1668;1667;1666;1665;1664;1663;1662;1661;1660;Rim Lighting;0.4623167,0.6132076,0.4367658,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1516;-5998.31,-1426.648;Inherit;False;1972.41;956.1793;;15;1815;1784;1762;1761;1758;1607;1606;1605;1604;1603;1602;1601;1600;1599;1598;Albedo and Transparency;0.1009256,0.6804498,0.7924528,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1517;-2613.26,-378.4126;Inherit;False;711.3267;381.5787;;2;1775;1608;Used Components;0.772549,0.5450981,0.4392157,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1518;-8054.019,-1424.131;Inherit;False;1996.66;787.3569;;11;1804;1705;1704;1703;1702;1701;1700;1699;1698;1597;1596;Emission;0.3490196,0.5176471,0.5607843,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1519;-3975.177,-1426.515;Inherit;False;2307.922;955.9736;;9;1805;1803;1802;1791;1790;1789;1788;1782;1595;Toon Shading;0.509434,0.2418903,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1520;-2095.122,66.71799;Inherit;False;807.2709;492.0006;;8;1806;1681;1680;1679;1678;1594;1593;1536;Standard Shading;0.8078432,0.7294118,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1521;-3273.445,58.27535;Inherit;False;1111.183;505.3101;;7;1592;1591;1590;1589;1588;1587;1586;Normal Map;0,0.3058824,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1522;-3573.446,610.8163;Inherit;False;3556.902;1343.892;;34;1787;1786;1785;1783;1774;1773;1772;1771;1770;1769;1768;1767;1766;1765;1764;1760;1759;1749;1748;1747;1740;1609;1585;1584;1583;1582;1581;1580;1579;1578;1577;1535;1534;1533;MatCap;0,1,0.8470588,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1523;-1636.949,-1421.83;Inherit;False;1098.461;950.1898;;8;1763;1696;1695;1692;1691;1659;1576;1575;Metallic and Smoothness;1,0,0,0.2117647;0;0
Node;AmplifyShaderEditor.CommentaryNode;1524;-1798.541,-380.2231;Inherit;False;1076.269;357.3183;;5;1697;1574;1573;1572;1571;Ambient Occlusion;0,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1525;-8057.394,-552.2883;Inherit;False;1998.691;619.2851;;7;1799;1690;1689;1688;1687;1686;1570;Height Map (unused);1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1526;-3268.325,-393.427;Inherit;False;623.561;400.0698;;2;1694;1693;Sampler States;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1527;-8064.172,1531.943;Inherit;False;4441.134;2135.596;;25;1744;1743;1736;1727;1726;1725;1724;1723;1722;1721;1720;1719;1718;1717;1716;1715;1714;1713;1712;1711;1710;1709;1708;1707;1706;Glitter;1,0.004716992,0.964993,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1528;-4457.224,44.72725;Inherit;False;1148.977;502.5762;;5;1568;1567;1566;1565;1564;Normal View Dir;0.2641509,0.2641509,0.2641509,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1529;-4452.348,-391.0757;Inherit;False;1138.415;395.5507;;6;1779;1563;1562;1561;1560;1559;Normal Light Dir;0.4339623,0.4339623,0.4339623,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1530;-8062.82,595.8295;Inherit;False;4435.092;886.3752;;31;1746;1745;1739;1738;1735;1734;1733;1732;1685;1684;1683;1682;1569;1558;1557;1556;1555;1554;1553;1552;1551;1550;1549;1548;1547;1546;1545;1544;1543;1542;1541;AudioLink;0.5566038,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1531;-8056.989,126.8919;Inherit;False;2019.533;432.7555;;7;1800;1792;1778;1777;1776;1540;1539;Shadow;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1532;-5986.933,-388.8242;Inherit;False;1493.02;934.3415;;9;1801;1798;1797;1796;1795;1794;1793;1538;1537;Lighting;0.9384004,1,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1533;-1339.865,1052.599;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1534;-913.9008,1215.509;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1535;-1626.3,1457.309;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1536;-1493.85,171.0663;Inherit;False;StandardSetup;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1537;-5646.435,-338.8242;Inherit;False;1539;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1538;-4718.434,-98.82414;Inherit;False;Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1539;-6261.456,265.5693;Inherit;True;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1540;-6562.513,271.5167;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1541;-3851.73,970.519;Inherit;False;AudioLink;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1542;-5218.956,829.4393;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1543;-4754.336,1082.638;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1544;-5380.433,1077.701;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1545;-5889.097,1268.548;Inherit;False;amplitude;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;1546;-5036.433,983.7029;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1547;-5593.956,1009.44;Inherit;False;1569;hueShift;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1548;-5818.142,983.83;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RGBToHSVNode;1549;-5599.956,778.4395;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1550;-5600.433,1114.701;Inherit;False;1545;amplitude;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1551;-6250.982,1169.077;Inherit;False;4BandAmplitudeLerp;-1;;161;3cf4b6e83381a9a4f84f8cf857bc3af5;0;2;2;INT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1552;-6699.496,1220.333;Inherit;False;BandPulse;-1;;162;c478702160369ce4480fa2fb6d734ffa;0;3;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1553;-6427.187,1229.379;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;128;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1554;-6279.142,645.8295;Inherit;True;Property;_EmissionMapAudioLink0;Emission Map;18;0;Create;False;0;0;0;False;0;False;-1;None;None;True;4;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1555;-6723.952,989.9731;Inherit;False;InstancedProperty;_Band;Band;22;3;[Header];[IntRange];[Enum];Create;True;1;Audio Section;4;Bass;0;Low Mid;1;High Mid;2;Treble;3;0;False;0;False;0;0;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1556;-6225.066,928.1088;Inherit;False;InstancedProperty;_EmissionColorAudioLink0;Emission Color;20;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1557;-5033.737,1147.538;Inherit;False;InstancedProperty;_EmissionScale;Emission Scale;21;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1558;-6599.001,661.1954;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1559;-4194.501,-195.5094;Inherit;False;True;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1560;-4163.502,-337.5092;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1561;-3840.2,-249.5249;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1562;-3537.934,-250.6952;Inherit;False;NormalLightDir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1563;-4402.348,-341.0757;Inherit;False;1591;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1564;-4148.111,103.1606;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1565;-3875.112,122.1607;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1566;-3613.439,116.7724;Inherit;False;normalviewdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1567;-4141.69,340.359;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1568;-4407.225,94.72746;Inherit;False;1591;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1569;-6676.774,813.9888;Inherit;False;hueShift;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1570;-6282.704,-330.7397;Inherit;False;heightMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1571;-1130.618,-236.6228;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1572;-926.558,-190.6007;Inherit;False;AO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1573;-1505.015,-330.2228;Inherit;True;Property;_OcclusionMap;Occlusion;10;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Occlusion Culling Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1574;-1748.54,-305.1332;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1575;-1586.949,-1138.005;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;1576;-1344.646,-1167.462;Inherit;True;Property;_MetallicGlossMap;Metalic (R) and Smoothness (A);3;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Metallic Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1577;-2405,1514.511;Inherit;True;Property;_MatCapAdditive;MatCap 2;35;0;Create;False;0;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1578;-2378.12,910.22;Inherit;False;InstancedProperty;_MatCapColor;MatCap 1 Color;32;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1579;-2315.301,1729.011;Inherit;False;InstancedProperty;_MatCapColorAdditive;MatCap 2 Color;36;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1580;-2016.299,1469.011;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1581;-1891.498,1738.112;Inherit;False;InstancedProperty;_AddMatCapAdditive;Add MatCap 2;37;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1582;-1884.518,919.384;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1583;-2052.7,1160.912;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1584;-2398.151,1140.305;Inherit;True;Property;_MatCap;MatCap 1;31;1;[HDR];Create;False;0;0;0;False;0;False;-1;None;99f168b92de93a44ba668a322687720c;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerStateNode;1585;-2755.179,1435.751;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1586;-3204.335,381.562;Inherit;False;InstancedProperty;_DetailNormalMapScale;Detail Normal Scale;19;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1587;-3177.595,156.3755;Inherit;False;InstancedProperty;_BumpScale;Normal Scale;7;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1588;-2982.172,108.2754;Inherit;True;Property;_BumpMap;Normal Map;6;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1589;-2976.663,333.5854;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;16;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1590;-3223.445,250.1641;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1591;-2386.263,207.3317;Inherit;False;NormalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;1592;-2674.471,212.0664;Inherit;True;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1593;-2045.122,116.718;Inherit;False;1601;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomStandardSurface;1594;-1739.359,173.5288;Inherit;False;Metallic;Tangent;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,1;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1595;-2001.805,-1144.588;Inherit;False;ToonShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1596;-6278.668,-1374.131;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1597;-6568.935,-1346.891;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1598;-4790.545,-911.809;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1599;-5746.642,-1376.648;Inherit;True;Property;_DetailAlbedoMap;Detail Albedo x2;15;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Albedo Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1600;-5748.67,-1185.845;Inherit;True;Property;_MainTex;Albedo (RGB) and Transparency (A);1;1;[Header];Create;False;4;Standard Setup;;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Main Texture;0;0;False;0;False;-1;None;154a38cd83cd55b4b89f948411125d13;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1601;-4258.736,-1094.966;Inherit;False;albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1602;-4602.057,-1117.558;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1603;-5097.652,-1098.074;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1604;-4898.947,-1168.83;Inherit;False;AlbedoTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1605;-5743.914,-779.7598;Inherit;True;Property;_DetailMask;Detail Mask (A);12;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Mask Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1606;-5297.945,-869.0325;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1607;-5137.399,-816.035;Inherit;False;Opacity;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1609;-2658.829,660.8162;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1610;-3232.962,3185.865;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightPos;1611;-3281.865,3367.669;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldNormalVector;1612;-3238.45,3485.05;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1613;-3514.996,3466.248;Inherit;False;1591;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1614;-2922.449,3286.231;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1615;-2675.448,3358.231;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1616;-2351.448,3358.231;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1617;-1112.185,3372.257;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1618;-804.1855,3353.257;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;1619;-1176.185,3273.257;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1620;-1748.988,3361.153;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1621;-1861.419,3628.807;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1622;-2201.226,3599.96;Inherit;True;Property;_SpecGlossMap;Specular Map (RGB);49;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1623;-1510.185,3480.257;Inherit;False;InstancedProperty;_SpecularHighlights;Spec Intensity;52;0;Create;False;0;0;0;False;0;False;0.56;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1624;-2003.757,3840.949;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1625;-2271.761,3909.419;Inherit;False;InstancedProperty;_SpecColorToon;Specular Color;50;0;Create;False;0;0;0;True;0;False;0.2,0.2,0.2,1;0.1999997,0.1999997,0.1999997,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;1626;-2216.415,4092.523;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1627;-2328.414,4217.523;Inherit;False;InstancedProperty;_SpecularLightMix;Specular Light Mix;53;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1628;-8056.536,3736.521;Inherit;False;4431.949;816.9406;;38;1757;1755;1754;1753;1752;1751;1750;1737;1658;1657;1656;1655;1654;1653;1652;1651;1650;1649;1648;1647;1646;1645;1644;1643;1642;1641;1640;1639;1638;1637;1636;1635;1634;1633;1632;1631;1630;1629;Glint;0.9986145,1,0.4103774,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1629;-6400.953,4006.184;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1630;-7056.954,3910.182;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1631;-6880.954,3942.182;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.27;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1632;-6400.953,4134.184;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1633;-5221.905,4279.516;Inherit;True;Standard;WorldNormal;ViewDir;False;True;5;0;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.01;False;2;FLOAT;1;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1634;-6208.953,4230.184;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1635;-6192.953,3942.182;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1636;-6208.953,4102.184;Inherit;False;2;0;FLOAT;-1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1637;-5904.953,4166.184;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2.25;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1638;-5904.953,3942.182;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1639;-5760.953,4166.184;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1640;-5568.953,4038.184;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1641;-5424.953,4038.184;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1642;-5232.953,4038.184;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1643;-5760.953,3942.182;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1644;-4643.179,4015.236;Inherit;True;4;4;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;1645;-5811.882,4288.729;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1646;-6056.956,4313.377;Inherit;False;1591;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1647;-7264.509,3874.751;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FmodOpNode;1648;-6656.953,3942.182;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1649;-7536.506,3785.75;Inherit;False;InstancedProperty;_InvertDirection;Invert Direction;57;2;[IntRange];[Enum];Create;True;0;2;False;0;True;1;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1650;-4976.953,3878.182;Float;False;Property;_GlintColor;Color;56;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;1651;-5600.953,4358.184;Float;False;Property;_GlintFresnel;Fresnel Bias, Scale, Power;60;0;Create;False;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1652;-6752.954,4246.184;Float;False;Property;_TailHeadFalloff;Tail Head Falloff;58;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1653;-7238.316,4387.162;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1654;-6726.602,4153.783;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;1655;-7112.661,4110.643;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1656;-7029.118,4178.356;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1657;-7487.337,4188.072;Float;False;Property;_SizeSpeedInterval;Size Speed Interval;59;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1658;-4905.602,4410.157;Inherit;False;Constant;_Float4;Float 4;62;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1659;-1360.626,-1342.746;Inherit;False;InstancedProperty;_Metallic;Metallic;4;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1660;-350.0555,2071.122;Inherit;True;Rim_Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1661;-840.8426,2076.042;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1662;-1287.923,2078.282;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1663;-1567.796,2353.177;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;1664;-1900.437,2318.094;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;1665;-1950.709,2455.094;Inherit;False;InstancedProperty;_RimTint;Rim Tint;45;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;1666;-1683.5,2088.06;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1667;-1963.338,2087.864;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1668;-2205.085,2466.553;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1669;-2414.357,2441.199;Inherit;False;1562;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1670;-2439.626,2550.823;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1671;-2302.833,2086.336;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1672;-2575.846,2345.495;Inherit;False;InstancedProperty;_RimPower;Rim Power;47;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1673;-3427.455,2769.811;Inherit;False;1566;normalviewdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1674;-3396.985,2676.517;Inherit;False;InstancedProperty;_RimOffset;Rim Offset;46;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1675;-3211.748,2716.986;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1676;-2879.807,2376.462;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1677;-2600.622,2124.466;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1678;-2054.122,185.718;Inherit;False;1591;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1679;-2041.526,323.5304;Inherit;False;1692;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1680;-2038.801,461.6632;Inherit;False;1572;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1681;-2057.618,392.7365;Inherit;False;1696;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1682;-8048.771,725.7653;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1683;-7580.996,730.7413;Inherit;False;RotateUVFill;-1;;163;459952d587cbfe742a7e7f4a8a0a4169;0;2;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1684;-7747.077,853.5981;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1685;-7175.633,989.6089;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;1686;-7754.01,-478.7434;Inherit;True;Property;_ParallaxMap;Height Map (G);8;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Height Map Setup (Only Works for Fallbacks);0;0;True;0;False;-1;None;None;True;0;True;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;1687;-7630.341,-234.9651;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1688;-7242.478,-342.3977;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1689;-6827.929,-329.0324;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1690;-7257.741,-81.96677;Inherit;False;InstancedProperty;_Parallax;Height Scale;9;0;Create;False;0;0;0;True;0;False;0;0.02;0.005;0.08;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1691;-974.2283,-1370.56;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1692;-767.2333,-1362.619;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1693;-3230.471,-284.0453;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1694;-2875.16,-287.5688;Inherit;False;samplerState;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1695;-983.7703,-1051.53;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1696;-757.3058,-1056.704;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1697;-1446.732,-116.3724;Inherit;False;InstancedProperty;_OcclusionStrength;Occlusion Strength;11;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1698;-7779.29,-1051.255;Inherit;True;Property;_EmissionMap;Emission;13;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Emission Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1699;-7380.374,-938.1943;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1700;-6720.805,-1282.111;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1701;-7243.698,-1077.586;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1702;-6871.752,-1156.546;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1703;-6889.659,-1044.691;Inherit;False;1541;AudioLink;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1704;-8019.741,-1002.429;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode;1705;-7220.84,-1144.079;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1706;-7785.316,2017.177;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1707;-6644.635,2054.288;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1708;-5651.545,2220.018;Inherit;True;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1709;-5373.545,2219.018;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1710;-6950.657,2032.018;Inherit;True;Simple HUE;-1;;164;32abb5f0db087604486c2db83a2e817a;0;1;1;FLOAT;0;False;4;FLOAT3;6;FLOAT;7;FLOAT;5;FLOAT;8
Node;AmplifyShaderEditor.NormalizeNode;1711;-6254.478,2083.625;Inherit;True;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;1712;-4944.204,2216.185;Inherit;True;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1713;-4535.714,2211.97;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1714;-4500.749,2607.178;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1715;-4895.253,2570.334;Inherit;True;Property;_Glitter;Glitter;39;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1716;-4820.606,2754.438;Inherit;False;InstancedProperty;_GlitterColor;Glitter Color;42;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1717;-4859.121,2009.637;Inherit;True;Property;_GlitterMap;Glitter Map;43;0;Create;False;0;0;0;False;0;False;-1;None;None;True;6;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1718;-4255.815,2365.669;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1719;-5221.06,2027.637;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleTimeNode;1720;-7790.721,2305.566;Inherit;True;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1721;-7336.836,2033.192;Inherit;True;Property;_GlitterNoise;Glitter Noise;40;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1722;-6902.497,2293.951;Inherit;False;Constant;_GlitterOffset;GlitterOffset;62;0;Create;True;0;0;0;False;0;False;0.9999;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;1723;-7543.958,2075.328;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1724;-7789.786,2158.546;Inherit;False;InstancedProperty;_NoiseSpeed;Noise Speed;41;0;Create;False;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1725;-6381.173,2458.926;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1726;-6163.149,2463.742;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1727;-5877.302,2464.49;Inherit;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1728;-2094.451,3362.231;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1.1;False;2;FLOAT;1.12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1729;-2935.369,3619.618;Inherit;False;InstancedProperty;_GlossyReflections;Specular Gloss;51;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1730;-2673.203,3622.115;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1731;-2497.442,3601.65;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1732;-8045.422,864.8063;Inherit;False;InstancedProperty;_PulseRotation;Pulse Rotation;26;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1733;-7021.12,811.9489;Inherit;False;InstancedProperty;_AudioHueShift;Audio Hue Shift;25;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1734;-7041.279,1272.825;Inherit;False;InstancedProperty;_Pulse;Pulse;24;1;[Header];Create;True;1;Pulse Across UVs;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1735;-7040.357,1374.663;Inherit;False;InstancedProperty;_Delay;Delay;23;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1736;-3802.27,2389.095;Inherit;False;glitterRender;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PosVertexDataNode;1737;-7992.953,3844.181;Inherit;True;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1738;-4445.039,1013.446;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1739;-4725.039,1281.448;Inherit;False;IsAudioLink;-1;;165;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1740;-2449.813,661.9072;Inherit;True;Property;_MatCapMask;MatCap Mask;30;1;[Header];Create;True;1;;0;0;False;1;Tooltip(Multiplied with the texture for the albedo channel);False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1741;-293.1405,3325.001;Inherit;True;Specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1742;-854.0735,3563.072;Inherit;False;InstancedProperty;_EnableSpecular;Enable Specular;48;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Specular Map Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1743;-4041.757,2396.064;Inherit;True;Switch;-1;;166;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1744;-4227.757,2592.064;Inherit;False;InstancedProperty;_EnableGlitter;Enable Glitter;38;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glitter Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1745;-4176.039,983.5359;Inherit;True;Switch;-1;;167;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1746;-4448.039,1223.537;Inherit;False;InstancedProperty;_EnableAudioLink;Enable AudioLink;17;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;AudioLink Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1747;-1516.283,1704.752;Inherit;False;InstancedProperty;_EnableMatCap2;Enable MatCap 2;34;2;[Header];[ToggleUI];Create;True;1;MatCap 2 Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1748;-628.6579,1250.979;Inherit;True;Switch;-1;;168;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1749;-900.6576,1490.979;Inherit;False;InstancedProperty;_EnableMatCap;Enable MatCap;29;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;MatCap Setup;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1750;-4097.258,4001.42;Inherit;True;Switch;-1;;169;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1751;-3817.437,3997.976;Inherit;False;Glint;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1752;-4234.578,4368.357;Inherit;False;InstancedProperty;_EnableGlint;Enable Glint;54;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glint Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1753;-7472.953,3926.182;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1754;-4329.499,4023.189;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1755;-4658.353,4261.504;Inherit;True;Property;_GlintMap;Glint Map;55;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1756;-2537.479,3767.25;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1757;-4859.668,4312.781;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1758;-4268.873,-895.6438;Inherit;False;StandardShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1759;-355.9399,1310.395;Inherit;False;matcapToggle;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1760;-368.499,1189.415;Inherit;False;MatCap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1761;-4775.844,-665.1085;Inherit;False;1760;MatCap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1762;-4519.879,-821.5381;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1763;-1325.734,-948.4367;Inherit;False;InstancedProperty;_Glossiness;Smoothness;5;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1764;-2842.162,1150.472;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;1765;-3237.658,988.941;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.WorldReflectionVector;1766;-3292.132,1173.451;Inherit;False;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1767;-3028.65,723.785;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1768;-2868.397,789.2299;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1769;-2831.089,905.3071;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1770;-3342.945,787.59;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;1771;-2792.73,1267.896;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1772;-1272.284,1361.752;Inherit;True;Switch;-1;;170;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1773;-2657.18,1016.158;Inherit;True;Switch;-1;;171;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1774;-3002.415,1085.026;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1775;-2563.26,-328.4125;Inherit;False;InstancedProperty;_CullingMode;Cull Mode;61;3;[Header];[IntRange];[Enum];Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Front;1;Back;2;0;True;0;False;0;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1776;-7964.149,322.3297;Inherit;False;Constant;_Float0;Float 0;3;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1777;-7742.833,298.1863;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1778;-7276.293,325.3384;Inherit;True;Property;_ToonRamp;Toon Ramp;28;1;[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;f9dbc1e3c9eb74b4dbbc96c9e17e61b9;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightAttenuation;1779;-4414.82,-189.4934;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1780;-1270.278,2517.054;Inherit;False;InstancedProperty;_RimOverride;Enable Rim;44;2;[Header];[ToggleUI];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Rim Lighting Setup;2;Disabled;0;Enabled;1;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1781;-582.0739,3323.072;Inherit;True;Switch;-1;;172;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1782;-2531.176,-1216.248;Inherit;True;5;5;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1783;-3558.371,1039.203;Inherit;False;1591;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1784;-5988.394,-1137.952;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1785;-1867.422,1290.984;Inherit;False;InstancedProperty;_AddMatCap;Add MatCap;33;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1786;-3318.891,1364.457;Inherit;False;Constant;_Offset;Offset;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1787;-3164.191,1462.257;Inherit;False;Constant;_MatCapNormalReflection;Normal Reflection Mix;30;1;[Header];Create;False;2;0 for Normals;1 For Reflections;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1788;-3647.73,-922.1679;Inherit;False;1736;glitterRender;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1789;-3643.235,-842.9041;Inherit;False;1660;Rim_Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1790;-3627.428,-765.4583;Inherit;False;1741;Specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1791;-3629.647,-686.5441;Inherit;False;1751;Glint;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1792;-8017.364,183.8268;Inherit;False;1562;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;1793;-5726.435,-146.824;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LightAttenuation;1794;-5857.206,236.7503;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1795;-5573.274,122.9102;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;1796;-5846.435,123.1759;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1797;-5980.933,-48.57628;Inherit;False;1591;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1798;-5350.95,-1.653835;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1799;-7988.558,-470.4368;Inherit;False;1694;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1800;-6783.382,176.8919;Inherit;False;1601;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1801;-5003.518,-152.1953;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1802;-3682.116,-1232.318;Inherit;False;1758;StandardShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1803;-3647.24,-1029.614;Inherit;False;1596;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1804;-7640.95,-820.9773;Inherit;False;InstancedProperty;_EmissionColor;Color;14;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1805;-3193.569,-1219.5;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1806;-2043.367,255.5197;Inherit;False;1596;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1807;86.45378,203.9309;Inherit;False;1595;ToonShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1808;77.30168,393.9825;Inherit;False;InstancedProperty;_EnableToon;Enable  Toon;27;2;[Header];[ToggleUI];Create;True;3;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Toon Map Setup;Will disable Metallic and Ambient Occlusion Setups;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1809;332.8506,-74.81088;Inherit;True;Switch;-1;;173;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT;1;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1810;91.85075,126.1891;Inherit;False;Constant;_Float2;Float 2;62;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1811;673.2427,76.76035;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1813;334.3018,135.9826;Inherit;True;Switch;-1;;174;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1815;-5654.553,-972.8117;Inherit;False;InstancedProperty;_Color;Color;2;0;Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1816;612.5906,319.5448;Inherit;True;Switch;-1;;175;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1817;70.71178,521.7567;Inherit;False;1538;Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1818;260.2103,758.1044;Inherit;False;Constant;_Color2;Color;1;0;Create;False;0;0;0;False;0;False;0.4627451,0.4627451,0.4627451,1;0.5471698,0.5471698,0.5471698,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1819;580.2101,534.1045;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1820;307.168,491.7906;Inherit;False;1570;heightMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1821;377.2103,574.1044;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1812;70.95128,-15.4929;Inherit;False;1536;StandardSetup;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1824;642.7701,-88.7184;Inherit;False;1607;Opacity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1608;-2241.89,-330.5899;Inherit;False;Constant;_Cutoff1;Alpha Cutoff;3;0;Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Back;1;Front;2;0;True;0;False;0;0.5;0;1;0;1;FLOAT;0
WireConnection;80;2;1816;0
WireConnection;80;10;1824;0
WireConnection;80;13;1811;0
WireConnection;1533;0;1582;0
WireConnection;1533;1;1785;0
WireConnection;1534;0;1533;0
WireConnection;1534;1;1772;0
WireConnection;1535;0;1580;0
WireConnection;1535;1;1581;0
WireConnection;1536;0;1594;0
WireConnection;1538;0;1801;0
WireConnection;1539;0;1540;0
WireConnection;1540;0;1800;0
WireConnection;1540;1;1778;0
WireConnection;1541;0;1745;0
WireConnection;1542;0;1549;1
WireConnection;1542;1;1544;0
WireConnection;1543;0;1546;0
WireConnection;1543;1;1557;0
WireConnection;1544;0;1547;0
WireConnection;1544;1;1550;0
WireConnection;1545;0;1551;0
WireConnection;1546;0;1542;0
WireConnection;1546;1;1549;2
WireConnection;1546;2;1549;3
WireConnection;1548;0;1554;0
WireConnection;1548;1;1556;0
WireConnection;1548;2;1551;0
WireConnection;1549;0;1548;0
WireConnection;1551;2;1555;0
WireConnection;1551;4;1553;0
WireConnection;1552;1;1685;0
WireConnection;1552;2;1734;0
WireConnection;1552;3;1735;0
WireConnection;1553;0;1552;0
WireConnection;1554;7;1558;0
WireConnection;1560;0;1563;0
WireConnection;1561;0;1560;0
WireConnection;1561;1;1559;0
WireConnection;1562;0;1561;0
WireConnection;1564;0;1568;0
WireConnection;1565;0;1564;0
WireConnection;1565;1;1567;0
WireConnection;1566;0;1565;0
WireConnection;1569;0;1733;0
WireConnection;1570;0;1689;0
WireConnection;1571;0;1573;2
WireConnection;1571;1;1697;0
WireConnection;1572;0;1571;0
WireConnection;1573;7;1574;0
WireConnection;1576;7;1575;0
WireConnection;1577;1;1773;0
WireConnection;1577;7;1585;0
WireConnection;1580;0;1577;0
WireConnection;1580;1;1579;0
WireConnection;1580;2;1583;0
WireConnection;1582;0;1584;0
WireConnection;1582;1;1578;0
WireConnection;1582;2;1740;0
WireConnection;1583;0;1740;0
WireConnection;1584;1;1773;0
WireConnection;1584;7;1585;0
WireConnection;1588;5;1587;0
WireConnection;1588;7;1590;0
WireConnection;1589;5;1586;0
WireConnection;1589;7;1590;0
WireConnection;1591;0;1592;0
WireConnection;1592;0;1588;0
WireConnection;1592;1;1589;0
WireConnection;1594;0;1593;0
WireConnection;1594;1;1678;0
WireConnection;1594;2;1806;0
WireConnection;1594;3;1679;0
WireConnection;1594;4;1681;0
WireConnection;1594;5;1680;0
WireConnection;1595;0;1782;0
WireConnection;1596;0;1597;0
WireConnection;1597;0;1700;0
WireConnection;1597;1;1703;0
WireConnection;1598;0;1600;0
WireConnection;1598;1;1815;0
WireConnection;1599;7;1784;0
WireConnection;1600;7;1784;0
WireConnection;1601;0;1602;0
WireConnection;1602;0;1603;0
WireConnection;1602;1;1815;0
WireConnection;1603;0;1600;0
WireConnection;1603;1;1599;0
WireConnection;1604;0;1603;0
WireConnection;1605;7;1784;0
WireConnection;1606;0;1600;4
WireConnection;1606;1;1815;4
WireConnection;1606;2;1605;4
WireConnection;1607;0;1606;0
WireConnection;1612;0;1613;0
WireConnection;1614;0;1610;0
WireConnection;1614;1;1611;1
WireConnection;1615;0;1614;0
WireConnection;1615;1;1612;0
WireConnection;1616;0;1615;0
WireConnection;1616;1;1731;0
WireConnection;1617;0;1620;0
WireConnection;1617;1;1623;0
WireConnection;1618;0;1619;0
WireConnection;1618;1;1617;0
WireConnection;1620;0;1728;0
WireConnection;1620;1;1621;0
WireConnection;1621;0;1622;0
WireConnection;1621;1;1624;0
WireConnection;1622;7;1756;0
WireConnection;1624;0;1625;0
WireConnection;1624;1;1626;0
WireConnection;1624;2;1627;0
WireConnection;1629;0;1652;0
WireConnection;1630;0;1647;0
WireConnection;1630;1;1657;1
WireConnection;1631;0;1630;0
WireConnection;1631;1;1655;0
WireConnection;1632;0;1652;0
WireConnection;1633;0;1645;0
WireConnection;1633;1;1651;1
WireConnection;1633;2;1651;2
WireConnection;1633;3;1651;3
WireConnection;1634;1;1652;0
WireConnection;1635;0;1648;0
WireConnection;1635;1;1629;0
WireConnection;1636;1;1632;0
WireConnection;1637;0;1635;0
WireConnection;1637;1;1634;0
WireConnection;1638;0;1635;0
WireConnection;1638;1;1636;0
WireConnection;1639;0;1637;0
WireConnection;1640;0;1643;0
WireConnection;1640;1;1639;0
WireConnection;1641;0;1640;0
WireConnection;1642;0;1641;0
WireConnection;1643;0;1638;0
WireConnection;1644;0;1650;0
WireConnection;1644;1;1642;0
WireConnection;1644;2;1633;0
WireConnection;1644;3;1658;0
WireConnection;1645;0;1646;0
WireConnection;1647;0;1737;2
WireConnection;1647;1;1753;0
WireConnection;1647;2;1649;0
WireConnection;1648;0;1631;0
WireConnection;1648;1;1654;0
WireConnection;1653;0;1657;1
WireConnection;1653;1;1657;2
WireConnection;1654;0;1656;0
WireConnection;1654;1;1657;3
WireConnection;1655;0;1653;0
WireConnection;1656;0;1653;0
WireConnection;1660;0;1661;0
WireConnection;1661;0;1662;0
WireConnection;1661;1;1780;0
WireConnection;1662;0;1666;0
WireConnection;1662;1;1663;0
WireConnection;1663;0;1664;0
WireConnection;1663;1;1665;0
WireConnection;1666;0;1667;0
WireConnection;1667;0;1671;0
WireConnection;1667;1;1668;0
WireConnection;1668;0;1669;0
WireConnection;1668;1;1670;0
WireConnection;1671;0;1677;0
WireConnection;1671;1;1672;0
WireConnection;1675;0;1674;0
WireConnection;1675;1;1673;0
WireConnection;1676;0;1675;0
WireConnection;1677;0;1676;0
WireConnection;1683;1;1682;0
WireConnection;1683;2;1684;0
WireConnection;1684;0;1732;0
WireConnection;1685;0;1683;0
WireConnection;1686;7;1799;0
WireConnection;1688;0;1686;2
WireConnection;1688;1;1687;0
WireConnection;1689;0;1688;0
WireConnection;1689;1;1690;0
WireConnection;1691;0;1576;1
WireConnection;1691;1;1659;0
WireConnection;1692;0;1691;0
WireConnection;1694;0;1693;0
WireConnection;1695;0;1576;4
WireConnection;1695;1;1763;0
WireConnection;1696;0;1695;0
WireConnection;1698;7;1704;0
WireConnection;1699;0;1698;0
WireConnection;1699;1;1804;0
WireConnection;1700;0;1702;0
WireConnection;1701;0;1699;0
WireConnection;1702;0;1705;0
WireConnection;1705;0;1701;0
WireConnection;1707;0;1710;8
WireConnection;1707;1;1722;0
WireConnection;1708;0;1711;0
WireConnection;1708;1;1727;0
WireConnection;1709;0;1708;0
WireConnection;1710;1;1721;1
WireConnection;1711;0;1707;0
WireConnection;1712;0;1709;0
WireConnection;1713;0;1717;0
WireConnection;1713;1;1712;0
WireConnection;1714;0;1715;0
WireConnection;1714;1;1716;0
WireConnection;1717;7;1719;0
WireConnection;1718;0;1713;0
WireConnection;1718;1;1714;0
WireConnection;1721;1;1723;0
WireConnection;1723;0;1706;0
WireConnection;1723;2;1724;0
WireConnection;1723;1;1720;0
WireConnection;1726;0;1725;0
WireConnection;1727;0;1726;0
WireConnection;1728;0;1616;0
WireConnection;1730;0;1729;0
WireConnection;1731;0;1730;0
WireConnection;1736;0;1743;0
WireConnection;1738;0;1543;0
WireConnection;1738;1;1739;0
WireConnection;1740;7;1609;0
WireConnection;1741;0;1781;0
WireConnection;1743;3;1718;0
WireConnection;1743;8;1744;0
WireConnection;1745;3;1738;0
WireConnection;1745;8;1746;0
WireConnection;1748;3;1534;0
WireConnection;1748;8;1749;0
WireConnection;1750;3;1754;0
WireConnection;1750;8;1752;0
WireConnection;1751;0;1750;0
WireConnection;1753;0;1737;2
WireConnection;1754;0;1644;0
WireConnection;1754;1;1755;0
WireConnection;1755;7;1757;0
WireConnection;1758;0;1762;0
WireConnection;1759;0;1748;0
WireConnection;1760;0;1748;0
WireConnection;1762;0;1598;0
WireConnection;1762;1;1761;0
WireConnection;1764;0;1774;0
WireConnection;1764;1;1786;0
WireConnection;1766;0;1783;0
WireConnection;1767;0;1770;0
WireConnection;1767;1;1765;0
WireConnection;1768;0;1767;0
WireConnection;1768;1;1786;0
WireConnection;1769;0;1768;0
WireConnection;1769;1;1786;0
WireConnection;1770;0;1783;0
WireConnection;1771;0;1764;0
WireConnection;1771;1;1786;0
WireConnection;1772;3;1535;0
WireConnection;1772;8;1747;0
WireConnection;1773;2;1769;0
WireConnection;1773;3;1771;0
WireConnection;1773;8;1787;0
WireConnection;1774;0;1766;0
WireConnection;1774;1;1765;0
WireConnection;1777;0;1792;0
WireConnection;1777;1;1776;0
WireConnection;1777;2;1776;0
WireConnection;1778;1;1777;0
WireConnection;1781;3;1618;0
WireConnection;1781;8;1742;0
WireConnection;1782;0;1805;0
WireConnection;1782;1;1788;0
WireConnection;1782;2;1789;0
WireConnection;1782;3;1790;0
WireConnection;1782;4;1791;0
WireConnection;1795;0;1796;0
WireConnection;1795;1;1794;0
WireConnection;1796;0;1797;0
WireConnection;1798;0;1793;0
WireConnection;1798;1;1795;0
WireConnection;1801;0;1537;0
WireConnection;1801;1;1798;0
WireConnection;1805;0;1802;0
WireConnection;1805;1;1803;0
WireConnection;1809;2;1812;0
WireConnection;1809;3;1810;0
WireConnection;1809;8;1808;0
WireConnection;1811;0;1809;0
WireConnection;1811;1;1819;0
WireConnection;1813;2;1810;0
WireConnection;1813;3;1807;0
WireConnection;1813;8;1808;0
WireConnection;1816;2;1810;0
WireConnection;1816;3;1821;0
WireConnection;1816;8;1808;0
WireConnection;1819;0;1813;0
WireConnection;1819;1;1818;0
WireConnection;1821;0;1817;0
WireConnection;1821;1;1818;0
ASEEND*/
//CHKSM=F9EC8B15979141E86CA5792F0CDF86875AA50B87