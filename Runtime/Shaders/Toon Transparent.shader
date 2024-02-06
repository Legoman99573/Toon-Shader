// Upgrade NOTE: upgraded instancing buffer 'Legoman99573ToonTransparent' to new syntax.

// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Legoman99573/Toon Transparent"
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

		#pragma surface surf StandardCustomLighting alpha:fade keepalpha addshadow fullforwardshadows dithercrossfade vertex:vertexDataFunc 

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

		UNITY_INSTANCING_BUFFER_START(Legoman99573ToonTransparent)
			UNITY_DEFINE_INSTANCED_PROP(float4, _OcclusionMap_ST)
#define _OcclusionMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterMap_ST)
#define _GlitterMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapMask_ST)
#define _MatCapMask_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColor)
#define _MatCapColor_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlintMap_ST)
#define _GlintMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _Glitter_ST)
#define _Glitter_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _GlitterColor)
#define _GlitterColor_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MetallicGlossMap_ST)
#define _MetallicGlossMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _RimTint)
#define _RimTint_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MatCapColorAdditive)
#define _MatCapColorAdditive_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColorAudioLink0)
#define _EmissionColorAudioLink0_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMapAudioLink0_ST)
#define _EmissionMapAudioLink0_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColor)
#define _EmissionColor_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecGlossMap_ST)
#define _SpecGlossMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailMask_ST)
#define _DetailMask_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _SpecColorToon)
#define _SpecColorToon_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MainTex_ST)
#define _MainTex_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailNormalMap_ST)
#define _DetailNormalMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _DetailAlbedoMap_ST)
#define _DetailAlbedoMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
#define _Color_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMap_ST)
#define _EmissionMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _BumpMap_ST)
#define _BumpMap_ST_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float2, _NoiseSpeed)
#define _NoiseSpeed_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _InvertDirection)
#define _InvertDirection_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableSpecular)
#define _EnableSpecular_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularHighlights)
#define _SpecularHighlights_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOffset)
#define _RimOffset_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _RimPower)
#define _RimPower_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _RimOverride)
#define _RimOverride_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _GlossyReflections)
#define _GlossyReflections_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _SpecularLightMix)
#define _SpecularLightMix_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlitter)
#define _EnableGlitter_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap)
#define _EnableMatCap_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _Cutoff)
#define _Cutoff_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCapAdditive)
#define _AddMatCapAdditive_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _Parallax)
#define _Parallax_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _CullingMode)
#define _CullingMode_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _BumpScale)
#define _BumpScale_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _DetailNormalMapScale)
#define _DetailNormalMapScale_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableToon)
#define _EnableToon_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _Band)
#define _Band_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _PulseRotation)
#define _PulseRotation_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableMatCap2)
#define _EnableMatCap2_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _Pulse)
#define _Pulse_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _AudioHueShift)
#define _AudioHueShift_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EmissionScale)
#define _EmissionScale_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableAudioLink)
#define _EnableAudioLink_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _Metallic)
#define _Metallic_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _Glossiness)
#define _Glossiness_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _OcclusionStrength)
#define _OcclusionStrength_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _AddMatCap)
#define _AddMatCap_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _Delay)
#define _Delay_arr Legoman99573ToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _EnableGlint)
#define _EnableGlint_arr Legoman99573ToonTransparent
		UNITY_INSTANCING_BUFFER_END(Legoman99573ToonTransparent)


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
			float4 tex2DNode1586 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 _DetailMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailMask_ST_arr, _DetailMask_ST);
			float2 uv_DetailMask = i.uv_texcoord * _DetailMask_ST_Instance.xy + _DetailMask_ST_Instance.zw;
			float Opacity1593 = ( tex2DNode1586.a * _Color_Instance.a * SAMPLE_TEXTURE2D( _DetailMask, sampler_Linear_Repeat, uv_DetailMask ).a );
			SurfaceOutputStandard s1580 = (SurfaceOutputStandard ) 0;
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 temp_output_1589_0 = ( tex2DNode1586 * SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap ) );
			float4 albedo1587 = ( temp_output_1589_0 * _Color_Instance );
			s1580.Albedo = albedo1587.rgb;
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1577 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			s1580.Normal = normalize( WorldNormalVector( i , NormalMap1577 ) );
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
			float temp_output_1537_0 = localAudioLinkLerp3_g161;
			float3 hsvTorgb1535 = RGBToHSV( ( SAMPLE_TEXTURE2D( _EmissionMapAudioLink0, sampler_Linear_Repeat, uv4_EmissionMapAudioLink0 ) * _EmissionColorAudioLink0_Instance * temp_output_1537_0 ).rgb );
			float _AudioHueShift_Instance = UNITY_ACCESS_INSTANCED_PROP(_AudioHueShift_arr, _AudioHueShift);
			float hueShift1555 = _AudioHueShift_Instance;
			float amplitude1531 = temp_output_1537_0;
			float3 hsvTorgb1532 = HSVToRGB( float3(( hsvTorgb1535.x + ( hueShift1555 * amplitude1531 ) ),hsvTorgb1535.y,hsvTorgb1535.z) );
			float _EmissionScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionScale_arr, _EmissionScale);
			float localIfAudioLinkv2Exists1_g165 = IfAudioLinkv2Exists1_g165();
			float _EnableAudioLink_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableAudioLink_arr, _EnableAudioLink);
			float3 lerpResult7_g167 = lerp( temp_cast_5 , ( ( hsvTorgb1532 * _EmissionScale_Instance ) * localIfAudioLinkv2Exists1_g165 ) , _EnableAudioLink_Instance);
			float3 AudioLink1527 = lerpResult7_g167;
			float4 Emission1582 = ( ( SAMPLE_TEXTURE2D( _EmissionMap, sampler_Linear_Repeat, uv_EmissionMap ) * _EmissionColor_Instance ) + float4( AudioLink1527 , 0.0 ) );
			s1580.Emission = Emission1582.rgb;
			float4 _MetallicGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MetallicGlossMap_ST_arr, _MetallicGlossMap_ST);
			float2 uv_MetallicGlossMap = i.uv_texcoord * _MetallicGlossMap_ST_Instance.xy + _MetallicGlossMap_ST_Instance.zw;
			float4 tex2DNode1562 = SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_Linear_Repeat, uv_MetallicGlossMap );
			float _Metallic_Instance = UNITY_ACCESS_INSTANCED_PROP(_Metallic_arr, _Metallic);
			float Metallic1678 = ( tex2DNode1562.r * _Metallic_Instance );
			s1580.Metallic = Metallic1678;
			float _Glossiness_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glossiness_arr, _Glossiness);
			float Smoothness1682 = ( tex2DNode1562.a * _Glossiness_Instance );
			s1580.Smoothness = Smoothness1682;
			float4 _OcclusionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionMap_ST_arr, _OcclusionMap_ST);
			float2 uv_OcclusionMap = i.uv_texcoord * _OcclusionMap_ST_Instance.xy + _OcclusionMap_ST_Instance.zw;
			float _OcclusionStrength_Instance = UNITY_ACCESS_INSTANCED_PROP(_OcclusionStrength_arr, _OcclusionStrength);
			float AO1558 = ( SAMPLE_TEXTURE2D( _OcclusionMap, sampler_Linear_Repeat, uv_OcclusionMap ).g * _OcclusionStrength_Instance );
			s1580.Occlusion = AO1558;

			data.light = gi.light;

			UnityGI gi1580 = gi;
			#ifdef UNITY_PASS_FORWARDBASE
			Unity_GlossyEnvironmentData g1580 = UnityGlossyEnvironmentSetup( s1580.Smoothness, data.worldViewDir, s1580.Normal, float3(0,0,0));
			gi1580 = UnityGlobalIllumination( data, s1580.Occlusion, s1580.Normal, g1580 );
			#endif

			float3 surfResult1580 = LightingStandard ( s1580, viewDir, gi1580 ).rgb;
			surfResult1580 += s1580.Emission;

			#ifdef UNITY_PASS_FORWARDADD//1580
			surfResult1580 -= s1580.Emission;
			#endif//1580
			float3 StandardSetup1522 = surfResult1580;
			float3 temp_cast_10 = (0.0).xxx;
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float3 lerpResult7_g173 = lerp( StandardSetup1522 , temp_cast_10 , _EnableToon_Instance);
			float4 temp_cast_12 = (0.0).xxxx;
			float4 temp_cast_13 = (0.0).xxxx;
			float3 lerpResult7_g171 = lerp( ( ( mul( float4( (WorldNormalVector( i , NormalMap1577 )) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , ( ( mul( float4( normalize( WorldReflectionVector( i , NormalMap1577 ) ) , 0.0 ), UNITY_MATRIX_V ).xyz * 0.5 ) + 0.5 ) , 0.5);
			float3 temp_output_1759_0 = lerpResult7_g171;
			float4 _MatCapColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColor_arr, _MatCapColor);
			float4 _MatCapMask_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapMask_ST_arr, _MatCapMask_ST);
			float2 uv2_MatCapMask = i.uv3_texcoord3 * _MatCapMask_ST_Instance.xy + _MatCapMask_ST_Instance.zw;
			float4 tex2DNode1726 = SAMPLE_TEXTURE2D( _MatCapMask, sampler_Linear_Repeat, uv2_MatCapMask );
			float _AddMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCap_arr, _AddMatCap);
			float4 temp_cast_19 = (0.0).xxxx;
			float4 _MatCapColorAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_MatCapColorAdditive_arr, _MatCapColorAdditive);
			float _AddMatCapAdditive_Instance = UNITY_ACCESS_INSTANCED_PROP(_AddMatCapAdditive_arr, _AddMatCapAdditive);
			float _EnableMatCap2_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap2_arr, _EnableMatCap2);
			float4 lerpResult7_g170 = lerp( temp_cast_19 , ( ( SAMPLE_TEXTURE2D( _MatCapAdditive, sampler_Linear_Repeat, temp_output_1759_0.xy ) * _MatCapColorAdditive_Instance * ( 1.0 - tex2DNode1726 ) ) * _AddMatCapAdditive_Instance ) , _EnableMatCap2_Instance);
			float _EnableMatCap_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableMatCap_arr, _EnableMatCap);
			float4 lerpResult7_g168 = lerp( temp_cast_13 , ( ( ( SAMPLE_TEXTURE2D( _MatCap, sampler_Linear_Repeat, temp_output_1759_0.xy ) * _MatCapColor_Instance * tex2DNode1726 ) * _AddMatCap_Instance ) + lerpResult7_g170 ) , _EnableMatCap_Instance);
			float4 temp_output_1734_0 = lerpResult7_g168;
			float4 MatCap1746 = temp_output_1734_0;
			float4 StandardShading1744 = ( ( tex2DNode1586 * _Color_Instance ) + MatCap1746 );
			float4 temp_cast_21 = (0.0).xxxx;
			float4 _GlitterMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterMap_ST_arr, _GlitterMap_ST);
			float2 uv6_GlitterMap = i.ase_texcoord7.xy * _GlitterMap_ST_Instance.xy + _GlitterMap_ST_Instance.zw;
			float2 _NoiseSpeed_Instance = UNITY_ACCESS_INSTANCED_PROP(_NoiseSpeed_arr, _NoiseSpeed);
			float2 panner1709 = ( _Time.y * _NoiseSpeed_Instance + i.uv_texcoord);
			float3 hsvTorgb3_g164 = HSVToRGB( float3(SAMPLE_TEXTURE2D( _GlitterNoise, sampler_GlitterNoise, panner1709 ).r,1.0,1.0) );
			float normalizeResult1697 = normalize( ( hsvTorgb3_g164.z - 0.9999 ) );
			float3 temp_cast_22 = (normalizeResult1697).xxx;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 normalizeResult1712 = normalize( ase_worldViewDir );
			float dotResult1694 = dot( temp_cast_22 , ( 1.0 - normalizeResult1712 ) );
			float3 temp_cast_23 = (saturate( dotResult1694 )).xxx;
			float grayscale1698 = Luminance(temp_cast_23);
			float4 _Glitter_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_Glitter_ST_arr, _Glitter_ST);
			float2 uv_Glitter = i.uv_texcoord * _Glitter_ST_Instance.xy + _Glitter_ST_Instance.zw;
			float4 _GlitterColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlitterColor_arr, _GlitterColor);
			float _EnableGlitter_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlitter_arr, _EnableGlitter);
			float4 lerpResult7_g166 = lerp( temp_cast_21 , ( ( SAMPLE_TEXTURE2D( _GlitterMap, sampler_Linear_Repeat, uv6_GlitterMap ) * grayscale1698 ) * ( SAMPLE_TEXTURE2D( _Glitter, sampler_Glitter, uv_Glitter ) * _GlitterColor_Instance ) ) , _EnableGlitter_Instance);
			float4 glitterRender1722 = lerpResult7_g166;
			float _RimOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOffset_arr, _RimOffset);
			float dotResult1551 = dot( normalize( (WorldNormalVector( i , NormalMap1577 )) ) , ase_worldViewDir );
			float normalviewdir1552 = dotResult1551;
			float saferPower1657 = abs( ( 1.0 - saturate( ( _RimOffset_Instance + normalviewdir1552 ) ) ) );
			float _RimPower_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimPower_arr, _RimPower);
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1547 = dot( normalize( (WorldNormalVector( i , NormalMap1577 )) ) , ase_worldlightDir );
			float NormalLightDir1548 = dotResult1547;
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 _RimTint_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimTint_arr, _RimTint);
			float _RimOverride_Instance = UNITY_ACCESS_INSTANCED_PROP(_RimOverride_arr, _RimOverride);
			float4 Rim_Lighting1646 = ( ( saturate( ( pow( saferPower1657 , _RimPower_Instance ) * ( NormalLightDir1548 * ase_lightAtten ) ) ) * ( ase_lightColor * _RimTint_Instance ) ) * _RimOverride_Instance );
			float4 temp_cast_24 = (0.0).xxxx;
			float dotResult1601 = dot( ( ase_worldViewDir + _WorldSpaceLightPos0.xyz ) , (WorldNormalVector( i , NormalMap1577 )) );
			float _GlossyReflections_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlossyReflections_arr, _GlossyReflections);
			float smoothstepResult1714 = smoothstep( 1.1 , 1.12 , pow( dotResult1601 , ( ( 1.0 - _GlossyReflections_Instance ) * 20.0 ) ));
			float4 _SpecGlossMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecGlossMap_ST_arr, _SpecGlossMap_ST);
			float2 uv_SpecGlossMap = i.uv_texcoord * _SpecGlossMap_ST_Instance.xy + _SpecGlossMap_ST_Instance.zw;
			float4 _SpecColorToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecColorToon_arr, _SpecColorToon);
			float _SpecularLightMix_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularLightMix_arr, _SpecularLightMix);
			float4 lerpResult1610 = lerp( _SpecColorToon_Instance , ase_lightColor , _SpecularLightMix_Instance);
			float _SpecularHighlights_Instance = UNITY_ACCESS_INSTANCED_PROP(_SpecularHighlights_arr, _SpecularHighlights);
			float _EnableSpecular_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableSpecular_arr, _EnableSpecular);
			float4 lerpResult7_g172 = lerp( temp_cast_24 , ( ase_lightAtten * ( ( smoothstepResult1714 * ( SAMPLE_TEXTURE2D( _SpecGlossMap, sampler_Linear_Repeat, uv_SpecGlossMap ) * lerpResult1610 ) ) * _SpecularHighlights_Instance ) ) , _EnableSpecular_Instance);
			float4 Specular1727 = lerpResult7_g172;
			float4 temp_cast_25 = (0.0).xxxx;
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float _InvertDirection_Instance = UNITY_ACCESS_INSTANCED_PROP(_InvertDirection_arr, _InvertDirection);
			float lerpResult1633 = lerp( ase_vertex3Pos.y , -ase_vertex3Pos.y , _InvertDirection_Instance);
			float temp_output_1639_0 = ( _SizeSpeedInterval.x * _SizeSpeedInterval.y );
			float mulTime1641 = _Time.y * temp_output_1639_0;
			float temp_output_1621_0 = ( fmod( ( ( lerpResult1633 * _SizeSpeedInterval.x ) + mulTime1641 ) , ( ( temp_output_1639_0 + 1.0 ) * _SizeSpeedInterval.z ) ) + ( _TailHeadFalloff - 1.0 ) );
			float saferPower1628 = abs( ( 1.0 - ( saturate( ( temp_output_1621_0 * ( -1.0 / ( 1.0 - _TailHeadFalloff ) ) ) ) + saturate( ( temp_output_1621_0 * ( 1.0 / _TailHeadFalloff ) ) ) ) ) );
			float fresnelNdotV1619 = dot( (WorldNormalVector( i , NormalMap1577 )), ase_worldViewDir );
			float fresnelNode1619 = ( _GlintFresnel.x + _GlintFresnel.y * pow( max( 1.0 - fresnelNdotV1619 , 0.0001 ), _GlintFresnel.z ) );
			float4 _GlintMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_GlintMap_ST_arr, _GlintMap_ST);
			float2 uv_GlintMap = i.uv_texcoord * _GlintMap_ST_Instance.xy + _GlintMap_ST_Instance.zw;
			float _EnableGlint_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableGlint_arr, _EnableGlint);
			float4 lerpResult7_g169 = lerp( temp_cast_25 , ( ( _GlintColor * pow( saferPower1628 , 5.0 ) * fresnelNode1619 * 2.0 ) * SAMPLE_TEXTURE2D( _GlintMap, sampler_Linear_Repeat, uv_GlintMap ) ) , _EnableGlint_Instance);
			float4 Glint1737 = lerpResult7_g169;
			float4 ToonShading1581 = ( ( StandardShading1744 + Emission1582 ) + glitterRender1722 + Rim_Lighting1646 + Specular1727 + Glint1737 );
			float4 lerpResult7_g174 = lerp( temp_cast_12 , ToonShading1581 , _EnableToon_Instance);
			float4 color1804 = IsGammaSpace() ? float4(0.4627451,0.4627451,0.4627451,1) : float4(0.1811642,0.1811642,0.1811642,1);
			c.rgb = ( float4( lerpResult7_g173 , 0.0 ) + ( lerpResult7_g174 * color1804 ) ).rgb;
			c.a = Opacity1593;
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
			float4 tex2DNode1586 = SAMPLE_TEXTURE2D( _MainTex, sampler_Linear_Repeat, uv_MainTex );
			float4 _DetailAlbedoMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailAlbedoMap_ST_arr, _DetailAlbedoMap_ST);
			float2 uv_DetailAlbedoMap = i.uv_texcoord * _DetailAlbedoMap_ST_Instance.xy + _DetailAlbedoMap_ST_Instance.zw;
			float4 temp_output_1589_0 = ( tex2DNode1586 * SAMPLE_TEXTURE2D( _DetailAlbedoMap, sampler_Linear_Repeat, uv_DetailAlbedoMap ) );
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 albedo1587 = ( temp_output_1589_0 * _Color_Instance );
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float _BumpScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpScale_arr, _BumpScale);
			float4 _DetailNormalMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMap_ST_arr, _DetailNormalMap_ST);
			float2 uv_DetailNormalMap = i.uv_texcoord * _DetailNormalMap_ST_Instance.xy + _DetailNormalMap_ST_Instance.zw;
			float _DetailNormalMapScale_Instance = UNITY_ACCESS_INSTANCED_PROP(_DetailNormalMapScale_arr, _DetailNormalMapScale);
			float3 NormalMap1577 = BlendNormals( UnpackScaleNormal( SAMPLE_TEXTURE2D( _BumpMap, sampler_Linear_Repeat, uv_BumpMap ), _BumpScale_Instance ) , UnpackScaleNormal( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_Linear_Repeat, uv_DetailNormalMap ), _DetailNormalMapScale_Instance ) );
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult1547 = dot( normalize( (WorldNormalVector( i , NormalMap1577 )) ) , ase_worldlightDir );
			float NormalLightDir1548 = dotResult1547;
			float2 temp_cast_1 = ((NormalLightDir1548*0.5 + 0.5)).xx;
			float4 Shadow1525 = ( albedo1587 * SAMPLE_TEXTURE2D( _ToonRamp, sampler_ToonRamp, temp_cast_1 ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 Lighting1524 = ( Shadow1525 * ( ase_lightColor * float4( ( float3(0,0,0) + 1 ) , 0.0 ) ) );
			float4 color1804 = IsGammaSpace() ? float4(0.4627451,0.4627451,0.4627451,1) : float4(0.1811642,0.1811642,0.1811642,1);
			float _EnableToon_Instance = UNITY_ACCESS_INSTANCED_PROP(_EnableToon_arr, _EnableToon);
			float4 lerpResult7_g175 = lerp( temp_cast_0 , ( Lighting1524 * color1804 ) , _EnableToon_Instance);
			o.Emission = lerpResult7_g175.rgb;
		}

		ENDCG
	}
	Fallback "Standard"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;80;914.1671,19.9218;Float;False;True;-1;7;ASEMaterialInspector;0;0;CustomLighting;Legoman99573/Toon Transparent;False;False;False;False;False;False;False;False;False;False;False;False;True;False;True;False;False;False;False;False;True;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Transparent;0.5;True;True;0;False;Transparent;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;2;5;False;_SrcBlend;10;False;_SrcDST;2;5;False;_SrcBlend;10;False;;0;False;;1;False;;0;False;0;0.1226415,0.1226415,0.1226415,0;VertexScale;True;False;Cylindrical;False;True;Relative;0;Standard;-1;-1;-1;-1;0;True;0;0;True;_CullingMode;-1;0;True;_Cutoff;1;Include;./Includes/AudioLink.cginc;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;True;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1500;-3591.042,3110.051;Inherit;False;3548.67;1426.547;;26;1767;1742;1728;1727;1717;1716;1715;1714;1613;1612;1611;1610;1609;1608;1607;1606;1605;1604;1603;1602;1601;1600;1599;1598;1597;1596;Specular;0.3411765,0.3411765,0.3411765,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1501;-3589.147,1974.828;Inherit;False;3543.927;1046.716;;19;1766;1663;1662;1661;1660;1659;1658;1657;1656;1655;1654;1653;1652;1651;1650;1649;1648;1647;1646;Rim Lighting;0.4623167,0.6132076,0.4367658,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1502;-6024.357,-1452.462;Inherit;False;1972.41;956.1793;;15;1801;1770;1748;1747;1744;1593;1592;1591;1590;1589;1588;1587;1586;1585;1584;Albedo and Transparency;0.1009256,0.6804498,0.7924528,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1503;-2639.306,-404.227;Inherit;False;711.3267;381.5787;;2;1761;1594;Used Components;0.772549,0.5450981,0.4392157,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1504;-8080.066,-1449.946;Inherit;False;1996.66;787.3569;;11;1790;1691;1690;1689;1688;1687;1686;1685;1684;1583;1582;Emission;0.3490196,0.5176471,0.5607843,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1505;-4001.223,-1452.33;Inherit;False;2307.922;955.9736;;9;1791;1789;1788;1777;1776;1775;1774;1768;1581;Toon Shading;0.509434,0.2418903,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1506;-2121.167,40.90353;Inherit;False;807.2709;492.0006;;8;1792;1667;1666;1665;1664;1580;1579;1522;Standard Shading;0.8078432,0.7294118,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1507;-3299.491,32.4609;Inherit;False;1111.183;505.3101;;7;1578;1577;1576;1575;1574;1573;1572;Normal Map;0,0.3058824,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1508;-3599.492,585.0019;Inherit;False;3556.902;1343.892;;34;1773;1772;1771;1769;1760;1759;1758;1757;1756;1755;1754;1753;1752;1751;1750;1746;1745;1735;1734;1733;1726;1595;1571;1570;1569;1568;1567;1566;1565;1564;1563;1521;1520;1519;MatCap;0,1,0.8470588,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1509;-1662.995,-1447.645;Inherit;False;1098.461;950.1898;;8;1749;1682;1681;1678;1677;1645;1562;1561;Metallic and Smoothness;1,0,0,0.2117647;0;0
