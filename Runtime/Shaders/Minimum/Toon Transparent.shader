// Upgrade NOTE: upgraded instancing buffer 'Legoman99573MinimumToonTransparent' to new syntax.

// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Legoman99573/Minimum/Toon Transparent"
{
	Properties
	{
		_MainTex("Albedo", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,0)
		_BumpMap("Normal Map", 2D) = "bump" {}
		_Ramp("Toon Ramp", 2D) = "white" {}
		_EmissionMap("Emission", 2D) = "white" {}
		_EmissionColor("Color", Color) = (1,1,1,0)
		[Enum(Off,0,Front,1,Back,2)]_CullMode("Cull Mode", Range( 0 , 2)) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_CullMode]
		AlphaToMask On
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityCG.cginc"
		#include "UnityShaderVariables.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		#pragma multi_compile_instancing
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float2 uv_texcoord;
			float3 worldNormal;
			INTERNAL_DATA
			float3 worldPos;
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

		uniform sampler2D _EmissionMap;
		uniform sampler2D _MainTex;
		uniform sampler2D _Ramp;
		uniform sampler2D _BumpMap;

		UNITY_INSTANCING_BUFFER_START(Legoman99573MinimumToonTransparent)
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionMap_ST)
#define _EmissionMap_ST_arr Legoman99573MinimumToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _EmissionColor)
#define _EmissionColor_arr Legoman99573MinimumToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _MainTex_ST)
#define _MainTex_ST_arr Legoman99573MinimumToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _Color)
#define _Color_arr Legoman99573MinimumToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float4, _BumpMap_ST)
#define _BumpMap_ST_arr Legoman99573MinimumToonTransparent
			UNITY_DEFINE_INSTANCED_PROP(float, _CullMode)