Node;AmplifyShaderEditor.CommentaryNode;1510;-1824.586,-406.0377;Inherit;False;1076.269;357.3183;;5;1683;1560;1559;1558;1557;Ambient Occlusion;0,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1511;-8083.441,-578.1028;Inherit;False;1998.691;619.2851;;7;1785;1676;1675;1674;1673;1672;1556;Height Map (unused);1,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1512;-3294.371,-419.2416;Inherit;False;623.561;400.0698;;2;1680;1679;Sampler States;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1513;-8090.219,1506.128;Inherit;False;4441.134;2135.596;;25;1730;1729;1722;1713;1712;1711;1710;1709;1708;1707;1706;1705;1704;1703;1702;1701;1700;1699;1698;1697;1696;1695;1694;1693;1692;Glitter;1,0.004716992,0.964993,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1514;-4483.27,18.9128;Inherit;False;1148.977;502.5762;;5;1554;1553;1552;1551;1550;Normal View Dir;0.2641509,0.2641509,0.2641509,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1515;-4478.394,-416.8902;Inherit;False;1138.415;395.5507;;6;1765;1549;1548;1547;1546;1545;Normal Light Dir;0.4339623,0.4339623,0.4339623,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1516;-8088.867,570.0151;Inherit;False;4435.092;886.3752;;31;1732;1731;1725;1724;1721;1720;1719;1718;1671;1670;1669;1668;1555;1544;1543;1542;1541;1540;1539;1538;1537;1536;1535;1534;1533;1532;1531;1530;1529;1528;1527;AudioLink;0.5566038,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1517;-8083.036,101.0774;Inherit;False;2019.533;432.7555;;7;1786;1778;1764;1763;1762;1526;1525;Shadow;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1518;-6012.98,-414.6387;Inherit;False;1493.02;934.3415;;9;1787;1784;1783;1782;1781;1780;1779;1524;1523;Lighting;0.9384004,1,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1519;-1365.911,1026.785;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1520;-939.9463,1189.694;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1521;-1652.346,1431.494;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1522;-1519.896,145.2518;Inherit;False;StandardSetup;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1523;-5672.482,-364.6387;Inherit;False;1525;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1524;-4744.48,-124.6387;Inherit;False;Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1525;-6287.503,239.7549;Inherit;True;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1526;-6588.56,245.7023;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1527;-3877.776,944.7045;Inherit;False;AudioLink;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1528;-5245.003,803.6249;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1529;-4780.383,1056.824;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1530;-5406.48,1051.887;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1531;-5915.144,1242.733;Inherit;False;amplitude;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;1532;-5062.48,957.8885;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1533;-5620.003,983.6259;Inherit;False;1555;hueShift;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1534;-5844.189,958.0155;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RGBToHSVNode;1535;-5626.003,752.625;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1536;-5626.48,1088.887;Inherit;False;1531;amplitude;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1537;-6277.03,1143.262;Inherit;False;4BandAmplitudeLerp;-1;;161;3cf4b6e83381a9a4f84f8cf857bc3af5;0;2;2;INT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1538;-6725.543,1194.518;Inherit;False;BandPulse;-1;;162;c478702160369ce4480fa2fb6d734ffa;0;3;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1539;-6453.234,1203.564;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;128;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1540;-6305.189,620.015;Inherit;True;Property;_EmissionMapAudioLink0;Emission Map;18;0;Create;False;0;0;0;False;0;False;-1;None;None;True;4;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1541;-6749.999,964.1586;Inherit;False;InstancedProperty;_Band;Band;22;3;[Header];[IntRange];[Enum];Create;True;1;Audio Section;4;Bass;0;Low Mid;1;High Mid;2;Treble;3;0;False;0;False;0;0;0;3;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1542;-6251.114,902.2944;Inherit;False;InstancedProperty;_EmissionColorAudioLink0;Emission Color;20;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1543;-5059.784,1121.724;Inherit;False;InstancedProperty;_EmissionScale;Emission Scale;21;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1544;-6625.049,635.381;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1545;-4220.548,-221.324;Inherit;False;True;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1546;-4189.549,-363.3237;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1547;-3866.246,-275.3395;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1548;-3563.98,-276.5098;Inherit;False;NormalLightDir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1549;-4428.394,-366.8902;Inherit;False;1577;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1550;-4174.157,77.34615;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1551;-3901.158,96.34616;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1552;-3639.485,90.95797;Inherit;False;normalviewdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1553;-4167.737,314.5445;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1554;-4433.271,68.91293;Inherit;False;1577;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1555;-6702.822,788.1744;Inherit;False;hueShift;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1556;-6308.751,-356.5543;Inherit;False;heightMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1557;-1156.663,-262.4374;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1558;-952.6035,-216.4153;Inherit;False;AO;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1559;-1531.061,-356.0373;Inherit;True;Property;_OcclusionMap;Occlusion;10;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Occlusion Culling Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1560;-1774.586,-330.9478;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1561;-1612.995,-1163.82;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SamplerNode;1562;-1370.692,-1193.276;Inherit;True;Property;_MetallicGlossMap;Metalic (R) and Smoothness (A);3;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Metallic Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1563;-2431.045,1488.696;Inherit;True;Property;_MatCapAdditive;MatCap 2;35;0;Create;False;0;0;0;False;0;False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1564;-2404.165,884.4056;Inherit;False;InstancedProperty;_MatCapColor;MatCap 1 Color;32;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1565;-2341.346,1703.196;Inherit;False;InstancedProperty;_MatCapColorAdditive;MatCap 2 Color;36;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1566;-2042.344,1443.196;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1567;-1917.543,1712.297;Inherit;False;InstancedProperty;_AddMatCapAdditive;Add MatCap 2;37;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1568;-1910.564,893.5695;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1569;-2078.745,1135.097;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1570;-2424.196,1114.491;Inherit;True;Property;_MatCap;MatCap 1;31;1;[HDR];Create;False;0;0;0;False;0;False;-1;None;99f168b92de93a44ba668a322687720c;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerStateNode;1571;-2781.225,1409.936;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1572;-3230.381,355.7475;Inherit;False;InstancedProperty;_DetailNormalMapScale;Detail Normal Scale;19;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1573;-3203.641,130.561;Inherit;False;InstancedProperty;_BumpScale;Normal Scale;7;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1574;-3008.218,82.4609;Inherit;True;Property;_BumpMap;Normal Map;6;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1575;-3002.709,307.7709;Inherit;True;Property;_DetailNormalMap;Detail Normal Map;16;2;[Header];[Normal];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Normal Map Setup;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1576;-3249.491,224.3496;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1577;-2412.308,181.5172;Inherit;False;NormalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;1578;-2700.517,186.2519;Inherit;True;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1579;-2071.167,90.90353;Inherit;False;1587;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomStandardSurface;1580;-1765.405,147.7143;Inherit;False;Metallic;Tangent;6;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,1;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1581;-2027.85,-1170.403;Inherit;False;ToonShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1582;-6304.716,-1399.946;Inherit;False;Emission;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1583;-6594.982,-1372.706;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1584;-4816.592,-937.6237;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1585;-5772.689,-1402.462;Inherit;True;Property;_DetailAlbedoMap;Detail Albedo x2;15;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Albedo Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1586;-5774.718,-1211.66;Inherit;True;Property;_MainTex;Albedo (RGB) and Transparency (A);0;1;[Header];Create;False;4;Standard Setup;;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Main Texture;0;0;False;0;False;-1;None;154a38cd83cd55b4b89f948411125d13;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1587;-4284.782,-1120.781;Inherit;False;albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1588;-4628.103,-1143.373;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1589;-5123.699,-1123.889;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1590;-4924.994,-1194.645;Inherit;False;AlbedoTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1591;-5769.961,-805.5745;Inherit;True;Property;_DetailMask;Detail Mask (A);12;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Detail Mask Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1592;-5323.992,-894.8473;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1593;-5163.447,-841.8497;Inherit;False;Opacity;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1594;-2301.282,-355.2254;Inherit;False;InstancedProperty;_Cutoff;Alpha Cutoff;2;0;Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Back;1;Front;2;0;True;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1595;-2684.875,635.0018;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1596;-3259.008,3160.051;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightPos;1597;-3307.911,3341.855;Inherit;False;0;3;FLOAT4;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldNormalVector;1598;-3264.496,3459.236;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1599;-3541.042,3440.434;Inherit;False;1577;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1600;-2948.495,3260.417;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1601;-2701.494,3332.417;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1602;-2377.494,3332.417;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1603;-1138.231,3346.443;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1604;-830.231,3327.443;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;1605;-1202.231,3247.443;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1606;-1775.034,3335.339;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1607;-1887.464,3602.993;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1608;-2227.271,3574.146;Inherit;True;Property;_SpecGlossMap;Specular Map (RGB);49;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1609;-1536.231,3454.443;Inherit;False;InstancedProperty;_SpecularHighlights;Spec Intensity;52;0;Create;False;0;0;0;False;0;False;0.56;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1610;-2029.802,3815.135;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1611;-2297.807,3883.605;Inherit;False;InstancedProperty;_SpecColorToon;Specular Color;50;0;Create;False;0;0;0;True;0;False;0.2,0.2,0.2,1;0.1999998,0.1999998,0.1999998,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;1612;-2242.46,4066.709;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1613;-2354.459,4191.709;Inherit;False;InstancedProperty;_SpecularLightMix;Specular Light Mix;53;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1614;-8082.583,3710.707;Inherit;False;4431.949;816.9406;;38;1743;1741;1740;1739;1738;1737;1736;1723;1644;1643;1642;1641;1640;1639;1638;1637;1636;1635;1634;1633;1632;1631;1630;1629;1628;1627;1626;1625;1624;1623;1622;1621;1620;1619;1618;1617;1616;1615;Glint;0.9986145,1,0.4103774,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1615;-6427,3980.37;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1616;-7083.001,3884.368;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1617;-6907.001,3916.368;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.27;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1618;-6427,4108.37;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1619;-5247.952,4253.702;Inherit;True;Standard;WorldNormal;ViewDir;False;True;5;0;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.01;False;2;FLOAT;1;False;3;FLOAT;4;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1620;-6235,4204.37;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1621;-6219,3916.368;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1622;-6235,4076.37;Inherit;False;2;0;FLOAT;-1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1623;-5931,4140.37;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2.25;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1624;-5931,3916.368;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1625;-5787,4140.37;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1626;-5595,4012.37;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1627;-5451,4012.37;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1628;-5259,4012.37;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1629;-5787,3916.368;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1630;-4669.225,3989.422;Inherit;True;4;4;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;1631;-5837.929,4262.915;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1632;-6083.003,4287.564;Inherit;False;1577;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1633;-7290.556,3848.937;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FmodOpNode;1634;-6683,3916.368;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1635;-7562.553,3759.936;Inherit;False;InstancedProperty;_InvertDirection;Invert Direction;57;2;[IntRange];[Enum];Create;True;0;2;False;0;True;1;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1636;-5003,3852.368;Float;False;Property;_GlintColor;Color;56;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector3Node;1637;-5627,4332.37;Float;False;Property;_GlintFresnel;Fresnel Bias, Scale, Power;60;0;Create;False;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1638;-6779.001,4220.37;Float;False;Property;_TailHeadFalloff;Tail Head Falloff;58;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1639;-7264.364,4361.349;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1640;-6752.649,4127.969;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;1641;-7138.708,4084.829;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1642;-7055.165,4152.542;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1643;-7513.385,4162.258;Float;False;Property;_SizeSpeedInterval;Size Speed Interval;59;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1644;-4931.649,4384.344;Inherit;False;Constant;_Float4;Float 4;62;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1645;-1386.672,-1368.561;Inherit;False;InstancedProperty;_Metallic;Metallic;4;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1646;-376.1011,2045.307;Inherit;True;Rim_Lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1647;-866.8882,2050.227;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1648;-1313.969,2052.467;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1649;-1593.842,2327.362;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;1650;-1926.482,2292.279;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;1651;-1976.754,2429.28;Inherit;False;InstancedProperty;_RimTint;Rim Tint;45;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;1652;-1709.546,2062.245;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1653;-1989.383,2062.049;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1654;-2231.13,2440.739;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1655;-2440.402,2415.385;Inherit;False;1548;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1656;-2465.671,2525.009;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1657;-2328.878,2060.521;Inherit;True;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1658;-2601.892,2319.681;Inherit;False;InstancedProperty;_RimPower;Rim Power;47;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1659;-3453.501,2743.997;Inherit;False;1552;normalviewdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1660;-3423.031,2650.703;Inherit;False;InstancedProperty;_RimOffset;Rim Offset;46;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1661;-3237.794,2691.172;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1662;-2905.853,2350.648;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1663;-2626.668,2098.651;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1664;-2080.167,159.9035;Inherit;False;1577;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1665;-2067.571,297.7159;Inherit;False;1678;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1666;-2064.846,435.8487;Inherit;False;1558;AO;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1667;-2083.663,366.922;Inherit;False;1682;Smoothness;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1668;-8074.818,699.9508;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1669;-7607.043,704.9268;Inherit;False;RotateUVFill;-1;;163;459952d587cbfe742a7e7f4a8a0a4169;0;2;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1670;-7773.124,827.7837;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1671;-7201.68,963.7945;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SamplerNode;1672;-7780.057,-504.5578;Inherit;True;Property;_ParallaxMap;Height Map (G);8;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Height Map Setup (Only Works for Fallbacks);0;0;True;0;False;-1;None;None;True;0;True;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;1673;-7656.388,-260.7797;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1674;-7268.525,-368.2123;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1675;-6853.976,-354.8469;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1676;-7283.788,-107.7813;Inherit;False;InstancedProperty;_Parallax;Height Scale;9;0;Create;False;0;0;0;True;0;False;0;0.02;0.005;0.08;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1677;-1000.274,-1396.375;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1678;-793.2788,-1388.434;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerStateNode;1679;-3256.517,-309.8598;Inherit;False;0;0;0;1;-1;None;1;0;SAMPLER2D;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1680;-2901.206,-313.3834;Inherit;False;samplerState;-1;True;1;0;SAMPLERSTATE;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1681;-1009.816,-1077.345;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1682;-783.3513,-1082.519;Inherit;False;Smoothness;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1683;-1472.778,-142.1869;Inherit;False;InstancedProperty;_OcclusionStrength;Occlusion Strength;11;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1684;-7805.337,-1077.07;Inherit;True;Property;_EmissionMap;Emission;13;1;[Header];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Emission Setup;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1685;-7406.421,-964.0091;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1686;-6746.852,-1307.926;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1687;-7269.745,-1103.401;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WireNode;1688;-6897.8,-1182.361;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1689;-6915.706,-1070.506;Inherit;False;1527;AudioLink;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1690;-8045.788,-1028.244;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.WireNode;1691;-7246.887,-1169.894;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1692;-7811.364,1991.362;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1693;-6670.682,2028.473;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1694;-5677.593,2194.203;Inherit;True;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1695;-5399.593,2193.203;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1696;-6976.704,2006.203;Inherit;True;Simple HUE;-1;;164;32abb5f0db087604486c2db83a2e817a;0;1;1;FLOAT;0;False;4;FLOAT3;6;FLOAT;7;FLOAT;5;FLOAT;8
Node;AmplifyShaderEditor.NormalizeNode;1697;-6280.525,2057.81;Inherit;True;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;1698;-4970.251,2190.37;Inherit;True;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1699;-4561.76,2186.155;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1700;-4526.795,2581.364;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1701;-4921.3,2544.52;Inherit;True;Property;_Glitter;Glitter;39;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1702;-4846.653,2728.624;Inherit;False;InstancedProperty;_GlitterColor;Glitter Color;42;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1703;-4885.168,1983.822;Inherit;True;Property;_GlitterMap;Glitter Map;43;0;Create;False;0;0;0;False;0;False;-1;None;None;True;6;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;1;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1704;-4281.862,2339.855;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1705;-5247.107,2001.822;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.SimpleTimeNode;1706;-7816.768,2279.752;Inherit;True;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1707;-7362.884,2007.377;Inherit;True;Property;_GlitterNoise;Glitter Noise;40;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1708;-6928.544,2268.137;Inherit;False;Constant;_GlitterOffset;GlitterOffset;62;0;Create;True;0;0;0;False;0;False;0.9999;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PannerNode;1709;-7570.006,2049.513;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1710;-7815.833,2132.731;Inherit;False;InstancedProperty;_NoiseSpeed;Noise Speed;41;0;Create;False;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1711;-6407.22,2433.112;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1712;-6189.197,2437.928;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1713;-5903.349,2438.676;Inherit;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1714;-2120.496,3336.417;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1.1;False;2;FLOAT;1.12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1715;-2961.415,3593.804;Inherit;False;InstancedProperty;_GlossyReflections;Specular Gloss;51;0;Create;False;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1716;-2699.249,3596.301;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1717;-2523.487,3575.836;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;20;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1718;-8071.469,838.9919;Inherit;False;InstancedProperty;_PulseRotation;Pulse Rotation;26;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1719;-7047.167,786.1344;Inherit;False;InstancedProperty;_AudioHueShift;Audio Hue Shift;25;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1720;-7067.326,1247.01;Inherit;False;InstancedProperty;_Pulse;Pulse;24;1;[Header];Create;True;1;Pulse Across UVs;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1721;-7066.405,1348.848;Inherit;False;InstancedProperty;_Delay;Delay;23;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1722;-3828.316,2363.281;Inherit;False;glitterRender;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PosVertexDataNode;1723;-8019,3818.367;Inherit;True;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1724;-4471.085,987.6319;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1725;-4751.085,1255.633;Inherit;False;IsAudioLink;-1;;165;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1726;-2475.858,636.0927;Inherit;True;Property;_MatCapMask;MatCap Mask;30;1;[Header];Create;True;1;;0;0;False;1;Tooltip(Multiplied with the texture for the albedo channel);False;-1;None;None;True;2;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;2;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1727;-319.1861,3299.187;Inherit;True;Specular;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1728;-880.1191,3537.258;Inherit;False;InstancedProperty;_EnableSpecular;Enable Specular;48;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Specular Map Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1729;-4067.803,2370.25;Inherit;True;Switch;-1;;166;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1730;-4253.803,2566.25;Inherit;False;InstancedProperty;_EnableGlitter;Enable Glitter;38;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glitter Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1731;-4202.085,957.7215;Inherit;True;Switch;-1;;167;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1732;-4474.085,1197.722;Inherit;False;InstancedProperty;_EnableAudioLink;Enable AudioLink;17;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;AudioLink Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1733;-1542.329,1678.937;Inherit;False;InstancedProperty;_EnableMatCap2;Enable MatCap 2;34;2;[Header];[ToggleUI];Create;True;1;MatCap 2 Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1734;-654.7034,1225.164;Inherit;True;Switch;-1;;168;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1735;-926.7031,1465.164;Inherit;False;InstancedProperty;_EnableMatCap;Enable MatCap;29;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;MatCap Setup;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1736;-4123.304,3975.606;Inherit;True;Switch;-1;;169;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1737;-3843.483,3972.162;Inherit;False;Glint;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1738;-4260.624,4342.544;Inherit;False;InstancedProperty;_EnableGlint;Enable Glint;54;2;[Header];[ToggleUI];Create;True;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Glint Setup;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1739;-7499,3900.368;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1740;-4355.545,3997.375;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1741;-4684.399,4235.691;Inherit;True;Property;_GlintMap;Glint Map;55;0;Create;True;0;0;0;True;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1742;-2563.525,3741.436;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1743;-4885.715,4286.968;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1744;-4294.919,-921.4586;Inherit;False;StandardShading;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1745;-381.9854,1284.58;Inherit;False;matcapToggle;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1746;-394.5445,1163.6;Inherit;False;MatCap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1747;-4801.89,-690.9231;Inherit;False;1746;MatCap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1748;-4545.925,-847.3528;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1749;-1351.779,-974.2515;Inherit;False;InstancedProperty;_Glossiness;Smoothness;5;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1750;-2868.208,1124.657;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;1751;-3263.704,963.1266;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.WorldReflectionVector;1752;-3318.178,1147.636;Inherit;False;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1753;-3054.696,697.9705;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1754;-2894.443,763.4154;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1755;-2857.135,879.4926;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1756;-3368.991,761.7756;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;1757;-2818.776,1242.081;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1758;-1298.329,1335.937;Inherit;True;Switch;-1;;170;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1759;-2683.226,990.3438;Inherit;True;Switch;-1;;171;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT3;1,0,0;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1760;-3028.461,1059.212;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1761;-2589.306,-354.227;Inherit;False;InstancedProperty;_CullingMode;Cull Mode;61;3;[Header];[IntRange];[Enum];Fetch;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Render Options;3;Off;0;Front;1;Back;2;0;True;0;False;0;2;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1762;-7990.197,296.5153;Inherit;False;Constant;_Float0;Float 0;3;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1763;-7768.88,272.3719;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1764;-7302.341,299.5239;Inherit;True;Property;_ToonRamp;Toon Ramp;28;1;[SingleLineTexture];Create;True;0;0;0;False;0;False;-1;None;f9dbc1e3c9eb74b4dbbc96c9e17e61b9;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightAttenuation;1765;-4440.866,-215.308;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1766;-1296.324,2491.24;Inherit;False;InstancedProperty;_RimOverride;Enable Rim;44;2;[Header];[ToggleUI];Create;False;2;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Rim Lighting Setup;2;Disabled;0;Enabled;1;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1767;-608.1194,3297.258;Inherit;True;Switch;-1;;172;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1768;-2557.221,-1242.063;Inherit;True;5;5;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1769;-3584.417,1013.389;Inherit;False;1577;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1770;-6014.441,-1163.767;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.RangedFloatNode;1771;-1893.468,1265.169;Inherit;False;InstancedProperty;_AddMatCap;Add MatCap;33;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1772;-3344.937,1338.642;Inherit;False;Constant;_Offset;Offset;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1773;-3190.237,1436.442;Inherit;False;Constant;_MatCapNormalReflection;Normal Reflection Mix;30;1;[Header];Create;False;2;0 for Normals;1 For Reflections;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1774;-3673.776,-947.9828;Inherit;False;1722;glitterRender;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1775;-3669.281,-868.7188;Inherit;False;1646;Rim_Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1776;-3653.474,-791.273;Inherit;False;1727;Specular;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1777;-3655.693,-712.3586;Inherit;False;1737;Glint;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1778;-8043.411,158.0123;Inherit;False;1548;NormalLightDir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;1779;-5752.482,-172.6386;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LightAttenuation;1780;-5883.253,210.9358;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1781;-5599.322,97.09579;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;1782;-5872.482,97.36142;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1783;-6006.98,-74.39078;Inherit;False;1577;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1784;-5376.997,-27.4683;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1785;-8014.605,-496.2512;Inherit;False;1680;samplerState;1;0;OBJECT;;False;1;SAMPLERSTATE;0
Node;AmplifyShaderEditor.GetLocalVarNode;1786;-6809.429,151.0774;Inherit;False;1587;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1787;-5029.565,-178.0099;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1788;-3708.162,-1258.133;Inherit;False;1744;StandardShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1789;-3673.286,-1055.429;Inherit;False;1582;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1790;-7666.997,-846.7921;Inherit;False;InstancedProperty;_EmissionColor;Color;14;2;[HDR];[Gamma];Create;False;0;0;0;False;0;False;0,0,0,0;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1791;-3219.615,-1245.315;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1792;-2069.412,229.7052;Inherit;False;1582;Emission;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1793;60.40822,178.1164;Inherit;False;1581;ToonShading;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1794;51.25612,368.168;Inherit;False;InstancedProperty;_EnableToon;Enable  Toon;27;2;[Header];[ToggleUI];Create;True;3;__________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________;Toon Map Setup;Will disable Metallic and Ambient Occlusion Setups;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1795;306.8052,-100.6254;Inherit;True;Switch;-1;;173;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT3;0,0,0;False;3;FLOAT;1;False;8;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1796;65.80519,100.3746;Inherit;False;Constant;_Float2;Float 2;62;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1797;647.1975,50.94588;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1798;44.90572,-41.30741;Inherit;False;1522;StandardSetup;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1799;308.2563,110.1681;Inherit;True;Switch;-1;;174;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1800;632.9636,-157.6907;Inherit;False;1593;Opacity;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1801;-5680.6,-998.6265;Inherit;False;InstancedProperty;_Color;Color;1;0;Create;False;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;1802;586.5454,293.7303;Inherit;True;Switch;-1;;175;f03a90057e90364449349a9482ca878b;0;3;2;FLOAT;0;False;3;COLOR;1,0,0,0;False;8;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1803;44.66622,495.9422;Inherit;False;1524;Lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1804;234.1648,732.2899;Inherit;False;Constant;_Color2;Color;1;0;Create;False;0;0;0;False;0;False;0.4627451,0.4627451,0.4627451,1;0.5471698,0.5471698,0.5471698,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1805;554.1648,508.29;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1806;281.1226,465.9761;Inherit;False;1556;heightMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1807;351.1649,548.29;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
WireConnection;80;2;1802;0
WireConnection;80;9;1800;0
WireConnection;80;13;1797;0
WireConnection;1519;0;1568;0
WireConnection;1519;1;1771;0
WireConnection;1520;0;1519;0
WireConnection;1520;1;1758;0
WireConnection;1521;0;1566;0
WireConnection;1521;1;1567;0
WireConnection;1522;0;1580;0
WireConnection;1524;0;1787;0
WireConnection;1525;0;1526;0
WireConnection;1526;0;1786;0
WireConnection;1526;1;1764;0
WireConnection;1527;0;1731;0
WireConnection;1528;0;1535;1
WireConnection;1528;1;1530;0
WireConnection;1529;0;1532;0
WireConnection;1529;1;1543;0
WireConnection;1530;0;1533;0
WireConnection;1530;1;1536;0
WireConnection;1531;0;1537;0
WireConnection;1532;0;1528;0
WireConnection;1532;1;1535;2
WireConnection;1532;2;1535;3
WireConnection;1534;0;1540;0
WireConnection;1534;1;1542;0
WireConnection;1534;2;1537;0
WireConnection;1535;0;1534;0
WireConnection;1537;2;1541;0
WireConnection;1537;4;1539;0
WireConnection;1538;1;1671;0
WireConnection;1538;2;1720;0
WireConnection;1538;3;1721;0
WireConnection;1539;0;1538;0
WireConnection;1540;7;1544;0
WireConnection;1546;0;1549;0
WireConnection;1547;0;1546;0
WireConnection;1547;1;1545;0
WireConnection;1548;0;1547;0
WireConnection;1550;0;1554;0
WireConnection;1551;0;1550;0
WireConnection;1551;1;1553;0
WireConnection;1552;0;1551;0
WireConnection;1555;0;1719;0
WireConnection;1556;0;1675;0
WireConnection;1557;0;1559;2
WireConnection;1557;1;1683;0
WireConnection;1558;0;1557;0
WireConnection;1559;7;1560;0
WireConnection;1562;7;1561;0
WireConnection;1563;1;1759;0
WireConnection;1563;7;1571;0
WireConnection;1566;0;1563;0
WireConnection;1566;1;1565;0
WireConnection;1566;2;1569;0
WireConnection;1568;0;1570;0
WireConnection;1568;1;1564;0
WireConnection;1568;2;1726;0
WireConnection;1569;0;1726;0
WireConnection;1570;1;1759;0
WireConnection;1570;7;1571;0
WireConnection;1574;5;1573;0
WireConnection;1574;7;1576;0
WireConnection;1575;5;1572;0
WireConnection;1575;7;1576;0
WireConnection;1577;0;1578;0
WireConnection;1578;0;1574;0
WireConnection;1578;1;1575;0
WireConnection;1580;0;1579;0
WireConnection;1580;1;1664;0
WireConnection;1580;2;1792;0
WireConnection;1580;3;1665;0
WireConnection;1580;4;1667;0
WireConnection;1580;5;1666;0
WireConnection;1581;0;1768;0
WireConnection;1582;0;1583;0
WireConnection;1583;0;1686;0
WireConnection;1583;1;1689;0
WireConnection;1584;0;1586;0
WireConnection;1584;1;1801;0
WireConnection;1585;7;1770;0
WireConnection;1586;7;1770;0
WireConnection;1587;0;1588;0
WireConnection;1588;0;1589;0
WireConnection;1588;1;1801;0
WireConnection;1589;0;1586;0
WireConnection;1589;1;1585;0
WireConnection;1590;0;1589;0
WireConnection;1591;7;1770;0
WireConnection;1592;0;1586;4
WireConnection;1592;1;1801;4
WireConnection;1592;2;1591;4
WireConnection;1593;0;1592;0
WireConnection;1598;0;1599;0
WireConnection;1600;0;1596;0
WireConnection;1600;1;1597;1
WireConnection;1601;0;1600;0
WireConnection;1601;1;1598;0
WireConnection;1602;0;1601;0
WireConnection;1602;1;1717;0
WireConnection;1603;0;1606;0
WireConnection;1603;1;1609;0
WireConnection;1604;0;1605;0
WireConnection;1604;1;1603;0
WireConnection;1606;0;1714;0
WireConnection;1606;1;1607;0
WireConnection;1607;0;1608;0
WireConnection;1607;1;1610;0
WireConnection;1608;7;1742;0
WireConnection;1610;0;1611;0
WireConnection;1610;1;1612;0
WireConnection;1610;2;1613;0
WireConnection;1615;0;1638;0
WireConnection;1616;0;1633;0
WireConnection;1616;1;1643;1
WireConnection;1617;0;1616;0
WireConnection;1617;1;1641;0
WireConnection;1618;0;1638;0
WireConnection;1619;0;1631;0
WireConnection;1619;1;1637;1
WireConnection;1619;2;1637;2
WireConnection;1619;3;1637;3
WireConnection;1620;1;1638;0
WireConnection;1621;0;1634;0
WireConnection;1621;1;1615;0
WireConnection;1622;1;1618;0
WireConnection;1623;0;1621;0
WireConnection;1623;1;1620;0
WireConnection;1624;0;1621;0
WireConnection;1624;1;1622;0
WireConnection;1625;0;1623;0
WireConnection;1626;0;1629;0
WireConnection;1626;1;1625;0
WireConnection;1627;0;1626;0
WireConnection;1628;0;1627;0
WireConnection;1629;0;1624;0
WireConnection;1630;0;1636;0
WireConnection;1630;1;1628;0
WireConnection;1630;2;1619;0
WireConnection;1630;3;1644;0
WireConnection;1631;0;1632;0
WireConnection;1633;0;1723;2
WireConnection;1633;1;1739;0
WireConnection;1633;2;1635;0
WireConnection;1634;0;1617;0
WireConnection;1634;1;1640;0
WireConnection;1639;0;1643;1
WireConnection;1639;1;1643;2
WireConnection;1640;0;1642;0
WireConnection;1640;1;1643;3
WireConnection;1641;0;1639;0
WireConnection;1642;0;1639;0
WireConnection;1646;0;1647;0
WireConnection;1647;0;1648;0
WireConnection;1647;1;1766;0
WireConnection;1648;0;1652;0
WireConnection;1648;1;1649;0
WireConnection;1649;0;1650;0
WireConnection;1649;1;1651;0
WireConnection;1652;0;1653;0
WireConnection;1653;0;1657;0
WireConnection;1653;1;1654;0
WireConnection;1654;0;1655;0
WireConnection;1654;1;1656;0
WireConnection;1657;0;1663;0
WireConnection;1657;1;1658;0
WireConnection;1661;0;1660;0
WireConnection;1661;1;1659;0
WireConnection;1662;0;1661;0
WireConnection;1663;0;1662;0
WireConnection;1669;1;1668;0
WireConnection;1669;2;1670;0
WireConnection;1670;0;1718;0
WireConnection;1671;0;1669;0
WireConnection;1672;7;1785;0
WireConnection;1674;0;1672;2
WireConnection;1674;1;1673;0
WireConnection;1675;0;1674;0
WireConnection;1675;1;1676;0
WireConnection;1677;0;1562;1
WireConnection;1677;1;1645;0
WireConnection;1678;0;1677;0
WireConnection;1680;0;1679;0
WireConnection;1681;0;1562;4
WireConnection;1681;1;1749;0
WireConnection;1682;0;1681;0
WireConnection;1684;7;1690;0
WireConnection;1685;0;1684;0
WireConnection;1685;1;1790;0
WireConnection;1686;0;1688;0
WireConnection;1687;0;1685;0
WireConnection;1688;0;1691;0
WireConnection;1691;0;1687;0
WireConnection;1693;0;1696;8
WireConnection;1693;1;1708;0
WireConnection;1694;0;1697;0
WireConnection;1694;1;1713;0
WireConnection;1695;0;1694;0
WireConnection;1696;1;1707;1
WireConnection;1697;0;1693;0
WireConnection;1698;0;1695;0
WireConnection;1699;0;1703;0
WireConnection;1699;1;1698;0
WireConnection;1700;0;1701;0
WireConnection;1700;1;1702;0
WireConnection;1703;7;1705;0
WireConnection;1704;0;1699;0
WireConnection;1704;1;1700;0
WireConnection;1707;1;1709;0
WireConnection;1709;0;1692;0
WireConnection;1709;2;1710;0
WireConnection;1709;1;1706;0
WireConnection;1712;0;1711;0
WireConnection;1713;0;1712;0
WireConnection;1714;0;1602;0
WireConnection;1716;0;1715;0
WireConnection;1717;0;1716;0
WireConnection;1722;0;1729;0
WireConnection;1724;0;1529;0
WireConnection;1724;1;1725;0
WireConnection;1726;7;1595;0
WireConnection;1727;0;1767;0
WireConnection;1729;3;1704;0
WireConnection;1729;8;1730;0
WireConnection;1731;3;1724;0
WireConnection;1731;8;1732;0
WireConnection;1734;3;1520;0
WireConnection;1734;8;1735;0
WireConnection;1736;3;1740;0
WireConnection;1736;8;1738;0
WireConnection;1737;0;1736;0
WireConnection;1739;0;1723;2
WireConnection;1740;0;1630;0
WireConnection;1740;1;1741;0
WireConnection;1741;7;1743;0
WireConnection;1744;0;1748;0
WireConnection;1745;0;1734;0
WireConnection;1746;0;1734;0
WireConnection;1748;0;1584;0
WireConnection;1748;1;1747;0
WireConnection;1750;0;1760;0
WireConnection;1750;1;1772;0
WireConnection;1752;0;1769;0
WireConnection;1753;0;1756;0
WireConnection;1753;1;1751;0
WireConnection;1754;0;1753;0
WireConnection;1754;1;1772;0
WireConnection;1755;0;1754;0
WireConnection;1755;1;1772;0
WireConnection;1756;0;1769;0
WireConnection;1757;0;1750;0
WireConnection;1757;1;1772;0
WireConnection;1758;3;1521;0
WireConnection;1758;8;1733;0
WireConnection;1759;2;1755;0
WireConnection;1759;3;1757;0
WireConnection;1759;8;1773;0
WireConnection;1760;0;1752;0
WireConnection;1760;1;1751;0
WireConnection;1763;0;1778;0
WireConnection;1763;1;1762;0
WireConnection;1763;2;1762;0
WireConnection;1764;1;1763;0
WireConnection;1767;3;1604;0
WireConnection;1767;8;1728;0
WireConnection;1768;0;1791;0
WireConnection;1768;1;1774;0
WireConnection;1768;2;1775;0
WireConnection;1768;3;1776;0
WireConnection;1768;4;1777;0
WireConnection;1781;0;1782;0
WireConnection;1781;1;1780;0
WireConnection;1782;0;1783;0
WireConnection;1784;0;1779;0
WireConnection;1784;1;1781;0
WireConnection;1787;0;1523;0
WireConnection;1787;1;1784;0
WireConnection;1791;0;1788;0
WireConnection;1791;1;1789;0
WireConnection;1795;2;1798;0
WireConnection;1795;3;1796;0
WireConnection;1795;8;1794;0
WireConnection;1797;0;1795;0
WireConnection;1797;1;1805;0
WireConnection;1799;2;1796;0
WireConnection;1799;3;1793;0
WireConnection;1799;8;1794;0
WireConnection;1802;2;1796;0
WireConnection;1802;3;1807;0
WireConnection;1802;8;1794;0
WireConnection;1805;0;1799;0
WireConnection;1805;1;1804;0
WireConnection;1807;0;1803;0
WireConnection;1807;1;1804;0
ASEEND*/
//CHKSM=2933D7F2C22B42E8B3E6A18A9FC396AEEB9F77C9