#define _CullMode_arr Legoman99573MinimumToonTransparent
		UNITY_INSTANCING_BUFFER_END(Legoman99573MinimumToonTransparent)

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
			float4 _EmissionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMap_ST_arr, _EmissionMap_ST);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST_Instance.xy + _EmissionMap_ST_Instance.zw;
			float4 tex2DNode43 = tex2D( _EmissionMap, uv_EmissionMap );
			float4 _EmissionColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColor_arr, _EmissionColor);
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 color53 = IsGammaSpace() ? float4(0.8301887,0.8301887,0.8301887,0) : float4(0.6562665,0.6562665,0.6562665,0);
			float4 albedo19 = ( tex2D( _MainTex, uv_MainTex ) * _Color_Instance * color53 );
			float4 _BumpMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_BumpMap_ST_arr, _BumpMap_ST);
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST_Instance.xy + _BumpMap_ST_Instance.zw;
			float3 normal22 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult2 = dot( (WorldNormalVector( i , normal22 )) , ase_worldlightDir );
			float normall_lightdir7 = dotResult2;
			float2 temp_cast_1 = ((normall_lightdir7*0.5 + 0.5)).xx;
			float4 shadow12 = ( albedo19 * ( tex2D( _Ramp, temp_cast_1 ) + float4( 0.1960784,0.1960784,0.1960784,1 ) ) );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float dotResult6 = dot( (WorldNormalVector( i , normal22 )) , ase_worldViewDir );
			float normal_viewdir8 = dotResult6;
			float3 temp_cast_2 = (normal_viewdir8).xxx;
			UnityGI gi36 = gi;
			float3 diffNorm36 = temp_cast_2;
			gi36 = UnityGI_Base( data, 1, diffNorm36 );
			float3 indirectDiffuse36 = gi36.indirect.diffuse + diffNorm36 * 0.0001;
			float4 lighting33 = ( shadow12 * ( ase_lightColor * float4( ( indirectDiffuse36 + ase_lightAtten ) , 0.0 ) ) );
			c.rgb = lighting33.rgb;
			c.a = ( tex2DNode43.a * _EmissionColor_Instance.a );
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
			float _CullMode_Instance = UNITY_ACCESS_INSTANCED_PROP(_CullMode_arr, _CullMode);
			float4 _EmissionMap_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionMap_ST_arr, _EmissionMap_ST);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST_Instance.xy + _EmissionMap_ST_Instance.zw;
			float4 tex2DNode43 = tex2D( _EmissionMap, uv_EmissionMap );
			float4 _EmissionColor_Instance = UNITY_ACCESS_INSTANCED_PROP(_EmissionColor_arr, _EmissionColor);
			float4 _MainTex_ST_Instance = UNITY_ACCESS_INSTANCED_PROP(_MainTex_ST_arr, _MainTex_ST);
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST_Instance.xy + _MainTex_ST_Instance.zw;
			float4 _Color_Instance = UNITY_ACCESS_INSTANCED_PROP(_Color_arr, _Color);
			float4 color53 = IsGammaSpace() ? float4(0.8301887,0.8301887,0.8301887,0) : float4(0.6562665,0.6562665,0.6562665,0);
			float4 albedo19 = ( tex2D( _MainTex, uv_MainTex ) * _Color_Instance * color53 );
			float4 color56 = IsGammaSpace() ? float4(0.3921569,0.3921569,0.3921569,0) : float4(0.1274377,0.1274377,0.1274377,0);
			o.Emission = ( ( tex2DNode43 * _EmissionColor_Instance ) + ( albedo19 * color56 ) ).rgb;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			AlphaToMask Off
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;-1;2;ASEMaterialInspector;0;0;CustomLighting;Legoman99573/Minimum/Toon Transparent;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Custom;0.5;True;True;0;True;Opaque;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;5;False;;10;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;1;-1;-1;-1;0;True;0;0;True;_CullMode;-1;0;False;;0;0;0;False;0.1;False;;0;False;;False;15;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.WorldNormalVector;1;-3339.739,-541.0844;Inherit;True;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;3;-3366.052,-269.0087;Inherit;True;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;2;-3079.302,-402.9305;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;4;-3343.993,61.85701;Inherit;True;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;6;-3088.755,146.9367;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;5;-3342.988,279.1077;Inherit;True;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;7;-2838.835,-406.8755;Inherit;False;normall_lightdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;8;-2840.166,140.8578;Inherit;False;normal_viewdir;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;16;-1948.574,-905.145;Inherit;True;Property;_MainTex;Albedo;0;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;18;-1499.387,-739.2625;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;19;-1231.331,-699.3395;Inherit;False;albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;21;-3127.063,-852.6057;Inherit;True;Property;_BumpMap;Normal Map;3;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;22;-2652.18,-784.9924;Inherit;False;normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;23;-3620.348,-553.3801;Inherit;False;22;normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;24;-3613.155,46.5103;Inherit;False;22;normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;12;-1113.265,-174.9965;Inherit;False;shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;20;-1631.228,-342.1479;Inherit;True;19;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;35;-2277.771,387.1719;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;13;-2356.02,-139.7122;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;14;-2618.194,-31.53471;Inherit;False;Constant;_Float0;Float 0;1;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;9;-2634.566,-146.2755;Inherit;False;7;normall_lightdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;25;-269.8756,234.3452;Inherit;False;33;lighting;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;32;-1643.604,257.059;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;11;-1973.836,-175.7923;Inherit;True;Property;_Ramp;Toon Ramp;4;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;33;-1136.165,249.7934;Inherit;False;lighting;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;34;-1965.434,268.3514;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;36;-2517.549,226.3483;Inherit;True;World;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;39;-2701.126,221.3188;Inherit;False;8;normal_viewdir;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;31;-2283.326,154.6812;Inherit;True;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;30;-1944.216,50.67569;Inherit;True;12;shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;15;-1347.355,-174.3307;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;27;-1632.646,-150.5404;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0.1960784,0.1960784,0.1960784,1;False;1;COLOR;0
Node;AmplifyShaderEditor.LightAttenuation;37;-2528.437,462.5342;Inherit;True;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;43;-952.8391,-512.4266;Inherit;True;Property;_EmissionMap;Emission;5;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;45;-846.848,-287.626;Inherit;False;InstancedProperty;_EmissionColor;Color;6;0;Create;False;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;17;-1923.333,-585.2729;Inherit;False;InstancedProperty;_Color;Color;2;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;44;-551.6742,-357.929;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;52;-459.3498,30.38966;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;53;-1682.499,-496.7549;Inherit;False;Constant;_Color0;Color 0;6;0;Create;True;0;0;0;False;0;False;0.8301887,0.8301887,0.8301887,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;54;-865.3876,34.61509;Inherit;False;19;albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;55;-659.1009,69.93837;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;56;-907.1092,121.6069;Inherit;False;Constant;_Color1;Color 1;6;0;Create;True;0;0;0;False;0;False;0.3921569,0.3921569,0.3921569,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;57;-316.7853,-155.6704;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;58;-1039.98,604.7697;Inherit;False;InstancedProperty;_CullMode;Cull Mode;7;1;[Enum];Create;False;0;3;Off;0;Front;1;Back;2;0;True;0;False;0;0;0;2;0;1;FLOAT;0
WireConnection;0;2;57;0
WireConnection;0;9;52;0
WireConnection;0;13;25;0
WireConnection;1;0;23;0
WireConnection;2;0;1;0
WireConnection;2;1;3;0
WireConnection;4;0;24;0
WireConnection;6;0;4;0
WireConnection;6;1;5;0
WireConnection;7;0;2;0
WireConnection;8;0;6;0
WireConnection;18;0;16;0
WireConnection;18;1;17;0
WireConnection;18;2;53;0
WireConnection;19;0;18;0
WireConnection;22;0;21;0
WireConnection;12;0;15;0
WireConnection;35;0;36;0
WireConnection;35;1;37;0
WireConnection;13;0;9;0
WireConnection;13;1;14;0
WireConnection;13;2;14;0
WireConnection;32;0;30;0
WireConnection;32;1;34;0
WireConnection;11;1;13;0
WireConnection;33;0;32;0
WireConnection;34;0;31;0
WireConnection;34;1;35;0
WireConnection;36;0;39;0
WireConnection;15;0;20;0
WireConnection;15;1;27;0
WireConnection;27;0;11;0
WireConnection;44;0;43;0
WireConnection;44;1;45;0
WireConnection;52;0;43;4
WireConnection;52;1;45;4
WireConnection;55;0;54;0
WireConnection;55;1;56;0
WireConnection;57;0;44;0
WireConnection;57;1;55;0
ASEEND*/
//CHKSM=DBF961B75C2004E84433D6C4D7061EAD53E39D3F