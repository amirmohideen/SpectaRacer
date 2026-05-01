#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
return 0;
}
}
#ifndef sc_TextureRenderingLayout_Regular
#define sc_TextureRenderingLayout_Regular 0
#define sc_TextureRenderingLayout_StereoInstancedClipped 1
#define sc_TextureRenderingLayout_StereoMultiview 2
#endif
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// NGS_FLAG_IS_NORMAL_MAP normalTex
// NGS_FLAG_IS_NORMAL_MAP detailNormalTex
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 sc_FragData0 0
//output uvec4 sc_RayTracingPositionAndMask 0
//output uvec4 sc_RayTracingNormalAndMore 1
//sampler sampler baseTexSmpSC 0:31
//sampler sampler detailNormalTexSmpSC 0:32
//sampler sampler emissiveTexSmpSC 0:33
//sampler sampler intensityTextureSmpSC 0:34
//sampler sampler normalTexSmpSC 0:35
//sampler sampler reflectionModulationTexSmpSC 0:36
//sampler sampler reflectionTexSmpSC 0:37
//sampler sampler rimColorTexSmpSC 0:38
//sampler sampler sc_EnvmapDiffuseSmpSC 0:39
//sampler sampler sc_EnvmapSpecularSmpSC 0:40
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:42
//sampler sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC 0:43
//sampler sampler sc_RayTracingRayDirectionSmpSC 0:44
//sampler sampler sc_RayTracingShadowsSmpSC 0:46
//sampler sampler sc_SSAOTextureSmpSC 0:47
//sampler sampler sc_ScreenTextureSmpSC 0:48
//sampler sampler sc_ShadowTextureSmpSC 0:49
//texture texture2D baseTex 0:4:0:31
//texture texture2D detailNormalTex 0:5:0:32
//texture texture2D emissiveTex 0:6:0:33
//texture texture2D intensityTexture 0:7:0:34
//texture texture2D normalTex 0:8:0:35
//texture texture2D reflectionModulationTex 0:9:0:36
//texture texture2D reflectionTex 0:10:0:37
//texture texture2D rimColorTex 0:11:0:38
//texture texture2D sc_EnvmapDiffuse 0:12:0:39
//texture texture2D sc_EnvmapSpecular 0:13:0:40
//texture texture2D sc_RayTracingGlobalIllumination 0:22:0:42
//texture utexture2D sc_RayTracingHitCasterIdAndBarycentric 0:23:0:43
//texture texture2D sc_RayTracingRayDirection 0:24:0:44
//texture texture2D sc_RayTracingShadows 0:26:0:46
//texture texture2D sc_SSAOTexture 0:27:0:47
//texture texture2D sc_ScreenTexture 0:28:0:48
//texture texture2D sc_ShadowTexture 0:29:0:49
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:51:6448 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_AmbientLight_t sc_AmbientLights 400:[3]:32
//float3 sc_AmbientLights.color 0
//float sc_AmbientLights.intensity 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapDiffuseSize 1088
//float4 sc_EnvmapSpecularSize 1136
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
//float3 sc_Sh 1216:[9]:16
//float sc_ShIntensity 1360
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float2 sc_TAAJitterOffset 3704
//int sc_RayTracingReceiverEffectsMask 3824
//float3 sc_RayTracingOriginScale 3984
//uint sc_RayTracingReceiverMask 4000
//float3 sc_RayTracingOriginOffset 4032
//uint sc_RayTracingReceiverId 4048
//uint4 sc_RayTracingCasterConfiguration 4064
//uint4 sc_RayTracingCasterOffsetPNTC 4080
//uint4 sc_RayTracingCasterOffsetTexture 4096
//uint4 sc_RayTracingCasterFormatPNTC 4112
//uint4 sc_RayTracingCasterFormatTexture 4128
//float4 voxelization_params_0 4192
//float4 voxelization_params_frustum_lrbt 4208
//float4 voxelization_params_frustum_nf 4224
//float3 voxelization_params_camera_pos 4240
//float4x4 sc_ModelMatrixVoxelization 4256
//float correctedIntensity 4320
//float3x3 intensityTextureTransform 4384
//float4 intensityTextureUvMinMax 4432
//float4 intensityTextureBorderColor 4448
//int PreviewEnabled 4612
//float alphaTestThreshold 4620
//float3 recolorRed 4624
//float4 baseColor 4640
//float3x3 baseTexTransform 4704
//float4 baseTexUvMinMax 4752
//float4 baseTexBorderColor 4768
//float2 uv2Scale 4784
//float2 uv2Offset 4792
//float2 uv3Scale 4800
//float2 uv3Offset 4808
//float3 recolorGreen 4816
//float3 recolorBlue 4832
//float progress_value 4848
//float3x3 normalTexTransform 4912
//float4 normalTexUvMinMax 4960
//float4 normalTexBorderColor 4976
//float3x3 detailNormalTexTransform 5040
//float4 detailNormalTexUvMinMax 5088
//float4 detailNormalTexBorderColor 5104
//float3x3 emissiveTexTransform 5168
//float4 emissiveTexUvMinMax 5216
//float4 emissiveTexBorderColor 5232
//float3 emissiveColor 5248
//float emissiveIntensity 5264
//float reflectionIntensity 5268
//float3x3 reflectionTexTransform 5328
//float4 reflectionTexUvMinMax 5376
//float4 reflectionTexBorderColor 5392
//float3x3 reflectionModulationTexTransform 5456
//float4 reflectionModulationTexUvMinMax 5504
//float4 reflectionModulationTexBorderColor 5520
//float3 rimColor 5536
//float rimIntensity 5552
//float3x3 rimColorTexTransform 5616
//float4 rimColorTexUvMinMax 5664
//float4 rimColorTexBorderColor 5680
//float rimExponent 5696
//float Port_Speed_N022 5808
//float Port_Speed_N063 5856
//float4 Port_Default_N369 5872
//float Port_Value2_N073 5952
//float Port_Strength1_N200 5984
//float3 Port_Default_N113 6000
//float Port_Strength2_N200 6016
//float4 Port_Default_N132 6064
//float3 Port_Input1_N257 6128
//float Port_Input1_N264 6160
//float Port_Input1_N268 6164
//float Port_Input1_N270 6168
//float3 Port_Default_N041 6208
//float3 Port_Default_N134 6224
//float3 Port_Default_N170 6320
//float3 Port_Default_N173 6384
//float3 Port_AO_N036 6416
//float depthRef 6432
//}
//ssbo int sc_RayTracingCasterIndexBuffer 0:0:4 {
//uint sc_RayTracingCasterTriangles 0:[1]:4
//}
//ssbo float sc_RayTracingCasterNonAnimatedVertexBuffer 0:2:4 {
//float sc_RayTracingCasterNonAnimatedVertices 0:[1]:4
//}
//ssbo float sc_RayTracingCasterVertexBuffer 0:1:4 {
//float sc_RayTracingCasterVertices 0:[1]:4
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_detailNormalTex 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTex 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 36 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionTex 37 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_rimColorTex 38 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 39 0
//spec_const bool SC_USE_UV_MIN_MAX_detailNormalTex 40 0
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTex 41 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 42 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 43 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionModulationTex 44 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionTex 45 0
//spec_const bool SC_USE_UV_MIN_MAX_rimColorTex 46 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 47 0
//spec_const bool SC_USE_UV_TRANSFORM_detailNormalTex 48 0
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTex 49 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 50 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 51 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionModulationTex 52 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionTex 53 0
//spec_const bool SC_USE_UV_TRANSFORM_rimColorTex 54 0
//spec_const bool Tweak_N11 55 0
//spec_const bool Tweak_N121 56 0
//spec_const bool Tweak_N177 57 0
//spec_const bool Tweak_N179 58 0
//spec_const bool Tweak_N216 59 0
//spec_const bool Tweak_N218 60 0
//spec_const bool Tweak_N223 61 0
//spec_const bool Tweak_N354 62 0
//spec_const bool Tweak_N37 63 0
//spec_const bool Tweak_N67 64 0
//spec_const bool Tweak_N74 65 0
//spec_const bool UseViewSpaceDepthVariant 66 1
//spec_const bool baseTexHasSwappedViews 67 0
//spec_const bool detailNormalTexHasSwappedViews 68 0
//spec_const bool emissiveTexHasSwappedViews 69 0
//spec_const bool intensityTextureHasSwappedViews 70 0
//spec_const bool normalTexHasSwappedViews 71 0
//spec_const bool reflectionModulationTexHasSwappedViews 72 0
//spec_const bool reflectionTexHasSwappedViews 73 0
//spec_const bool rimColorTexHasSwappedViews 74 0
//spec_const bool rimInvert 75 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 76 0
//spec_const bool sc_BlendMode_Add 77 0
//spec_const bool sc_BlendMode_AlphaTest 78 0
//spec_const bool sc_BlendMode_AlphaToCoverage 79 0
//spec_const bool sc_BlendMode_ColoredGlass 80 0
//spec_const bool sc_BlendMode_Custom 81 0
//spec_const bool sc_BlendMode_Max 82 0
//spec_const bool sc_BlendMode_Min 83 0
//spec_const bool sc_BlendMode_MultiplyOriginal 84 0
//spec_const bool sc_BlendMode_Multiply 85 0
//spec_const bool sc_BlendMode_Normal 86 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 87 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 88 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 89 0
//spec_const bool sc_BlendMode_Screen 90 0
//spec_const bool sc_DepthOnly 91 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 92 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 93 0
//spec_const bool sc_FramebufferFetch 94 0
//spec_const bool sc_HasDiffuseEnvmap 95 0
//spec_const bool sc_IsEditor 96 0
//spec_const bool sc_LightEstimation 97 0
//spec_const bool sc_MotionVectorsPass 98 0
//spec_const bool sc_OITCompositingPass 99 0
//spec_const bool sc_OITDepthBoundsPass 100 0
//spec_const bool sc_OITDepthGatherPass 101 0
//spec_const bool sc_OutputBounds 102 0
//spec_const bool sc_ProjectiveShadowsCaster 103 0
//spec_const bool sc_ProjectiveShadowsReceiver 104 0
//spec_const bool sc_RayTracingCasterForceOpaque 105 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 106 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 107 0
//spec_const bool sc_RenderAlphaToColor 108 0
//spec_const bool sc_SSAOEnabled 109 0
//spec_const bool sc_ScreenTextureHasSwappedViews 110 0
//spec_const bool sc_TAAEnabled 111 0
//spec_const bool sc_VertexBlendingUseNormals 112 0
//spec_const bool sc_VertexBlending 113 0
//spec_const bool sc_Voxelization 114 0
//spec_const bool uv2EnableAnimation 115 0
//spec_const bool uv3EnableAnimation 116 0
//spec_const int NODE_13_DROPLIST_ITEM 117 0
//spec_const int NODE_181_DROPLIST_ITEM 118 0
//spec_const int NODE_184_DROPLIST_ITEM 119 0
//spec_const int NODE_228_DROPLIST_ITEM 120 0
//spec_const int NODE_27_DROPLIST_ITEM 121 0
//spec_const int NODE_315_DROPLIST_ITEM 122 0
//spec_const int NODE_38_DROPLIST_ITEM 123 0
//spec_const int NODE_49_DROPLIST_ITEM 124 0
//spec_const int NODE_76_DROPLIST_ITEM 125 0
//spec_const int SC_DEVICE_CLASS 126 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 127 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex 128 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTex 129 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 130 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 131 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex 132 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionTex 133 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_rimColorTex 134 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 135 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex 136 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTex 137 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 138 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 139 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex 140 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionTex 141 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_rimColorTex 142 -1
//spec_const int baseTexLayout 143 0
//spec_const int detailNormalTexLayout 144 0
//spec_const int emissiveTexLayout 145 0
//spec_const int intensityTextureLayout 146 0
//spec_const int normalTexLayout 147 0
//spec_const int reflectionModulationTexLayout 148 0
//spec_const int reflectionTexLayout 149 0
//spec_const int rimColorTexLayout 150 0
//spec_const int sc_AmbientLightMode0 151 0
//spec_const int sc_AmbientLightMode1 152 0
//spec_const int sc_AmbientLightMode2 153 0
//spec_const int sc_AmbientLightMode_Constant 154 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 155 0
//spec_const int sc_AmbientLightMode_FromCamera 156 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 157 0
//spec_const int sc_AmbientLightsCount 158 0
//spec_const int sc_DepthBufferMode 159 0
//spec_const int sc_DirectionalLightsCount 160 0
//spec_const int sc_EnvLightMode 161 0
//spec_const int sc_EnvmapDiffuseLayout 162 0
//spec_const int sc_EnvmapSpecularLayout 163 0
//spec_const int sc_LightEstimationSGCount 164 0
//spec_const int sc_PointLightsCount 165 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 166 0
//spec_const int sc_RayTracingShadowsLayout 167 0
//spec_const int sc_RenderingSpace 168 -1
//spec_const int sc_ScreenTextureLayout 169 0
//spec_const int sc_ShaderCacheConstant 170 0
//spec_const int sc_SkinBonesCount 171 0
//spec_const int sc_StereoRenderingMode 172 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 173 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_baseTex [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseTex) ? SC_USE_CLAMP_TO_BORDER_baseTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_detailNormalTex) ? SC_USE_CLAMP_TO_BORDER_detailNormalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_emissiveTex) ? SC_USE_CLAMP_TO_BORDER_emissiveTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTex [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTex) ? SC_USE_CLAMP_TO_BORDER_normalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex) ? SC_USE_CLAMP_TO_BORDER_reflectionModulationTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex [[function_constant(37)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionTex) ? SC_USE_CLAMP_TO_BORDER_reflectionTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex [[function_constant(38)]];
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_rimColorTex) ? SC_USE_CLAMP_TO_BORDER_rimColorTex : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_detailNormalTex [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_detailNormalTex) ? SC_USE_UV_MIN_MAX_detailNormalTex : false;
constant bool SC_USE_UV_MIN_MAX_emissiveTex [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_emissiveTex) ? SC_USE_UV_MIN_MAX_emissiveTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_normalTex [[function_constant(43)]];
constant bool SC_USE_UV_MIN_MAX_normalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTex) ? SC_USE_UV_MIN_MAX_normalTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex [[function_constant(44)]];
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionModulationTex) ? SC_USE_UV_MIN_MAX_reflectionModulationTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionTex [[function_constant(45)]];
constant bool SC_USE_UV_MIN_MAX_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionTex) ? SC_USE_UV_MIN_MAX_reflectionTex : false;
constant bool SC_USE_UV_MIN_MAX_rimColorTex [[function_constant(46)]];
constant bool SC_USE_UV_MIN_MAX_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_rimColorTex) ? SC_USE_UV_MIN_MAX_rimColorTex : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(47)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_detailNormalTex [[function_constant(48)]];
constant bool SC_USE_UV_TRANSFORM_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_detailNormalTex) ? SC_USE_UV_TRANSFORM_detailNormalTex : false;
constant bool SC_USE_UV_TRANSFORM_emissiveTex [[function_constant(49)]];
constant bool SC_USE_UV_TRANSFORM_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_emissiveTex) ? SC_USE_UV_TRANSFORM_emissiveTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(50)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_normalTex [[function_constant(51)]];
constant bool SC_USE_UV_TRANSFORM_normalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTex) ? SC_USE_UV_TRANSFORM_normalTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex [[function_constant(52)]];
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionModulationTex) ? SC_USE_UV_TRANSFORM_reflectionModulationTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionTex [[function_constant(53)]];
constant bool SC_USE_UV_TRANSFORM_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionTex) ? SC_USE_UV_TRANSFORM_reflectionTex : false;
constant bool SC_USE_UV_TRANSFORM_rimColorTex [[function_constant(54)]];
constant bool SC_USE_UV_TRANSFORM_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_rimColorTex) ? SC_USE_UV_TRANSFORM_rimColorTex : false;
constant bool Tweak_N11 [[function_constant(55)]];
constant bool Tweak_N11_tmp = is_function_constant_defined(Tweak_N11) ? Tweak_N11 : false;
constant bool Tweak_N121 [[function_constant(56)]];
constant bool Tweak_N121_tmp = is_function_constant_defined(Tweak_N121) ? Tweak_N121 : false;
constant bool Tweak_N177 [[function_constant(57)]];
constant bool Tweak_N177_tmp = is_function_constant_defined(Tweak_N177) ? Tweak_N177 : false;
constant bool Tweak_N179 [[function_constant(58)]];
constant bool Tweak_N179_tmp = is_function_constant_defined(Tweak_N179) ? Tweak_N179 : false;
constant bool Tweak_N216 [[function_constant(59)]];
constant bool Tweak_N216_tmp = is_function_constant_defined(Tweak_N216) ? Tweak_N216 : false;
constant bool Tweak_N218 [[function_constant(60)]];
constant bool Tweak_N218_tmp = is_function_constant_defined(Tweak_N218) ? Tweak_N218 : false;
constant bool Tweak_N223 [[function_constant(61)]];
constant bool Tweak_N223_tmp = is_function_constant_defined(Tweak_N223) ? Tweak_N223 : false;
constant bool Tweak_N354 [[function_constant(62)]];
constant bool Tweak_N354_tmp = is_function_constant_defined(Tweak_N354) ? Tweak_N354 : false;
constant bool Tweak_N37 [[function_constant(63)]];
constant bool Tweak_N37_tmp = is_function_constant_defined(Tweak_N37) ? Tweak_N37 : false;
constant bool Tweak_N67 [[function_constant(64)]];
constant bool Tweak_N67_tmp = is_function_constant_defined(Tweak_N67) ? Tweak_N67 : false;
constant bool Tweak_N74 [[function_constant(65)]];
constant bool Tweak_N74_tmp = is_function_constant_defined(Tweak_N74) ? Tweak_N74 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(66)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseTexHasSwappedViews [[function_constant(67)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool detailNormalTexHasSwappedViews [[function_constant(68)]];
constant bool detailNormalTexHasSwappedViews_tmp = is_function_constant_defined(detailNormalTexHasSwappedViews) ? detailNormalTexHasSwappedViews : false;
constant bool emissiveTexHasSwappedViews [[function_constant(69)]];
constant bool emissiveTexHasSwappedViews_tmp = is_function_constant_defined(emissiveTexHasSwappedViews) ? emissiveTexHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(70)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool normalTexHasSwappedViews [[function_constant(71)]];
constant bool normalTexHasSwappedViews_tmp = is_function_constant_defined(normalTexHasSwappedViews) ? normalTexHasSwappedViews : false;
constant bool reflectionModulationTexHasSwappedViews [[function_constant(72)]];
constant bool reflectionModulationTexHasSwappedViews_tmp = is_function_constant_defined(reflectionModulationTexHasSwappedViews) ? reflectionModulationTexHasSwappedViews : false;
constant bool reflectionTexHasSwappedViews [[function_constant(73)]];
constant bool reflectionTexHasSwappedViews_tmp = is_function_constant_defined(reflectionTexHasSwappedViews) ? reflectionTexHasSwappedViews : false;
constant bool rimColorTexHasSwappedViews [[function_constant(74)]];
constant bool rimColorTexHasSwappedViews_tmp = is_function_constant_defined(rimColorTexHasSwappedViews) ? rimColorTexHasSwappedViews : false;
constant bool rimInvert [[function_constant(75)]];
constant bool rimInvert_tmp = is_function_constant_defined(rimInvert) ? rimInvert : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(76)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(77)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(78)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(79)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(80)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(81)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(82)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(83)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(84)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(85)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(86)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(87)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(88)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(89)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(90)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(91)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(92)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(93)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(94)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(95)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(96)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(97)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(98)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(99)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(100)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(101)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(102)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(103)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(104)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingCasterForceOpaque [[function_constant(105)]];
constant bool sc_RayTracingCasterForceOpaque_tmp = is_function_constant_defined(sc_RayTracingCasterForceOpaque) ? sc_RayTracingCasterForceOpaque : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(106)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(107)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(108)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(109)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(110)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(111)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(112)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(113)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(114)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool uv2EnableAnimation [[function_constant(115)]];
constant bool uv2EnableAnimation_tmp = is_function_constant_defined(uv2EnableAnimation) ? uv2EnableAnimation : false;
constant bool uv3EnableAnimation [[function_constant(116)]];
constant bool uv3EnableAnimation_tmp = is_function_constant_defined(uv3EnableAnimation) ? uv3EnableAnimation : false;
constant int NODE_13_DROPLIST_ITEM [[function_constant(117)]];
constant int NODE_13_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_13_DROPLIST_ITEM) ? NODE_13_DROPLIST_ITEM : 0;
constant int NODE_181_DROPLIST_ITEM [[function_constant(118)]];
constant int NODE_181_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_181_DROPLIST_ITEM) ? NODE_181_DROPLIST_ITEM : 0;
constant int NODE_184_DROPLIST_ITEM [[function_constant(119)]];
constant int NODE_184_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_184_DROPLIST_ITEM) ? NODE_184_DROPLIST_ITEM : 0;
constant int NODE_228_DROPLIST_ITEM [[function_constant(120)]];
constant int NODE_228_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_228_DROPLIST_ITEM) ? NODE_228_DROPLIST_ITEM : 0;
constant int NODE_27_DROPLIST_ITEM [[function_constant(121)]];
constant int NODE_27_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_27_DROPLIST_ITEM) ? NODE_27_DROPLIST_ITEM : 0;
constant int NODE_315_DROPLIST_ITEM [[function_constant(122)]];
constant int NODE_315_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_315_DROPLIST_ITEM) ? NODE_315_DROPLIST_ITEM : 0;
constant int NODE_38_DROPLIST_ITEM [[function_constant(123)]];
constant int NODE_38_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_38_DROPLIST_ITEM) ? NODE_38_DROPLIST_ITEM : 0;
constant int NODE_49_DROPLIST_ITEM [[function_constant(124)]];
constant int NODE_49_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_49_DROPLIST_ITEM) ? NODE_49_DROPLIST_ITEM : 0;
constant int NODE_76_DROPLIST_ITEM [[function_constant(125)]];
constant int NODE_76_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_76_DROPLIST_ITEM) ? NODE_76_DROPLIST_ITEM : 0;
constant int SC_DEVICE_CLASS [[function_constant(126)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(127)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex [[function_constant(128)]];
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_U_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex [[function_constant(129)]];
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_U_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(130)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex [[function_constant(131)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTex) ? SC_SOFTWARE_WRAP_MODE_U_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex [[function_constant(132)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex [[function_constant(133)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex [[function_constant(134)]];
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_U_rimColorTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(135)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex [[function_constant(136)]];
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_V_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex [[function_constant(137)]];
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_V_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(138)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex [[function_constant(139)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTex) ? SC_SOFTWARE_WRAP_MODE_V_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex [[function_constant(140)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex [[function_constant(141)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex [[function_constant(142)]];
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_V_rimColorTex : -1;
constant int baseTexLayout [[function_constant(143)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int detailNormalTexLayout [[function_constant(144)]];
constant int detailNormalTexLayout_tmp = is_function_constant_defined(detailNormalTexLayout) ? detailNormalTexLayout : 0;
constant int emissiveTexLayout [[function_constant(145)]];
constant int emissiveTexLayout_tmp = is_function_constant_defined(emissiveTexLayout) ? emissiveTexLayout : 0;
constant int intensityTextureLayout [[function_constant(146)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int normalTexLayout [[function_constant(147)]];
constant int normalTexLayout_tmp = is_function_constant_defined(normalTexLayout) ? normalTexLayout : 0;
constant int reflectionModulationTexLayout [[function_constant(148)]];
constant int reflectionModulationTexLayout_tmp = is_function_constant_defined(reflectionModulationTexLayout) ? reflectionModulationTexLayout : 0;
constant int reflectionTexLayout [[function_constant(149)]];
constant int reflectionTexLayout_tmp = is_function_constant_defined(reflectionTexLayout) ? reflectionTexLayout : 0;
constant int rimColorTexLayout [[function_constant(150)]];
constant int rimColorTexLayout_tmp = is_function_constant_defined(rimColorTexLayout) ? rimColorTexLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(151)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(152)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(153)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(154)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(155)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(156)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(157)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(158)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(159)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(160)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(161)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(162)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(163)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(164)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(165)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(166)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(167)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(168)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(169)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(170)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(171)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(172)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(173)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 recolorRed;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float3 recolorGreen;
float3 recolorBlue;
float progress_value;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float reflectionIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float rimExponent;
float4 Port_Import_N042;
float Port_Input1_N044;
float Port_Import_N088;
float3 Port_Import_N089;
float4 Port_Import_N384;
float Port_Import_N307;
float Port_Import_N201;
float Port_Import_N010;
float Port_Import_N007;
float2 Port_Import_N008;
float2 Port_Import_N009;
float Port_Speed_N022;
float Port_Import_N012;
float2 Port_Import_N254;
float Port_Import_N055;
float Port_Import_N056;
float2 Port_Import_N000;
float2 Port_Import_N060;
float2 Port_Import_N061;
float Port_Speed_N063;
float Port_Import_N065;
float2 Port_Import_N255;
float4 Port_Default_N369;
float4 Port_Import_N092;
float3 Port_Import_N090;
float3 Port_Import_N091;
float3 Port_Import_N144;
float Port_Value2_N073;
float Port_Import_N336;
float Port_Import_N160;
float2 Port_Import_N167;
float2 Port_Import_N207;
float Port_Strength1_N200;
float Port_Import_N095;
float Port_Import_N108;
float3 Port_Default_N113;
float Port_Strength2_N200;
float Port_Import_N273;
float Port_Input1_N274;
float Port_Import_N131;
float Port_Import_N116;
float2 Port_Import_N120;
float2 Port_Import_N127;
float4 Port_Default_N132;
float3 Port_Import_N295;
float Port_Import_N296;
float Port_Import_N133;
float Port_Import_N231;
float3 Port_Import_N327;
float3 Port_Input1_N257;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float Port_Import_N123;
float Port_Import_N025;
float2 Port_Import_N030;
float2 Port_Import_N031;
float3 Port_Default_N041;
float3 Port_Default_N134;
float3 Port_Import_N298;
float Port_Import_N172;
float3 Port_Import_N318;
float Port_Import_N319;
float Port_Import_N171;
float Port_Import_N135;
float2 Port_Import_N150;
float2 Port_Import_N152;
float3 Port_Default_N170;
float Port_Import_N339;
float3 Port_Import_N328;
float Port_Import_N340;
float3 Port_Default_N173;
float3 Port_Import_N306;
float3 Port_AO_N036;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> normalTex [[id(8)]];
texture2d<float> reflectionModulationTex [[id(9)]];
texture2d<float> reflectionTex [[id(10)]];
texture2d<float> rimColorTex [[id(11)]];
texture2d<float> sc_EnvmapDiffuse [[id(12)]];
texture2d<float> sc_EnvmapSpecular [[id(13)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(22)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
sampler baseTexSmpSC [[id(31)]];
sampler detailNormalTexSmpSC [[id(32)]];
sampler emissiveTexSmpSC [[id(33)]];
sampler intensityTextureSmpSC [[id(34)]];
sampler normalTexSmpSC [[id(35)]];
sampler reflectionModulationTexSmpSC [[id(36)]];
sampler reflectionTexSmpSC [[id(37)]];
sampler rimColorTexSmpSC [[id(38)]];
sampler sc_EnvmapDiffuseSmpSC [[id(39)]];
sampler sc_EnvmapSpecularSmpSC [[id(40)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(42)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(43)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(44)]];
sampler sc_RayTracingShadowsSmpSC [[id(46)]];
sampler sc_SSAOTextureSmpSC [[id(47)]];
sampler sc_ScreenTextureSmpSC [[id(48)]];
sampler sc_ShadowTextureSmpSC [[id(49)]];
constant userUniformsObj* UserUniforms [[id(51)]];
};
struct main_vert_out
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param=float4(in.position.xy,(*sc_set0.UserUniforms).depthRef+(1e-10*in.position.z),1.0+(1e-10*in.position.w));
if (sc_ShaderCacheConstant_tmp!=0)
{
param.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_0=param;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1=dot(l9_0,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_2=l9_1;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_2;
}
}
float4 l9_3=float4(param.x,-param.y,(param.z*0.5)+(param.w*0.5),param.w);
out.gl_Position=l9_3;
return out;
}
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_5;
l9_5.position=in.position;
l9_5.normal=in.normal;
l9_5.tangent=in.tangent.xyz;
l9_5.texture0=in.texture0;
l9_5.texture1=in.texture1;
sc_Vertex_t l9_6=l9_5;
sc_Vertex_t param_1=l9_6;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_7=param_1;
param_1=l9_7;
}
sc_Vertex_t l9_8=param_1;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_9=l9_8;
float3 l9_10=in.blendShape0Pos;
float3 l9_11=in.blendShape0Normal;
float l9_12=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_13=l9_9;
float3 l9_14=l9_10;
float l9_15=l9_12;
float3 l9_16=l9_13.position.xyz+(l9_14*l9_15);
l9_13.position=float4(l9_16.x,l9_16.y,l9_16.z,l9_13.position.w);
l9_9=l9_13;
l9_9.normal+=(l9_11*l9_12);
l9_8=l9_9;
sc_Vertex_t l9_17=l9_8;
float3 l9_18=in.blendShape1Pos;
float3 l9_19=in.blendShape1Normal;
float l9_20=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_21=l9_17;
float3 l9_22=l9_18;
float l9_23=l9_20;
float3 l9_24=l9_21.position.xyz+(l9_22*l9_23);
l9_21.position=float4(l9_24.x,l9_24.y,l9_24.z,l9_21.position.w);
l9_17=l9_21;
l9_17.normal+=(l9_19*l9_20);
l9_8=l9_17;
sc_Vertex_t l9_25=l9_8;
float3 l9_26=in.blendShape2Pos;
float3 l9_27=in.blendShape2Normal;
float l9_28=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_29=l9_25;
float3 l9_30=l9_26;
float l9_31=l9_28;
float3 l9_32=l9_29.position.xyz+(l9_30*l9_31);
l9_29.position=float4(l9_32.x,l9_32.y,l9_32.z,l9_29.position.w);
l9_25=l9_29;
l9_25.normal+=(l9_27*l9_28);
l9_8=l9_25;
}
else
{
sc_Vertex_t l9_33=l9_8;
float3 l9_34=in.blendShape0Pos;
float l9_35=(*sc_set0.UserUniforms).weights0.x;
float3 l9_36=l9_33.position.xyz+(l9_34*l9_35);
l9_33.position=float4(l9_36.x,l9_36.y,l9_36.z,l9_33.position.w);
l9_8=l9_33;
sc_Vertex_t l9_37=l9_8;
float3 l9_38=in.blendShape1Pos;
float l9_39=(*sc_set0.UserUniforms).weights0.y;
float3 l9_40=l9_37.position.xyz+(l9_38*l9_39);
l9_37.position=float4(l9_40.x,l9_40.y,l9_40.z,l9_37.position.w);
l9_8=l9_37;
sc_Vertex_t l9_41=l9_8;
float3 l9_42=in.blendShape2Pos;
float l9_43=(*sc_set0.UserUniforms).weights0.z;
float3 l9_44=l9_41.position.xyz+(l9_42*l9_43);
l9_41.position=float4(l9_44.x,l9_44.y,l9_44.z,l9_41.position.w);
l9_8=l9_41;
sc_Vertex_t l9_45=l9_8;
float3 l9_46=in.blendShape3Pos;
float l9_47=(*sc_set0.UserUniforms).weights0.w;
float3 l9_48=l9_45.position.xyz+(l9_46*l9_47);
l9_45.position=float4(l9_48.x,l9_48.y,l9_48.z,l9_45.position.w);
l9_8=l9_45;
sc_Vertex_t l9_49=l9_8;
float3 l9_50=in.blendShape4Pos;
float l9_51=(*sc_set0.UserUniforms).weights1.x;
float3 l9_52=l9_49.position.xyz+(l9_50*l9_51);
l9_49.position=float4(l9_52.x,l9_52.y,l9_52.z,l9_49.position.w);
l9_8=l9_49;
sc_Vertex_t l9_53=l9_8;
float3 l9_54=in.blendShape5Pos;
float l9_55=(*sc_set0.UserUniforms).weights1.y;
float3 l9_56=l9_53.position.xyz+(l9_54*l9_55);
l9_53.position=float4(l9_56.x,l9_56.y,l9_56.z,l9_53.position.w);
l9_8=l9_53;
}
}
param_1=l9_8;
sc_Vertex_t l9_57=param_1;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_58=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_58=float4(1.0,fract(in.boneData.yzw));
l9_58.x-=dot(l9_58.yzw,float3(1.0));
}
float4 l9_59=l9_58;
float4 l9_60=l9_59;
int l9_61=int(in.boneData.x);
int l9_62=int(in.boneData.y);
int l9_63=int(in.boneData.z);
int l9_64=int(in.boneData.w);
int l9_65=l9_61;
float4 l9_66=l9_57.position;
float3 l9_67=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_68=l9_65;
float4 l9_69=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[0];
float4 l9_70=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[1];
float4 l9_71=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[2];
float4 l9_72[3];
l9_72[0]=l9_69;
l9_72[1]=l9_70;
l9_72[2]=l9_71;
l9_67=float3(dot(l9_66,l9_72[0]),dot(l9_66,l9_72[1]),dot(l9_66,l9_72[2]));
}
else
{
l9_67=l9_66.xyz;
}
float3 l9_73=l9_67;
float3 l9_74=l9_73;
float l9_75=l9_60.x;
int l9_76=l9_62;
float4 l9_77=l9_57.position;
float3 l9_78=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_79=l9_76;
float4 l9_80=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[0];
float4 l9_81=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[1];
float4 l9_82=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[2];
float4 l9_83[3];
l9_83[0]=l9_80;
l9_83[1]=l9_81;
l9_83[2]=l9_82;
l9_78=float3(dot(l9_77,l9_83[0]),dot(l9_77,l9_83[1]),dot(l9_77,l9_83[2]));
}
else
{
l9_78=l9_77.xyz;
}
float3 l9_84=l9_78;
float3 l9_85=l9_84;
float l9_86=l9_60.y;
int l9_87=l9_63;
float4 l9_88=l9_57.position;
float3 l9_89=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_90=l9_87;
float4 l9_91=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[0];
float4 l9_92=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[1];
float4 l9_93=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[2];
float4 l9_94[3];
l9_94[0]=l9_91;
l9_94[1]=l9_92;
l9_94[2]=l9_93;
l9_89=float3(dot(l9_88,l9_94[0]),dot(l9_88,l9_94[1]),dot(l9_88,l9_94[2]));
}
else
{
l9_89=l9_88.xyz;
}
float3 l9_95=l9_89;
float3 l9_96=l9_95;
float l9_97=l9_60.z;
int l9_98=l9_64;
float4 l9_99=l9_57.position;
float3 l9_100=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_101=l9_98;
float4 l9_102=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[0];
float4 l9_103=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[1];
float4 l9_104=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[2];
float4 l9_105[3];
l9_105[0]=l9_102;
l9_105[1]=l9_103;
l9_105[2]=l9_104;
l9_100=float3(dot(l9_99,l9_105[0]),dot(l9_99,l9_105[1]),dot(l9_99,l9_105[2]));
}
else
{
l9_100=l9_99.xyz;
}
float3 l9_106=l9_100;
float3 l9_107=(((l9_74*l9_75)+(l9_85*l9_86))+(l9_96*l9_97))+(l9_106*l9_60.w);
l9_57.position=float4(l9_107.x,l9_107.y,l9_107.z,l9_57.position.w);
int l9_108=l9_61;
float3x3 l9_109=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[2].xyz));
float3x3 l9_110=l9_109;
float3x3 l9_111=l9_110;
int l9_112=l9_62;
float3x3 l9_113=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[2].xyz));
float3x3 l9_114=l9_113;
float3x3 l9_115=l9_114;
int l9_116=l9_63;
float3x3 l9_117=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[2].xyz));
float3x3 l9_118=l9_117;
float3x3 l9_119=l9_118;
int l9_120=l9_64;
float3x3 l9_121=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[2].xyz));
float3x3 l9_122=l9_121;
float3x3 l9_123=l9_122;
l9_57.normal=((((l9_111*l9_57.normal)*l9_60.x)+((l9_115*l9_57.normal)*l9_60.y))+((l9_119*l9_57.normal)*l9_60.z))+((l9_123*l9_57.normal)*l9_60.w);
l9_57.tangent=((((l9_111*l9_57.tangent)*l9_60.x)+((l9_115*l9_57.tangent)*l9_60.y))+((l9_119*l9_57.tangent)*l9_60.z))+((l9_123*l9_57.tangent)*l9_60.w);
}
param_1=l9_57;
if (sc_RenderingSpace_tmp==3)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param_1.normal.x,param_1.normal.y,param_1.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param_1.normal.x,param_1.normal.y,param_1.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPosAndMotion=float4(param_1.position.xyz.x,param_1.position.xyz.y,param_1.position.xyz.z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param_1.normal.x,param_1.normal.y,param_1.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
float3 l9_124=((*sc_set0.UserUniforms).sc_ModelMatrix*param_1.position).xyz;
out.varPosAndMotion=float4(l9_124.x,l9_124.y,l9_124.z,out.varPosAndMotion.w);
float3 l9_125=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.normal;
out.varNormalAndMotion=float4(l9_125.x,l9_125.y,l9_125.z,out.varNormalAndMotion.w);
float3 l9_126=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.tangent;
out.varTangent=float4(l9_126.x,l9_126.y,l9_126.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param_1.texture0.x=1.0-param_1.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param_1;
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_2=v;
float3 param_3=WorldPosition;
float3 param_4=WorldNormal;
float3 param_5=WorldTangent;
float4 param_6=v.position;
out.varPosAndMotion=float4(param_3.x,param_3.y,param_3.z,out.varPosAndMotion.w);
float3 l9_127=normalize(param_4);
out.varNormalAndMotion=float4(l9_127.x,l9_127.y,l9_127.z,out.varNormalAndMotion.w);
float3 l9_128=normalize(param_5);
out.varTangent=float4(l9_128.x,l9_128.y,l9_128.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_129=param_2.position;
float4 l9_130=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_131=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_131=0;
}
else
{
l9_131=gl_InstanceIndex%2;
}
int l9_132=l9_131;
l9_130=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_132]*l9_129;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_133=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_133=0;
}
else
{
l9_133=gl_InstanceIndex%2;
}
int l9_134=l9_133;
l9_130=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_134]*l9_129;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_135=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_135=0;
}
else
{
l9_135=gl_InstanceIndex%2;
}
int l9_136=l9_135;
l9_130=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_136]*l9_129;
}
else
{
l9_130=l9_129;
}
}
}
float4 l9_137=l9_130;
out.varViewSpaceDepth=-l9_137.z;
}
float4 l9_138=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_138=param_6;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_139=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_139=0;
}
else
{
l9_139=gl_InstanceIndex%2;
}
int l9_140=l9_139;
l9_138=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_140]*param_2.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_141=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_141=0;
}
else
{
l9_141=gl_InstanceIndex%2;
}
int l9_142=l9_141;
l9_138=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_142]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_143=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_143=0;
}
else
{
l9_143=gl_InstanceIndex%2;
}
int l9_144=l9_143;
l9_138=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_144]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_2.texture0,param_2.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_145=param_2.position;
float4 l9_146=l9_145;
if (sc_RenderingSpace_tmp==1)
{
l9_146=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_145;
}
float4 l9_147=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_146;
float2 l9_148=((l9_147.xy/float2(l9_147.w))*0.5)+float2(0.5);
out.varShadowTex=l9_148;
}
float4 l9_149=l9_138;
if (sc_DepthBufferMode_tmp==1)
{
int l9_150=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_150=0;
}
else
{
l9_150=gl_InstanceIndex%2;
}
int l9_151=l9_150;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_151][2].w!=0.0)
{
float l9_152=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_149.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_149.w))*l9_152)-1.0)*l9_149.w;
}
}
float4 l9_153=l9_149;
l9_138=l9_153;
float4 l9_154=l9_138;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_155=l9_154.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_154.w);
l9_154=float4(l9_155.x,l9_155.y,l9_154.z,l9_154.w);
}
float4 l9_156=l9_154;
l9_138=l9_156;
float4 l9_157=l9_138;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_157.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_158=l9_157;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_159=dot(l9_158,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_160=l9_159;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_160;
}
}
float4 l9_161=float4(l9_157.x,-l9_157.y,(l9_157.z*0.5)+(l9_157.w*0.5),l9_157.w);
out.gl_Position=l9_161;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_162=param_2;
sc_Vertex_t l9_163=l9_162;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_164=l9_163;
float3 l9_165=in.blendShape0Pos;
float3 l9_166=in.blendShape0Normal;
float l9_167=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_168=l9_164;
float3 l9_169=l9_165;
float l9_170=l9_167;
float3 l9_171=l9_168.position.xyz+(l9_169*l9_170);
l9_168.position=float4(l9_171.x,l9_171.y,l9_171.z,l9_168.position.w);
l9_164=l9_168;
l9_164.normal+=(l9_166*l9_167);
l9_163=l9_164;
sc_Vertex_t l9_172=l9_163;
float3 l9_173=in.blendShape1Pos;
float3 l9_174=in.blendShape1Normal;
float l9_175=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_176=l9_172;
float3 l9_177=l9_173;
float l9_178=l9_175;
float3 l9_179=l9_176.position.xyz+(l9_177*l9_178);
l9_176.position=float4(l9_179.x,l9_179.y,l9_179.z,l9_176.position.w);
l9_172=l9_176;
l9_172.normal+=(l9_174*l9_175);
l9_163=l9_172;
sc_Vertex_t l9_180=l9_163;
float3 l9_181=in.blendShape2Pos;
float3 l9_182=in.blendShape2Normal;
float l9_183=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_184=l9_180;
float3 l9_185=l9_181;
float l9_186=l9_183;
float3 l9_187=l9_184.position.xyz+(l9_185*l9_186);
l9_184.position=float4(l9_187.x,l9_187.y,l9_187.z,l9_184.position.w);
l9_180=l9_184;
l9_180.normal+=(l9_182*l9_183);
l9_163=l9_180;
}
else
{
sc_Vertex_t l9_188=l9_163;
float3 l9_189=in.blendShape0Pos;
float l9_190=(*sc_set0.UserUniforms).weights0.x;
float3 l9_191=l9_188.position.xyz+(l9_189*l9_190);
l9_188.position=float4(l9_191.x,l9_191.y,l9_191.z,l9_188.position.w);
l9_163=l9_188;
sc_Vertex_t l9_192=l9_163;
float3 l9_193=in.blendShape1Pos;
float l9_194=(*sc_set0.UserUniforms).weights0.y;
float3 l9_195=l9_192.position.xyz+(l9_193*l9_194);
l9_192.position=float4(l9_195.x,l9_195.y,l9_195.z,l9_192.position.w);
l9_163=l9_192;
sc_Vertex_t l9_196=l9_163;
float3 l9_197=in.blendShape2Pos;
float l9_198=(*sc_set0.UserUniforms).weights0.z;
float3 l9_199=l9_196.position.xyz+(l9_197*l9_198);
l9_196.position=float4(l9_199.x,l9_199.y,l9_199.z,l9_196.position.w);
l9_163=l9_196;
sc_Vertex_t l9_200=l9_163;
float3 l9_201=in.blendShape3Pos;
float l9_202=(*sc_set0.UserUniforms).weights0.w;
float3 l9_203=l9_200.position.xyz+(l9_201*l9_202);
l9_200.position=float4(l9_203.x,l9_203.y,l9_203.z,l9_200.position.w);
l9_163=l9_200;
sc_Vertex_t l9_204=l9_163;
float3 l9_205=in.blendShape4Pos;
float l9_206=(*sc_set0.UserUniforms).weights1.x;
float3 l9_207=l9_204.position.xyz+(l9_205*l9_206);
l9_204.position=float4(l9_207.x,l9_207.y,l9_207.z,l9_204.position.w);
l9_163=l9_204;
sc_Vertex_t l9_208=l9_163;
float3 l9_209=in.blendShape5Pos;
float l9_210=(*sc_set0.UserUniforms).weights1.y;
float3 l9_211=l9_208.position.xyz+(l9_209*l9_210);
l9_208.position=float4(l9_211.x,l9_211.y,l9_211.z,l9_208.position.w);
l9_163=l9_208;
}
}
l9_162=l9_163;
sc_Vertex_t l9_212=l9_162;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_213=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_213=float4(1.0,fract(in.boneData.yzw));
l9_213.x-=dot(l9_213.yzw,float3(1.0));
}
float4 l9_214=l9_213;
float4 l9_215=l9_214;
int l9_216=int(in.boneData.x);
int l9_217=int(in.boneData.y);
int l9_218=int(in.boneData.z);
int l9_219=int(in.boneData.w);
int l9_220=l9_216;
float4 l9_221=l9_212.position;
float3 l9_222=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_223=l9_220;
float4 l9_224=(*sc_set0.sc_BonesUBO).sc_Bones[l9_223].boneMatrix[0];
float4 l9_225=(*sc_set0.sc_BonesUBO).sc_Bones[l9_223].boneMatrix[1];
float4 l9_226=(*sc_set0.sc_BonesUBO).sc_Bones[l9_223].boneMatrix[2];
float4 l9_227[3];
l9_227[0]=l9_224;
l9_227[1]=l9_225;
l9_227[2]=l9_226;
l9_222=float3(dot(l9_221,l9_227[0]),dot(l9_221,l9_227[1]),dot(l9_221,l9_227[2]));
}
else
{
l9_222=l9_221.xyz;
}
float3 l9_228=l9_222;
float3 l9_229=l9_228;
float l9_230=l9_215.x;
int l9_231=l9_217;
float4 l9_232=l9_212.position;
float3 l9_233=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_234=l9_231;
float4 l9_235=(*sc_set0.sc_BonesUBO).sc_Bones[l9_234].boneMatrix[0];
float4 l9_236=(*sc_set0.sc_BonesUBO).sc_Bones[l9_234].boneMatrix[1];
float4 l9_237=(*sc_set0.sc_BonesUBO).sc_Bones[l9_234].boneMatrix[2];
float4 l9_238[3];
l9_238[0]=l9_235;
l9_238[1]=l9_236;
l9_238[2]=l9_237;
l9_233=float3(dot(l9_232,l9_238[0]),dot(l9_232,l9_238[1]),dot(l9_232,l9_238[2]));
}
else
{
l9_233=l9_232.xyz;
}
float3 l9_239=l9_233;
float3 l9_240=l9_239;
float l9_241=l9_215.y;
int l9_242=l9_218;
float4 l9_243=l9_212.position;
float3 l9_244=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_245=l9_242;
float4 l9_246=(*sc_set0.sc_BonesUBO).sc_Bones[l9_245].boneMatrix[0];
float4 l9_247=(*sc_set0.sc_BonesUBO).sc_Bones[l9_245].boneMatrix[1];
float4 l9_248=(*sc_set0.sc_BonesUBO).sc_Bones[l9_245].boneMatrix[2];
float4 l9_249[3];
l9_249[0]=l9_246;
l9_249[1]=l9_247;
l9_249[2]=l9_248;
l9_244=float3(dot(l9_243,l9_249[0]),dot(l9_243,l9_249[1]),dot(l9_243,l9_249[2]));
}
else
{
l9_244=l9_243.xyz;
}
float3 l9_250=l9_244;
float3 l9_251=l9_250;
float l9_252=l9_215.z;
int l9_253=l9_219;
float4 l9_254=l9_212.position;
float3 l9_255=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_256=l9_253;
float4 l9_257=(*sc_set0.sc_BonesUBO).sc_Bones[l9_256].boneMatrix[0];
float4 l9_258=(*sc_set0.sc_BonesUBO).sc_Bones[l9_256].boneMatrix[1];
float4 l9_259=(*sc_set0.sc_BonesUBO).sc_Bones[l9_256].boneMatrix[2];
float4 l9_260[3];
l9_260[0]=l9_257;
l9_260[1]=l9_258;
l9_260[2]=l9_259;
l9_255=float3(dot(l9_254,l9_260[0]),dot(l9_254,l9_260[1]),dot(l9_254,l9_260[2]));
}
else
{
l9_255=l9_254.xyz;
}
float3 l9_261=l9_255;
float3 l9_262=(((l9_229*l9_230)+(l9_240*l9_241))+(l9_251*l9_252))+(l9_261*l9_215.w);
l9_212.position=float4(l9_262.x,l9_262.y,l9_262.z,l9_212.position.w);
int l9_263=l9_216;
float3x3 l9_264=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[2].xyz));
float3x3 l9_265=l9_264;
float3x3 l9_266=l9_265;
int l9_267=l9_217;
float3x3 l9_268=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[2].xyz));
float3x3 l9_269=l9_268;
float3x3 l9_270=l9_269;
int l9_271=l9_218;
float3x3 l9_272=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[2].xyz));
float3x3 l9_273=l9_272;
float3x3 l9_274=l9_273;
int l9_275=l9_219;
float3x3 l9_276=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_275].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_275].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_275].normalMatrix[2].xyz));
float3x3 l9_277=l9_276;
float3x3 l9_278=l9_277;
l9_212.normal=((((l9_266*l9_212.normal)*l9_215.x)+((l9_270*l9_212.normal)*l9_215.y))+((l9_274*l9_212.normal)*l9_215.z))+((l9_278*l9_212.normal)*l9_215.w);
l9_212.tangent=((((l9_266*l9_212.tangent)*l9_215.x)+((l9_270*l9_212.tangent)*l9_215.y))+((l9_274*l9_212.tangent)*l9_215.z))+((l9_278*l9_212.tangent)*l9_215.w);
}
l9_162=l9_212;
float l9_279=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_280=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_281=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_282=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_283=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_284=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_285=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_286=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_287=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_288=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_289=l9_279/l9_280;
int l9_290=gl_InstanceIndex;
int l9_291=l9_290;
l9_162.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_162.position;
float3 l9_292=l9_162.position.xyz;
float3 l9_293=float3(float(l9_291%int(l9_281))*l9_279,float(l9_291/int(l9_281))*l9_279,(float(l9_291)*l9_289)+l9_286);
float3 l9_294=l9_292+l9_293;
float4 l9_295=float4(l9_294-l9_288,1.0);
float l9_296=l9_282;
float l9_297=l9_283;
float l9_298=l9_284;
float l9_299=l9_285;
float l9_300=l9_286;
float l9_301=l9_287;
float4x4 l9_302=float4x4(float4(2.0/(l9_297-l9_296),0.0,0.0,(-(l9_297+l9_296))/(l9_297-l9_296)),float4(0.0,2.0/(l9_299-l9_298),0.0,(-(l9_299+l9_298))/(l9_299-l9_298)),float4(0.0,0.0,(-2.0)/(l9_301-l9_300),(-(l9_301+l9_300))/(l9_301-l9_300)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_303=l9_302;
float4 l9_304=l9_303*l9_295;
l9_304.w=1.0;
out.varScreenPos=l9_304;
float4 l9_305=l9_304*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_305.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_306=l9_305;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_307=dot(l9_306,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_308=l9_307;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_308;
}
}
float4 l9_309=float4(l9_305.x,-l9_305.y,(l9_305.z*0.5)+(l9_305.w*0.5),l9_305.w);
out.gl_Position=l9_309;
param_2=l9_162;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_310=param_2;
sc_Vertex_t l9_311=l9_310;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_312=l9_311;
float3 l9_313=in.blendShape0Pos;
float3 l9_314=in.blendShape0Normal;
float l9_315=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_316=l9_312;
float3 l9_317=l9_313;
float l9_318=l9_315;
float3 l9_319=l9_316.position.xyz+(l9_317*l9_318);
l9_316.position=float4(l9_319.x,l9_319.y,l9_319.z,l9_316.position.w);
l9_312=l9_316;
l9_312.normal+=(l9_314*l9_315);
l9_311=l9_312;
sc_Vertex_t l9_320=l9_311;
float3 l9_321=in.blendShape1Pos;
float3 l9_322=in.blendShape1Normal;
float l9_323=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_324=l9_320;
float3 l9_325=l9_321;
float l9_326=l9_323;
float3 l9_327=l9_324.position.xyz+(l9_325*l9_326);
l9_324.position=float4(l9_327.x,l9_327.y,l9_327.z,l9_324.position.w);
l9_320=l9_324;
l9_320.normal+=(l9_322*l9_323);
l9_311=l9_320;
sc_Vertex_t l9_328=l9_311;
float3 l9_329=in.blendShape2Pos;
float3 l9_330=in.blendShape2Normal;
float l9_331=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_332=l9_328;
float3 l9_333=l9_329;
float l9_334=l9_331;
float3 l9_335=l9_332.position.xyz+(l9_333*l9_334);
l9_332.position=float4(l9_335.x,l9_335.y,l9_335.z,l9_332.position.w);
l9_328=l9_332;
l9_328.normal+=(l9_330*l9_331);
l9_311=l9_328;
}
else
{
sc_Vertex_t l9_336=l9_311;
float3 l9_337=in.blendShape0Pos;
float l9_338=(*sc_set0.UserUniforms).weights0.x;
float3 l9_339=l9_336.position.xyz+(l9_337*l9_338);
l9_336.position=float4(l9_339.x,l9_339.y,l9_339.z,l9_336.position.w);
l9_311=l9_336;
sc_Vertex_t l9_340=l9_311;
float3 l9_341=in.blendShape1Pos;
float l9_342=(*sc_set0.UserUniforms).weights0.y;
float3 l9_343=l9_340.position.xyz+(l9_341*l9_342);
l9_340.position=float4(l9_343.x,l9_343.y,l9_343.z,l9_340.position.w);
l9_311=l9_340;
sc_Vertex_t l9_344=l9_311;
float3 l9_345=in.blendShape2Pos;
float l9_346=(*sc_set0.UserUniforms).weights0.z;
float3 l9_347=l9_344.position.xyz+(l9_345*l9_346);
l9_344.position=float4(l9_347.x,l9_347.y,l9_347.z,l9_344.position.w);
l9_311=l9_344;
sc_Vertex_t l9_348=l9_311;
float3 l9_349=in.blendShape3Pos;
float l9_350=(*sc_set0.UserUniforms).weights0.w;
float3 l9_351=l9_348.position.xyz+(l9_349*l9_350);
l9_348.position=float4(l9_351.x,l9_351.y,l9_351.z,l9_348.position.w);
l9_311=l9_348;
sc_Vertex_t l9_352=l9_311;
float3 l9_353=in.blendShape4Pos;
float l9_354=(*sc_set0.UserUniforms).weights1.x;
float3 l9_355=l9_352.position.xyz+(l9_353*l9_354);
l9_352.position=float4(l9_355.x,l9_355.y,l9_355.z,l9_352.position.w);
l9_311=l9_352;
sc_Vertex_t l9_356=l9_311;
float3 l9_357=in.blendShape5Pos;
float l9_358=(*sc_set0.UserUniforms).weights1.y;
float3 l9_359=l9_356.position.xyz+(l9_357*l9_358);
l9_356.position=float4(l9_359.x,l9_359.y,l9_359.z,l9_356.position.w);
l9_311=l9_356;
}
}
l9_310=l9_311;
sc_Vertex_t l9_360=l9_310;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_361=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_361=float4(1.0,fract(in.boneData.yzw));
l9_361.x-=dot(l9_361.yzw,float3(1.0));
}
float4 l9_362=l9_361;
float4 l9_363=l9_362;
int l9_364=int(in.boneData.x);
int l9_365=int(in.boneData.y);
int l9_366=int(in.boneData.z);
int l9_367=int(in.boneData.w);
int l9_368=l9_364;
float4 l9_369=l9_360.position;
float3 l9_370=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_371=l9_368;
float4 l9_372=(*sc_set0.sc_BonesUBO).sc_Bones[l9_371].boneMatrix[0];
float4 l9_373=(*sc_set0.sc_BonesUBO).sc_Bones[l9_371].boneMatrix[1];
float4 l9_374=(*sc_set0.sc_BonesUBO).sc_Bones[l9_371].boneMatrix[2];
float4 l9_375[3];
l9_375[0]=l9_372;
l9_375[1]=l9_373;
l9_375[2]=l9_374;
l9_370=float3(dot(l9_369,l9_375[0]),dot(l9_369,l9_375[1]),dot(l9_369,l9_375[2]));
}
else
{
l9_370=l9_369.xyz;
}
float3 l9_376=l9_370;
float3 l9_377=l9_376;
float l9_378=l9_363.x;
int l9_379=l9_365;
float4 l9_380=l9_360.position;
float3 l9_381=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_382=l9_379;
float4 l9_383=(*sc_set0.sc_BonesUBO).sc_Bones[l9_382].boneMatrix[0];
float4 l9_384=(*sc_set0.sc_BonesUBO).sc_Bones[l9_382].boneMatrix[1];
float4 l9_385=(*sc_set0.sc_BonesUBO).sc_Bones[l9_382].boneMatrix[2];
float4 l9_386[3];
l9_386[0]=l9_383;
l9_386[1]=l9_384;
l9_386[2]=l9_385;
l9_381=float3(dot(l9_380,l9_386[0]),dot(l9_380,l9_386[1]),dot(l9_380,l9_386[2]));
}
else
{
l9_381=l9_380.xyz;
}
float3 l9_387=l9_381;
float3 l9_388=l9_387;
float l9_389=l9_363.y;
int l9_390=l9_366;
float4 l9_391=l9_360.position;
float3 l9_392=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_393=l9_390;
float4 l9_394=(*sc_set0.sc_BonesUBO).sc_Bones[l9_393].boneMatrix[0];
float4 l9_395=(*sc_set0.sc_BonesUBO).sc_Bones[l9_393].boneMatrix[1];
float4 l9_396=(*sc_set0.sc_BonesUBO).sc_Bones[l9_393].boneMatrix[2];
float4 l9_397[3];
l9_397[0]=l9_394;
l9_397[1]=l9_395;
l9_397[2]=l9_396;
l9_392=float3(dot(l9_391,l9_397[0]),dot(l9_391,l9_397[1]),dot(l9_391,l9_397[2]));
}
else
{
l9_392=l9_391.xyz;
}
float3 l9_398=l9_392;
float3 l9_399=l9_398;
float l9_400=l9_363.z;
int l9_401=l9_367;
float4 l9_402=l9_360.position;
float3 l9_403=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_404=l9_401;
float4 l9_405=(*sc_set0.sc_BonesUBO).sc_Bones[l9_404].boneMatrix[0];
float4 l9_406=(*sc_set0.sc_BonesUBO).sc_Bones[l9_404].boneMatrix[1];
float4 l9_407=(*sc_set0.sc_BonesUBO).sc_Bones[l9_404].boneMatrix[2];
float4 l9_408[3];
l9_408[0]=l9_405;
l9_408[1]=l9_406;
l9_408[2]=l9_407;
l9_403=float3(dot(l9_402,l9_408[0]),dot(l9_402,l9_408[1]),dot(l9_402,l9_408[2]));
}
else
{
l9_403=l9_402.xyz;
}
float3 l9_409=l9_403;
float3 l9_410=(((l9_377*l9_378)+(l9_388*l9_389))+(l9_399*l9_400))+(l9_409*l9_363.w);
l9_360.position=float4(l9_410.x,l9_410.y,l9_410.z,l9_360.position.w);
int l9_411=l9_364;
float3x3 l9_412=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[2].xyz));
float3x3 l9_413=l9_412;
float3x3 l9_414=l9_413;
int l9_415=l9_365;
float3x3 l9_416=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[2].xyz));
float3x3 l9_417=l9_416;
float3x3 l9_418=l9_417;
int l9_419=l9_366;
float3x3 l9_420=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[2].xyz));
float3x3 l9_421=l9_420;
float3x3 l9_422=l9_421;
int l9_423=l9_367;
float3x3 l9_424=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_423].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_423].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_423].normalMatrix[2].xyz));
float3x3 l9_425=l9_424;
float3x3 l9_426=l9_425;
l9_360.normal=((((l9_414*l9_360.normal)*l9_363.x)+((l9_418*l9_360.normal)*l9_363.y))+((l9_422*l9_360.normal)*l9_363.z))+((l9_426*l9_360.normal)*l9_363.w);
l9_360.tangent=((((l9_414*l9_360.tangent)*l9_363.x)+((l9_418*l9_360.tangent)*l9_363.y))+((l9_422*l9_360.tangent)*l9_363.z))+((l9_426*l9_360.tangent)*l9_363.w);
}
l9_310=l9_360;
float3 l9_427=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_428=((l9_310.position.xy/float2(l9_310.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_428.x,l9_428.y,out.varTex01.z,out.varTex01.w);
l9_310.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_310.position;
float3 l9_429=l9_310.position.xyz-l9_427;
l9_310.position=float4(l9_429.x,l9_429.y,l9_429.z,l9_310.position.w);
out.varPosAndMotion=float4(l9_310.position.xyz.x,l9_310.position.xyz.y,l9_310.position.xyz.z,out.varPosAndMotion.w);
float3 l9_430=normalize(l9_310.normal);
out.varNormalAndMotion=float4(l9_430.x,l9_430.y,l9_430.z,out.varNormalAndMotion.w);
float l9_431=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_432=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_433=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_434=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_435=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_436=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_437=l9_431;
float l9_438=l9_432;
float l9_439=l9_433;
float l9_440=l9_434;
float l9_441=l9_435;
float l9_442=l9_436;
float4x4 l9_443=float4x4(float4(2.0/(l9_438-l9_437),0.0,0.0,(-(l9_438+l9_437))/(l9_438-l9_437)),float4(0.0,2.0/(l9_440-l9_439),0.0,(-(l9_440+l9_439))/(l9_440-l9_439)),float4(0.0,0.0,(-2.0)/(l9_442-l9_441),(-(l9_442+l9_441))/(l9_442-l9_441)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_444=l9_443;
float4 l9_445=float4(0.0);
float3 l9_446=(l9_444*l9_310.position).xyz;
l9_445=float4(l9_446.x,l9_446.y,l9_446.z,l9_445.w);
l9_445.w=1.0;
out.varScreenPos=l9_445;
float4 l9_447=l9_445*1.0;
float4 l9_448=l9_447;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_448.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_449=l9_448;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_450=dot(l9_449,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_451=l9_450;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_451;
}
}
float4 l9_452=float4(l9_448.x,-l9_448.y,(l9_448.z*0.5)+(l9_448.w*0.5),l9_448.w);
out.gl_Position=l9_452;
param_2=l9_310;
}
}
v=param_2;
float3 param_7=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_453=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_7,1.0);
float3 l9_454=param_7;
float3 l9_455=l9_453.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_456=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_456=0;
}
else
{
l9_456=gl_InstanceIndex%2;
}
int l9_457=l9_456;
float4 l9_458=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_457]*float4(l9_454,1.0);
float2 l9_459=l9_458.xy/float2(l9_458.w);
l9_458=float4(l9_459.x,l9_459.y,l9_458.z,l9_458.w);
int l9_460=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_460=0;
}
else
{
l9_460=gl_InstanceIndex%2;
}
int l9_461=l9_460;
float4 l9_462=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_461]*float4(l9_455,1.0);
float2 l9_463=l9_462.xy/float2(l9_462.w);
l9_462=float4(l9_463.x,l9_463.y,l9_462.z,l9_462.w);
float2 l9_464=(l9_458.xy-l9_462.xy)*0.5;
out.varPosAndMotion.w=l9_464.x;
out.varNormalAndMotion.w=l9_464.y;
}
}
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct sc_RayTracingHitPayload
{
float3 viewDirWS;
float3 positionWS;
float3 normalWS;
float4 tangentWS;
float4 color;
float2 uv0;
float2 uv1;
float2 uv2;
float2 uv3;
uint2 id;
};
struct SurfaceProperties
{
float3 albedo;
float opacity;
float3 normal;
float3 positionWS;
float3 viewDirWS;
float metallic;
float roughness;
float3 emissive;
float3 ao;
float3 specularAo;
float3 bakedShadows;
float3 specColor;
};
struct LightingComponents
{
float3 directDiffuse;
float3 directSpecular;
float3 indirectDiffuse;
float3 indirectSpecular;
float3 emitted;
float3 transmitted;
};
struct LightProperties
{
float3 direction;
float3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float4 VertexColor;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float2 gScreenCoord;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 recolorRed;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float3 recolorGreen;
float3 recolorBlue;
float progress_value;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float reflectionIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float rimExponent;
float4 Port_Import_N042;
float Port_Input1_N044;
float Port_Import_N088;
float3 Port_Import_N089;
float4 Port_Import_N384;
float Port_Import_N307;
float Port_Import_N201;
float Port_Import_N010;
float Port_Import_N007;
float2 Port_Import_N008;
float2 Port_Import_N009;
float Port_Speed_N022;
float Port_Import_N012;
float2 Port_Import_N254;
float Port_Import_N055;
float Port_Import_N056;
float2 Port_Import_N000;
float2 Port_Import_N060;
float2 Port_Import_N061;
float Port_Speed_N063;
float Port_Import_N065;
float2 Port_Import_N255;
float4 Port_Default_N369;
float4 Port_Import_N092;
float3 Port_Import_N090;
float3 Port_Import_N091;
float3 Port_Import_N144;
float Port_Value2_N073;
float Port_Import_N336;
float Port_Import_N160;
float2 Port_Import_N167;
float2 Port_Import_N207;
float Port_Strength1_N200;
float Port_Import_N095;
float Port_Import_N108;
float3 Port_Default_N113;
float Port_Strength2_N200;
float Port_Import_N273;
float Port_Input1_N274;
float Port_Import_N131;
float Port_Import_N116;
float2 Port_Import_N120;
float2 Port_Import_N127;
float4 Port_Default_N132;
float3 Port_Import_N295;
float Port_Import_N296;
float Port_Import_N133;
float Port_Import_N231;
float3 Port_Import_N327;
float3 Port_Input1_N257;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float Port_Import_N123;
float Port_Import_N025;
float2 Port_Import_N030;
float2 Port_Import_N031;
float3 Port_Default_N041;
float3 Port_Default_N134;
float3 Port_Import_N298;
float Port_Import_N172;
float3 Port_Import_N318;
float Port_Import_N319;
float Port_Import_N171;
float Port_Import_N135;
float2 Port_Import_N150;
float2 Port_Import_N152;
float3 Port_Default_N170;
float Port_Import_N339;
float3 Port_Import_N328;
float Port_Import_N340;
float3 Port_Default_N173;
float3 Port_Import_N306;
float3 Port_AO_N036;
float depthRef;
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_PointLight_t_1
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> normalTex [[id(8)]];
texture2d<float> reflectionModulationTex [[id(9)]];
texture2d<float> reflectionTex [[id(10)]];
texture2d<float> rimColorTex [[id(11)]];
texture2d<float> sc_EnvmapDiffuse [[id(12)]];
texture2d<float> sc_EnvmapSpecular [[id(13)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(22)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
sampler baseTexSmpSC [[id(31)]];
sampler detailNormalTexSmpSC [[id(32)]];
sampler emissiveTexSmpSC [[id(33)]];
sampler intensityTextureSmpSC [[id(34)]];
sampler normalTexSmpSC [[id(35)]];
sampler reflectionModulationTexSmpSC [[id(36)]];
sampler reflectionTexSmpSC [[id(37)]];
sampler rimColorTexSmpSC [[id(38)]];
sampler sc_EnvmapDiffuseSmpSC [[id(39)]];
sampler sc_EnvmapSpecularSmpSC [[id(40)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(42)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(43)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(44)]];
sampler sc_RayTracingShadowsSmpSC [[id(46)]];
sampler sc_SSAOTextureSmpSC [[id(47)]];
sampler sc_ScreenTextureSmpSC [[id(48)]];
sampler sc_ShadowTextureSmpSC [[id(49)]];
constant userUniformsObj* UserUniforms [[id(51)]];
};
struct main_frag_out
{
float4 sc_FragData0 [[color(0)]];
};
struct main_frag_in
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
sc_RayTracingHitPayload sc_RayTracingEvaluateHitPayload(thread const int2& screenPos,constant userUniformsObj& UserUniforms,const device sc_RayTracingCasterVertexBuffer_obj& sc_RayTracingCasterVertexBuffer,const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj& sc_RayTracingCasterNonAnimatedVertexBuffer,const device sc_RayTracingCasterIndexBuffer_obj& sc_RayTracingCasterIndexBuffer,thread texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric,thread sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC,thread texture2d<float> sc_RayTracingRayDirection,thread sampler sc_RayTracingRayDirectionSmpSC)
{
uint4 idAndBarycentric=sc_RayTracingHitCasterIdAndBarycentric.read(uint2(screenPos),0);
sc_RayTracingHitPayload rhp;
rhp.id=idAndBarycentric.xy;
if (rhp.id.x!=(UserUniforms.sc_RayTracingCasterConfiguration.y&65535u))
{
return rhp;
}
float2 brcVW=float2(as_type<half2>(idAndBarycentric.z|(idAndBarycentric.w<<uint(16))));
float3 brc=float3((1.0-brcVW.x)-brcVW.y,brcVW);
float2 param=sc_RayTracingRayDirection.read(uint2(screenPos),0).xy;
float3 l9_0=float3(param.x,param.y,(1.0-abs(param.x))-abs(param.y));
float l9_1=fast::clamp(-l9_0.z,0.0,1.0);
float l9_2;
if (l9_0.x>=0.0)
{
l9_2=-l9_1;
}
else
{
l9_2=l9_1;
}
float l9_3=l9_2;
float l9_4;
if (l9_0.y>=0.0)
{
l9_4=-l9_1;
}
else
{
l9_4=l9_1;
}
float2 l9_5=l9_0.xy+float2(l9_3,l9_4);
l9_0=float3(l9_5.x,l9_5.y,l9_0.z);
float3 l9_6=normalize(l9_0);
float3 rayDir=l9_6;
rhp.viewDirWS=-rayDir;
uint param_1=rhp.id.y;
uint l9_7=min(param_1,UserUniforms.sc_RayTracingCasterConfiguration.z);
uint l9_8=l9_7*6u;
uint l9_9=l9_8&4294967292u;
uint4 l9_10=(uint4(uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[l9_9/4u]),uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[(l9_9/4u)+1u]))&uint4(65535u,4294967295u,65535u,4294967295u))>>uint4(0u,16u,0u,16u);
uint3 l9_11;
if (l9_8==l9_9)
{
l9_11=l9_10.xyz;
}
else
{
l9_11=l9_10.yzw;
}
uint3 l9_12=l9_11;
uint3 i=l9_12;
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_2=brc;
uint3 param_3=i;
uint param_4=0u;
uint3 l9_13=uint3((param_3*uint3(6u))+uint3(param_4));
uint l9_14=l9_13.x;
float3 l9_15=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+2u]);
uint l9_16=l9_13.y;
float3 l9_17=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+2u]);
uint l9_18=l9_13.z;
float3 l9_19=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+2u]);
float3 l9_20=((l9_15*param_2.x)+(l9_17*param_2.y))+(l9_19*param_2.z);
rhp.positionWS=l9_20;
}
else
{
float3 param_5=brc;
uint3 param_6=i;
uint3 l9_21=uint3((param_6.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x);
float3 l9_22=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==5u)
{
uint l9_23=l9_21.x;
float3 l9_24=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+2u]);
uint l9_25=l9_21.y;
float3 l9_26=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+2u]);
uint l9_27=l9_21.z;
float3 l9_28=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+2u]);
l9_22=((l9_24*param_5.x)+(l9_26*param_5.y))+(l9_28*param_5.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==6u)
{
uint l9_29=l9_21.x;
float3 l9_30=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29+1u]))).x);
uint l9_31=l9_21.y;
float3 l9_32=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31+1u]))).x);
uint l9_33=l9_21.z;
float3 l9_34=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33+1u]))).x);
l9_22=((l9_30*param_5.x)+(l9_32*param_5.y))+(l9_34*param_5.z);
}
else
{
l9_22=float3(1.0,0.0,0.0);
}
}
float3 l9_35=l9_22;
float3 positionOS=l9_35;
rhp.positionWS=(UserUniforms.sc_ModelMatrix*float4(positionOS,1.0)).xyz;
}
if (UserUniforms.sc_RayTracingCasterOffsetPNTC.y>0u)
{
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_7=brc;
uint3 param_8=i;
uint param_9=3u;
uint3 l9_36=uint3((param_8*uint3(6u))+uint3(param_9));
uint l9_37=l9_36.x;
float3 l9_38=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+2u]);
uint l9_39=l9_36.y;
float3 l9_40=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+2u]);
uint l9_41=l9_36.z;
float3 l9_42=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+2u]);
float3 l9_43=((l9_38*param_7.x)+(l9_40*param_7.y))+(l9_42*param_7.z);
rhp.normalWS=l9_43;
}
else
{
float3 param_10=brc;
uint3 param_11=i;
uint3 l9_44=uint3((param_11.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y);
float3 l9_45=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==5u)
{
uint l9_46=l9_44.x;
float3 l9_47=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+2u]);
uint l9_48=l9_44.y;
float3 l9_49=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+2u]);
uint l9_50=l9_44.z;
float3 l9_51=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+2u]);
l9_45=((l9_47*param_10.x)+(l9_49*param_10.y))+(l9_51*param_10.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==6u)
{
uint l9_52=l9_44.x;
float3 l9_53=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52+1u]))).x);
uint l9_54=l9_44.y;
float3 l9_55=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54+1u]))).x);
uint l9_56=l9_44.z;
float3 l9_57=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56+1u]))).x);
l9_45=((l9_53*param_10.x)+(l9_55*param_10.y))+(l9_57*param_10.z);
}
else
{
l9_45=float3(1.0,0.0,0.0);
}
}
float3 l9_58=l9_45;
float3 normalOS=l9_58;
rhp.normalWS=normalize(UserUniforms.sc_NormalMatrix*normalOS);
}
}
else
{
rhp.normalWS=float3(1.0,0.0,0.0);
}
bool l9_59=!(UserUniforms.sc_RayTracingCasterConfiguration.x==2u);
bool l9_60;
if (l9_59)
{
l9_60=UserUniforms.sc_RayTracingCasterOffsetPNTC.z>0u;
}
else
{
l9_60=l9_59;
}
if (l9_60)
{
float3 param_12=brc;
uint3 param_13=i;
uint3 l9_61=uint3((param_13.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z);
float4 l9_62=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==5u)
{
uint l9_63=l9_61.x;
float4 l9_64=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+3u]);
uint l9_65=l9_61.y;
float4 l9_66=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+3u]);
uint l9_67=l9_61.z;
float4 l9_68=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+3u]);
l9_62=((l9_64*param_12.x)+(l9_66*param_12.y))+(l9_68*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==6u)
{
uint l9_69=l9_61.x;
float4 l9_70=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69+1u]))));
uint l9_71=l9_61.y;
float4 l9_72=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71+1u]))));
uint l9_73=l9_61.z;
float4 l9_74=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73+1u]))));
l9_62=((l9_70*param_12.x)+(l9_72*param_12.y))+(l9_74*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==2u)
{
uint l9_75=l9_61.x;
uint l9_76=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_75]);
uint l9_77=l9_76&255u;
uint l9_78=(l9_76>>uint(8))&255u;
uint l9_79=(l9_76>>uint(16))&255u;
uint l9_80=(l9_76>>uint(24))&255u;
float4 l9_81=float4(float(l9_77),float(l9_78),float(l9_79),float(l9_80))/float4(255.0);
uint l9_82=l9_61.y;
uint l9_83=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_82]);
uint l9_84=l9_83&255u;
uint l9_85=(l9_83>>uint(8))&255u;
uint l9_86=(l9_83>>uint(16))&255u;
uint l9_87=(l9_83>>uint(24))&255u;
float4 l9_88=float4(float(l9_84),float(l9_85),float(l9_86),float(l9_87))/float4(255.0);
uint l9_89=l9_61.z;
uint l9_90=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_89]);
uint l9_91=l9_90&255u;
uint l9_92=(l9_90>>uint(8))&255u;
uint l9_93=(l9_90>>uint(16))&255u;
uint l9_94=(l9_90>>uint(24))&255u;
float4 l9_95=float4(float(l9_91),float(l9_92),float(l9_93),float(l9_94))/float4(255.0);
l9_62=((l9_81*param_12.x)+(l9_88*param_12.y))+(l9_95*param_12.z);
}
else
{
l9_62=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_96=l9_62;
float4 tangentOS=l9_96;
float3 tangentWS=normalize(UserUniforms.sc_NormalMatrix*tangentOS.xyz);
rhp.tangentWS=float4(tangentWS,tangentOS.w);
}
else
{
rhp.tangentWS=float4(1.0,0.0,0.0,1.0);
}
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w>0u)
{
float3 param_14=brc;
uint3 param_15=i;
uint3 l9_97=uint3((param_15.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w);
float4 l9_98=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==5u)
{
uint l9_99=l9_97.x;
float4 l9_100=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+3u]);
uint l9_101=l9_97.y;
float4 l9_102=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+3u]);
uint l9_103=l9_97.z;
float4 l9_104=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+3u]);
l9_98=((l9_100*param_14.x)+(l9_102*param_14.y))+(l9_104*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==6u)
{
uint l9_105=l9_97.x;
float4 l9_106=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105+1u]))));
uint l9_107=l9_97.y;
float4 l9_108=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107+1u]))));
uint l9_109=l9_97.z;
float4 l9_110=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109+1u]))));
l9_98=((l9_106*param_14.x)+(l9_108*param_14.y))+(l9_110*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==2u)
{
uint l9_111=l9_97.x;
uint l9_112=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_111]);
uint l9_113=l9_112&255u;
uint l9_114=(l9_112>>uint(8))&255u;
uint l9_115=(l9_112>>uint(16))&255u;
uint l9_116=(l9_112>>uint(24))&255u;
float4 l9_117=float4(float(l9_113),float(l9_114),float(l9_115),float(l9_116))/float4(255.0);
uint l9_118=l9_97.y;
uint l9_119=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_118]);
uint l9_120=l9_119&255u;
uint l9_121=(l9_119>>uint(8))&255u;
uint l9_122=(l9_119>>uint(16))&255u;
uint l9_123=(l9_119>>uint(24))&255u;
float4 l9_124=float4(float(l9_120),float(l9_121),float(l9_122),float(l9_123))/float4(255.0);
uint l9_125=l9_97.z;
uint l9_126=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_125]);
uint l9_127=l9_126&255u;
uint l9_128=(l9_126>>uint(8))&255u;
uint l9_129=(l9_126>>uint(16))&255u;
uint l9_130=(l9_126>>uint(24))&255u;
float4 l9_131=float4(float(l9_127),float(l9_128),float(l9_129),float(l9_130))/float4(255.0);
l9_98=((l9_117*param_14.x)+(l9_124*param_14.y))+(l9_131*param_14.z);
}
else
{
l9_98=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_132=l9_98;
rhp.color=l9_132;
}
float2 dummyRedBlack=float2(dot(brc,float3(uint3(1u)-(i%uint3(2u)))),0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x>0u)
{
float3 param_16=brc;
uint3 param_17=i;
uint3 l9_133=uint3((param_17.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x);
float2 l9_134=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==5u)
{
uint l9_135=l9_133.x;
float2 l9_136=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135+1u]);
uint l9_137=l9_133.y;
float2 l9_138=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137+1u]);
uint l9_139=l9_133.z;
float2 l9_140=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139+1u]);
l9_134=((l9_136*param_16.x)+(l9_138*param_16.y))+(l9_140*param_16.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==6u)
{
uint l9_141=l9_133.x;
float2 l9_142=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_141])));
uint l9_143=l9_133.y;
float2 l9_144=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_143])));
uint l9_145=l9_133.z;
float2 l9_146=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_145])));
l9_134=((l9_142*param_16.x)+(l9_144*param_16.y))+(l9_146*param_16.z);
}
else
{
l9_134=float2(1.0,0.0);
}
}
float2 l9_147=l9_134;
rhp.uv0=l9_147;
}
else
{
rhp.uv0=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.y>0u)
{
float3 param_18=brc;
uint3 param_19=i;
uint3 l9_148=uint3((param_19.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y);
float2 l9_149=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==5u)
{
uint l9_150=l9_148.x;
float2 l9_151=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150+1u]);
uint l9_152=l9_148.y;
float2 l9_153=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152+1u]);
uint l9_154=l9_148.z;
float2 l9_155=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154+1u]);
l9_149=((l9_151*param_18.x)+(l9_153*param_18.y))+(l9_155*param_18.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==6u)
{
uint l9_156=l9_148.x;
float2 l9_157=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_156])));
uint l9_158=l9_148.y;
float2 l9_159=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_158])));
uint l9_160=l9_148.z;
float2 l9_161=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_160])));
l9_149=((l9_157*param_18.x)+(l9_159*param_18.y))+(l9_161*param_18.z);
}
else
{
l9_149=float2(1.0,0.0);
}
}
float2 l9_162=l9_149;
rhp.uv1=l9_162;
}
else
{
rhp.uv1=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.z>0u)
{
float3 param_20=brc;
uint3 param_21=i;
uint3 l9_163=uint3((param_21.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z);
float2 l9_164=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==5u)
{
uint l9_165=l9_163.x;
float2 l9_166=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165+1u]);
uint l9_167=l9_163.y;
float2 l9_168=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167+1u]);
uint l9_169=l9_163.z;
float2 l9_170=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169+1u]);
l9_164=((l9_166*param_20.x)+(l9_168*param_20.y))+(l9_170*param_20.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==6u)
{
uint l9_171=l9_163.x;
float2 l9_172=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_171])));
uint l9_173=l9_163.y;
float2 l9_174=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_173])));
uint l9_175=l9_163.z;
float2 l9_176=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_175])));
l9_164=((l9_172*param_20.x)+(l9_174*param_20.y))+(l9_176*param_20.z);
}
else
{
l9_164=float2(1.0,0.0);
}
}
float2 l9_177=l9_164;
rhp.uv2=l9_177;
}
else
{
rhp.uv2=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.w>0u)
{
float3 param_22=brc;
uint3 param_23=i;
uint3 l9_178=uint3((param_23.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w);
float2 l9_179=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==5u)
{
uint l9_180=l9_178.x;
float2 l9_181=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180+1u]);
uint l9_182=l9_178.y;
float2 l9_183=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182+1u]);
uint l9_184=l9_178.z;
float2 l9_185=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184+1u]);
l9_179=((l9_181*param_22.x)+(l9_183*param_22.y))+(l9_185*param_22.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==6u)
{
uint l9_186=l9_178.x;
float2 l9_187=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_186])));
uint l9_188=l9_178.y;
float2 l9_189=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_188])));
uint l9_190=l9_178.z;
float2 l9_191=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_190])));
l9_179=((l9_187*param_22.x)+(l9_189*param_22.y))+(l9_191*param_22.z);
}
else
{
l9_179=float2(1.0,0.0);
}
}
float2 l9_192=l9_179;
rhp.uv3=l9_192;
}
else
{
rhp.uv3=dummyRedBlack;
}
return rhp;
}
float3 evaluateSSAO(thread const float3& positionWS,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC)
{
if ((int(sc_SSAOEnabled_tmp)!=0))
{
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 clipSpaceCoord=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(positionWS,1.0);
float3 l9_2=clipSpaceCoord.xyz/float3(clipSpaceCoord.w);
clipSpaceCoord=float4(l9_2.x,l9_2.y,l9_2.z,clipSpaceCoord.w);
float4 shadowSample=sc_SSAOTexture.sample(sc_SSAOTextureSmpSC,((clipSpaceCoord.xy*0.5)+float2(0.5)));
return float3(shadowSample.x);
}
else
{
return float3(1.0);
}
}
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V,constant userUniformsObj& UserUniforms)
{
float r=fast::max(surfaceProperties.roughness,0.029999999);
float3 F0=surfaceProperties.specColor;
float3 N=surfaceProperties.normal;
float3 H=normalize(L+V);
float param=dot(N,L);
float l9_0=fast::clamp(param,0.0,1.0);
float NdotL=l9_0;
float param_1=dot(N,V);
float l9_1=fast::clamp(param_1,0.0,1.0);
float NdotV=l9_1;
float param_2=dot(N,H);
float l9_2=fast::clamp(param_2,0.0,1.0);
float NdotH=l9_2;
float param_3=dot(V,H);
float l9_3=fast::clamp(param_3,0.0,1.0);
float VdotH=l9_3;
if (SC_DEVICE_CLASS_tmp>=2)
{
float param_4=NdotH;
float param_5=r;
float l9_4=param_5*param_5;
float l9_5=l9_4*l9_4;
float l9_6=param_4*param_4;
float l9_7=(l9_6*(l9_5-1.0))+1.0;
float l9_8=l9_7*l9_7;
float l9_9=9.9999999e-09;
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
l9_9=1e-07;
}
float l9_10=l9_5/(l9_8+l9_9);
float param_6=NdotL;
float param_7=NdotV;
float param_8=r;
float l9_11=param_6;
float l9_12=param_8;
float l9_13=l9_12+1.0;
l9_13=(l9_13*l9_13)*0.125;
float l9_14=(l9_11*(1.0-l9_13))+l9_13;
float l9_15=param_7;
float l9_16=param_8;
float l9_17=l9_16+1.0;
l9_17=(l9_17*l9_17)*0.125;
float l9_18=(l9_15*(1.0-l9_17))+l9_17;
float l9_19=1.0/(l9_14*l9_18);
float param_9=VdotH;
float3 param_10=F0;
float l9_20=param_9;
float3 l9_21=param_10;
float3 l9_22=float3(1.0);
float l9_23=1.0-l9_20;
float l9_24=l9_23*l9_23;
float l9_25=(l9_24*l9_24)*l9_23;
float3 l9_26=l9_21+((l9_22-l9_21)*l9_25);
float3 l9_27=l9_26;
return l9_27*(((l9_10*l9_19)*0.25)*NdotL);
}
else
{
float specPower=exp2(11.0-(10.0*r));
float param_11=VdotH;
float3 param_12=F0;
float l9_28=param_11;
float3 l9_29=param_12;
float3 l9_30=float3(1.0);
float l9_31=1.0-l9_28;
float l9_32=l9_31*l9_31;
float l9_33=(l9_32*l9_32)*l9_31;
float3 l9_34=l9_29+((l9_30-l9_29)*l9_33);
float3 l9_35=l9_34;
return ((l9_35*((specPower*0.125)+0.25))*pow(NdotH,specPower))*NdotL;
}
}
float computeDistanceAttenuation(thread const float& distanceToLight,thread const float& falloffEndDistance)
{
float distanceToLightSquared=distanceToLight*distanceToLight;
if (falloffEndDistance==0.0)
{
return 1.0/distanceToLightSquared;
}
float distanceToLightToTheFourth=distanceToLightSquared*distanceToLightSquared;
float falloffEndDistanceToTheFourth=pow(falloffEndDistance,4.0);
return fast::max(fast::min(1.0-(distanceToLightToTheFourth/falloffEndDistanceToTheFourth),1.0),0.0)/distanceToLightSquared;
}
float2 calcSeamlessPanoramicUvsForSampling(thread const float2& uv,thread const float2& topMipRes,thread const float& lod)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 thisMipRes=fast::max(float2(1.0),topMipRes/float2(exp2(lod)));
return ((uv*(thisMipRes-float2(1.0)))/thisMipRes)+(float2(0.5)/thisMipRes);
}
else
{
return uv;
}
}
float srgbToLinear(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,2.2);
}
else
{
return x*x;
}
}
float linearToSrgb(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,0.45454547);
}
else
{
return sqrt(x);
}
}
float4 ngsCalculateLighting(thread const float3& albedo,thread const float& opacity,thread const float3& normal,thread const float3& position,thread const float3& viewDir,thread const float3& emissive,thread const float& metallic,thread const float& roughness,thread const float3& ao,thread const float3& specularAO,thread int& varStereoViewID,thread texture2d<float> sc_EnvmapDiffuse,thread sampler sc_EnvmapDiffuseSmpSC,thread texture2d<float> sc_EnvmapSpecular,thread sampler sc_EnvmapSpecularSmpSC,thread texture2d<float> sc_ScreenTexture,thread sampler sc_ScreenTextureSmpSC,thread texture2d<float> sc_RayTracingGlobalIllumination,thread sampler sc_RayTracingGlobalIlluminationSmpSC,thread texture2d<float> sc_RayTracingShadows,thread sampler sc_RayTracingShadowsSmpSC,thread float4& gl_FragCoord,constant userUniformsObj& UserUniforms,thread float2& varShadowTex,thread texture2d<float> sc_ShadowTexture,thread sampler sc_ShadowTextureSmpSC,thread float4& sc_FragData0,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC)
{
SurfaceProperties l9_0;
l9_0.albedo=float3(0.0);
l9_0.opacity=1.0;
l9_0.normal=float3(0.0);
l9_0.positionWS=float3(0.0);
l9_0.viewDirWS=float3(0.0);
l9_0.metallic=0.0;
l9_0.roughness=0.0;
l9_0.emissive=float3(0.0);
l9_0.ao=float3(1.0);
l9_0.specularAo=float3(1.0);
l9_0.bakedShadows=float3(1.0);
SurfaceProperties l9_1=l9_0;
SurfaceProperties surfaceProperties=l9_1;
surfaceProperties.opacity=opacity;
float3 param=albedo;
float3 l9_2;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2=float3(pow(param.x,2.2),pow(param.y,2.2),pow(param.z,2.2));
}
else
{
l9_2=param*param;
}
float3 l9_3=l9_2;
surfaceProperties.albedo=l9_3;
surfaceProperties.normal=normalize(normal);
surfaceProperties.positionWS=position;
surfaceProperties.viewDirWS=viewDir;
float3 param_1=emissive;
float3 l9_4;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_4=float3(pow(param_1.x,2.2),pow(param_1.y,2.2),pow(param_1.z,2.2));
}
else
{
l9_4=param_1*param_1;
}
float3 l9_5=l9_4;
surfaceProperties.emissive=l9_5;
surfaceProperties.metallic=metallic;
surfaceProperties.roughness=roughness;
surfaceProperties.ao=ao;
surfaceProperties.specularAo=specularAO;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 param_2=surfaceProperties.positionWS;
surfaceProperties.ao=evaluateSSAO(param_2,varStereoViewID,UserUniforms,sc_SSAOTexture,sc_SSAOTextureSmpSC);
}
SurfaceProperties param_3=surfaceProperties;
SurfaceProperties l9_6=param_3;
float3 l9_7=mix(float3(0.039999999),l9_6.albedo*l9_6.metallic,float3(l9_6.metallic));
float3 l9_8=mix(l9_6.albedo*(1.0-l9_6.metallic),float3(0.0),float3(l9_6.metallic));
param_3.albedo=l9_8;
param_3.specColor=l9_7;
SurfaceProperties l9_9=param_3;
surfaceProperties=l9_9;
SurfaceProperties param_4=surfaceProperties;
LightingComponents l9_10;
l9_10.directDiffuse=float3(0.0);
l9_10.directSpecular=float3(0.0);
l9_10.indirectDiffuse=float3(1.0);
l9_10.indirectSpecular=float3(0.0);
l9_10.emitted=float3(0.0);
l9_10.transmitted=float3(0.0);
LightingComponents l9_11=l9_10;
LightingComponents l9_12=l9_11;
float3 l9_13=param_4.viewDirWS;
int l9_14=0;
float4 l9_15=float4(param_4.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_16;
LightProperties l9_17;
int l9_18=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_18<sc_DirectionalLightsCount_tmp)
{
l9_16.direction=UserUniforms.sc_DirectionalLights[l9_18].direction;
l9_16.color=UserUniforms.sc_DirectionalLights[l9_18].color;
l9_17.direction=l9_16.direction;
l9_17.color=l9_16.color.xyz;
l9_17.attenuation=l9_16.color.w;
l9_17.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
l9_14++;
LightingComponents l9_19=l9_12;
LightProperties l9_20=l9_17;
SurfaceProperties l9_21=param_4;
float3 l9_22=l9_13;
SurfaceProperties l9_23=l9_21;
float3 l9_24=l9_20.direction;
float l9_25=dot(l9_23.normal,l9_24);
float l9_26=fast::clamp(l9_25,0.0,1.0);
float3 l9_27=float3(l9_26);
l9_19.directDiffuse+=((l9_27*l9_20.color)*l9_20.attenuation);
SurfaceProperties l9_28=l9_21;
float3 l9_29=l9_20.direction;
float3 l9_30=l9_22;
l9_19.directSpecular+=((calculateDirectSpecular(l9_28,l9_29,l9_30,UserUniforms)*l9_20.color)*l9_20.attenuation);
LightingComponents l9_31=l9_19;
l9_12=l9_31;
l9_18++;
continue;
}
else
{
break;
}
}
}
if (sc_PointLightsCount_tmp>0)
{
sc_PointLight_t_1 l9_32;
LightProperties l9_33;
int l9_34=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_34<sc_PointLightsCount_tmp)
{
l9_32.falloffEnabled=UserUniforms.sc_PointLights[l9_34].falloffEnabled!=0;
l9_32.falloffEndDistance=UserUniforms.sc_PointLights[l9_34].falloffEndDistance;
l9_32.negRcpFalloffEndDistance4=UserUniforms.sc_PointLights[l9_34].negRcpFalloffEndDistance4;
l9_32.angleScale=UserUniforms.sc_PointLights[l9_34].angleScale;
l9_32.angleOffset=UserUniforms.sc_PointLights[l9_34].angleOffset;
l9_32.direction=UserUniforms.sc_PointLights[l9_34].direction;
l9_32.position=UserUniforms.sc_PointLights[l9_34].position;
l9_32.color=UserUniforms.sc_PointLights[l9_34].color;
float3 l9_35=l9_32.position-param_4.positionWS;
l9_33.direction=normalize(l9_35);
l9_33.color=l9_32.color.xyz;
l9_33.attenuation=l9_32.color.w;
l9_33.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
float3 l9_36=l9_33.direction;
float3 l9_37=l9_32.direction;
float l9_38=l9_32.angleScale;
float l9_39=l9_32.angleOffset;
float l9_40=dot(l9_36,l9_37);
float l9_41=fast::clamp((l9_40*l9_38)+l9_39,0.0,1.0);
float l9_42=l9_41*l9_41;
l9_33.attenuation*=l9_42;
if (l9_32.falloffEnabled)
{
float l9_43=length(l9_35);
float l9_44=l9_32.falloffEndDistance;
l9_33.attenuation*=computeDistanceAttenuation(l9_43,l9_44);
}
l9_14++;
LightingComponents l9_45=l9_12;
LightProperties l9_46=l9_33;
SurfaceProperties l9_47=param_4;
float3 l9_48=l9_13;
SurfaceProperties l9_49=l9_47;
float3 l9_50=l9_46.direction;
float l9_51=dot(l9_49.normal,l9_50);
float l9_52=fast::clamp(l9_51,0.0,1.0);
float3 l9_53=float3(l9_52);
l9_45.directDiffuse+=((l9_53*l9_46.color)*l9_46.attenuation);
SurfaceProperties l9_54=l9_47;
float3 l9_55=l9_46.direction;
float3 l9_56=l9_48;
l9_45.directSpecular+=((calculateDirectSpecular(l9_54,l9_55,l9_56,UserUniforms)*l9_46.color)*l9_46.attenuation);
LightingComponents l9_57=l9_45;
l9_12=l9_57;
l9_34++;
continue;
}
else
{
break;
}
}
}
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float3 l9_58=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_59=abs(varShadowTex-float2(0.5));
float l9_60=fast::max(l9_59.x,l9_59.y);
float l9_61=step(l9_60,0.5);
float4 l9_62=sc_ShadowTexture.sample(sc_ShadowTextureSmpSC,varShadowTex)*l9_61;
float3 l9_63=mix(UserUniforms.sc_ShadowColor.xyz,UserUniforms.sc_ShadowColor.xyz*l9_62.xyz,float3(UserUniforms.sc_ShadowColor.w));
float l9_64=l9_62.w*UserUniforms.sc_ShadowDensity;
l9_58=mix(float3(1.0),l9_63,float3(l9_64));
}
else
{
l9_58=float3(1.0);
}
float3 l9_65=l9_58;
float3 l9_66=l9_65;
l9_12.directDiffuse*=l9_66;
l9_12.directSpecular*=l9_66;
}
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_67=gl_FragCoord;
float2 l9_68=l9_67.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_69=l9_68;
float2 l9_70=l9_69;
float l9_71=0.0;
int l9_72;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_73=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_73=0;
}
else
{
l9_73=varStereoViewID;
}
int l9_74=l9_73;
l9_72=1-l9_74;
}
else
{
int l9_75=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_75=0;
}
else
{
l9_75=varStereoViewID;
}
int l9_76=l9_75;
l9_72=l9_76;
}
int l9_77=l9_72;
float2 l9_78=l9_70;
int l9_79=sc_RayTracingShadowsLayout_tmp;
int l9_80=l9_77;
float l9_81=l9_71;
float2 l9_82=l9_78;
int l9_83=l9_79;
int l9_84=l9_80;
float3 l9_85=float3(0.0);
if (l9_83==0)
{
l9_85=float3(l9_82,0.0);
}
else
{
if (l9_83==1)
{
l9_85=float3(l9_82.x,(l9_82.y*0.5)+(0.5-(float(l9_84)*0.5)),0.0);
}
else
{
l9_85=float3(l9_82,float(l9_84));
}
}
float3 l9_86=l9_85;
float3 l9_87=l9_86;
float4 l9_88=sc_RayTracingShadows.sample(sc_RayTracingShadowsSmpSC,l9_87.xy,bias(l9_81));
float4 l9_89=l9_88;
float4 l9_90=l9_89;
float l9_91=l9_90.x;
float l9_92=1.0-l9_91;
l9_12.directDiffuse*=l9_92;
l9_12.directSpecular*=l9_92;
}
l9_12.directSpecular=float3(0.0);
SurfaceProperties l9_93=param_4;
float3 l9_94=l9_93.normal;
float3 l9_95=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_96=l9_94;
float3 l9_97=l9_96;
float l9_98=UserUniforms.sc_EnvmapRotation.y;
float2 l9_99=float2(0.0);
float l9_100=l9_97.x;
float l9_101=-l9_97.z;
float l9_102=(l9_100<0.0) ? (-1.0) : 1.0;
float l9_103=l9_102*acos(fast::clamp(l9_101/length(float2(l9_100,l9_101)),-1.0,1.0));
l9_99.x=l9_103-1.5707964;
l9_99.y=acos(l9_97.y);
l9_99/=float2(6.2831855,3.1415927);
l9_99.y=1.0-l9_99.y;
l9_99.x+=(l9_98/360.0);
l9_99.x=fract((l9_99.x+floor(l9_99.x))+1.0);
float2 l9_104=l9_99;
float2 l9_105=l9_104;
float4 l9_106=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_107=l9_105;
float2 l9_108=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_109=5.0;
l9_105=calcSeamlessPanoramicUvsForSampling(l9_107,l9_108,l9_109);
}
float2 l9_110=l9_105;
float l9_111=13.0;
int l9_112;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_113=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_113=0;
}
else
{
l9_113=varStereoViewID;
}
int l9_114=l9_113;
l9_112=1-l9_114;
}
else
{
int l9_115=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_115=0;
}
else
{
l9_115=varStereoViewID;
}
int l9_116=l9_115;
l9_112=l9_116;
}
int l9_117=l9_112;
float2 l9_118=l9_110;
int l9_119=sc_EnvmapSpecularLayout_tmp;
int l9_120=l9_117;
float l9_121=l9_111;
float2 l9_122=l9_118;
int l9_123=l9_119;
int l9_124=l9_120;
float3 l9_125=float3(0.0);
if (l9_123==0)
{
l9_125=float3(l9_122,0.0);
}
else
{
if (l9_123==1)
{
l9_125=float3(l9_122.x,(l9_122.y*0.5)+(0.5-(float(l9_124)*0.5)),0.0);
}
else
{
l9_125=float3(l9_122,float(l9_124));
}
}
float3 l9_126=l9_125;
float3 l9_127=l9_126;
float4 l9_128=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_127.xy,bias(l9_121));
float4 l9_129=l9_128;
l9_106=l9_129;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_130=l9_105;
float2 l9_131=UserUniforms.sc_EnvmapDiffuseSize.xy;
float l9_132=0.0;
l9_105=calcSeamlessPanoramicUvsForSampling(l9_130,l9_131,l9_132);
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
float2 l9_133=l9_105;
float l9_134=0.0;
int l9_135;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=varStereoViewID;
}
int l9_137=l9_136;
l9_135=1-l9_137;
}
else
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=varStereoViewID;
}
int l9_139=l9_138;
l9_135=l9_139;
}
int l9_140=l9_135;
float2 l9_141=l9_133;
int l9_142=sc_EnvmapDiffuseLayout_tmp;
int l9_143=l9_140;
float l9_144=l9_134;
float2 l9_145=l9_141;
int l9_146=l9_142;
int l9_147=l9_143;
float3 l9_148=float3(0.0);
if (l9_146==0)
{
l9_148=float3(l9_145,0.0);
}
else
{
if (l9_146==1)
{
l9_148=float3(l9_145.x,(l9_145.y*0.5)+(0.5-(float(l9_147)*0.5)),0.0);
}
else
{
l9_148=float3(l9_145,float(l9_147));
}
}
float3 l9_149=l9_148;
float3 l9_150=l9_149;
float4 l9_151=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_150.xy,level(l9_144));
float4 l9_152=l9_151;
l9_106=l9_152;
}
else
{
float2 l9_153=l9_105;
float l9_154=-13.0;
int l9_155;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_156=0;
}
else
{
l9_156=varStereoViewID;
}
int l9_157=l9_156;
l9_155=1-l9_157;
}
else
{
int l9_158=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_158=0;
}
else
{
l9_158=varStereoViewID;
}
int l9_159=l9_158;
l9_155=l9_159;
}
int l9_160=l9_155;
float2 l9_161=l9_153;
int l9_162=sc_EnvmapDiffuseLayout_tmp;
int l9_163=l9_160;
float l9_164=l9_154;
float2 l9_165=l9_161;
int l9_166=l9_162;
int l9_167=l9_163;
float3 l9_168=float3(0.0);
if (l9_166==0)
{
l9_168=float3(l9_165,0.0);
}
else
{
if (l9_166==1)
{
l9_168=float3(l9_165.x,(l9_165.y*0.5)+(0.5-(float(l9_167)*0.5)),0.0);
}
else
{
l9_168=float3(l9_165,float(l9_167));
}
}
float3 l9_169=l9_168;
float3 l9_170=l9_169;
float4 l9_171=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_170.xy,bias(l9_164));
float4 l9_172=l9_171;
l9_106=l9_172;
}
}
else
{
float2 l9_173=l9_105;
float l9_174=13.0;
int l9_175;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_176=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_176=0;
}
else
{
l9_176=varStereoViewID;
}
int l9_177=l9_176;
l9_175=1-l9_177;
}
else
{
int l9_178=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_178=0;
}
else
{
l9_178=varStereoViewID;
}
int l9_179=l9_178;
l9_175=l9_179;
}
int l9_180=l9_175;
float2 l9_181=l9_173;
int l9_182=sc_EnvmapSpecularLayout_tmp;
int l9_183=l9_180;
float l9_184=l9_174;
float2 l9_185=l9_181;
int l9_186=l9_182;
int l9_187=l9_183;
float3 l9_188=float3(0.0);
if (l9_186==0)
{
l9_188=float3(l9_185,0.0);
}
else
{
if (l9_186==1)
{
l9_188=float3(l9_185.x,(l9_185.y*0.5)+(0.5-(float(l9_187)*0.5)),0.0);
}
else
{
l9_188=float3(l9_185,float(l9_187));
}
}
float3 l9_189=l9_188;
float3 l9_190=l9_189;
float4 l9_191=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_190.xy,bias(l9_184));
float4 l9_192=l9_191;
l9_106=l9_192;
}
}
float4 l9_193=l9_106;
float3 l9_194=l9_193.xyz*(1.0/l9_193.w);
float3 l9_195=l9_194*UserUniforms.sc_EnvmapExposure;
l9_95=l9_195;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_196=UserUniforms.sc_Sh[0];
float3 l9_197=UserUniforms.sc_Sh[1];
float3 l9_198=UserUniforms.sc_Sh[2];
float3 l9_199=UserUniforms.sc_Sh[3];
float3 l9_200=UserUniforms.sc_Sh[4];
float3 l9_201=UserUniforms.sc_Sh[5];
float3 l9_202=UserUniforms.sc_Sh[6];
float3 l9_203=UserUniforms.sc_Sh[7];
float3 l9_204=UserUniforms.sc_Sh[8];
float3 l9_205=-l9_94;
float l9_206=0.0;
l9_206=l9_205.x;
float l9_207=l9_205.y;
float l9_208=l9_205.z;
float l9_209=l9_206*l9_206;
float l9_210=l9_207*l9_207;
float l9_211=l9_208*l9_208;
float l9_212=l9_206*l9_207;
float l9_213=l9_207*l9_208;
float l9_214=l9_206*l9_208;
float3 l9_215=((((((l9_204*0.42904299)*(l9_209-l9_210))+((l9_202*0.74312502)*l9_211))+(l9_196*0.88622701))-(l9_202*0.24770799))+((((l9_200*l9_212)+(l9_203*l9_214))+(l9_201*l9_213))*0.85808599))+((((l9_199*l9_206)+(l9_197*l9_207))+(l9_198*l9_208))*1.0233279);
l9_95=l9_215*UserUniforms.sc_ShIntensity;
}
}
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_216=gl_FragCoord;
float2 l9_217=l9_216.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_218=l9_217;
float2 l9_219=l9_218;
float l9_220=0.0;
int l9_221;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_222=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_222=0;
}
else
{
l9_222=varStereoViewID;
}
int l9_223=l9_222;
l9_221=1-l9_223;
}
else
{
int l9_224=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_224=0;
}
else
{
l9_224=varStereoViewID;
}
int l9_225=l9_224;
l9_221=l9_225;
}
int l9_226=l9_221;
float2 l9_227=l9_219;
int l9_228=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_229=l9_226;
float l9_230=l9_220;
float2 l9_231=l9_227;
int l9_232=l9_228;
int l9_233=l9_229;
float3 l9_234=float3(0.0);
if (l9_232==0)
{
l9_234=float3(l9_231,0.0);
}
else
{
if (l9_232==1)
{
l9_234=float3(l9_231.x,(l9_231.y*0.5)+(0.5-(float(l9_233)*0.5)),0.0);
}
else
{
l9_234=float3(l9_231,float(l9_233));
}
}
float3 l9_235=l9_234;
float3 l9_236=l9_235;
float4 l9_237=sc_RayTracingGlobalIllumination.sample(sc_RayTracingGlobalIlluminationSmpSC,l9_236.xy,bias(l9_230));
float4 l9_238=l9_237;
float4 l9_239=l9_238;
float4 l9_240=l9_239;
l9_95=mix(l9_95,l9_240.xyz,float3(l9_240.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[0].color*UserUniforms.sc_AmbientLights[0].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[1].color*UserUniforms.sc_AmbientLights[1].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[2].color*UserUniforms.sc_AmbientLights[2].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_241=l9_94;
float3 l9_242=UserUniforms.sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_243;
float l9_244;
int l9_245=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_245<sc_LightEstimationSGCount_tmp)
{
l9_243.color=UserUniforms.sc_LightEstimationData.sg[l9_245].color;
l9_243.sharpness=UserUniforms.sc_LightEstimationData.sg[l9_245].sharpness;
l9_243.axis=UserUniforms.sc_LightEstimationData.sg[l9_245].axis;
float3 l9_246=l9_241;
float l9_247=dot(l9_243.axis,l9_246);
float l9_248=l9_243.sharpness;
float l9_249=0.36000001;
float l9_250=1.0/(4.0*l9_249);
float l9_251=exp(-l9_248);
float l9_252=l9_251*l9_251;
float l9_253=1.0/l9_248;
float l9_254=(1.0+(2.0*l9_252))-l9_253;
float l9_255=((l9_251-l9_252)*l9_253)-l9_252;
float l9_256=sqrt(1.0-l9_254);
float l9_257=l9_249*l9_247;
float l9_258=l9_250*l9_256;
float l9_259=l9_257+l9_258;
float l9_260=l9_247;
float l9_261=fast::clamp(l9_260,0.0,1.0);
float l9_262=l9_261;
if (step(abs(l9_257),l9_258)>0.5)
{
l9_244=(l9_259*l9_259)/l9_256;
}
else
{
l9_244=l9_262;
}
l9_262=l9_244;
float l9_263=(l9_254*l9_262)+l9_255;
sc_SphericalGaussianLight_t l9_264=l9_243;
float3 l9_265=(l9_264.color/float3(l9_264.sharpness))*6.2831855;
float3 l9_266=(l9_265*l9_263)/float3(3.1415927);
l9_242+=l9_266;
l9_245++;
continue;
}
else
{
break;
}
}
float3 l9_267=l9_242;
l9_95+=l9_267;
}
float3 l9_268=l9_95;
float3 l9_269=l9_268;
l9_12.indirectDiffuse=l9_269;
LightingComponents l9_270=l9_12;
LightingComponents lighting=l9_270;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
lighting.directDiffuse=float3(0.0);
lighting.indirectDiffuse=float3(0.0);
float4 l9_271=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_272=sc_FragData0;
l9_271=l9_272;
}
else
{
float4 l9_273=gl_FragCoord;
float2 l9_274=l9_273.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_275=l9_274;
float2 l9_276=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_277=1;
int l9_278=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_278=0;
}
else
{
l9_278=varStereoViewID;
}
int l9_279=l9_278;
int l9_280=l9_279;
float3 l9_281=float3(l9_275,0.0);
int l9_282=l9_277;
int l9_283=l9_280;
if (l9_282==1)
{
l9_281.y=((2.0*l9_281.y)+float(l9_283))-1.0;
}
float2 l9_284=l9_281.xy;
l9_276=l9_284;
}
else
{
l9_276=l9_275;
}
float2 l9_285=l9_276;
float2 l9_286=l9_285;
float2 l9_287=l9_286;
float2 l9_288=l9_287;
float l9_289=0.0;
int l9_290;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_291=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_291=0;
}
else
{
l9_291=varStereoViewID;
}
int l9_292=l9_291;
l9_290=1-l9_292;
}
else
{
int l9_293=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_293=0;
}
else
{
l9_293=varStereoViewID;
}
int l9_294=l9_293;
l9_290=l9_294;
}
int l9_295=l9_290;
float2 l9_296=l9_288;
int l9_297=sc_ScreenTextureLayout_tmp;
int l9_298=l9_295;
float l9_299=l9_289;
float2 l9_300=l9_296;
int l9_301=l9_297;
int l9_302=l9_298;
float3 l9_303=float3(0.0);
if (l9_301==0)
{
l9_303=float3(l9_300,0.0);
}
else
{
if (l9_301==1)
{
l9_303=float3(l9_300.x,(l9_300.y*0.5)+(0.5-(float(l9_302)*0.5)),0.0);
}
else
{
l9_303=float3(l9_300,float(l9_302));
}
}
float3 l9_304=l9_303;
float3 l9_305=l9_304;
float4 l9_306=sc_ScreenTexture.sample(sc_ScreenTextureSmpSC,l9_305.xy,bias(l9_299));
float4 l9_307=l9_306;
float4 l9_308=l9_307;
l9_271=l9_308;
}
float4 l9_309=l9_271;
float3 param_5=l9_309.xyz;
float3 l9_310;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_310=float3(pow(param_5.x,2.2),pow(param_5.y,2.2),pow(param_5.z,2.2));
}
else
{
l9_310=param_5*param_5;
}
float3 l9_311=l9_310;
float3 framebuffer=l9_311;
lighting.transmitted=framebuffer*mix(float3(1.0),surfaceProperties.albedo,float3(surfaceProperties.opacity));
surfaceProperties.opacity=1.0;
}
bool enablePremultipliedAlpha=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
enablePremultipliedAlpha=true;
}
SurfaceProperties param_6=surfaceProperties;
LightingComponents param_7=lighting;
bool param_8=enablePremultipliedAlpha;
float3 l9_312=param_6.albedo*(param_7.directDiffuse+(param_7.indirectDiffuse*param_6.ao));
float3 l9_313=param_7.directSpecular+(param_7.indirectSpecular*param_6.specularAo);
float3 l9_314=param_6.emissive;
float3 l9_315=param_7.transmitted;
if (param_8)
{
float l9_316=param_6.opacity;
l9_312*=srgbToLinear(l9_316);
}
float3 l9_317=((l9_312+l9_313)+l9_314)+l9_315;
float3 l9_318=l9_317;
float4 Output=float4(l9_318,surfaceProperties.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
Output.x+=((surfaceProperties.ao.x*surfaceProperties.specularAo.x)*9.9999997e-06);
}
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
return Output;
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 param_9=Output.xyz;
float l9_319=1.8;
float l9_320=1.4;
float l9_321=0.5;
float l9_322=1.5;
float3 l9_323=(param_9*((param_9*l9_319)+float3(l9_320)))/((param_9*((param_9*l9_319)+float3(l9_321)))+float3(l9_322));
Output=float4(l9_323.x,l9_323.y,l9_323.z,Output.w);
}
float3 param_10=Output.xyz;
float l9_324=param_10.x;
float l9_325=param_10.y;
float l9_326=param_10.z;
float3 l9_327=float3(linearToSrgb(l9_324),linearToSrgb(l9_325),linearToSrgb(l9_326));
Output=float4(l9_327.x,l9_327.y,l9_327.z,Output.w);
return Output;
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=intensityTexture.sample(intensityTextureSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
float3 l9_314=l9_313.xyz;
float3 l9_315=l9_314;
float l9_316=16.0;
float l9_317=((((l9_315.x*256.0)+l9_315.y)+(l9_315.z/256.0))/257.00391)*l9_316;
float l9_318=l9_317;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_318=fast::max(l9_318,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_318=fast::min(l9_318,1.0);
}
float l9_319=l9_225;
float3 l9_320=param_8;
float3 l9_321=param_9;
float l9_322=l9_226;
float l9_323=l9_318;
float3 l9_324=transformColor(l9_319,l9_320,l9_321,l9_322,l9_323);
return l9_324;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 sc_OutputMotionVectorIfNeeded(thread const float4& finalColor,thread float4& varPosAndMotion,thread float4& varNormalAndMotion)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float2 param=float2(varPosAndMotion.w,varNormalAndMotion.w);
float l9_0=(param.x*5.0)+0.5;
float l9_1=floor(l9_0*65535.0);
float l9_2=floor(l9_1*0.00390625);
float2 l9_3=float2(l9_2/255.0,(l9_1-(l9_2*256.0))/255.0);
float l9_4=(param.y*5.0)+0.5;
float l9_5=floor(l9_4*65535.0);
float l9_6=floor(l9_5*0.00390625);
float2 l9_7=float2(l9_6/255.0,(l9_5-(l9_6*256.0))/255.0);
float4 l9_8=float4(l9_3,l9_7);
return l9_8;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 l9_0=gl_FragCoord;
int2 param=int2(l9_0.xy);
sc_RayTracingHitPayload rhp=sc_RayTracingEvaluateHitPayload(param,(*sc_set0.UserUniforms),(*sc_set0.sc_RayTracingCasterVertexBuffer),(*sc_set0.sc_RayTracingCasterNonAnimatedVertexBuffer),(*sc_set0.sc_RayTracingCasterIndexBuffer),sc_set0.sc_RayTracingHitCasterIdAndBarycentric,sc_set0.sc_RayTracingHitCasterIdAndBarycentricSmpSC,sc_set0.sc_RayTracingRayDirection,sc_set0.sc_RayTracingRayDirectionSmpSC);
if (rhp.id.x!=((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.y&65535u))
{
return out;
}
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=rhp.viewDirWS;
Globals.PositionWS=rhp.positionWS;
Globals.VertexColor=rhp.color;
Globals.Surface_UVCoord0=rhp.uv0;
Globals.Surface_UVCoord1=rhp.uv1;
int l9_1=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1=0;
}
else
{
l9_1=in.varStereoViewID;
}
int l9_2=l9_1;
float4 emitterPositionCS=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_2]*float4(rhp.positionWS,1.0);
Globals.gScreenCoord=((emitterPositionCS.xy/float2(emitterPositionCS.w))*0.5)+float2(0.5);
Globals.VertexTangent_WorldSpace=rhp.tangentWS.xyz;
Globals.VertexNormal_WorldSpace=rhp.normalWS;
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*rhp.tangentWS.w;
Globals.SurfacePosition_WorldSpace=rhp.positionWS;
}
else
{
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexColor=in.varColor;
Globals.Surface_UVCoord0=in.varTex01.xy;
Globals.Surface_UVCoord1=in.varTex01.zw;
float4 l9_3=gl_FragCoord;
float2 l9_4=l9_3.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_5=l9_4;
float2 l9_6=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_7=1;
int l9_8=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8=0;
}
else
{
l9_8=in.varStereoViewID;
}
int l9_9=l9_8;
int l9_10=l9_9;
float3 l9_11=float3(l9_5,0.0);
int l9_12=l9_7;
int l9_13=l9_10;
if (l9_12==1)
{
l9_11.y=((2.0*l9_11.y)+float(l9_13))-1.0;
}
float2 l9_14=l9_11.xy;
l9_6=l9_14;
}
else
{
l9_6=l9_5;
}
float2 l9_15=l9_6;
float2 l9_16=l9_15;
Globals.gScreenCoord=l9_16;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
}
float4 Result_N363=float4(0.0);
float4 param_1=float4(0.0);
float4 param_2=float4(0.0);
ssGlobals param_4=Globals;
float4 param_3;
if (NODE_38_DROPLIST_ITEM_tmp==1)
{
float4 l9_17=float4(0.0);
l9_17=param_4.VertexColor;
float3 l9_18=float3(0.0);
float3 l9_19=float3(0.0);
float3 l9_20=float3(0.0);
ssGlobals l9_21=param_4;
float3 l9_22;
if ((int(Tweak_N37_tmp)!=0))
{
float3 l9_23=float3(0.0);
float3 l9_24=(*sc_set0.UserUniforms).recolorRed;
l9_23=l9_24;
float3 l9_25=float3(0.0);
l9_25=l9_23;
float4 l9_26=float4(0.0);
float4 l9_27=(*sc_set0.UserUniforms).baseColor;
l9_26=l9_27;
float4 l9_28=float4(0.0);
l9_28=l9_26;
float4 l9_29=float4(0.0);
float4 l9_30=float4(0.0);
float4 l9_31=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_32=l9_21;
float4 l9_33;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_34=float2(0.0);
float2 l9_35=float2(0.0);
float2 l9_36=float2(0.0);
float2 l9_37=float2(0.0);
float2 l9_38=float2(0.0);
float2 l9_39=float2(0.0);
ssGlobals l9_40=l9_32;
float2 l9_41;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_42=float2(0.0);
l9_42=l9_40.Surface_UVCoord0;
l9_35=l9_42;
l9_41=l9_35;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_43=float2(0.0);
l9_43=l9_40.Surface_UVCoord1;
l9_36=l9_43;
l9_41=l9_36;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_44=float2(0.0);
l9_44=l9_40.Surface_UVCoord0;
float2 l9_45=float2(0.0);
float2 l9_46=float2(0.0);
float2 l9_47=float2(0.0);
ssGlobals l9_48=l9_40;
float2 l9_49;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_50=float2(0.0);
float2 l9_51=float2(0.0);
float2 l9_52=float2(0.0);
float2 l9_53=float2(0.0);
float2 l9_54=float2(0.0);
ssGlobals l9_55=l9_48;
float2 l9_56;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_57=float2(0.0);
l9_57=l9_55.Surface_UVCoord0;
l9_51=l9_57;
l9_56=l9_51;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_58=float2(0.0);
l9_58=l9_55.Surface_UVCoord1;
l9_52=l9_58;
l9_56=l9_52;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_59=float2(0.0);
l9_59=l9_55.gScreenCoord;
l9_53=l9_59;
l9_56=l9_53;
}
else
{
float2 l9_60=float2(0.0);
l9_60=l9_55.Surface_UVCoord0;
l9_54=l9_60;
l9_56=l9_54;
}
}
}
l9_50=l9_56;
float2 l9_61=float2(0.0);
float2 l9_62=(*sc_set0.UserUniforms).uv2Scale;
l9_61=l9_62;
float2 l9_63=float2(0.0);
l9_63=l9_61;
float2 l9_64=float2(0.0);
float2 l9_65=(*sc_set0.UserUniforms).uv2Offset;
l9_64=l9_65;
float2 l9_66=float2(0.0);
l9_66=l9_64;
float2 l9_67=float2(0.0);
l9_67=(l9_50*l9_63)+l9_66;
float2 l9_68=float2(0.0);
l9_68=l9_67+(l9_66*(l9_48.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_46=l9_68;
l9_49=l9_46;
}
else
{
float2 l9_69=float2(0.0);
float2 l9_70=float2(0.0);
float2 l9_71=float2(0.0);
float2 l9_72=float2(0.0);
float2 l9_73=float2(0.0);
ssGlobals l9_74=l9_48;
float2 l9_75;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_76=float2(0.0);
l9_76=l9_74.Surface_UVCoord0;
l9_70=l9_76;
l9_75=l9_70;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_77=float2(0.0);
l9_77=l9_74.Surface_UVCoord1;
l9_71=l9_77;
l9_75=l9_71;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_78=float2(0.0);
l9_78=l9_74.gScreenCoord;
l9_72=l9_78;
l9_75=l9_72;
}
else
{
float2 l9_79=float2(0.0);
l9_79=l9_74.Surface_UVCoord0;
l9_73=l9_79;
l9_75=l9_73;
}
}
}
l9_69=l9_75;
float2 l9_80=float2(0.0);
float2 l9_81=(*sc_set0.UserUniforms).uv2Scale;
l9_80=l9_81;
float2 l9_82=float2(0.0);
l9_82=l9_80;
float2 l9_83=float2(0.0);
float2 l9_84=(*sc_set0.UserUniforms).uv2Offset;
l9_83=l9_84;
float2 l9_85=float2(0.0);
l9_85=l9_83;
float2 l9_86=float2(0.0);
l9_86=(l9_69*l9_82)+l9_85;
l9_47=l9_86;
l9_49=l9_47;
}
l9_45=l9_49;
float l9_87=0.0;
float l9_88;
if ((int(Tweak_N67_tmp)!=0))
{
l9_88=1.001;
}
else
{
l9_88=0.001;
}
l9_88-=0.001;
l9_87=l9_88;
float l9_89=0.0;
l9_89=l9_87;
float2 l9_90=float2(0.0);
l9_90=mix(l9_44,l9_45,float2(l9_89));
float2 l9_91=float2(0.0);
l9_91=l9_90;
float2 l9_92=float2(0.0);
l9_92=l9_91;
l9_37=l9_92;
l9_41=l9_37;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_93=float2(0.0);
l9_93=l9_40.Surface_UVCoord0;
float2 l9_94=float2(0.0);
float2 l9_95=float2(0.0);
float2 l9_96=float2(0.0);
ssGlobals l9_97=l9_40;
float2 l9_98;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_99=float2(0.0);
float2 l9_100=float2(0.0);
float2 l9_101=float2(0.0);
float2 l9_102=float2(0.0);
float2 l9_103=float2(0.0);
float2 l9_104=float2(0.0);
ssGlobals l9_105=l9_97;
float2 l9_106;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_107=float2(0.0);
l9_107=l9_105.Surface_UVCoord0;
l9_100=l9_107;
l9_106=l9_100;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_108=float2(0.0);
l9_108=l9_105.Surface_UVCoord1;
l9_101=l9_108;
l9_106=l9_101;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_109=float2(0.0);
l9_109=l9_105.gScreenCoord;
l9_102=l9_109;
l9_106=l9_102;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_110=float2(0.0);
l9_110=l9_105.Surface_UVCoord0;
float2 l9_111=float2(0.0);
float2 l9_112=float2(0.0);
float2 l9_113=float2(0.0);
ssGlobals l9_114=l9_105;
float2 l9_115;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_116=float2(0.0);
float2 l9_117=float2(0.0);
float2 l9_118=float2(0.0);
float2 l9_119=float2(0.0);
float2 l9_120=float2(0.0);
ssGlobals l9_121=l9_114;
float2 l9_122;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_123=float2(0.0);
l9_123=l9_121.Surface_UVCoord0;
l9_117=l9_123;
l9_122=l9_117;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_124=float2(0.0);
l9_124=l9_121.Surface_UVCoord1;
l9_118=l9_124;
l9_122=l9_118;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_125=float2(0.0);
l9_125=l9_121.gScreenCoord;
l9_119=l9_125;
l9_122=l9_119;
}
else
{
float2 l9_126=float2(0.0);
l9_126=l9_121.Surface_UVCoord0;
l9_120=l9_126;
l9_122=l9_120;
}
}
}
l9_116=l9_122;
float2 l9_127=float2(0.0);
float2 l9_128=(*sc_set0.UserUniforms).uv2Scale;
l9_127=l9_128;
float2 l9_129=float2(0.0);
l9_129=l9_127;
float2 l9_130=float2(0.0);
float2 l9_131=(*sc_set0.UserUniforms).uv2Offset;
l9_130=l9_131;
float2 l9_132=float2(0.0);
l9_132=l9_130;
float2 l9_133=float2(0.0);
l9_133=(l9_116*l9_129)+l9_132;
float2 l9_134=float2(0.0);
l9_134=l9_133+(l9_132*(l9_114.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_112=l9_134;
l9_115=l9_112;
}
else
{
float2 l9_135=float2(0.0);
float2 l9_136=float2(0.0);
float2 l9_137=float2(0.0);
float2 l9_138=float2(0.0);
float2 l9_139=float2(0.0);
ssGlobals l9_140=l9_114;
float2 l9_141;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_142=float2(0.0);
l9_142=l9_140.Surface_UVCoord0;
l9_136=l9_142;
l9_141=l9_136;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_143=float2(0.0);
l9_143=l9_140.Surface_UVCoord1;
l9_137=l9_143;
l9_141=l9_137;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_144=float2(0.0);
l9_144=l9_140.gScreenCoord;
l9_138=l9_144;
l9_141=l9_138;
}
else
{
float2 l9_145=float2(0.0);
l9_145=l9_140.Surface_UVCoord0;
l9_139=l9_145;
l9_141=l9_139;
}
}
}
l9_135=l9_141;
float2 l9_146=float2(0.0);
float2 l9_147=(*sc_set0.UserUniforms).uv2Scale;
l9_146=l9_147;
float2 l9_148=float2(0.0);
l9_148=l9_146;
float2 l9_149=float2(0.0);
float2 l9_150=(*sc_set0.UserUniforms).uv2Offset;
l9_149=l9_150;
float2 l9_151=float2(0.0);
l9_151=l9_149;
float2 l9_152=float2(0.0);
l9_152=(l9_135*l9_148)+l9_151;
l9_113=l9_152;
l9_115=l9_113;
}
l9_111=l9_115;
float l9_153=0.0;
float l9_154;
if ((int(Tweak_N67_tmp)!=0))
{
l9_154=1.001;
}
else
{
l9_154=0.001;
}
l9_154-=0.001;
l9_153=l9_154;
float l9_155=0.0;
l9_155=l9_153;
float2 l9_156=float2(0.0);
l9_156=mix(l9_110,l9_111,float2(l9_155));
float2 l9_157=float2(0.0);
l9_157=l9_156;
float2 l9_158=float2(0.0);
l9_158=l9_157;
l9_103=l9_158;
l9_106=l9_103;
}
else
{
float2 l9_159=float2(0.0);
l9_159=l9_105.Surface_UVCoord0;
l9_104=l9_159;
l9_106=l9_104;
}
}
}
}
l9_99=l9_106;
float2 l9_160=float2(0.0);
float2 l9_161=(*sc_set0.UserUniforms).uv3Scale;
l9_160=l9_161;
float2 l9_162=float2(0.0);
l9_162=l9_160;
float2 l9_163=float2(0.0);
float2 l9_164=(*sc_set0.UserUniforms).uv3Offset;
l9_163=l9_164;
float2 l9_165=float2(0.0);
l9_165=l9_163;
float2 l9_166=float2(0.0);
l9_166=(l9_99*l9_162)+l9_165;
float2 l9_167=float2(0.0);
l9_167=l9_166+(l9_165*(l9_97.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_95=l9_167;
l9_98=l9_95;
}
else
{
float2 l9_168=float2(0.0);
float2 l9_169=float2(0.0);
float2 l9_170=float2(0.0);
float2 l9_171=float2(0.0);
float2 l9_172=float2(0.0);
float2 l9_173=float2(0.0);
ssGlobals l9_174=l9_97;
float2 l9_175;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_176=float2(0.0);
l9_176=l9_174.Surface_UVCoord0;
l9_169=l9_176;
l9_175=l9_169;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_177=float2(0.0);
l9_177=l9_174.Surface_UVCoord1;
l9_170=l9_177;
l9_175=l9_170;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_178=float2(0.0);
l9_178=l9_174.gScreenCoord;
l9_171=l9_178;
l9_175=l9_171;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_179=float2(0.0);
l9_179=l9_174.Surface_UVCoord0;
float2 l9_180=float2(0.0);
float2 l9_181=float2(0.0);
float2 l9_182=float2(0.0);
ssGlobals l9_183=l9_174;
float2 l9_184;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_185=float2(0.0);
float2 l9_186=float2(0.0);
float2 l9_187=float2(0.0);
float2 l9_188=float2(0.0);
float2 l9_189=float2(0.0);
ssGlobals l9_190=l9_183;
float2 l9_191;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_192=float2(0.0);
l9_192=l9_190.Surface_UVCoord0;
l9_186=l9_192;
l9_191=l9_186;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_193=float2(0.0);
l9_193=l9_190.Surface_UVCoord1;
l9_187=l9_193;
l9_191=l9_187;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_194=float2(0.0);
l9_194=l9_190.gScreenCoord;
l9_188=l9_194;
l9_191=l9_188;
}
else
{
float2 l9_195=float2(0.0);
l9_195=l9_190.Surface_UVCoord0;
l9_189=l9_195;
l9_191=l9_189;
}
}
}
l9_185=l9_191;
float2 l9_196=float2(0.0);
float2 l9_197=(*sc_set0.UserUniforms).uv2Scale;
l9_196=l9_197;
float2 l9_198=float2(0.0);
l9_198=l9_196;
float2 l9_199=float2(0.0);
float2 l9_200=(*sc_set0.UserUniforms).uv2Offset;
l9_199=l9_200;
float2 l9_201=float2(0.0);
l9_201=l9_199;
float2 l9_202=float2(0.0);
l9_202=(l9_185*l9_198)+l9_201;
float2 l9_203=float2(0.0);
l9_203=l9_202+(l9_201*(l9_183.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_181=l9_203;
l9_184=l9_181;
}
else
{
float2 l9_204=float2(0.0);
float2 l9_205=float2(0.0);
float2 l9_206=float2(0.0);
float2 l9_207=float2(0.0);
float2 l9_208=float2(0.0);
ssGlobals l9_209=l9_183;
float2 l9_210;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_211=float2(0.0);
l9_211=l9_209.Surface_UVCoord0;
l9_205=l9_211;
l9_210=l9_205;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_212=float2(0.0);
l9_212=l9_209.Surface_UVCoord1;
l9_206=l9_212;
l9_210=l9_206;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_213=float2(0.0);
l9_213=l9_209.gScreenCoord;
l9_207=l9_213;
l9_210=l9_207;
}
else
{
float2 l9_214=float2(0.0);
l9_214=l9_209.Surface_UVCoord0;
l9_208=l9_214;
l9_210=l9_208;
}
}
}
l9_204=l9_210;
float2 l9_215=float2(0.0);
float2 l9_216=(*sc_set0.UserUniforms).uv2Scale;
l9_215=l9_216;
float2 l9_217=float2(0.0);
l9_217=l9_215;
float2 l9_218=float2(0.0);
float2 l9_219=(*sc_set0.UserUniforms).uv2Offset;
l9_218=l9_219;
float2 l9_220=float2(0.0);
l9_220=l9_218;
float2 l9_221=float2(0.0);
l9_221=(l9_204*l9_217)+l9_220;
l9_182=l9_221;
l9_184=l9_182;
}
l9_180=l9_184;
float l9_222=0.0;
float l9_223;
if ((int(Tweak_N67_tmp)!=0))
{
l9_223=1.001;
}
else
{
l9_223=0.001;
}
l9_223-=0.001;
l9_222=l9_223;
float l9_224=0.0;
l9_224=l9_222;
float2 l9_225=float2(0.0);
l9_225=mix(l9_179,l9_180,float2(l9_224));
float2 l9_226=float2(0.0);
l9_226=l9_225;
float2 l9_227=float2(0.0);
l9_227=l9_226;
l9_172=l9_227;
l9_175=l9_172;
}
else
{
float2 l9_228=float2(0.0);
l9_228=l9_174.Surface_UVCoord0;
l9_173=l9_228;
l9_175=l9_173;
}
}
}
}
l9_168=l9_175;
float2 l9_229=float2(0.0);
float2 l9_230=(*sc_set0.UserUniforms).uv3Scale;
l9_229=l9_230;
float2 l9_231=float2(0.0);
l9_231=l9_229;
float2 l9_232=float2(0.0);
float2 l9_233=(*sc_set0.UserUniforms).uv3Offset;
l9_232=l9_233;
float2 l9_234=float2(0.0);
l9_234=l9_232;
float2 l9_235=float2(0.0);
l9_235=(l9_168*l9_231)+l9_234;
l9_96=l9_235;
l9_98=l9_96;
}
l9_94=l9_98;
float l9_236=0.0;
float l9_237;
if ((int(Tweak_N11_tmp)!=0))
{
l9_237=1.001;
}
else
{
l9_237=0.001;
}
l9_237-=0.001;
l9_236=l9_237;
float l9_238=0.0;
l9_238=l9_236;
float2 l9_239=float2(0.0);
l9_239=mix(l9_93,l9_94,float2(l9_238));
float2 l9_240=float2(0.0);
l9_240=l9_239;
float2 l9_241=float2(0.0);
l9_241=l9_240;
l9_38=l9_241;
l9_41=l9_38;
}
else
{
float2 l9_242=float2(0.0);
l9_242=l9_40.Surface_UVCoord0;
l9_39=l9_242;
l9_41=l9_39;
}
}
}
}
l9_34=l9_41;
float4 l9_243=float4(0.0);
int l9_244;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_245=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_245=0;
}
else
{
l9_245=in.varStereoViewID;
}
int l9_246=l9_245;
l9_244=1-l9_246;
}
else
{
int l9_247=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_247=0;
}
else
{
l9_247=in.varStereoViewID;
}
int l9_248=l9_247;
l9_244=l9_248;
}
int l9_249=l9_244;
int l9_250=baseTexLayout_tmp;
int l9_251=l9_249;
float2 l9_252=l9_34;
bool l9_253=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_254=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_255=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_256=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_257=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_258=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_259=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_260=0.0;
bool l9_261=l9_258&&(!l9_256);
float l9_262=1.0;
float l9_263=l9_252.x;
int l9_264=l9_255.x;
if (l9_264==1)
{
l9_263=fract(l9_263);
}
else
{
if (l9_264==2)
{
float l9_265=fract(l9_263);
float l9_266=l9_263-l9_265;
float l9_267=step(0.25,fract(l9_266*0.5));
l9_263=mix(l9_265,1.0-l9_265,fast::clamp(l9_267,0.0,1.0));
}
}
l9_252.x=l9_263;
float l9_268=l9_252.y;
int l9_269=l9_255.y;
if (l9_269==1)
{
l9_268=fract(l9_268);
}
else
{
if (l9_269==2)
{
float l9_270=fract(l9_268);
float l9_271=l9_268-l9_270;
float l9_272=step(0.25,fract(l9_271*0.5));
l9_268=mix(l9_270,1.0-l9_270,fast::clamp(l9_272,0.0,1.0));
}
}
l9_252.y=l9_268;
if (l9_256)
{
bool l9_273=l9_258;
bool l9_274;
if (l9_273)
{
l9_274=l9_255.x==3;
}
else
{
l9_274=l9_273;
}
float l9_275=l9_252.x;
float l9_276=l9_257.x;
float l9_277=l9_257.z;
bool l9_278=l9_274;
float l9_279=l9_262;
float l9_280=fast::clamp(l9_275,l9_276,l9_277);
float l9_281=step(abs(l9_275-l9_280),9.9999997e-06);
l9_279*=(l9_281+((1.0-float(l9_278))*(1.0-l9_281)));
l9_275=l9_280;
l9_252.x=l9_275;
l9_262=l9_279;
bool l9_282=l9_258;
bool l9_283;
if (l9_282)
{
l9_283=l9_255.y==3;
}
else
{
l9_283=l9_282;
}
float l9_284=l9_252.y;
float l9_285=l9_257.y;
float l9_286=l9_257.w;
bool l9_287=l9_283;
float l9_288=l9_262;
float l9_289=fast::clamp(l9_284,l9_285,l9_286);
float l9_290=step(abs(l9_284-l9_289),9.9999997e-06);
l9_288*=(l9_290+((1.0-float(l9_287))*(1.0-l9_290)));
l9_284=l9_289;
l9_252.y=l9_284;
l9_262=l9_288;
}
float2 l9_291=l9_252;
bool l9_292=l9_253;
float3x3 l9_293=l9_254;
if (l9_292)
{
l9_291=float2((l9_293*float3(l9_291,1.0)).xy);
}
float2 l9_294=l9_291;
l9_252=l9_294;
float l9_295=l9_252.x;
int l9_296=l9_255.x;
bool l9_297=l9_261;
float l9_298=l9_262;
if ((l9_296==0)||(l9_296==3))
{
float l9_299=l9_295;
float l9_300=0.0;
float l9_301=1.0;
bool l9_302=l9_297;
float l9_303=l9_298;
float l9_304=fast::clamp(l9_299,l9_300,l9_301);
float l9_305=step(abs(l9_299-l9_304),9.9999997e-06);
l9_303*=(l9_305+((1.0-float(l9_302))*(1.0-l9_305)));
l9_299=l9_304;
l9_295=l9_299;
l9_298=l9_303;
}
l9_252.x=l9_295;
l9_262=l9_298;
float l9_306=l9_252.y;
int l9_307=l9_255.y;
bool l9_308=l9_261;
float l9_309=l9_262;
if ((l9_307==0)||(l9_307==3))
{
float l9_310=l9_306;
float l9_311=0.0;
float l9_312=1.0;
bool l9_313=l9_308;
float l9_314=l9_309;
float l9_315=fast::clamp(l9_310,l9_311,l9_312);
float l9_316=step(abs(l9_310-l9_315),9.9999997e-06);
l9_314*=(l9_316+((1.0-float(l9_313))*(1.0-l9_316)));
l9_310=l9_315;
l9_306=l9_310;
l9_309=l9_314;
}
l9_252.y=l9_306;
l9_262=l9_309;
float2 l9_317=l9_252;
int l9_318=l9_250;
int l9_319=l9_251;
float l9_320=l9_260;
float2 l9_321=l9_317;
int l9_322=l9_318;
int l9_323=l9_319;
float3 l9_324=float3(0.0);
if (l9_322==0)
{
l9_324=float3(l9_321,0.0);
}
else
{
if (l9_322==1)
{
l9_324=float3(l9_321.x,(l9_321.y*0.5)+(0.5-(float(l9_323)*0.5)),0.0);
}
else
{
l9_324=float3(l9_321,float(l9_323));
}
}
float3 l9_325=l9_324;
float3 l9_326=l9_325;
float4 l9_327=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_326.xy,bias(l9_320));
float4 l9_328=l9_327;
if (l9_258)
{
l9_328=mix(l9_259,l9_328,float4(l9_262));
}
float4 l9_329=l9_328;
l9_243=l9_329;
l9_30=l9_243;
l9_33=l9_30;
}
else
{
l9_33=l9_31;
}
l9_29=l9_33;
float4 l9_330=float4(0.0);
l9_330=l9_28*l9_29;
float4 l9_331=float4(0.0);
l9_331=l9_330;
float4 l9_332=float4(0.0);
l9_332=l9_331;
float l9_333=0.0;
float l9_334=0.0;
float l9_335=0.0;
float3 l9_336=l9_332.xyz;
float l9_337=l9_336.x;
float l9_338=l9_336.y;
float l9_339=l9_336.z;
l9_333=l9_337;
l9_334=l9_338;
l9_335=l9_339;
float3 l9_340=float3(0.0);
l9_340=l9_25*float3(l9_333);
float3 l9_341=float3(0.0);
float3 l9_342=(*sc_set0.UserUniforms).recolorGreen;
l9_341=l9_342;
float3 l9_343=float3(0.0);
l9_343=l9_341;
float3 l9_344=float3(0.0);
l9_344=l9_343*float3(l9_334);
float3 l9_345=float3(0.0);
float3 l9_346=(*sc_set0.UserUniforms).recolorBlue;
l9_345=l9_346;
float3 l9_347=float3(0.0);
l9_347=l9_345;
float3 l9_348=float3(0.0);
l9_348=l9_347*float3(l9_335);
float3 l9_349=float3(0.0);
l9_349=(l9_340+l9_344)+l9_348;
l9_19=l9_349;
l9_22=l9_19;
}
else
{
float4 l9_350=float4(0.0);
float4 l9_351=(*sc_set0.UserUniforms).baseColor;
l9_350=l9_351;
float4 l9_352=float4(0.0);
l9_352=l9_350;
float4 l9_353=float4(0.0);
float4 l9_354=float4(0.0);
float4 l9_355=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_356=l9_21;
float4 l9_357;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_358=float2(0.0);
float2 l9_359=float2(0.0);
float2 l9_360=float2(0.0);
float2 l9_361=float2(0.0);
float2 l9_362=float2(0.0);
float2 l9_363=float2(0.0);
ssGlobals l9_364=l9_356;
float2 l9_365;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_366=float2(0.0);
l9_366=l9_364.Surface_UVCoord0;
l9_359=l9_366;
l9_365=l9_359;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_367=float2(0.0);
l9_367=l9_364.Surface_UVCoord1;
l9_360=l9_367;
l9_365=l9_360;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_368=float2(0.0);
l9_368=l9_364.Surface_UVCoord0;
float2 l9_369=float2(0.0);
float2 l9_370=float2(0.0);
float2 l9_371=float2(0.0);
ssGlobals l9_372=l9_364;
float2 l9_373;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_374=float2(0.0);
float2 l9_375=float2(0.0);
float2 l9_376=float2(0.0);
float2 l9_377=float2(0.0);
float2 l9_378=float2(0.0);
ssGlobals l9_379=l9_372;
float2 l9_380;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_381=float2(0.0);
l9_381=l9_379.Surface_UVCoord0;
l9_375=l9_381;
l9_380=l9_375;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_382=float2(0.0);
l9_382=l9_379.Surface_UVCoord1;
l9_376=l9_382;
l9_380=l9_376;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_383=float2(0.0);
l9_383=l9_379.gScreenCoord;
l9_377=l9_383;
l9_380=l9_377;
}
else
{
float2 l9_384=float2(0.0);
l9_384=l9_379.Surface_UVCoord0;
l9_378=l9_384;
l9_380=l9_378;
}
}
}
l9_374=l9_380;
float2 l9_385=float2(0.0);
float2 l9_386=(*sc_set0.UserUniforms).uv2Scale;
l9_385=l9_386;
float2 l9_387=float2(0.0);
l9_387=l9_385;
float2 l9_388=float2(0.0);
float2 l9_389=(*sc_set0.UserUniforms).uv2Offset;
l9_388=l9_389;
float2 l9_390=float2(0.0);
l9_390=l9_388;
float2 l9_391=float2(0.0);
l9_391=(l9_374*l9_387)+l9_390;
float2 l9_392=float2(0.0);
l9_392=l9_391+(l9_390*(l9_372.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_370=l9_392;
l9_373=l9_370;
}
else
{
float2 l9_393=float2(0.0);
float2 l9_394=float2(0.0);
float2 l9_395=float2(0.0);
float2 l9_396=float2(0.0);
float2 l9_397=float2(0.0);
ssGlobals l9_398=l9_372;
float2 l9_399;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_400=float2(0.0);
l9_400=l9_398.Surface_UVCoord0;
l9_394=l9_400;
l9_399=l9_394;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_401=float2(0.0);
l9_401=l9_398.Surface_UVCoord1;
l9_395=l9_401;
l9_399=l9_395;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_402=float2(0.0);
l9_402=l9_398.gScreenCoord;
l9_396=l9_402;
l9_399=l9_396;
}
else
{
float2 l9_403=float2(0.0);
l9_403=l9_398.Surface_UVCoord0;
l9_397=l9_403;
l9_399=l9_397;
}
}
}
l9_393=l9_399;
float2 l9_404=float2(0.0);
float2 l9_405=(*sc_set0.UserUniforms).uv2Scale;
l9_404=l9_405;
float2 l9_406=float2(0.0);
l9_406=l9_404;
float2 l9_407=float2(0.0);
float2 l9_408=(*sc_set0.UserUniforms).uv2Offset;
l9_407=l9_408;
float2 l9_409=float2(0.0);
l9_409=l9_407;
float2 l9_410=float2(0.0);
l9_410=(l9_393*l9_406)+l9_409;
l9_371=l9_410;
l9_373=l9_371;
}
l9_369=l9_373;
float l9_411=0.0;
float l9_412;
if ((int(Tweak_N67_tmp)!=0))
{
l9_412=1.001;
}
else
{
l9_412=0.001;
}
l9_412-=0.001;
l9_411=l9_412;
float l9_413=0.0;
l9_413=l9_411;
float2 l9_414=float2(0.0);
l9_414=mix(l9_368,l9_369,float2(l9_413));
float2 l9_415=float2(0.0);
l9_415=l9_414;
float2 l9_416=float2(0.0);
l9_416=l9_415;
l9_361=l9_416;
l9_365=l9_361;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_417=float2(0.0);
l9_417=l9_364.Surface_UVCoord0;
float2 l9_418=float2(0.0);
float2 l9_419=float2(0.0);
float2 l9_420=float2(0.0);
ssGlobals l9_421=l9_364;
float2 l9_422;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_423=float2(0.0);
float2 l9_424=float2(0.0);
float2 l9_425=float2(0.0);
float2 l9_426=float2(0.0);
float2 l9_427=float2(0.0);
float2 l9_428=float2(0.0);
ssGlobals l9_429=l9_421;
float2 l9_430;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_431=float2(0.0);
l9_431=l9_429.Surface_UVCoord0;
l9_424=l9_431;
l9_430=l9_424;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_432=float2(0.0);
l9_432=l9_429.Surface_UVCoord1;
l9_425=l9_432;
l9_430=l9_425;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_433=float2(0.0);
l9_433=l9_429.gScreenCoord;
l9_426=l9_433;
l9_430=l9_426;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_434=float2(0.0);
l9_434=l9_429.Surface_UVCoord0;
float2 l9_435=float2(0.0);
float2 l9_436=float2(0.0);
float2 l9_437=float2(0.0);
ssGlobals l9_438=l9_429;
float2 l9_439;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_440=float2(0.0);
float2 l9_441=float2(0.0);
float2 l9_442=float2(0.0);
float2 l9_443=float2(0.0);
float2 l9_444=float2(0.0);
ssGlobals l9_445=l9_438;
float2 l9_446;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_447=float2(0.0);
l9_447=l9_445.Surface_UVCoord0;
l9_441=l9_447;
l9_446=l9_441;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_448=float2(0.0);
l9_448=l9_445.Surface_UVCoord1;
l9_442=l9_448;
l9_446=l9_442;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_449=float2(0.0);
l9_449=l9_445.gScreenCoord;
l9_443=l9_449;
l9_446=l9_443;
}
else
{
float2 l9_450=float2(0.0);
l9_450=l9_445.Surface_UVCoord0;
l9_444=l9_450;
l9_446=l9_444;
}
}
}
l9_440=l9_446;
float2 l9_451=float2(0.0);
float2 l9_452=(*sc_set0.UserUniforms).uv2Scale;
l9_451=l9_452;
float2 l9_453=float2(0.0);
l9_453=l9_451;
float2 l9_454=float2(0.0);
float2 l9_455=(*sc_set0.UserUniforms).uv2Offset;
l9_454=l9_455;
float2 l9_456=float2(0.0);
l9_456=l9_454;
float2 l9_457=float2(0.0);
l9_457=(l9_440*l9_453)+l9_456;
float2 l9_458=float2(0.0);
l9_458=l9_457+(l9_456*(l9_438.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_436=l9_458;
l9_439=l9_436;
}
else
{
float2 l9_459=float2(0.0);
float2 l9_460=float2(0.0);
float2 l9_461=float2(0.0);
float2 l9_462=float2(0.0);
float2 l9_463=float2(0.0);
ssGlobals l9_464=l9_438;
float2 l9_465;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_466=float2(0.0);
l9_466=l9_464.Surface_UVCoord0;
l9_460=l9_466;
l9_465=l9_460;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_467=float2(0.0);
l9_467=l9_464.Surface_UVCoord1;
l9_461=l9_467;
l9_465=l9_461;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_468=float2(0.0);
l9_468=l9_464.gScreenCoord;
l9_462=l9_468;
l9_465=l9_462;
}
else
{
float2 l9_469=float2(0.0);
l9_469=l9_464.Surface_UVCoord0;
l9_463=l9_469;
l9_465=l9_463;
}
}
}
l9_459=l9_465;
float2 l9_470=float2(0.0);
float2 l9_471=(*sc_set0.UserUniforms).uv2Scale;
l9_470=l9_471;
float2 l9_472=float2(0.0);
l9_472=l9_470;
float2 l9_473=float2(0.0);
float2 l9_474=(*sc_set0.UserUniforms).uv2Offset;
l9_473=l9_474;
float2 l9_475=float2(0.0);
l9_475=l9_473;
float2 l9_476=float2(0.0);
l9_476=(l9_459*l9_472)+l9_475;
l9_437=l9_476;
l9_439=l9_437;
}
l9_435=l9_439;
float l9_477=0.0;
float l9_478;
if ((int(Tweak_N67_tmp)!=0))
{
l9_478=1.001;
}
else
{
l9_478=0.001;
}
l9_478-=0.001;
l9_477=l9_478;
float l9_479=0.0;
l9_479=l9_477;
float2 l9_480=float2(0.0);
l9_480=mix(l9_434,l9_435,float2(l9_479));
float2 l9_481=float2(0.0);
l9_481=l9_480;
float2 l9_482=float2(0.0);
l9_482=l9_481;
l9_427=l9_482;
l9_430=l9_427;
}
else
{
float2 l9_483=float2(0.0);
l9_483=l9_429.Surface_UVCoord0;
l9_428=l9_483;
l9_430=l9_428;
}
}
}
}
l9_423=l9_430;
float2 l9_484=float2(0.0);
float2 l9_485=(*sc_set0.UserUniforms).uv3Scale;
l9_484=l9_485;
float2 l9_486=float2(0.0);
l9_486=l9_484;
float2 l9_487=float2(0.0);
float2 l9_488=(*sc_set0.UserUniforms).uv3Offset;
l9_487=l9_488;
float2 l9_489=float2(0.0);
l9_489=l9_487;
float2 l9_490=float2(0.0);
l9_490=(l9_423*l9_486)+l9_489;
float2 l9_491=float2(0.0);
l9_491=l9_490+(l9_489*(l9_421.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_419=l9_491;
l9_422=l9_419;
}
else
{
float2 l9_492=float2(0.0);
float2 l9_493=float2(0.0);
float2 l9_494=float2(0.0);
float2 l9_495=float2(0.0);
float2 l9_496=float2(0.0);
float2 l9_497=float2(0.0);
ssGlobals l9_498=l9_421;
float2 l9_499;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_500=float2(0.0);
l9_500=l9_498.Surface_UVCoord0;
l9_493=l9_500;
l9_499=l9_493;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_501=float2(0.0);
l9_501=l9_498.Surface_UVCoord1;
l9_494=l9_501;
l9_499=l9_494;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_502=float2(0.0);
l9_502=l9_498.gScreenCoord;
l9_495=l9_502;
l9_499=l9_495;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_503=float2(0.0);
l9_503=l9_498.Surface_UVCoord0;
float2 l9_504=float2(0.0);
float2 l9_505=float2(0.0);
float2 l9_506=float2(0.0);
ssGlobals l9_507=l9_498;
float2 l9_508;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_509=float2(0.0);
float2 l9_510=float2(0.0);
float2 l9_511=float2(0.0);
float2 l9_512=float2(0.0);
float2 l9_513=float2(0.0);
ssGlobals l9_514=l9_507;
float2 l9_515;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_516=float2(0.0);
l9_516=l9_514.Surface_UVCoord0;
l9_510=l9_516;
l9_515=l9_510;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_517=float2(0.0);
l9_517=l9_514.Surface_UVCoord1;
l9_511=l9_517;
l9_515=l9_511;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_518=float2(0.0);
l9_518=l9_514.gScreenCoord;
l9_512=l9_518;
l9_515=l9_512;
}
else
{
float2 l9_519=float2(0.0);
l9_519=l9_514.Surface_UVCoord0;
l9_513=l9_519;
l9_515=l9_513;
}
}
}
l9_509=l9_515;
float2 l9_520=float2(0.0);
float2 l9_521=(*sc_set0.UserUniforms).uv2Scale;
l9_520=l9_521;
float2 l9_522=float2(0.0);
l9_522=l9_520;
float2 l9_523=float2(0.0);
float2 l9_524=(*sc_set0.UserUniforms).uv2Offset;
l9_523=l9_524;
float2 l9_525=float2(0.0);
l9_525=l9_523;
float2 l9_526=float2(0.0);
l9_526=(l9_509*l9_522)+l9_525;
float2 l9_527=float2(0.0);
l9_527=l9_526+(l9_525*(l9_507.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_505=l9_527;
l9_508=l9_505;
}
else
{
float2 l9_528=float2(0.0);
float2 l9_529=float2(0.0);
float2 l9_530=float2(0.0);
float2 l9_531=float2(0.0);
float2 l9_532=float2(0.0);
ssGlobals l9_533=l9_507;
float2 l9_534;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_535=float2(0.0);
l9_535=l9_533.Surface_UVCoord0;
l9_529=l9_535;
l9_534=l9_529;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_536=float2(0.0);
l9_536=l9_533.Surface_UVCoord1;
l9_530=l9_536;
l9_534=l9_530;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_537=float2(0.0);
l9_537=l9_533.gScreenCoord;
l9_531=l9_537;
l9_534=l9_531;
}
else
{
float2 l9_538=float2(0.0);
l9_538=l9_533.Surface_UVCoord0;
l9_532=l9_538;
l9_534=l9_532;
}
}
}
l9_528=l9_534;
float2 l9_539=float2(0.0);
float2 l9_540=(*sc_set0.UserUniforms).uv2Scale;
l9_539=l9_540;
float2 l9_541=float2(0.0);
l9_541=l9_539;
float2 l9_542=float2(0.0);
float2 l9_543=(*sc_set0.UserUniforms).uv2Offset;
l9_542=l9_543;
float2 l9_544=float2(0.0);
l9_544=l9_542;
float2 l9_545=float2(0.0);
l9_545=(l9_528*l9_541)+l9_544;
l9_506=l9_545;
l9_508=l9_506;
}
l9_504=l9_508;
float l9_546=0.0;
float l9_547;
if ((int(Tweak_N67_tmp)!=0))
{
l9_547=1.001;
}
else
{
l9_547=0.001;
}
l9_547-=0.001;
l9_546=l9_547;
float l9_548=0.0;
l9_548=l9_546;
float2 l9_549=float2(0.0);
l9_549=mix(l9_503,l9_504,float2(l9_548));
float2 l9_550=float2(0.0);
l9_550=l9_549;
float2 l9_551=float2(0.0);
l9_551=l9_550;
l9_496=l9_551;
l9_499=l9_496;
}
else
{
float2 l9_552=float2(0.0);
l9_552=l9_498.Surface_UVCoord0;
l9_497=l9_552;
l9_499=l9_497;
}
}
}
}
l9_492=l9_499;
float2 l9_553=float2(0.0);
float2 l9_554=(*sc_set0.UserUniforms).uv3Scale;
l9_553=l9_554;
float2 l9_555=float2(0.0);
l9_555=l9_553;
float2 l9_556=float2(0.0);
float2 l9_557=(*sc_set0.UserUniforms).uv3Offset;
l9_556=l9_557;
float2 l9_558=float2(0.0);
l9_558=l9_556;
float2 l9_559=float2(0.0);
l9_559=(l9_492*l9_555)+l9_558;
l9_420=l9_559;
l9_422=l9_420;
}
l9_418=l9_422;
float l9_560=0.0;
float l9_561;
if ((int(Tweak_N11_tmp)!=0))
{
l9_561=1.001;
}
else
{
l9_561=0.001;
}
l9_561-=0.001;
l9_560=l9_561;
float l9_562=0.0;
l9_562=l9_560;
float2 l9_563=float2(0.0);
l9_563=mix(l9_417,l9_418,float2(l9_562));
float2 l9_564=float2(0.0);
l9_564=l9_563;
float2 l9_565=float2(0.0);
l9_565=l9_564;
l9_362=l9_565;
l9_365=l9_362;
}
else
{
float2 l9_566=float2(0.0);
l9_566=l9_364.Surface_UVCoord0;
l9_363=l9_566;
l9_365=l9_363;
}
}
}
}
l9_358=l9_365;
float4 l9_567=float4(0.0);
int l9_568;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_569=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_569=0;
}
else
{
l9_569=in.varStereoViewID;
}
int l9_570=l9_569;
l9_568=1-l9_570;
}
else
{
int l9_571=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_571=0;
}
else
{
l9_571=in.varStereoViewID;
}
int l9_572=l9_571;
l9_568=l9_572;
}
int l9_573=l9_568;
int l9_574=baseTexLayout_tmp;
int l9_575=l9_573;
float2 l9_576=l9_358;
bool l9_577=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_578=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_579=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_580=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_581=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_582=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_583=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_584=0.0;
bool l9_585=l9_582&&(!l9_580);
float l9_586=1.0;
float l9_587=l9_576.x;
int l9_588=l9_579.x;
if (l9_588==1)
{
l9_587=fract(l9_587);
}
else
{
if (l9_588==2)
{
float l9_589=fract(l9_587);
float l9_590=l9_587-l9_589;
float l9_591=step(0.25,fract(l9_590*0.5));
l9_587=mix(l9_589,1.0-l9_589,fast::clamp(l9_591,0.0,1.0));
}
}
l9_576.x=l9_587;
float l9_592=l9_576.y;
int l9_593=l9_579.y;
if (l9_593==1)
{
l9_592=fract(l9_592);
}
else
{
if (l9_593==2)
{
float l9_594=fract(l9_592);
float l9_595=l9_592-l9_594;
float l9_596=step(0.25,fract(l9_595*0.5));
l9_592=mix(l9_594,1.0-l9_594,fast::clamp(l9_596,0.0,1.0));
}
}
l9_576.y=l9_592;
if (l9_580)
{
bool l9_597=l9_582;
bool l9_598;
if (l9_597)
{
l9_598=l9_579.x==3;
}
else
{
l9_598=l9_597;
}
float l9_599=l9_576.x;
float l9_600=l9_581.x;
float l9_601=l9_581.z;
bool l9_602=l9_598;
float l9_603=l9_586;
float l9_604=fast::clamp(l9_599,l9_600,l9_601);
float l9_605=step(abs(l9_599-l9_604),9.9999997e-06);
l9_603*=(l9_605+((1.0-float(l9_602))*(1.0-l9_605)));
l9_599=l9_604;
l9_576.x=l9_599;
l9_586=l9_603;
bool l9_606=l9_582;
bool l9_607;
if (l9_606)
{
l9_607=l9_579.y==3;
}
else
{
l9_607=l9_606;
}
float l9_608=l9_576.y;
float l9_609=l9_581.y;
float l9_610=l9_581.w;
bool l9_611=l9_607;
float l9_612=l9_586;
float l9_613=fast::clamp(l9_608,l9_609,l9_610);
float l9_614=step(abs(l9_608-l9_613),9.9999997e-06);
l9_612*=(l9_614+((1.0-float(l9_611))*(1.0-l9_614)));
l9_608=l9_613;
l9_576.y=l9_608;
l9_586=l9_612;
}
float2 l9_615=l9_576;
bool l9_616=l9_577;
float3x3 l9_617=l9_578;
if (l9_616)
{
l9_615=float2((l9_617*float3(l9_615,1.0)).xy);
}
float2 l9_618=l9_615;
l9_576=l9_618;
float l9_619=l9_576.x;
int l9_620=l9_579.x;
bool l9_621=l9_585;
float l9_622=l9_586;
if ((l9_620==0)||(l9_620==3))
{
float l9_623=l9_619;
float l9_624=0.0;
float l9_625=1.0;
bool l9_626=l9_621;
float l9_627=l9_622;
float l9_628=fast::clamp(l9_623,l9_624,l9_625);
float l9_629=step(abs(l9_623-l9_628),9.9999997e-06);
l9_627*=(l9_629+((1.0-float(l9_626))*(1.0-l9_629)));
l9_623=l9_628;
l9_619=l9_623;
l9_622=l9_627;
}
l9_576.x=l9_619;
l9_586=l9_622;
float l9_630=l9_576.y;
int l9_631=l9_579.y;
bool l9_632=l9_585;
float l9_633=l9_586;
if ((l9_631==0)||(l9_631==3))
{
float l9_634=l9_630;
float l9_635=0.0;
float l9_636=1.0;
bool l9_637=l9_632;
float l9_638=l9_633;
float l9_639=fast::clamp(l9_634,l9_635,l9_636);
float l9_640=step(abs(l9_634-l9_639),9.9999997e-06);
l9_638*=(l9_640+((1.0-float(l9_637))*(1.0-l9_640)));
l9_634=l9_639;
l9_630=l9_634;
l9_633=l9_638;
}
l9_576.y=l9_630;
l9_586=l9_633;
float2 l9_641=l9_576;
int l9_642=l9_574;
int l9_643=l9_575;
float l9_644=l9_584;
float2 l9_645=l9_641;
int l9_646=l9_642;
int l9_647=l9_643;
float3 l9_648=float3(0.0);
if (l9_646==0)
{
l9_648=float3(l9_645,0.0);
}
else
{
if (l9_646==1)
{
l9_648=float3(l9_645.x,(l9_645.y*0.5)+(0.5-(float(l9_647)*0.5)),0.0);
}
else
{
l9_648=float3(l9_645,float(l9_647));
}
}
float3 l9_649=l9_648;
float3 l9_650=l9_649;
float4 l9_651=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_650.xy,bias(l9_644));
float4 l9_652=l9_651;
if (l9_582)
{
l9_652=mix(l9_583,l9_652,float4(l9_586));
}
float4 l9_653=l9_652;
l9_567=l9_653;
l9_354=l9_567;
l9_357=l9_354;
}
else
{
l9_357=l9_355;
}
l9_353=l9_357;
float4 l9_654=float4(0.0);
l9_654=l9_352*l9_353;
float4 l9_655=float4(0.0);
l9_655=l9_654;
float4 l9_656=float4(0.0);
l9_656=l9_655;
l9_20=l9_656.xyz;
l9_22=l9_20;
}
l9_18=l9_22;
float3 l9_657=float3(0.0);
l9_657=l9_18;
float3 l9_658=float3(0.0);
l9_658=l9_657;
float4 l9_659=float4(0.0);
l9_659=float4(l9_658.x,l9_658.y,l9_658.z,l9_659.w);
l9_659.w=(*sc_set0.UserUniforms).Port_Value2_N073;
float4 l9_660=float4(0.0);
l9_660=l9_17*l9_659;
param_1=l9_660;
param_3=param_1;
}
else
{
float3 l9_661=float3(0.0);
float3 l9_662=float3(0.0);
float3 l9_663=float3(0.0);
ssGlobals l9_664=param_4;
float3 l9_665;
if ((int(Tweak_N37_tmp)!=0))
{
float3 l9_666=float3(0.0);
float3 l9_667=(*sc_set0.UserUniforms).recolorRed;
l9_666=l9_667;
float3 l9_668=float3(0.0);
l9_668=l9_666;
float4 l9_669=float4(0.0);
float4 l9_670=(*sc_set0.UserUniforms).baseColor;
l9_669=l9_670;
float4 l9_671=float4(0.0);
l9_671=l9_669;
float4 l9_672=float4(0.0);
float4 l9_673=float4(0.0);
float4 l9_674=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_675=l9_664;
float4 l9_676;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_677=float2(0.0);
float2 l9_678=float2(0.0);
float2 l9_679=float2(0.0);
float2 l9_680=float2(0.0);
float2 l9_681=float2(0.0);
float2 l9_682=float2(0.0);
ssGlobals l9_683=l9_675;
float2 l9_684;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_685=float2(0.0);
l9_685=l9_683.Surface_UVCoord0;
l9_678=l9_685;
l9_684=l9_678;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_686=float2(0.0);
l9_686=l9_683.Surface_UVCoord1;
l9_679=l9_686;
l9_684=l9_679;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_687=float2(0.0);
l9_687=l9_683.Surface_UVCoord0;
float2 l9_688=float2(0.0);
float2 l9_689=float2(0.0);
float2 l9_690=float2(0.0);
ssGlobals l9_691=l9_683;
float2 l9_692;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_693=float2(0.0);
float2 l9_694=float2(0.0);
float2 l9_695=float2(0.0);
float2 l9_696=float2(0.0);
float2 l9_697=float2(0.0);
ssGlobals l9_698=l9_691;
float2 l9_699;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_700=float2(0.0);
l9_700=l9_698.Surface_UVCoord0;
l9_694=l9_700;
l9_699=l9_694;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_701=float2(0.0);
l9_701=l9_698.Surface_UVCoord1;
l9_695=l9_701;
l9_699=l9_695;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_702=float2(0.0);
l9_702=l9_698.gScreenCoord;
l9_696=l9_702;
l9_699=l9_696;
}
else
{
float2 l9_703=float2(0.0);
l9_703=l9_698.Surface_UVCoord0;
l9_697=l9_703;
l9_699=l9_697;
}
}
}
l9_693=l9_699;
float2 l9_704=float2(0.0);
float2 l9_705=(*sc_set0.UserUniforms).uv2Scale;
l9_704=l9_705;
float2 l9_706=float2(0.0);
l9_706=l9_704;
float2 l9_707=float2(0.0);
float2 l9_708=(*sc_set0.UserUniforms).uv2Offset;
l9_707=l9_708;
float2 l9_709=float2(0.0);
l9_709=l9_707;
float2 l9_710=float2(0.0);
l9_710=(l9_693*l9_706)+l9_709;
float2 l9_711=float2(0.0);
l9_711=l9_710+(l9_709*(l9_691.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_689=l9_711;
l9_692=l9_689;
}
else
{
float2 l9_712=float2(0.0);
float2 l9_713=float2(0.0);
float2 l9_714=float2(0.0);
float2 l9_715=float2(0.0);
float2 l9_716=float2(0.0);
ssGlobals l9_717=l9_691;
float2 l9_718;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_719=float2(0.0);
l9_719=l9_717.Surface_UVCoord0;
l9_713=l9_719;
l9_718=l9_713;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_720=float2(0.0);
l9_720=l9_717.Surface_UVCoord1;
l9_714=l9_720;
l9_718=l9_714;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_721=float2(0.0);
l9_721=l9_717.gScreenCoord;
l9_715=l9_721;
l9_718=l9_715;
}
else
{
float2 l9_722=float2(0.0);
l9_722=l9_717.Surface_UVCoord0;
l9_716=l9_722;
l9_718=l9_716;
}
}
}
l9_712=l9_718;
float2 l9_723=float2(0.0);
float2 l9_724=(*sc_set0.UserUniforms).uv2Scale;
l9_723=l9_724;
float2 l9_725=float2(0.0);
l9_725=l9_723;
float2 l9_726=float2(0.0);
float2 l9_727=(*sc_set0.UserUniforms).uv2Offset;
l9_726=l9_727;
float2 l9_728=float2(0.0);
l9_728=l9_726;
float2 l9_729=float2(0.0);
l9_729=(l9_712*l9_725)+l9_728;
l9_690=l9_729;
l9_692=l9_690;
}
l9_688=l9_692;
float l9_730=0.0;
float l9_731;
if ((int(Tweak_N67_tmp)!=0))
{
l9_731=1.001;
}
else
{
l9_731=0.001;
}
l9_731-=0.001;
l9_730=l9_731;
float l9_732=0.0;
l9_732=l9_730;
float2 l9_733=float2(0.0);
l9_733=mix(l9_687,l9_688,float2(l9_732));
float2 l9_734=float2(0.0);
l9_734=l9_733;
float2 l9_735=float2(0.0);
l9_735=l9_734;
l9_680=l9_735;
l9_684=l9_680;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_736=float2(0.0);
l9_736=l9_683.Surface_UVCoord0;
float2 l9_737=float2(0.0);
float2 l9_738=float2(0.0);
float2 l9_739=float2(0.0);
ssGlobals l9_740=l9_683;
float2 l9_741;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_742=float2(0.0);
float2 l9_743=float2(0.0);
float2 l9_744=float2(0.0);
float2 l9_745=float2(0.0);
float2 l9_746=float2(0.0);
float2 l9_747=float2(0.0);
ssGlobals l9_748=l9_740;
float2 l9_749;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_750=float2(0.0);
l9_750=l9_748.Surface_UVCoord0;
l9_743=l9_750;
l9_749=l9_743;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_751=float2(0.0);
l9_751=l9_748.Surface_UVCoord1;
l9_744=l9_751;
l9_749=l9_744;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_752=float2(0.0);
l9_752=l9_748.gScreenCoord;
l9_745=l9_752;
l9_749=l9_745;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_753=float2(0.0);
l9_753=l9_748.Surface_UVCoord0;
float2 l9_754=float2(0.0);
float2 l9_755=float2(0.0);
float2 l9_756=float2(0.0);
ssGlobals l9_757=l9_748;
float2 l9_758;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_759=float2(0.0);
float2 l9_760=float2(0.0);
float2 l9_761=float2(0.0);
float2 l9_762=float2(0.0);
float2 l9_763=float2(0.0);
ssGlobals l9_764=l9_757;
float2 l9_765;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_766=float2(0.0);
l9_766=l9_764.Surface_UVCoord0;
l9_760=l9_766;
l9_765=l9_760;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_767=float2(0.0);
l9_767=l9_764.Surface_UVCoord1;
l9_761=l9_767;
l9_765=l9_761;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_768=float2(0.0);
l9_768=l9_764.gScreenCoord;
l9_762=l9_768;
l9_765=l9_762;
}
else
{
float2 l9_769=float2(0.0);
l9_769=l9_764.Surface_UVCoord0;
l9_763=l9_769;
l9_765=l9_763;
}
}
}
l9_759=l9_765;
float2 l9_770=float2(0.0);
float2 l9_771=(*sc_set0.UserUniforms).uv2Scale;
l9_770=l9_771;
float2 l9_772=float2(0.0);
l9_772=l9_770;
float2 l9_773=float2(0.0);
float2 l9_774=(*sc_set0.UserUniforms).uv2Offset;
l9_773=l9_774;
float2 l9_775=float2(0.0);
l9_775=l9_773;
float2 l9_776=float2(0.0);
l9_776=(l9_759*l9_772)+l9_775;
float2 l9_777=float2(0.0);
l9_777=l9_776+(l9_775*(l9_757.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_755=l9_777;
l9_758=l9_755;
}
else
{
float2 l9_778=float2(0.0);
float2 l9_779=float2(0.0);
float2 l9_780=float2(0.0);
float2 l9_781=float2(0.0);
float2 l9_782=float2(0.0);
ssGlobals l9_783=l9_757;
float2 l9_784;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_785=float2(0.0);
l9_785=l9_783.Surface_UVCoord0;
l9_779=l9_785;
l9_784=l9_779;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_786=float2(0.0);
l9_786=l9_783.Surface_UVCoord1;
l9_780=l9_786;
l9_784=l9_780;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_787=float2(0.0);
l9_787=l9_783.gScreenCoord;
l9_781=l9_787;
l9_784=l9_781;
}
else
{
float2 l9_788=float2(0.0);
l9_788=l9_783.Surface_UVCoord0;
l9_782=l9_788;
l9_784=l9_782;
}
}
}
l9_778=l9_784;
float2 l9_789=float2(0.0);
float2 l9_790=(*sc_set0.UserUniforms).uv2Scale;
l9_789=l9_790;
float2 l9_791=float2(0.0);
l9_791=l9_789;
float2 l9_792=float2(0.0);
float2 l9_793=(*sc_set0.UserUniforms).uv2Offset;
l9_792=l9_793;
float2 l9_794=float2(0.0);
l9_794=l9_792;
float2 l9_795=float2(0.0);
l9_795=(l9_778*l9_791)+l9_794;
l9_756=l9_795;
l9_758=l9_756;
}
l9_754=l9_758;
float l9_796=0.0;
float l9_797;
if ((int(Tweak_N67_tmp)!=0))
{
l9_797=1.001;
}
else
{
l9_797=0.001;
}
l9_797-=0.001;
l9_796=l9_797;
float l9_798=0.0;
l9_798=l9_796;
float2 l9_799=float2(0.0);
l9_799=mix(l9_753,l9_754,float2(l9_798));
float2 l9_800=float2(0.0);
l9_800=l9_799;
float2 l9_801=float2(0.0);
l9_801=l9_800;
l9_746=l9_801;
l9_749=l9_746;
}
else
{
float2 l9_802=float2(0.0);
l9_802=l9_748.Surface_UVCoord0;
l9_747=l9_802;
l9_749=l9_747;
}
}
}
}
l9_742=l9_749;
float2 l9_803=float2(0.0);
float2 l9_804=(*sc_set0.UserUniforms).uv3Scale;
l9_803=l9_804;
float2 l9_805=float2(0.0);
l9_805=l9_803;
float2 l9_806=float2(0.0);
float2 l9_807=(*sc_set0.UserUniforms).uv3Offset;
l9_806=l9_807;
float2 l9_808=float2(0.0);
l9_808=l9_806;
float2 l9_809=float2(0.0);
l9_809=(l9_742*l9_805)+l9_808;
float2 l9_810=float2(0.0);
l9_810=l9_809+(l9_808*(l9_740.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_738=l9_810;
l9_741=l9_738;
}
else
{
float2 l9_811=float2(0.0);
float2 l9_812=float2(0.0);
float2 l9_813=float2(0.0);
float2 l9_814=float2(0.0);
float2 l9_815=float2(0.0);
float2 l9_816=float2(0.0);
ssGlobals l9_817=l9_740;
float2 l9_818;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_819=float2(0.0);
l9_819=l9_817.Surface_UVCoord0;
l9_812=l9_819;
l9_818=l9_812;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_820=float2(0.0);
l9_820=l9_817.Surface_UVCoord1;
l9_813=l9_820;
l9_818=l9_813;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_821=float2(0.0);
l9_821=l9_817.gScreenCoord;
l9_814=l9_821;
l9_818=l9_814;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_822=float2(0.0);
l9_822=l9_817.Surface_UVCoord0;
float2 l9_823=float2(0.0);
float2 l9_824=float2(0.0);
float2 l9_825=float2(0.0);
ssGlobals l9_826=l9_817;
float2 l9_827;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_828=float2(0.0);
float2 l9_829=float2(0.0);
float2 l9_830=float2(0.0);
float2 l9_831=float2(0.0);
float2 l9_832=float2(0.0);
ssGlobals l9_833=l9_826;
float2 l9_834;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_835=float2(0.0);
l9_835=l9_833.Surface_UVCoord0;
l9_829=l9_835;
l9_834=l9_829;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_836=float2(0.0);
l9_836=l9_833.Surface_UVCoord1;
l9_830=l9_836;
l9_834=l9_830;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_837=float2(0.0);
l9_837=l9_833.gScreenCoord;
l9_831=l9_837;
l9_834=l9_831;
}
else
{
float2 l9_838=float2(0.0);
l9_838=l9_833.Surface_UVCoord0;
l9_832=l9_838;
l9_834=l9_832;
}
}
}
l9_828=l9_834;
float2 l9_839=float2(0.0);
float2 l9_840=(*sc_set0.UserUniforms).uv2Scale;
l9_839=l9_840;
float2 l9_841=float2(0.0);
l9_841=l9_839;
float2 l9_842=float2(0.0);
float2 l9_843=(*sc_set0.UserUniforms).uv2Offset;
l9_842=l9_843;
float2 l9_844=float2(0.0);
l9_844=l9_842;
float2 l9_845=float2(0.0);
l9_845=(l9_828*l9_841)+l9_844;
float2 l9_846=float2(0.0);
l9_846=l9_845+(l9_844*(l9_826.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_824=l9_846;
l9_827=l9_824;
}
else
{
float2 l9_847=float2(0.0);
float2 l9_848=float2(0.0);
float2 l9_849=float2(0.0);
float2 l9_850=float2(0.0);
float2 l9_851=float2(0.0);
ssGlobals l9_852=l9_826;
float2 l9_853;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_854=float2(0.0);
l9_854=l9_852.Surface_UVCoord0;
l9_848=l9_854;
l9_853=l9_848;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_855=float2(0.0);
l9_855=l9_852.Surface_UVCoord1;
l9_849=l9_855;
l9_853=l9_849;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_856=float2(0.0);
l9_856=l9_852.gScreenCoord;
l9_850=l9_856;
l9_853=l9_850;
}
else
{
float2 l9_857=float2(0.0);
l9_857=l9_852.Surface_UVCoord0;
l9_851=l9_857;
l9_853=l9_851;
}
}
}
l9_847=l9_853;
float2 l9_858=float2(0.0);
float2 l9_859=(*sc_set0.UserUniforms).uv2Scale;
l9_858=l9_859;
float2 l9_860=float2(0.0);
l9_860=l9_858;
float2 l9_861=float2(0.0);
float2 l9_862=(*sc_set0.UserUniforms).uv2Offset;
l9_861=l9_862;
float2 l9_863=float2(0.0);
l9_863=l9_861;
float2 l9_864=float2(0.0);
l9_864=(l9_847*l9_860)+l9_863;
l9_825=l9_864;
l9_827=l9_825;
}
l9_823=l9_827;
float l9_865=0.0;
float l9_866;
if ((int(Tweak_N67_tmp)!=0))
{
l9_866=1.001;
}
else
{
l9_866=0.001;
}
l9_866-=0.001;
l9_865=l9_866;
float l9_867=0.0;
l9_867=l9_865;
float2 l9_868=float2(0.0);
l9_868=mix(l9_822,l9_823,float2(l9_867));
float2 l9_869=float2(0.0);
l9_869=l9_868;
float2 l9_870=float2(0.0);
l9_870=l9_869;
l9_815=l9_870;
l9_818=l9_815;
}
else
{
float2 l9_871=float2(0.0);
l9_871=l9_817.Surface_UVCoord0;
l9_816=l9_871;
l9_818=l9_816;
}
}
}
}
l9_811=l9_818;
float2 l9_872=float2(0.0);
float2 l9_873=(*sc_set0.UserUniforms).uv3Scale;
l9_872=l9_873;
float2 l9_874=float2(0.0);
l9_874=l9_872;
float2 l9_875=float2(0.0);
float2 l9_876=(*sc_set0.UserUniforms).uv3Offset;
l9_875=l9_876;
float2 l9_877=float2(0.0);
l9_877=l9_875;
float2 l9_878=float2(0.0);
l9_878=(l9_811*l9_874)+l9_877;
l9_739=l9_878;
l9_741=l9_739;
}
l9_737=l9_741;
float l9_879=0.0;
float l9_880;
if ((int(Tweak_N11_tmp)!=0))
{
l9_880=1.001;
}
else
{
l9_880=0.001;
}
l9_880-=0.001;
l9_879=l9_880;
float l9_881=0.0;
l9_881=l9_879;
float2 l9_882=float2(0.0);
l9_882=mix(l9_736,l9_737,float2(l9_881));
float2 l9_883=float2(0.0);
l9_883=l9_882;
float2 l9_884=float2(0.0);
l9_884=l9_883;
l9_681=l9_884;
l9_684=l9_681;
}
else
{
float2 l9_885=float2(0.0);
l9_885=l9_683.Surface_UVCoord0;
l9_682=l9_885;
l9_684=l9_682;
}
}
}
}
l9_677=l9_684;
float4 l9_886=float4(0.0);
int l9_887;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_888=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_888=0;
}
else
{
l9_888=in.varStereoViewID;
}
int l9_889=l9_888;
l9_887=1-l9_889;
}
else
{
int l9_890=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_890=0;
}
else
{
l9_890=in.varStereoViewID;
}
int l9_891=l9_890;
l9_887=l9_891;
}
int l9_892=l9_887;
int l9_893=baseTexLayout_tmp;
int l9_894=l9_892;
float2 l9_895=l9_677;
bool l9_896=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_897=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_898=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_899=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_900=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_901=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_902=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_903=0.0;
bool l9_904=l9_901&&(!l9_899);
float l9_905=1.0;
float l9_906=l9_895.x;
int l9_907=l9_898.x;
if (l9_907==1)
{
l9_906=fract(l9_906);
}
else
{
if (l9_907==2)
{
float l9_908=fract(l9_906);
float l9_909=l9_906-l9_908;
float l9_910=step(0.25,fract(l9_909*0.5));
l9_906=mix(l9_908,1.0-l9_908,fast::clamp(l9_910,0.0,1.0));
}
}
l9_895.x=l9_906;
float l9_911=l9_895.y;
int l9_912=l9_898.y;
if (l9_912==1)
{
l9_911=fract(l9_911);
}
else
{
if (l9_912==2)
{
float l9_913=fract(l9_911);
float l9_914=l9_911-l9_913;
float l9_915=step(0.25,fract(l9_914*0.5));
l9_911=mix(l9_913,1.0-l9_913,fast::clamp(l9_915,0.0,1.0));
}
}
l9_895.y=l9_911;
if (l9_899)
{
bool l9_916=l9_901;
bool l9_917;
if (l9_916)
{
l9_917=l9_898.x==3;
}
else
{
l9_917=l9_916;
}
float l9_918=l9_895.x;
float l9_919=l9_900.x;
float l9_920=l9_900.z;
bool l9_921=l9_917;
float l9_922=l9_905;
float l9_923=fast::clamp(l9_918,l9_919,l9_920);
float l9_924=step(abs(l9_918-l9_923),9.9999997e-06);
l9_922*=(l9_924+((1.0-float(l9_921))*(1.0-l9_924)));
l9_918=l9_923;
l9_895.x=l9_918;
l9_905=l9_922;
bool l9_925=l9_901;
bool l9_926;
if (l9_925)
{
l9_926=l9_898.y==3;
}
else
{
l9_926=l9_925;
}
float l9_927=l9_895.y;
float l9_928=l9_900.y;
float l9_929=l9_900.w;
bool l9_930=l9_926;
float l9_931=l9_905;
float l9_932=fast::clamp(l9_927,l9_928,l9_929);
float l9_933=step(abs(l9_927-l9_932),9.9999997e-06);
l9_931*=(l9_933+((1.0-float(l9_930))*(1.0-l9_933)));
l9_927=l9_932;
l9_895.y=l9_927;
l9_905=l9_931;
}
float2 l9_934=l9_895;
bool l9_935=l9_896;
float3x3 l9_936=l9_897;
if (l9_935)
{
l9_934=float2((l9_936*float3(l9_934,1.0)).xy);
}
float2 l9_937=l9_934;
l9_895=l9_937;
float l9_938=l9_895.x;
int l9_939=l9_898.x;
bool l9_940=l9_904;
float l9_941=l9_905;
if ((l9_939==0)||(l9_939==3))
{
float l9_942=l9_938;
float l9_943=0.0;
float l9_944=1.0;
bool l9_945=l9_940;
float l9_946=l9_941;
float l9_947=fast::clamp(l9_942,l9_943,l9_944);
float l9_948=step(abs(l9_942-l9_947),9.9999997e-06);
l9_946*=(l9_948+((1.0-float(l9_945))*(1.0-l9_948)));
l9_942=l9_947;
l9_938=l9_942;
l9_941=l9_946;
}
l9_895.x=l9_938;
l9_905=l9_941;
float l9_949=l9_895.y;
int l9_950=l9_898.y;
bool l9_951=l9_904;
float l9_952=l9_905;
if ((l9_950==0)||(l9_950==3))
{
float l9_953=l9_949;
float l9_954=0.0;
float l9_955=1.0;
bool l9_956=l9_951;
float l9_957=l9_952;
float l9_958=fast::clamp(l9_953,l9_954,l9_955);
float l9_959=step(abs(l9_953-l9_958),9.9999997e-06);
l9_957*=(l9_959+((1.0-float(l9_956))*(1.0-l9_959)));
l9_953=l9_958;
l9_949=l9_953;
l9_952=l9_957;
}
l9_895.y=l9_949;
l9_905=l9_952;
float2 l9_960=l9_895;
int l9_961=l9_893;
int l9_962=l9_894;
float l9_963=l9_903;
float2 l9_964=l9_960;
int l9_965=l9_961;
int l9_966=l9_962;
float3 l9_967=float3(0.0);
if (l9_965==0)
{
l9_967=float3(l9_964,0.0);
}
else
{
if (l9_965==1)
{
l9_967=float3(l9_964.x,(l9_964.y*0.5)+(0.5-(float(l9_966)*0.5)),0.0);
}
else
{
l9_967=float3(l9_964,float(l9_966));
}
}
float3 l9_968=l9_967;
float3 l9_969=l9_968;
float4 l9_970=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_969.xy,bias(l9_963));
float4 l9_971=l9_970;
if (l9_901)
{
l9_971=mix(l9_902,l9_971,float4(l9_905));
}
float4 l9_972=l9_971;
l9_886=l9_972;
l9_673=l9_886;
l9_676=l9_673;
}
else
{
l9_676=l9_674;
}
l9_672=l9_676;
float4 l9_973=float4(0.0);
l9_973=l9_671*l9_672;
float4 l9_974=float4(0.0);
l9_974=l9_973;
float4 l9_975=float4(0.0);
l9_975=l9_974;
float l9_976=0.0;
float l9_977=0.0;
float l9_978=0.0;
float3 l9_979=l9_975.xyz;
float l9_980=l9_979.x;
float l9_981=l9_979.y;
float l9_982=l9_979.z;
l9_976=l9_980;
l9_977=l9_981;
l9_978=l9_982;
float3 l9_983=float3(0.0);
l9_983=l9_668*float3(l9_976);
float3 l9_984=float3(0.0);
float3 l9_985=(*sc_set0.UserUniforms).recolorGreen;
l9_984=l9_985;
float3 l9_986=float3(0.0);
l9_986=l9_984;
float3 l9_987=float3(0.0);
l9_987=l9_986*float3(l9_977);
float3 l9_988=float3(0.0);
float3 l9_989=(*sc_set0.UserUniforms).recolorBlue;
l9_988=l9_989;
float3 l9_990=float3(0.0);
l9_990=l9_988;
float3 l9_991=float3(0.0);
l9_991=l9_990*float3(l9_978);
float3 l9_992=float3(0.0);
l9_992=(l9_983+l9_987)+l9_991;
l9_662=l9_992;
l9_665=l9_662;
}
else
{
float4 l9_993=float4(0.0);
float4 l9_994=(*sc_set0.UserUniforms).baseColor;
l9_993=l9_994;
float4 l9_995=float4(0.0);
l9_995=l9_993;
float4 l9_996=float4(0.0);
float4 l9_997=float4(0.0);
float4 l9_998=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_999=l9_664;
float4 l9_1000;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_1001=float2(0.0);
float2 l9_1002=float2(0.0);
float2 l9_1003=float2(0.0);
float2 l9_1004=float2(0.0);
float2 l9_1005=float2(0.0);
float2 l9_1006=float2(0.0);
ssGlobals l9_1007=l9_999;
float2 l9_1008;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_1009=float2(0.0);
l9_1009=l9_1007.Surface_UVCoord0;
l9_1002=l9_1009;
l9_1008=l9_1002;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_1010=float2(0.0);
l9_1010=l9_1007.Surface_UVCoord1;
l9_1003=l9_1010;
l9_1008=l9_1003;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_1011=float2(0.0);
l9_1011=l9_1007.Surface_UVCoord0;
float2 l9_1012=float2(0.0);
float2 l9_1013=float2(0.0);
float2 l9_1014=float2(0.0);
ssGlobals l9_1015=l9_1007;
float2 l9_1016;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1017=float2(0.0);
float2 l9_1018=float2(0.0);
float2 l9_1019=float2(0.0);
float2 l9_1020=float2(0.0);
float2 l9_1021=float2(0.0);
ssGlobals l9_1022=l9_1015;
float2 l9_1023;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1024=float2(0.0);
l9_1024=l9_1022.Surface_UVCoord0;
l9_1018=l9_1024;
l9_1023=l9_1018;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1025=float2(0.0);
l9_1025=l9_1022.Surface_UVCoord1;
l9_1019=l9_1025;
l9_1023=l9_1019;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1026=float2(0.0);
l9_1026=l9_1022.gScreenCoord;
l9_1020=l9_1026;
l9_1023=l9_1020;
}
else
{
float2 l9_1027=float2(0.0);
l9_1027=l9_1022.Surface_UVCoord0;
l9_1021=l9_1027;
l9_1023=l9_1021;
}
}
}
l9_1017=l9_1023;
float2 l9_1028=float2(0.0);
float2 l9_1029=(*sc_set0.UserUniforms).uv2Scale;
l9_1028=l9_1029;
float2 l9_1030=float2(0.0);
l9_1030=l9_1028;
float2 l9_1031=float2(0.0);
float2 l9_1032=(*sc_set0.UserUniforms).uv2Offset;
l9_1031=l9_1032;
float2 l9_1033=float2(0.0);
l9_1033=l9_1031;
float2 l9_1034=float2(0.0);
l9_1034=(l9_1017*l9_1030)+l9_1033;
float2 l9_1035=float2(0.0);
l9_1035=l9_1034+(l9_1033*(l9_1015.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1013=l9_1035;
l9_1016=l9_1013;
}
else
{
float2 l9_1036=float2(0.0);
float2 l9_1037=float2(0.0);
float2 l9_1038=float2(0.0);
float2 l9_1039=float2(0.0);
float2 l9_1040=float2(0.0);
ssGlobals l9_1041=l9_1015;
float2 l9_1042;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1043=float2(0.0);
l9_1043=l9_1041.Surface_UVCoord0;
l9_1037=l9_1043;
l9_1042=l9_1037;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1044=float2(0.0);
l9_1044=l9_1041.Surface_UVCoord1;
l9_1038=l9_1044;
l9_1042=l9_1038;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1045=float2(0.0);
l9_1045=l9_1041.gScreenCoord;
l9_1039=l9_1045;
l9_1042=l9_1039;
}
else
{
float2 l9_1046=float2(0.0);
l9_1046=l9_1041.Surface_UVCoord0;
l9_1040=l9_1046;
l9_1042=l9_1040;
}
}
}
l9_1036=l9_1042;
float2 l9_1047=float2(0.0);
float2 l9_1048=(*sc_set0.UserUniforms).uv2Scale;
l9_1047=l9_1048;
float2 l9_1049=float2(0.0);
l9_1049=l9_1047;
float2 l9_1050=float2(0.0);
float2 l9_1051=(*sc_set0.UserUniforms).uv2Offset;
l9_1050=l9_1051;
float2 l9_1052=float2(0.0);
l9_1052=l9_1050;
float2 l9_1053=float2(0.0);
l9_1053=(l9_1036*l9_1049)+l9_1052;
l9_1014=l9_1053;
l9_1016=l9_1014;
}
l9_1012=l9_1016;
float l9_1054=0.0;
float l9_1055;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1055=1.001;
}
else
{
l9_1055=0.001;
}
l9_1055-=0.001;
l9_1054=l9_1055;
float l9_1056=0.0;
l9_1056=l9_1054;
float2 l9_1057=float2(0.0);
l9_1057=mix(l9_1011,l9_1012,float2(l9_1056));
float2 l9_1058=float2(0.0);
l9_1058=l9_1057;
float2 l9_1059=float2(0.0);
l9_1059=l9_1058;
l9_1004=l9_1059;
l9_1008=l9_1004;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_1060=float2(0.0);
l9_1060=l9_1007.Surface_UVCoord0;
float2 l9_1061=float2(0.0);
float2 l9_1062=float2(0.0);
float2 l9_1063=float2(0.0);
ssGlobals l9_1064=l9_1007;
float2 l9_1065;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1066=float2(0.0);
float2 l9_1067=float2(0.0);
float2 l9_1068=float2(0.0);
float2 l9_1069=float2(0.0);
float2 l9_1070=float2(0.0);
float2 l9_1071=float2(0.0);
ssGlobals l9_1072=l9_1064;
float2 l9_1073;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1074=float2(0.0);
l9_1074=l9_1072.Surface_UVCoord0;
l9_1067=l9_1074;
l9_1073=l9_1067;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1075=float2(0.0);
l9_1075=l9_1072.Surface_UVCoord1;
l9_1068=l9_1075;
l9_1073=l9_1068;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1076=float2(0.0);
l9_1076=l9_1072.gScreenCoord;
l9_1069=l9_1076;
l9_1073=l9_1069;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1077=float2(0.0);
l9_1077=l9_1072.Surface_UVCoord0;
float2 l9_1078=float2(0.0);
float2 l9_1079=float2(0.0);
float2 l9_1080=float2(0.0);
ssGlobals l9_1081=l9_1072;
float2 l9_1082;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1083=float2(0.0);
float2 l9_1084=float2(0.0);
float2 l9_1085=float2(0.0);
float2 l9_1086=float2(0.0);
float2 l9_1087=float2(0.0);
ssGlobals l9_1088=l9_1081;
float2 l9_1089;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1090=float2(0.0);
l9_1090=l9_1088.Surface_UVCoord0;
l9_1084=l9_1090;
l9_1089=l9_1084;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1091=float2(0.0);
l9_1091=l9_1088.Surface_UVCoord1;
l9_1085=l9_1091;
l9_1089=l9_1085;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1092=float2(0.0);
l9_1092=l9_1088.gScreenCoord;
l9_1086=l9_1092;
l9_1089=l9_1086;
}
else
{
float2 l9_1093=float2(0.0);
l9_1093=l9_1088.Surface_UVCoord0;
l9_1087=l9_1093;
l9_1089=l9_1087;
}
}
}
l9_1083=l9_1089;
float2 l9_1094=float2(0.0);
float2 l9_1095=(*sc_set0.UserUniforms).uv2Scale;
l9_1094=l9_1095;
float2 l9_1096=float2(0.0);
l9_1096=l9_1094;
float2 l9_1097=float2(0.0);
float2 l9_1098=(*sc_set0.UserUniforms).uv2Offset;
l9_1097=l9_1098;
float2 l9_1099=float2(0.0);
l9_1099=l9_1097;
float2 l9_1100=float2(0.0);
l9_1100=(l9_1083*l9_1096)+l9_1099;
float2 l9_1101=float2(0.0);
l9_1101=l9_1100+(l9_1099*(l9_1081.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1079=l9_1101;
l9_1082=l9_1079;
}
else
{
float2 l9_1102=float2(0.0);
float2 l9_1103=float2(0.0);
float2 l9_1104=float2(0.0);
float2 l9_1105=float2(0.0);
float2 l9_1106=float2(0.0);
ssGlobals l9_1107=l9_1081;
float2 l9_1108;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1109=float2(0.0);
l9_1109=l9_1107.Surface_UVCoord0;
l9_1103=l9_1109;
l9_1108=l9_1103;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1110=float2(0.0);
l9_1110=l9_1107.Surface_UVCoord1;
l9_1104=l9_1110;
l9_1108=l9_1104;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1111=float2(0.0);
l9_1111=l9_1107.gScreenCoord;
l9_1105=l9_1111;
l9_1108=l9_1105;
}
else
{
float2 l9_1112=float2(0.0);
l9_1112=l9_1107.Surface_UVCoord0;
l9_1106=l9_1112;
l9_1108=l9_1106;
}
}
}
l9_1102=l9_1108;
float2 l9_1113=float2(0.0);
float2 l9_1114=(*sc_set0.UserUniforms).uv2Scale;
l9_1113=l9_1114;
float2 l9_1115=float2(0.0);
l9_1115=l9_1113;
float2 l9_1116=float2(0.0);
float2 l9_1117=(*sc_set0.UserUniforms).uv2Offset;
l9_1116=l9_1117;
float2 l9_1118=float2(0.0);
l9_1118=l9_1116;
float2 l9_1119=float2(0.0);
l9_1119=(l9_1102*l9_1115)+l9_1118;
l9_1080=l9_1119;
l9_1082=l9_1080;
}
l9_1078=l9_1082;
float l9_1120=0.0;
float l9_1121;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1121=1.001;
}
else
{
l9_1121=0.001;
}
l9_1121-=0.001;
l9_1120=l9_1121;
float l9_1122=0.0;
l9_1122=l9_1120;
float2 l9_1123=float2(0.0);
l9_1123=mix(l9_1077,l9_1078,float2(l9_1122));
float2 l9_1124=float2(0.0);
l9_1124=l9_1123;
float2 l9_1125=float2(0.0);
l9_1125=l9_1124;
l9_1070=l9_1125;
l9_1073=l9_1070;
}
else
{
float2 l9_1126=float2(0.0);
l9_1126=l9_1072.Surface_UVCoord0;
l9_1071=l9_1126;
l9_1073=l9_1071;
}
}
}
}
l9_1066=l9_1073;
float2 l9_1127=float2(0.0);
float2 l9_1128=(*sc_set0.UserUniforms).uv3Scale;
l9_1127=l9_1128;
float2 l9_1129=float2(0.0);
l9_1129=l9_1127;
float2 l9_1130=float2(0.0);
float2 l9_1131=(*sc_set0.UserUniforms).uv3Offset;
l9_1130=l9_1131;
float2 l9_1132=float2(0.0);
l9_1132=l9_1130;
float2 l9_1133=float2(0.0);
l9_1133=(l9_1066*l9_1129)+l9_1132;
float2 l9_1134=float2(0.0);
l9_1134=l9_1133+(l9_1132*(l9_1064.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1062=l9_1134;
l9_1065=l9_1062;
}
else
{
float2 l9_1135=float2(0.0);
float2 l9_1136=float2(0.0);
float2 l9_1137=float2(0.0);
float2 l9_1138=float2(0.0);
float2 l9_1139=float2(0.0);
float2 l9_1140=float2(0.0);
ssGlobals l9_1141=l9_1064;
float2 l9_1142;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1143=float2(0.0);
l9_1143=l9_1141.Surface_UVCoord0;
l9_1136=l9_1143;
l9_1142=l9_1136;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1144=float2(0.0);
l9_1144=l9_1141.Surface_UVCoord1;
l9_1137=l9_1144;
l9_1142=l9_1137;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1145=float2(0.0);
l9_1145=l9_1141.gScreenCoord;
l9_1138=l9_1145;
l9_1142=l9_1138;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1146=float2(0.0);
l9_1146=l9_1141.Surface_UVCoord0;
float2 l9_1147=float2(0.0);
float2 l9_1148=float2(0.0);
float2 l9_1149=float2(0.0);
ssGlobals l9_1150=l9_1141;
float2 l9_1151;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1152=float2(0.0);
float2 l9_1153=float2(0.0);
float2 l9_1154=float2(0.0);
float2 l9_1155=float2(0.0);
float2 l9_1156=float2(0.0);
ssGlobals l9_1157=l9_1150;
float2 l9_1158;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1159=float2(0.0);
l9_1159=l9_1157.Surface_UVCoord0;
l9_1153=l9_1159;
l9_1158=l9_1153;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1160=float2(0.0);
l9_1160=l9_1157.Surface_UVCoord1;
l9_1154=l9_1160;
l9_1158=l9_1154;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1161=float2(0.0);
l9_1161=l9_1157.gScreenCoord;
l9_1155=l9_1161;
l9_1158=l9_1155;
}
else
{
float2 l9_1162=float2(0.0);
l9_1162=l9_1157.Surface_UVCoord0;
l9_1156=l9_1162;
l9_1158=l9_1156;
}
}
}
l9_1152=l9_1158;
float2 l9_1163=float2(0.0);
float2 l9_1164=(*sc_set0.UserUniforms).uv2Scale;
l9_1163=l9_1164;
float2 l9_1165=float2(0.0);
l9_1165=l9_1163;
float2 l9_1166=float2(0.0);
float2 l9_1167=(*sc_set0.UserUniforms).uv2Offset;
l9_1166=l9_1167;
float2 l9_1168=float2(0.0);
l9_1168=l9_1166;
float2 l9_1169=float2(0.0);
l9_1169=(l9_1152*l9_1165)+l9_1168;
float2 l9_1170=float2(0.0);
l9_1170=l9_1169+(l9_1168*(l9_1150.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1148=l9_1170;
l9_1151=l9_1148;
}
else
{
float2 l9_1171=float2(0.0);
float2 l9_1172=float2(0.0);
float2 l9_1173=float2(0.0);
float2 l9_1174=float2(0.0);
float2 l9_1175=float2(0.0);
ssGlobals l9_1176=l9_1150;
float2 l9_1177;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1178=float2(0.0);
l9_1178=l9_1176.Surface_UVCoord0;
l9_1172=l9_1178;
l9_1177=l9_1172;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1179=float2(0.0);
l9_1179=l9_1176.Surface_UVCoord1;
l9_1173=l9_1179;
l9_1177=l9_1173;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1180=float2(0.0);
l9_1180=l9_1176.gScreenCoord;
l9_1174=l9_1180;
l9_1177=l9_1174;
}
else
{
float2 l9_1181=float2(0.0);
l9_1181=l9_1176.Surface_UVCoord0;
l9_1175=l9_1181;
l9_1177=l9_1175;
}
}
}
l9_1171=l9_1177;
float2 l9_1182=float2(0.0);
float2 l9_1183=(*sc_set0.UserUniforms).uv2Scale;
l9_1182=l9_1183;
float2 l9_1184=float2(0.0);
l9_1184=l9_1182;
float2 l9_1185=float2(0.0);
float2 l9_1186=(*sc_set0.UserUniforms).uv2Offset;
l9_1185=l9_1186;
float2 l9_1187=float2(0.0);
l9_1187=l9_1185;
float2 l9_1188=float2(0.0);
l9_1188=(l9_1171*l9_1184)+l9_1187;
l9_1149=l9_1188;
l9_1151=l9_1149;
}
l9_1147=l9_1151;
float l9_1189=0.0;
float l9_1190;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1190=1.001;
}
else
{
l9_1190=0.001;
}
l9_1190-=0.001;
l9_1189=l9_1190;
float l9_1191=0.0;
l9_1191=l9_1189;
float2 l9_1192=float2(0.0);
l9_1192=mix(l9_1146,l9_1147,float2(l9_1191));
float2 l9_1193=float2(0.0);
l9_1193=l9_1192;
float2 l9_1194=float2(0.0);
l9_1194=l9_1193;
l9_1139=l9_1194;
l9_1142=l9_1139;
}
else
{
float2 l9_1195=float2(0.0);
l9_1195=l9_1141.Surface_UVCoord0;
l9_1140=l9_1195;
l9_1142=l9_1140;
}
}
}
}
l9_1135=l9_1142;
float2 l9_1196=float2(0.0);
float2 l9_1197=(*sc_set0.UserUniforms).uv3Scale;
l9_1196=l9_1197;
float2 l9_1198=float2(0.0);
l9_1198=l9_1196;
float2 l9_1199=float2(0.0);
float2 l9_1200=(*sc_set0.UserUniforms).uv3Offset;
l9_1199=l9_1200;
float2 l9_1201=float2(0.0);
l9_1201=l9_1199;
float2 l9_1202=float2(0.0);
l9_1202=(l9_1135*l9_1198)+l9_1201;
l9_1063=l9_1202;
l9_1065=l9_1063;
}
l9_1061=l9_1065;
float l9_1203=0.0;
float l9_1204;
if ((int(Tweak_N11_tmp)!=0))
{
l9_1204=1.001;
}
else
{
l9_1204=0.001;
}
l9_1204-=0.001;
l9_1203=l9_1204;
float l9_1205=0.0;
l9_1205=l9_1203;
float2 l9_1206=float2(0.0);
l9_1206=mix(l9_1060,l9_1061,float2(l9_1205));
float2 l9_1207=float2(0.0);
l9_1207=l9_1206;
float2 l9_1208=float2(0.0);
l9_1208=l9_1207;
l9_1005=l9_1208;
l9_1008=l9_1005;
}
else
{
float2 l9_1209=float2(0.0);
l9_1209=l9_1007.Surface_UVCoord0;
l9_1006=l9_1209;
l9_1008=l9_1006;
}
}
}
}
l9_1001=l9_1008;
float4 l9_1210=float4(0.0);
int l9_1211;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_1212=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1212=0;
}
else
{
l9_1212=in.varStereoViewID;
}
int l9_1213=l9_1212;
l9_1211=1-l9_1213;
}
else
{
int l9_1214=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1214=0;
}
else
{
l9_1214=in.varStereoViewID;
}
int l9_1215=l9_1214;
l9_1211=l9_1215;
}
int l9_1216=l9_1211;
int l9_1217=baseTexLayout_tmp;
int l9_1218=l9_1216;
float2 l9_1219=l9_1001;
bool l9_1220=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_1221=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_1222=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_1223=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_1224=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_1225=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_1226=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_1227=0.0;
bool l9_1228=l9_1225&&(!l9_1223);
float l9_1229=1.0;
float l9_1230=l9_1219.x;
int l9_1231=l9_1222.x;
if (l9_1231==1)
{
l9_1230=fract(l9_1230);
}
else
{
if (l9_1231==2)
{
float l9_1232=fract(l9_1230);
float l9_1233=l9_1230-l9_1232;
float l9_1234=step(0.25,fract(l9_1233*0.5));
l9_1230=mix(l9_1232,1.0-l9_1232,fast::clamp(l9_1234,0.0,1.0));
}
}
l9_1219.x=l9_1230;
float l9_1235=l9_1219.y;
int l9_1236=l9_1222.y;
if (l9_1236==1)
{
l9_1235=fract(l9_1235);
}
else
{
if (l9_1236==2)
{
float l9_1237=fract(l9_1235);
float l9_1238=l9_1235-l9_1237;
float l9_1239=step(0.25,fract(l9_1238*0.5));
l9_1235=mix(l9_1237,1.0-l9_1237,fast::clamp(l9_1239,0.0,1.0));
}
}
l9_1219.y=l9_1235;
if (l9_1223)
{
bool l9_1240=l9_1225;
bool l9_1241;
if (l9_1240)
{
l9_1241=l9_1222.x==3;
}
else
{
l9_1241=l9_1240;
}
float l9_1242=l9_1219.x;
float l9_1243=l9_1224.x;
float l9_1244=l9_1224.z;
bool l9_1245=l9_1241;
float l9_1246=l9_1229;
float l9_1247=fast::clamp(l9_1242,l9_1243,l9_1244);
float l9_1248=step(abs(l9_1242-l9_1247),9.9999997e-06);
l9_1246*=(l9_1248+((1.0-float(l9_1245))*(1.0-l9_1248)));
l9_1242=l9_1247;
l9_1219.x=l9_1242;
l9_1229=l9_1246;
bool l9_1249=l9_1225;
bool l9_1250;
if (l9_1249)
{
l9_1250=l9_1222.y==3;
}
else
{
l9_1250=l9_1249;
}
float l9_1251=l9_1219.y;
float l9_1252=l9_1224.y;
float l9_1253=l9_1224.w;
bool l9_1254=l9_1250;
float l9_1255=l9_1229;
float l9_1256=fast::clamp(l9_1251,l9_1252,l9_1253);
float l9_1257=step(abs(l9_1251-l9_1256),9.9999997e-06);
l9_1255*=(l9_1257+((1.0-float(l9_1254))*(1.0-l9_1257)));
l9_1251=l9_1256;
l9_1219.y=l9_1251;
l9_1229=l9_1255;
}
float2 l9_1258=l9_1219;
bool l9_1259=l9_1220;
float3x3 l9_1260=l9_1221;
if (l9_1259)
{
l9_1258=float2((l9_1260*float3(l9_1258,1.0)).xy);
}
float2 l9_1261=l9_1258;
l9_1219=l9_1261;
float l9_1262=l9_1219.x;
int l9_1263=l9_1222.x;
bool l9_1264=l9_1228;
float l9_1265=l9_1229;
if ((l9_1263==0)||(l9_1263==3))
{
float l9_1266=l9_1262;
float l9_1267=0.0;
float l9_1268=1.0;
bool l9_1269=l9_1264;
float l9_1270=l9_1265;
float l9_1271=fast::clamp(l9_1266,l9_1267,l9_1268);
float l9_1272=step(abs(l9_1266-l9_1271),9.9999997e-06);
l9_1270*=(l9_1272+((1.0-float(l9_1269))*(1.0-l9_1272)));
l9_1266=l9_1271;
l9_1262=l9_1266;
l9_1265=l9_1270;
}
l9_1219.x=l9_1262;
l9_1229=l9_1265;
float l9_1273=l9_1219.y;
int l9_1274=l9_1222.y;
bool l9_1275=l9_1228;
float l9_1276=l9_1229;
if ((l9_1274==0)||(l9_1274==3))
{
float l9_1277=l9_1273;
float l9_1278=0.0;
float l9_1279=1.0;
bool l9_1280=l9_1275;
float l9_1281=l9_1276;
float l9_1282=fast::clamp(l9_1277,l9_1278,l9_1279);
float l9_1283=step(abs(l9_1277-l9_1282),9.9999997e-06);
l9_1281*=(l9_1283+((1.0-float(l9_1280))*(1.0-l9_1283)));
l9_1277=l9_1282;
l9_1273=l9_1277;
l9_1276=l9_1281;
}
l9_1219.y=l9_1273;
l9_1229=l9_1276;
float2 l9_1284=l9_1219;
int l9_1285=l9_1217;
int l9_1286=l9_1218;
float l9_1287=l9_1227;
float2 l9_1288=l9_1284;
int l9_1289=l9_1285;
int l9_1290=l9_1286;
float3 l9_1291=float3(0.0);
if (l9_1289==0)
{
l9_1291=float3(l9_1288,0.0);
}
else
{
if (l9_1289==1)
{
l9_1291=float3(l9_1288.x,(l9_1288.y*0.5)+(0.5-(float(l9_1290)*0.5)),0.0);
}
else
{
l9_1291=float3(l9_1288,float(l9_1290));
}
}
float3 l9_1292=l9_1291;
float3 l9_1293=l9_1292;
float4 l9_1294=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_1293.xy,bias(l9_1287));
float4 l9_1295=l9_1294;
if (l9_1225)
{
l9_1295=mix(l9_1226,l9_1295,float4(l9_1229));
}
float4 l9_1296=l9_1295;
l9_1210=l9_1296;
l9_997=l9_1210;
l9_1000=l9_997;
}
else
{
l9_1000=l9_998;
}
l9_996=l9_1000;
float4 l9_1297=float4(0.0);
l9_1297=l9_995*l9_996;
float4 l9_1298=float4(0.0);
l9_1298=l9_1297;
float4 l9_1299=float4(0.0);
l9_1299=l9_1298;
l9_663=l9_1299.xyz;
l9_665=l9_663;
}
l9_661=l9_665;
float3 l9_1300=float3(0.0);
l9_1300=l9_661;
float3 l9_1301=float3(0.0);
l9_1301=l9_1300;
float4 l9_1302=float4(0.0);
l9_1302=float4(l9_1301.x,l9_1301.y,l9_1301.z,l9_1302.w);
l9_1302.w=(*sc_set0.UserUniforms).Port_Value2_N073;
param_2=l9_1302;
param_3=param_2;
}
Result_N363=param_3;
float4 Export_N364=float4(0.0);
Export_N364=Result_N363;
float2 UVCoord_N1=float2(0.0);
UVCoord_N1=Globals.Surface_UVCoord0;
float Output_N78=0.0;
Output_N78=UVCoord_N1.y;
float Output_N79=0.0;
float param_5=(*sc_set0.UserUniforms).progress_value;
Output_N79=param_5;
float Output_N97=0.0;
Output_N97=step(Output_N78,Output_N79);
float4 Output_N104=float4(0.0);
Output_N104=Export_N364*float4(Output_N97);
float Output_N2=0.0;
Output_N2=Output_N104.w;
float3 Result_N337=float3(0.0);
float3 param_6=float3(0.0);
float3 param_7=float3(0.0);
ssGlobals param_9=Globals;
float3 param_8;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_1303=float3(0.0);
l9_1303=param_9.VertexTangent_WorldSpace;
float3 l9_1304=float3(0.0);
l9_1304=param_9.VertexBinormal_WorldSpace;
float3 l9_1305=float3(0.0);
l9_1305=param_9.VertexNormal_WorldSpace;
float3x3 l9_1306=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_1306=float3x3(float3(l9_1303),float3(l9_1304),float3(l9_1305));
float2 l9_1307=float2(0.0);
float2 l9_1308=float2(0.0);
float2 l9_1309=float2(0.0);
float2 l9_1310=float2(0.0);
float2 l9_1311=float2(0.0);
float2 l9_1312=float2(0.0);
ssGlobals l9_1313=param_9;
float2 l9_1314;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_1315=float2(0.0);
l9_1315=l9_1313.Surface_UVCoord0;
l9_1308=l9_1315;
l9_1314=l9_1308;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_1316=float2(0.0);
l9_1316=l9_1313.Surface_UVCoord1;
l9_1309=l9_1316;
l9_1314=l9_1309;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_1317=float2(0.0);
l9_1317=l9_1313.Surface_UVCoord0;
float2 l9_1318=float2(0.0);
float2 l9_1319=float2(0.0);
float2 l9_1320=float2(0.0);
ssGlobals l9_1321=l9_1313;
float2 l9_1322;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1323=float2(0.0);
float2 l9_1324=float2(0.0);
float2 l9_1325=float2(0.0);
float2 l9_1326=float2(0.0);
float2 l9_1327=float2(0.0);
ssGlobals l9_1328=l9_1321;
float2 l9_1329;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1330=float2(0.0);
l9_1330=l9_1328.Surface_UVCoord0;
l9_1324=l9_1330;
l9_1329=l9_1324;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1331=float2(0.0);
l9_1331=l9_1328.Surface_UVCoord1;
l9_1325=l9_1331;
l9_1329=l9_1325;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1332=float2(0.0);
l9_1332=l9_1328.gScreenCoord;
l9_1326=l9_1332;
l9_1329=l9_1326;
}
else
{
float2 l9_1333=float2(0.0);
l9_1333=l9_1328.Surface_UVCoord0;
l9_1327=l9_1333;
l9_1329=l9_1327;
}
}
}
l9_1323=l9_1329;
float2 l9_1334=float2(0.0);
float2 l9_1335=(*sc_set0.UserUniforms).uv2Scale;
l9_1334=l9_1335;
float2 l9_1336=float2(0.0);
l9_1336=l9_1334;
float2 l9_1337=float2(0.0);
float2 l9_1338=(*sc_set0.UserUniforms).uv2Offset;
l9_1337=l9_1338;
float2 l9_1339=float2(0.0);
l9_1339=l9_1337;
float2 l9_1340=float2(0.0);
l9_1340=(l9_1323*l9_1336)+l9_1339;
float2 l9_1341=float2(0.0);
l9_1341=l9_1340+(l9_1339*(l9_1321.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1319=l9_1341;
l9_1322=l9_1319;
}
else
{
float2 l9_1342=float2(0.0);
float2 l9_1343=float2(0.0);
float2 l9_1344=float2(0.0);
float2 l9_1345=float2(0.0);
float2 l9_1346=float2(0.0);
ssGlobals l9_1347=l9_1321;
float2 l9_1348;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1349=float2(0.0);
l9_1349=l9_1347.Surface_UVCoord0;
l9_1343=l9_1349;
l9_1348=l9_1343;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1350=float2(0.0);
l9_1350=l9_1347.Surface_UVCoord1;
l9_1344=l9_1350;
l9_1348=l9_1344;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1351=float2(0.0);
l9_1351=l9_1347.gScreenCoord;
l9_1345=l9_1351;
l9_1348=l9_1345;
}
else
{
float2 l9_1352=float2(0.0);
l9_1352=l9_1347.Surface_UVCoord0;
l9_1346=l9_1352;
l9_1348=l9_1346;
}
}
}
l9_1342=l9_1348;
float2 l9_1353=float2(0.0);
float2 l9_1354=(*sc_set0.UserUniforms).uv2Scale;
l9_1353=l9_1354;
float2 l9_1355=float2(0.0);
l9_1355=l9_1353;
float2 l9_1356=float2(0.0);
float2 l9_1357=(*sc_set0.UserUniforms).uv2Offset;
l9_1356=l9_1357;
float2 l9_1358=float2(0.0);
l9_1358=l9_1356;
float2 l9_1359=float2(0.0);
l9_1359=(l9_1342*l9_1355)+l9_1358;
l9_1320=l9_1359;
l9_1322=l9_1320;
}
l9_1318=l9_1322;
float l9_1360=0.0;
float l9_1361;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1361=1.001;
}
else
{
l9_1361=0.001;
}
l9_1361-=0.001;
l9_1360=l9_1361;
float l9_1362=0.0;
l9_1362=l9_1360;
float2 l9_1363=float2(0.0);
l9_1363=mix(l9_1317,l9_1318,float2(l9_1362));
float2 l9_1364=float2(0.0);
l9_1364=l9_1363;
float2 l9_1365=float2(0.0);
l9_1365=l9_1364;
l9_1310=l9_1365;
l9_1314=l9_1310;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_1366=float2(0.0);
l9_1366=l9_1313.Surface_UVCoord0;
float2 l9_1367=float2(0.0);
float2 l9_1368=float2(0.0);
float2 l9_1369=float2(0.0);
ssGlobals l9_1370=l9_1313;
float2 l9_1371;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1372=float2(0.0);
float2 l9_1373=float2(0.0);
float2 l9_1374=float2(0.0);
float2 l9_1375=float2(0.0);
float2 l9_1376=float2(0.0);
float2 l9_1377=float2(0.0);
ssGlobals l9_1378=l9_1370;
float2 l9_1379;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1380=float2(0.0);
l9_1380=l9_1378.Surface_UVCoord0;
l9_1373=l9_1380;
l9_1379=l9_1373;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1381=float2(0.0);
l9_1381=l9_1378.Surface_UVCoord1;
l9_1374=l9_1381;
l9_1379=l9_1374;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1382=float2(0.0);
l9_1382=l9_1378.gScreenCoord;
l9_1375=l9_1382;
l9_1379=l9_1375;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1383=float2(0.0);
l9_1383=l9_1378.Surface_UVCoord0;
float2 l9_1384=float2(0.0);
float2 l9_1385=float2(0.0);
float2 l9_1386=float2(0.0);
ssGlobals l9_1387=l9_1378;
float2 l9_1388;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1389=float2(0.0);
float2 l9_1390=float2(0.0);
float2 l9_1391=float2(0.0);
float2 l9_1392=float2(0.0);
float2 l9_1393=float2(0.0);
ssGlobals l9_1394=l9_1387;
float2 l9_1395;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1396=float2(0.0);
l9_1396=l9_1394.Surface_UVCoord0;
l9_1390=l9_1396;
l9_1395=l9_1390;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1397=float2(0.0);
l9_1397=l9_1394.Surface_UVCoord1;
l9_1391=l9_1397;
l9_1395=l9_1391;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1398=float2(0.0);
l9_1398=l9_1394.gScreenCoord;
l9_1392=l9_1398;
l9_1395=l9_1392;
}
else
{
float2 l9_1399=float2(0.0);
l9_1399=l9_1394.Surface_UVCoord0;
l9_1393=l9_1399;
l9_1395=l9_1393;
}
}
}
l9_1389=l9_1395;
float2 l9_1400=float2(0.0);
float2 l9_1401=(*sc_set0.UserUniforms).uv2Scale;
l9_1400=l9_1401;
float2 l9_1402=float2(0.0);
l9_1402=l9_1400;
float2 l9_1403=float2(0.0);
float2 l9_1404=(*sc_set0.UserUniforms).uv2Offset;
l9_1403=l9_1404;
float2 l9_1405=float2(0.0);
l9_1405=l9_1403;
float2 l9_1406=float2(0.0);
l9_1406=(l9_1389*l9_1402)+l9_1405;
float2 l9_1407=float2(0.0);
l9_1407=l9_1406+(l9_1405*(l9_1387.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1385=l9_1407;
l9_1388=l9_1385;
}
else
{
float2 l9_1408=float2(0.0);
float2 l9_1409=float2(0.0);
float2 l9_1410=float2(0.0);
float2 l9_1411=float2(0.0);
float2 l9_1412=float2(0.0);
ssGlobals l9_1413=l9_1387;
float2 l9_1414;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1415=float2(0.0);
l9_1415=l9_1413.Surface_UVCoord0;
l9_1409=l9_1415;
l9_1414=l9_1409;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1416=float2(0.0);
l9_1416=l9_1413.Surface_UVCoord1;
l9_1410=l9_1416;
l9_1414=l9_1410;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1417=float2(0.0);
l9_1417=l9_1413.gScreenCoord;
l9_1411=l9_1417;
l9_1414=l9_1411;
}
else
{
float2 l9_1418=float2(0.0);
l9_1418=l9_1413.Surface_UVCoord0;
l9_1412=l9_1418;
l9_1414=l9_1412;
}
}
}
l9_1408=l9_1414;
float2 l9_1419=float2(0.0);
float2 l9_1420=(*sc_set0.UserUniforms).uv2Scale;
l9_1419=l9_1420;
float2 l9_1421=float2(0.0);
l9_1421=l9_1419;
float2 l9_1422=float2(0.0);
float2 l9_1423=(*sc_set0.UserUniforms).uv2Offset;
l9_1422=l9_1423;
float2 l9_1424=float2(0.0);
l9_1424=l9_1422;
float2 l9_1425=float2(0.0);
l9_1425=(l9_1408*l9_1421)+l9_1424;
l9_1386=l9_1425;
l9_1388=l9_1386;
}
l9_1384=l9_1388;
float l9_1426=0.0;
float l9_1427;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1427=1.001;
}
else
{
l9_1427=0.001;
}
l9_1427-=0.001;
l9_1426=l9_1427;
float l9_1428=0.0;
l9_1428=l9_1426;
float2 l9_1429=float2(0.0);
l9_1429=mix(l9_1383,l9_1384,float2(l9_1428));
float2 l9_1430=float2(0.0);
l9_1430=l9_1429;
float2 l9_1431=float2(0.0);
l9_1431=l9_1430;
l9_1376=l9_1431;
l9_1379=l9_1376;
}
else
{
float2 l9_1432=float2(0.0);
l9_1432=l9_1378.Surface_UVCoord0;
l9_1377=l9_1432;
l9_1379=l9_1377;
}
}
}
}
l9_1372=l9_1379;
float2 l9_1433=float2(0.0);
float2 l9_1434=(*sc_set0.UserUniforms).uv3Scale;
l9_1433=l9_1434;
float2 l9_1435=float2(0.0);
l9_1435=l9_1433;
float2 l9_1436=float2(0.0);
float2 l9_1437=(*sc_set0.UserUniforms).uv3Offset;
l9_1436=l9_1437;
float2 l9_1438=float2(0.0);
l9_1438=l9_1436;
float2 l9_1439=float2(0.0);
l9_1439=(l9_1372*l9_1435)+l9_1438;
float2 l9_1440=float2(0.0);
l9_1440=l9_1439+(l9_1438*(l9_1370.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1368=l9_1440;
l9_1371=l9_1368;
}
else
{
float2 l9_1441=float2(0.0);
float2 l9_1442=float2(0.0);
float2 l9_1443=float2(0.0);
float2 l9_1444=float2(0.0);
float2 l9_1445=float2(0.0);
float2 l9_1446=float2(0.0);
ssGlobals l9_1447=l9_1370;
float2 l9_1448;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1449=float2(0.0);
l9_1449=l9_1447.Surface_UVCoord0;
l9_1442=l9_1449;
l9_1448=l9_1442;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1450=float2(0.0);
l9_1450=l9_1447.Surface_UVCoord1;
l9_1443=l9_1450;
l9_1448=l9_1443;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1451=float2(0.0);
l9_1451=l9_1447.gScreenCoord;
l9_1444=l9_1451;
l9_1448=l9_1444;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1452=float2(0.0);
l9_1452=l9_1447.Surface_UVCoord0;
float2 l9_1453=float2(0.0);
float2 l9_1454=float2(0.0);
float2 l9_1455=float2(0.0);
ssGlobals l9_1456=l9_1447;
float2 l9_1457;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1458=float2(0.0);
float2 l9_1459=float2(0.0);
float2 l9_1460=float2(0.0);
float2 l9_1461=float2(0.0);
float2 l9_1462=float2(0.0);
ssGlobals l9_1463=l9_1456;
float2 l9_1464;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1465=float2(0.0);
l9_1465=l9_1463.Surface_UVCoord0;
l9_1459=l9_1465;
l9_1464=l9_1459;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1466=float2(0.0);
l9_1466=l9_1463.Surface_UVCoord1;
l9_1460=l9_1466;
l9_1464=l9_1460;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1467=float2(0.0);
l9_1467=l9_1463.gScreenCoord;
l9_1461=l9_1467;
l9_1464=l9_1461;
}
else
{
float2 l9_1468=float2(0.0);
l9_1468=l9_1463.Surface_UVCoord0;
l9_1462=l9_1468;
l9_1464=l9_1462;
}
}
}
l9_1458=l9_1464;
float2 l9_1469=float2(0.0);
float2 l9_1470=(*sc_set0.UserUniforms).uv2Scale;
l9_1469=l9_1470;
float2 l9_1471=float2(0.0);
l9_1471=l9_1469;
float2 l9_1472=float2(0.0);
float2 l9_1473=(*sc_set0.UserUniforms).uv2Offset;
l9_1472=l9_1473;
float2 l9_1474=float2(0.0);
l9_1474=l9_1472;
float2 l9_1475=float2(0.0);
l9_1475=(l9_1458*l9_1471)+l9_1474;
float2 l9_1476=float2(0.0);
l9_1476=l9_1475+(l9_1474*(l9_1456.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1454=l9_1476;
l9_1457=l9_1454;
}
else
{
float2 l9_1477=float2(0.0);
float2 l9_1478=float2(0.0);
float2 l9_1479=float2(0.0);
float2 l9_1480=float2(0.0);
float2 l9_1481=float2(0.0);
ssGlobals l9_1482=l9_1456;
float2 l9_1483;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1484=float2(0.0);
l9_1484=l9_1482.Surface_UVCoord0;
l9_1478=l9_1484;
l9_1483=l9_1478;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1485=float2(0.0);
l9_1485=l9_1482.Surface_UVCoord1;
l9_1479=l9_1485;
l9_1483=l9_1479;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1486=float2(0.0);
l9_1486=l9_1482.gScreenCoord;
l9_1480=l9_1486;
l9_1483=l9_1480;
}
else
{
float2 l9_1487=float2(0.0);
l9_1487=l9_1482.Surface_UVCoord0;
l9_1481=l9_1487;
l9_1483=l9_1481;
}
}
}
l9_1477=l9_1483;
float2 l9_1488=float2(0.0);
float2 l9_1489=(*sc_set0.UserUniforms).uv2Scale;
l9_1488=l9_1489;
float2 l9_1490=float2(0.0);
l9_1490=l9_1488;
float2 l9_1491=float2(0.0);
float2 l9_1492=(*sc_set0.UserUniforms).uv2Offset;
l9_1491=l9_1492;
float2 l9_1493=float2(0.0);
l9_1493=l9_1491;
float2 l9_1494=float2(0.0);
l9_1494=(l9_1477*l9_1490)+l9_1493;
l9_1455=l9_1494;
l9_1457=l9_1455;
}
l9_1453=l9_1457;
float l9_1495=0.0;
float l9_1496;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1496=1.001;
}
else
{
l9_1496=0.001;
}
l9_1496-=0.001;
l9_1495=l9_1496;
float l9_1497=0.0;
l9_1497=l9_1495;
float2 l9_1498=float2(0.0);
l9_1498=mix(l9_1452,l9_1453,float2(l9_1497));
float2 l9_1499=float2(0.0);
l9_1499=l9_1498;
float2 l9_1500=float2(0.0);
l9_1500=l9_1499;
l9_1445=l9_1500;
l9_1448=l9_1445;
}
else
{
float2 l9_1501=float2(0.0);
l9_1501=l9_1447.Surface_UVCoord0;
l9_1446=l9_1501;
l9_1448=l9_1446;
}
}
}
}
l9_1441=l9_1448;
float2 l9_1502=float2(0.0);
float2 l9_1503=(*sc_set0.UserUniforms).uv3Scale;
l9_1502=l9_1503;
float2 l9_1504=float2(0.0);
l9_1504=l9_1502;
float2 l9_1505=float2(0.0);
float2 l9_1506=(*sc_set0.UserUniforms).uv3Offset;
l9_1505=l9_1506;
float2 l9_1507=float2(0.0);
l9_1507=l9_1505;
float2 l9_1508=float2(0.0);
l9_1508=(l9_1441*l9_1504)+l9_1507;
l9_1369=l9_1508;
l9_1371=l9_1369;
}
l9_1367=l9_1371;
float l9_1509=0.0;
float l9_1510;
if ((int(Tweak_N11_tmp)!=0))
{
l9_1510=1.001;
}
else
{
l9_1510=0.001;
}
l9_1510-=0.001;
l9_1509=l9_1510;
float l9_1511=0.0;
l9_1511=l9_1509;
float2 l9_1512=float2(0.0);
l9_1512=mix(l9_1366,l9_1367,float2(l9_1511));
float2 l9_1513=float2(0.0);
l9_1513=l9_1512;
float2 l9_1514=float2(0.0);
l9_1514=l9_1513;
l9_1311=l9_1514;
l9_1314=l9_1311;
}
else
{
float2 l9_1515=float2(0.0);
l9_1515=l9_1313.Surface_UVCoord0;
l9_1312=l9_1515;
l9_1314=l9_1312;
}
}
}
}
l9_1307=l9_1314;
float4 l9_1516=float4(0.0);
float2 l9_1517=l9_1307;
int l9_1518;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_1519=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1519=0;
}
else
{
l9_1519=in.varStereoViewID;
}
int l9_1520=l9_1519;
l9_1518=1-l9_1520;
}
else
{
int l9_1521=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1521=0;
}
else
{
l9_1521=in.varStereoViewID;
}
int l9_1522=l9_1521;
l9_1518=l9_1522;
}
int l9_1523=l9_1518;
int l9_1524=normalTexLayout_tmp;
int l9_1525=l9_1523;
float2 l9_1526=l9_1517;
bool l9_1527=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_1528=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_1529=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_1530=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_1531=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_1532=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_1533=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_1534=0.0;
bool l9_1535=l9_1532&&(!l9_1530);
float l9_1536=1.0;
float l9_1537=l9_1526.x;
int l9_1538=l9_1529.x;
if (l9_1538==1)
{
l9_1537=fract(l9_1537);
}
else
{
if (l9_1538==2)
{
float l9_1539=fract(l9_1537);
float l9_1540=l9_1537-l9_1539;
float l9_1541=step(0.25,fract(l9_1540*0.5));
l9_1537=mix(l9_1539,1.0-l9_1539,fast::clamp(l9_1541,0.0,1.0));
}
}
l9_1526.x=l9_1537;
float l9_1542=l9_1526.y;
int l9_1543=l9_1529.y;
if (l9_1543==1)
{
l9_1542=fract(l9_1542);
}
else
{
if (l9_1543==2)
{
float l9_1544=fract(l9_1542);
float l9_1545=l9_1542-l9_1544;
float l9_1546=step(0.25,fract(l9_1545*0.5));
l9_1542=mix(l9_1544,1.0-l9_1544,fast::clamp(l9_1546,0.0,1.0));
}
}
l9_1526.y=l9_1542;
if (l9_1530)
{
bool l9_1547=l9_1532;
bool l9_1548;
if (l9_1547)
{
l9_1548=l9_1529.x==3;
}
else
{
l9_1548=l9_1547;
}
float l9_1549=l9_1526.x;
float l9_1550=l9_1531.x;
float l9_1551=l9_1531.z;
bool l9_1552=l9_1548;
float l9_1553=l9_1536;
float l9_1554=fast::clamp(l9_1549,l9_1550,l9_1551);
float l9_1555=step(abs(l9_1549-l9_1554),9.9999997e-06);
l9_1553*=(l9_1555+((1.0-float(l9_1552))*(1.0-l9_1555)));
l9_1549=l9_1554;
l9_1526.x=l9_1549;
l9_1536=l9_1553;
bool l9_1556=l9_1532;
bool l9_1557;
if (l9_1556)
{
l9_1557=l9_1529.y==3;
}
else
{
l9_1557=l9_1556;
}
float l9_1558=l9_1526.y;
float l9_1559=l9_1531.y;
float l9_1560=l9_1531.w;
bool l9_1561=l9_1557;
float l9_1562=l9_1536;
float l9_1563=fast::clamp(l9_1558,l9_1559,l9_1560);
float l9_1564=step(abs(l9_1558-l9_1563),9.9999997e-06);
l9_1562*=(l9_1564+((1.0-float(l9_1561))*(1.0-l9_1564)));
l9_1558=l9_1563;
l9_1526.y=l9_1558;
l9_1536=l9_1562;
}
float2 l9_1565=l9_1526;
bool l9_1566=l9_1527;
float3x3 l9_1567=l9_1528;
if (l9_1566)
{
l9_1565=float2((l9_1567*float3(l9_1565,1.0)).xy);
}
float2 l9_1568=l9_1565;
l9_1526=l9_1568;
float l9_1569=l9_1526.x;
int l9_1570=l9_1529.x;
bool l9_1571=l9_1535;
float l9_1572=l9_1536;
if ((l9_1570==0)||(l9_1570==3))
{
float l9_1573=l9_1569;
float l9_1574=0.0;
float l9_1575=1.0;
bool l9_1576=l9_1571;
float l9_1577=l9_1572;
float l9_1578=fast::clamp(l9_1573,l9_1574,l9_1575);
float l9_1579=step(abs(l9_1573-l9_1578),9.9999997e-06);
l9_1577*=(l9_1579+((1.0-float(l9_1576))*(1.0-l9_1579)));
l9_1573=l9_1578;
l9_1569=l9_1573;
l9_1572=l9_1577;
}
l9_1526.x=l9_1569;
l9_1536=l9_1572;
float l9_1580=l9_1526.y;
int l9_1581=l9_1529.y;
bool l9_1582=l9_1535;
float l9_1583=l9_1536;
if ((l9_1581==0)||(l9_1581==3))
{
float l9_1584=l9_1580;
float l9_1585=0.0;
float l9_1586=1.0;
bool l9_1587=l9_1582;
float l9_1588=l9_1583;
float l9_1589=fast::clamp(l9_1584,l9_1585,l9_1586);
float l9_1590=step(abs(l9_1584-l9_1589),9.9999997e-06);
l9_1588*=(l9_1590+((1.0-float(l9_1587))*(1.0-l9_1590)));
l9_1584=l9_1589;
l9_1580=l9_1584;
l9_1583=l9_1588;
}
l9_1526.y=l9_1580;
l9_1536=l9_1583;
float2 l9_1591=l9_1526;
int l9_1592=l9_1524;
int l9_1593=l9_1525;
float l9_1594=l9_1534;
float2 l9_1595=l9_1591;
int l9_1596=l9_1592;
int l9_1597=l9_1593;
float3 l9_1598=float3(0.0);
if (l9_1596==0)
{
l9_1598=float3(l9_1595,0.0);
}
else
{
if (l9_1596==1)
{
l9_1598=float3(l9_1595.x,(l9_1595.y*0.5)+(0.5-(float(l9_1597)*0.5)),0.0);
}
else
{
l9_1598=float3(l9_1595,float(l9_1597));
}
}
float3 l9_1599=l9_1598;
float3 l9_1600=l9_1599;
float4 l9_1601=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_1600.xy,bias(l9_1594));
float4 l9_1602=l9_1601;
if (l9_1532)
{
l9_1602=mix(l9_1533,l9_1602,float4(l9_1536));
}
float4 l9_1603=l9_1602;
float4 l9_1604=l9_1603;
float3 l9_1605=(l9_1604.xyz*1.9921875)-float3(1.0);
l9_1604=float4(l9_1605.x,l9_1605.y,l9_1605.z,l9_1604.w);
l9_1516=l9_1604;
float3 l9_1606=float3(0.0);
float3 l9_1607=float3(0.0);
float3 l9_1608=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_1609=param_9;
float3 l9_1610;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_1611=float2(0.0);
float2 l9_1612=float2(0.0);
float2 l9_1613=float2(0.0);
float2 l9_1614=float2(0.0);
float2 l9_1615=float2(0.0);
float2 l9_1616=float2(0.0);
ssGlobals l9_1617=l9_1609;
float2 l9_1618;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_1619=float2(0.0);
l9_1619=l9_1617.Surface_UVCoord0;
l9_1612=l9_1619;
l9_1618=l9_1612;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_1620=float2(0.0);
l9_1620=l9_1617.Surface_UVCoord1;
l9_1613=l9_1620;
l9_1618=l9_1613;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_1621=float2(0.0);
l9_1621=l9_1617.Surface_UVCoord0;
float2 l9_1622=float2(0.0);
float2 l9_1623=float2(0.0);
float2 l9_1624=float2(0.0);
ssGlobals l9_1625=l9_1617;
float2 l9_1626;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1627=float2(0.0);
float2 l9_1628=float2(0.0);
float2 l9_1629=float2(0.0);
float2 l9_1630=float2(0.0);
float2 l9_1631=float2(0.0);
ssGlobals l9_1632=l9_1625;
float2 l9_1633;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1634=float2(0.0);
l9_1634=l9_1632.Surface_UVCoord0;
l9_1628=l9_1634;
l9_1633=l9_1628;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1635=float2(0.0);
l9_1635=l9_1632.Surface_UVCoord1;
l9_1629=l9_1635;
l9_1633=l9_1629;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1636=float2(0.0);
l9_1636=l9_1632.gScreenCoord;
l9_1630=l9_1636;
l9_1633=l9_1630;
}
else
{
float2 l9_1637=float2(0.0);
l9_1637=l9_1632.Surface_UVCoord0;
l9_1631=l9_1637;
l9_1633=l9_1631;
}
}
}
l9_1627=l9_1633;
float2 l9_1638=float2(0.0);
float2 l9_1639=(*sc_set0.UserUniforms).uv2Scale;
l9_1638=l9_1639;
float2 l9_1640=float2(0.0);
l9_1640=l9_1638;
float2 l9_1641=float2(0.0);
float2 l9_1642=(*sc_set0.UserUniforms).uv2Offset;
l9_1641=l9_1642;
float2 l9_1643=float2(0.0);
l9_1643=l9_1641;
float2 l9_1644=float2(0.0);
l9_1644=(l9_1627*l9_1640)+l9_1643;
float2 l9_1645=float2(0.0);
l9_1645=l9_1644+(l9_1643*(l9_1625.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1623=l9_1645;
l9_1626=l9_1623;
}
else
{
float2 l9_1646=float2(0.0);
float2 l9_1647=float2(0.0);
float2 l9_1648=float2(0.0);
float2 l9_1649=float2(0.0);
float2 l9_1650=float2(0.0);
ssGlobals l9_1651=l9_1625;
float2 l9_1652;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1653=float2(0.0);
l9_1653=l9_1651.Surface_UVCoord0;
l9_1647=l9_1653;
l9_1652=l9_1647;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1654=float2(0.0);
l9_1654=l9_1651.Surface_UVCoord1;
l9_1648=l9_1654;
l9_1652=l9_1648;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1655=float2(0.0);
l9_1655=l9_1651.gScreenCoord;
l9_1649=l9_1655;
l9_1652=l9_1649;
}
else
{
float2 l9_1656=float2(0.0);
l9_1656=l9_1651.Surface_UVCoord0;
l9_1650=l9_1656;
l9_1652=l9_1650;
}
}
}
l9_1646=l9_1652;
float2 l9_1657=float2(0.0);
float2 l9_1658=(*sc_set0.UserUniforms).uv2Scale;
l9_1657=l9_1658;
float2 l9_1659=float2(0.0);
l9_1659=l9_1657;
float2 l9_1660=float2(0.0);
float2 l9_1661=(*sc_set0.UserUniforms).uv2Offset;
l9_1660=l9_1661;
float2 l9_1662=float2(0.0);
l9_1662=l9_1660;
float2 l9_1663=float2(0.0);
l9_1663=(l9_1646*l9_1659)+l9_1662;
l9_1624=l9_1663;
l9_1626=l9_1624;
}
l9_1622=l9_1626;
float l9_1664=0.0;
float l9_1665;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1665=1.001;
}
else
{
l9_1665=0.001;
}
l9_1665-=0.001;
l9_1664=l9_1665;
float l9_1666=0.0;
l9_1666=l9_1664;
float2 l9_1667=float2(0.0);
l9_1667=mix(l9_1621,l9_1622,float2(l9_1666));
float2 l9_1668=float2(0.0);
l9_1668=l9_1667;
float2 l9_1669=float2(0.0);
l9_1669=l9_1668;
l9_1614=l9_1669;
l9_1618=l9_1614;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_1670=float2(0.0);
l9_1670=l9_1617.Surface_UVCoord0;
float2 l9_1671=float2(0.0);
float2 l9_1672=float2(0.0);
float2 l9_1673=float2(0.0);
ssGlobals l9_1674=l9_1617;
float2 l9_1675;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1676=float2(0.0);
float2 l9_1677=float2(0.0);
float2 l9_1678=float2(0.0);
float2 l9_1679=float2(0.0);
float2 l9_1680=float2(0.0);
float2 l9_1681=float2(0.0);
ssGlobals l9_1682=l9_1674;
float2 l9_1683;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1684=float2(0.0);
l9_1684=l9_1682.Surface_UVCoord0;
l9_1677=l9_1684;
l9_1683=l9_1677;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1685=float2(0.0);
l9_1685=l9_1682.Surface_UVCoord1;
l9_1678=l9_1685;
l9_1683=l9_1678;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1686=float2(0.0);
l9_1686=l9_1682.gScreenCoord;
l9_1679=l9_1686;
l9_1683=l9_1679;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1687=float2(0.0);
l9_1687=l9_1682.Surface_UVCoord0;
float2 l9_1688=float2(0.0);
float2 l9_1689=float2(0.0);
float2 l9_1690=float2(0.0);
ssGlobals l9_1691=l9_1682;
float2 l9_1692;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1693=float2(0.0);
float2 l9_1694=float2(0.0);
float2 l9_1695=float2(0.0);
float2 l9_1696=float2(0.0);
float2 l9_1697=float2(0.0);
ssGlobals l9_1698=l9_1691;
float2 l9_1699;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1700=float2(0.0);
l9_1700=l9_1698.Surface_UVCoord0;
l9_1694=l9_1700;
l9_1699=l9_1694;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1701=float2(0.0);
l9_1701=l9_1698.Surface_UVCoord1;
l9_1695=l9_1701;
l9_1699=l9_1695;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1702=float2(0.0);
l9_1702=l9_1698.gScreenCoord;
l9_1696=l9_1702;
l9_1699=l9_1696;
}
else
{
float2 l9_1703=float2(0.0);
l9_1703=l9_1698.Surface_UVCoord0;
l9_1697=l9_1703;
l9_1699=l9_1697;
}
}
}
l9_1693=l9_1699;
float2 l9_1704=float2(0.0);
float2 l9_1705=(*sc_set0.UserUniforms).uv2Scale;
l9_1704=l9_1705;
float2 l9_1706=float2(0.0);
l9_1706=l9_1704;
float2 l9_1707=float2(0.0);
float2 l9_1708=(*sc_set0.UserUniforms).uv2Offset;
l9_1707=l9_1708;
float2 l9_1709=float2(0.0);
l9_1709=l9_1707;
float2 l9_1710=float2(0.0);
l9_1710=(l9_1693*l9_1706)+l9_1709;
float2 l9_1711=float2(0.0);
l9_1711=l9_1710+(l9_1709*(l9_1691.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1689=l9_1711;
l9_1692=l9_1689;
}
else
{
float2 l9_1712=float2(0.0);
float2 l9_1713=float2(0.0);
float2 l9_1714=float2(0.0);
float2 l9_1715=float2(0.0);
float2 l9_1716=float2(0.0);
ssGlobals l9_1717=l9_1691;
float2 l9_1718;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1719=float2(0.0);
l9_1719=l9_1717.Surface_UVCoord0;
l9_1713=l9_1719;
l9_1718=l9_1713;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1720=float2(0.0);
l9_1720=l9_1717.Surface_UVCoord1;
l9_1714=l9_1720;
l9_1718=l9_1714;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1721=float2(0.0);
l9_1721=l9_1717.gScreenCoord;
l9_1715=l9_1721;
l9_1718=l9_1715;
}
else
{
float2 l9_1722=float2(0.0);
l9_1722=l9_1717.Surface_UVCoord0;
l9_1716=l9_1722;
l9_1718=l9_1716;
}
}
}
l9_1712=l9_1718;
float2 l9_1723=float2(0.0);
float2 l9_1724=(*sc_set0.UserUniforms).uv2Scale;
l9_1723=l9_1724;
float2 l9_1725=float2(0.0);
l9_1725=l9_1723;
float2 l9_1726=float2(0.0);
float2 l9_1727=(*sc_set0.UserUniforms).uv2Offset;
l9_1726=l9_1727;
float2 l9_1728=float2(0.0);
l9_1728=l9_1726;
float2 l9_1729=float2(0.0);
l9_1729=(l9_1712*l9_1725)+l9_1728;
l9_1690=l9_1729;
l9_1692=l9_1690;
}
l9_1688=l9_1692;
float l9_1730=0.0;
float l9_1731;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1731=1.001;
}
else
{
l9_1731=0.001;
}
l9_1731-=0.001;
l9_1730=l9_1731;
float l9_1732=0.0;
l9_1732=l9_1730;
float2 l9_1733=float2(0.0);
l9_1733=mix(l9_1687,l9_1688,float2(l9_1732));
float2 l9_1734=float2(0.0);
l9_1734=l9_1733;
float2 l9_1735=float2(0.0);
l9_1735=l9_1734;
l9_1680=l9_1735;
l9_1683=l9_1680;
}
else
{
float2 l9_1736=float2(0.0);
l9_1736=l9_1682.Surface_UVCoord0;
l9_1681=l9_1736;
l9_1683=l9_1681;
}
}
}
}
l9_1676=l9_1683;
float2 l9_1737=float2(0.0);
float2 l9_1738=(*sc_set0.UserUniforms).uv3Scale;
l9_1737=l9_1738;
float2 l9_1739=float2(0.0);
l9_1739=l9_1737;
float2 l9_1740=float2(0.0);
float2 l9_1741=(*sc_set0.UserUniforms).uv3Offset;
l9_1740=l9_1741;
float2 l9_1742=float2(0.0);
l9_1742=l9_1740;
float2 l9_1743=float2(0.0);
l9_1743=(l9_1676*l9_1739)+l9_1742;
float2 l9_1744=float2(0.0);
l9_1744=l9_1743+(l9_1742*(l9_1674.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1672=l9_1744;
l9_1675=l9_1672;
}
else
{
float2 l9_1745=float2(0.0);
float2 l9_1746=float2(0.0);
float2 l9_1747=float2(0.0);
float2 l9_1748=float2(0.0);
float2 l9_1749=float2(0.0);
float2 l9_1750=float2(0.0);
ssGlobals l9_1751=l9_1674;
float2 l9_1752;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1753=float2(0.0);
l9_1753=l9_1751.Surface_UVCoord0;
l9_1746=l9_1753;
l9_1752=l9_1746;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1754=float2(0.0);
l9_1754=l9_1751.Surface_UVCoord1;
l9_1747=l9_1754;
l9_1752=l9_1747;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1755=float2(0.0);
l9_1755=l9_1751.gScreenCoord;
l9_1748=l9_1755;
l9_1752=l9_1748;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1756=float2(0.0);
l9_1756=l9_1751.Surface_UVCoord0;
float2 l9_1757=float2(0.0);
float2 l9_1758=float2(0.0);
float2 l9_1759=float2(0.0);
ssGlobals l9_1760=l9_1751;
float2 l9_1761;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1762=float2(0.0);
float2 l9_1763=float2(0.0);
float2 l9_1764=float2(0.0);
float2 l9_1765=float2(0.0);
float2 l9_1766=float2(0.0);
ssGlobals l9_1767=l9_1760;
float2 l9_1768;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1769=float2(0.0);
l9_1769=l9_1767.Surface_UVCoord0;
l9_1763=l9_1769;
l9_1768=l9_1763;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1770=float2(0.0);
l9_1770=l9_1767.Surface_UVCoord1;
l9_1764=l9_1770;
l9_1768=l9_1764;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1771=float2(0.0);
l9_1771=l9_1767.gScreenCoord;
l9_1765=l9_1771;
l9_1768=l9_1765;
}
else
{
float2 l9_1772=float2(0.0);
l9_1772=l9_1767.Surface_UVCoord0;
l9_1766=l9_1772;
l9_1768=l9_1766;
}
}
}
l9_1762=l9_1768;
float2 l9_1773=float2(0.0);
float2 l9_1774=(*sc_set0.UserUniforms).uv2Scale;
l9_1773=l9_1774;
float2 l9_1775=float2(0.0);
l9_1775=l9_1773;
float2 l9_1776=float2(0.0);
float2 l9_1777=(*sc_set0.UserUniforms).uv2Offset;
l9_1776=l9_1777;
float2 l9_1778=float2(0.0);
l9_1778=l9_1776;
float2 l9_1779=float2(0.0);
l9_1779=(l9_1762*l9_1775)+l9_1778;
float2 l9_1780=float2(0.0);
l9_1780=l9_1779+(l9_1778*(l9_1760.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1758=l9_1780;
l9_1761=l9_1758;
}
else
{
float2 l9_1781=float2(0.0);
float2 l9_1782=float2(0.0);
float2 l9_1783=float2(0.0);
float2 l9_1784=float2(0.0);
float2 l9_1785=float2(0.0);
ssGlobals l9_1786=l9_1760;
float2 l9_1787;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1788=float2(0.0);
l9_1788=l9_1786.Surface_UVCoord0;
l9_1782=l9_1788;
l9_1787=l9_1782;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1789=float2(0.0);
l9_1789=l9_1786.Surface_UVCoord1;
l9_1783=l9_1789;
l9_1787=l9_1783;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1790=float2(0.0);
l9_1790=l9_1786.gScreenCoord;
l9_1784=l9_1790;
l9_1787=l9_1784;
}
else
{
float2 l9_1791=float2(0.0);
l9_1791=l9_1786.Surface_UVCoord0;
l9_1785=l9_1791;
l9_1787=l9_1785;
}
}
}
l9_1781=l9_1787;
float2 l9_1792=float2(0.0);
float2 l9_1793=(*sc_set0.UserUniforms).uv2Scale;
l9_1792=l9_1793;
float2 l9_1794=float2(0.0);
l9_1794=l9_1792;
float2 l9_1795=float2(0.0);
float2 l9_1796=(*sc_set0.UserUniforms).uv2Offset;
l9_1795=l9_1796;
float2 l9_1797=float2(0.0);
l9_1797=l9_1795;
float2 l9_1798=float2(0.0);
l9_1798=(l9_1781*l9_1794)+l9_1797;
l9_1759=l9_1798;
l9_1761=l9_1759;
}
l9_1757=l9_1761;
float l9_1799=0.0;
float l9_1800;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1800=1.001;
}
else
{
l9_1800=0.001;
}
l9_1800-=0.001;
l9_1799=l9_1800;
float l9_1801=0.0;
l9_1801=l9_1799;
float2 l9_1802=float2(0.0);
l9_1802=mix(l9_1756,l9_1757,float2(l9_1801));
float2 l9_1803=float2(0.0);
l9_1803=l9_1802;
float2 l9_1804=float2(0.0);
l9_1804=l9_1803;
l9_1749=l9_1804;
l9_1752=l9_1749;
}
else
{
float2 l9_1805=float2(0.0);
l9_1805=l9_1751.Surface_UVCoord0;
l9_1750=l9_1805;
l9_1752=l9_1750;
}
}
}
}
l9_1745=l9_1752;
float2 l9_1806=float2(0.0);
float2 l9_1807=(*sc_set0.UserUniforms).uv3Scale;
l9_1806=l9_1807;
float2 l9_1808=float2(0.0);
l9_1808=l9_1806;
float2 l9_1809=float2(0.0);
float2 l9_1810=(*sc_set0.UserUniforms).uv3Offset;
l9_1809=l9_1810;
float2 l9_1811=float2(0.0);
l9_1811=l9_1809;
float2 l9_1812=float2(0.0);
l9_1812=(l9_1745*l9_1808)+l9_1811;
l9_1673=l9_1812;
l9_1675=l9_1673;
}
l9_1671=l9_1675;
float l9_1813=0.0;
float l9_1814;
if ((int(Tweak_N11_tmp)!=0))
{
l9_1814=1.001;
}
else
{
l9_1814=0.001;
}
l9_1814-=0.001;
l9_1813=l9_1814;
float l9_1815=0.0;
l9_1815=l9_1813;
float2 l9_1816=float2(0.0);
l9_1816=mix(l9_1670,l9_1671,float2(l9_1815));
float2 l9_1817=float2(0.0);
l9_1817=l9_1816;
float2 l9_1818=float2(0.0);
l9_1818=l9_1817;
l9_1615=l9_1818;
l9_1618=l9_1615;
}
else
{
float2 l9_1819=float2(0.0);
l9_1819=l9_1617.Surface_UVCoord0;
l9_1616=l9_1819;
l9_1618=l9_1616;
}
}
}
}
l9_1611=l9_1618;
float4 l9_1820=float4(0.0);
float2 l9_1821=l9_1611;
int l9_1822;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_1823=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1823=0;
}
else
{
l9_1823=in.varStereoViewID;
}
int l9_1824=l9_1823;
l9_1822=1-l9_1824;
}
else
{
int l9_1825=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1825=0;
}
else
{
l9_1825=in.varStereoViewID;
}
int l9_1826=l9_1825;
l9_1822=l9_1826;
}
int l9_1827=l9_1822;
int l9_1828=detailNormalTexLayout_tmp;
int l9_1829=l9_1827;
float2 l9_1830=l9_1821;
bool l9_1831=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_1832=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_1833=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_1834=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_1835=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_1836=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_1837=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_1838=0.0;
bool l9_1839=l9_1836&&(!l9_1834);
float l9_1840=1.0;
float l9_1841=l9_1830.x;
int l9_1842=l9_1833.x;
if (l9_1842==1)
{
l9_1841=fract(l9_1841);
}
else
{
if (l9_1842==2)
{
float l9_1843=fract(l9_1841);
float l9_1844=l9_1841-l9_1843;
float l9_1845=step(0.25,fract(l9_1844*0.5));
l9_1841=mix(l9_1843,1.0-l9_1843,fast::clamp(l9_1845,0.0,1.0));
}
}
l9_1830.x=l9_1841;
float l9_1846=l9_1830.y;
int l9_1847=l9_1833.y;
if (l9_1847==1)
{
l9_1846=fract(l9_1846);
}
else
{
if (l9_1847==2)
{
float l9_1848=fract(l9_1846);
float l9_1849=l9_1846-l9_1848;
float l9_1850=step(0.25,fract(l9_1849*0.5));
l9_1846=mix(l9_1848,1.0-l9_1848,fast::clamp(l9_1850,0.0,1.0));
}
}
l9_1830.y=l9_1846;
if (l9_1834)
{
bool l9_1851=l9_1836;
bool l9_1852;
if (l9_1851)
{
l9_1852=l9_1833.x==3;
}
else
{
l9_1852=l9_1851;
}
float l9_1853=l9_1830.x;
float l9_1854=l9_1835.x;
float l9_1855=l9_1835.z;
bool l9_1856=l9_1852;
float l9_1857=l9_1840;
float l9_1858=fast::clamp(l9_1853,l9_1854,l9_1855);
float l9_1859=step(abs(l9_1853-l9_1858),9.9999997e-06);
l9_1857*=(l9_1859+((1.0-float(l9_1856))*(1.0-l9_1859)));
l9_1853=l9_1858;
l9_1830.x=l9_1853;
l9_1840=l9_1857;
bool l9_1860=l9_1836;
bool l9_1861;
if (l9_1860)
{
l9_1861=l9_1833.y==3;
}
else
{
l9_1861=l9_1860;
}
float l9_1862=l9_1830.y;
float l9_1863=l9_1835.y;
float l9_1864=l9_1835.w;
bool l9_1865=l9_1861;
float l9_1866=l9_1840;
float l9_1867=fast::clamp(l9_1862,l9_1863,l9_1864);
float l9_1868=step(abs(l9_1862-l9_1867),9.9999997e-06);
l9_1866*=(l9_1868+((1.0-float(l9_1865))*(1.0-l9_1868)));
l9_1862=l9_1867;
l9_1830.y=l9_1862;
l9_1840=l9_1866;
}
float2 l9_1869=l9_1830;
bool l9_1870=l9_1831;
float3x3 l9_1871=l9_1832;
if (l9_1870)
{
l9_1869=float2((l9_1871*float3(l9_1869,1.0)).xy);
}
float2 l9_1872=l9_1869;
l9_1830=l9_1872;
float l9_1873=l9_1830.x;
int l9_1874=l9_1833.x;
bool l9_1875=l9_1839;
float l9_1876=l9_1840;
if ((l9_1874==0)||(l9_1874==3))
{
float l9_1877=l9_1873;
float l9_1878=0.0;
float l9_1879=1.0;
bool l9_1880=l9_1875;
float l9_1881=l9_1876;
float l9_1882=fast::clamp(l9_1877,l9_1878,l9_1879);
float l9_1883=step(abs(l9_1877-l9_1882),9.9999997e-06);
l9_1881*=(l9_1883+((1.0-float(l9_1880))*(1.0-l9_1883)));
l9_1877=l9_1882;
l9_1873=l9_1877;
l9_1876=l9_1881;
}
l9_1830.x=l9_1873;
l9_1840=l9_1876;
float l9_1884=l9_1830.y;
int l9_1885=l9_1833.y;
bool l9_1886=l9_1839;
float l9_1887=l9_1840;
if ((l9_1885==0)||(l9_1885==3))
{
float l9_1888=l9_1884;
float l9_1889=0.0;
float l9_1890=1.0;
bool l9_1891=l9_1886;
float l9_1892=l9_1887;
float l9_1893=fast::clamp(l9_1888,l9_1889,l9_1890);
float l9_1894=step(abs(l9_1888-l9_1893),9.9999997e-06);
l9_1892*=(l9_1894+((1.0-float(l9_1891))*(1.0-l9_1894)));
l9_1888=l9_1893;
l9_1884=l9_1888;
l9_1887=l9_1892;
}
l9_1830.y=l9_1884;
l9_1840=l9_1887;
float2 l9_1895=l9_1830;
int l9_1896=l9_1828;
int l9_1897=l9_1829;
float l9_1898=l9_1838;
float2 l9_1899=l9_1895;
int l9_1900=l9_1896;
int l9_1901=l9_1897;
float3 l9_1902=float3(0.0);
if (l9_1900==0)
{
l9_1902=float3(l9_1899,0.0);
}
else
{
if (l9_1900==1)
{
l9_1902=float3(l9_1899.x,(l9_1899.y*0.5)+(0.5-(float(l9_1901)*0.5)),0.0);
}
else
{
l9_1902=float3(l9_1899,float(l9_1901));
}
}
float3 l9_1903=l9_1902;
float3 l9_1904=l9_1903;
float4 l9_1905=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_1904.xy,bias(l9_1898));
float4 l9_1906=l9_1905;
if (l9_1836)
{
l9_1906=mix(l9_1837,l9_1906,float4(l9_1840));
}
float4 l9_1907=l9_1906;
float4 l9_1908=l9_1907;
float3 l9_1909=(l9_1908.xyz*1.9921875)-float3(1.0);
l9_1908=float4(l9_1909.x,l9_1909.y,l9_1909.z,l9_1908.w);
l9_1820=l9_1908;
l9_1607=l9_1820.xyz;
l9_1610=l9_1607;
}
else
{
l9_1610=l9_1608;
}
l9_1606=l9_1610;
float3 l9_1910=float3(0.0);
float3 l9_1911=l9_1516.xyz;
float l9_1912=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_1913=l9_1606;
float l9_1914=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_1915=l9_1911;
float l9_1916=l9_1912;
float3 l9_1917=l9_1913;
float l9_1918=l9_1914;
float3 l9_1919=mix(float3(0.0,0.0,1.0),l9_1915,float3(l9_1916))+float3(0.0,0.0,1.0);
float3 l9_1920=mix(float3(0.0,0.0,1.0),l9_1917,float3(l9_1918))*float3(-1.0,-1.0,1.0);
float3 l9_1921=normalize((l9_1919*dot(l9_1919,l9_1920))-(l9_1920*l9_1919.z));
l9_1913=l9_1921;
float3 l9_1922=l9_1913;
l9_1910=l9_1922;
float3 l9_1923=float3(0.0);
l9_1923=l9_1306*l9_1910;
float3 l9_1924=float3(0.0);
float3 l9_1925=l9_1923;
float l9_1926=dot(l9_1925,l9_1925);
float l9_1927;
if (l9_1926>0.0)
{
l9_1927=1.0/sqrt(l9_1926);
}
else
{
l9_1927=0.0;
}
float l9_1928=l9_1927;
float3 l9_1929=l9_1925*l9_1928;
l9_1924=l9_1929;
param_6=l9_1924;
param_8=param_6;
}
else
{
float3 l9_1930=float3(0.0);
l9_1930=param_9.VertexNormal_WorldSpace;
float3 l9_1931=float3(0.0);
float3 l9_1932=l9_1930;
float l9_1933=dot(l9_1932,l9_1932);
float l9_1934;
if (l9_1933>0.0)
{
l9_1934=1.0/sqrt(l9_1933);
}
else
{
l9_1934=0.0;
}
float l9_1935=l9_1934;
float3 l9_1936=l9_1932*l9_1935;
l9_1931=l9_1936;
param_7=l9_1931;
param_8=param_7;
}
Result_N337=param_8;
float3 Export_N334=float3(0.0);
Export_N334=Result_N337;
float3 Result_N294=float3(0.0);
float3 param_10=float3(0.0);
float3 param_11=float3(0.0);
ssGlobals param_13=Globals;
float3 param_12;
if (NODE_38_DROPLIST_ITEM_tmp==2)
{
float4 l9_1937=float4(0.0);
l9_1937=param_13.VertexColor;
float4 l9_1938=float4(0.0);
float4 l9_1939=float4(0.0);
float4 l9_1940=(*sc_set0.UserUniforms).Port_Default_N132;
ssGlobals l9_1941=param_13;
float4 l9_1942;
if ((int(Tweak_N223_tmp)!=0))
{
float2 l9_1943=float2(0.0);
float2 l9_1944=float2(0.0);
float2 l9_1945=float2(0.0);
float2 l9_1946=float2(0.0);
float2 l9_1947=float2(0.0);
float2 l9_1948=float2(0.0);
ssGlobals l9_1949=l9_1941;
float2 l9_1950;
if (NODE_76_DROPLIST_ITEM_tmp==0)
{
float2 l9_1951=float2(0.0);
l9_1951=l9_1949.Surface_UVCoord0;
l9_1944=l9_1951;
l9_1950=l9_1944;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==1)
{
float2 l9_1952=float2(0.0);
l9_1952=l9_1949.Surface_UVCoord1;
l9_1945=l9_1952;
l9_1950=l9_1945;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==2)
{
float2 l9_1953=float2(0.0);
l9_1953=l9_1949.Surface_UVCoord0;
float2 l9_1954=float2(0.0);
float2 l9_1955=float2(0.0);
float2 l9_1956=float2(0.0);
ssGlobals l9_1957=l9_1949;
float2 l9_1958;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1959=float2(0.0);
float2 l9_1960=float2(0.0);
float2 l9_1961=float2(0.0);
float2 l9_1962=float2(0.0);
float2 l9_1963=float2(0.0);
ssGlobals l9_1964=l9_1957;
float2 l9_1965;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1966=float2(0.0);
l9_1966=l9_1964.Surface_UVCoord0;
l9_1960=l9_1966;
l9_1965=l9_1960;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1967=float2(0.0);
l9_1967=l9_1964.Surface_UVCoord1;
l9_1961=l9_1967;
l9_1965=l9_1961;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1968=float2(0.0);
l9_1968=l9_1964.gScreenCoord;
l9_1962=l9_1968;
l9_1965=l9_1962;
}
else
{
float2 l9_1969=float2(0.0);
l9_1969=l9_1964.Surface_UVCoord0;
l9_1963=l9_1969;
l9_1965=l9_1963;
}
}
}
l9_1959=l9_1965;
float2 l9_1970=float2(0.0);
float2 l9_1971=(*sc_set0.UserUniforms).uv2Scale;
l9_1970=l9_1971;
float2 l9_1972=float2(0.0);
l9_1972=l9_1970;
float2 l9_1973=float2(0.0);
float2 l9_1974=(*sc_set0.UserUniforms).uv2Offset;
l9_1973=l9_1974;
float2 l9_1975=float2(0.0);
l9_1975=l9_1973;
float2 l9_1976=float2(0.0);
l9_1976=(l9_1959*l9_1972)+l9_1975;
float2 l9_1977=float2(0.0);
l9_1977=l9_1976+(l9_1975*(l9_1957.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1955=l9_1977;
l9_1958=l9_1955;
}
else
{
float2 l9_1978=float2(0.0);
float2 l9_1979=float2(0.0);
float2 l9_1980=float2(0.0);
float2 l9_1981=float2(0.0);
float2 l9_1982=float2(0.0);
ssGlobals l9_1983=l9_1957;
float2 l9_1984;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1985=float2(0.0);
l9_1985=l9_1983.Surface_UVCoord0;
l9_1979=l9_1985;
l9_1984=l9_1979;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1986=float2(0.0);
l9_1986=l9_1983.Surface_UVCoord1;
l9_1980=l9_1986;
l9_1984=l9_1980;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1987=float2(0.0);
l9_1987=l9_1983.gScreenCoord;
l9_1981=l9_1987;
l9_1984=l9_1981;
}
else
{
float2 l9_1988=float2(0.0);
l9_1988=l9_1983.Surface_UVCoord0;
l9_1982=l9_1988;
l9_1984=l9_1982;
}
}
}
l9_1978=l9_1984;
float2 l9_1989=float2(0.0);
float2 l9_1990=(*sc_set0.UserUniforms).uv2Scale;
l9_1989=l9_1990;
float2 l9_1991=float2(0.0);
l9_1991=l9_1989;
float2 l9_1992=float2(0.0);
float2 l9_1993=(*sc_set0.UserUniforms).uv2Offset;
l9_1992=l9_1993;
float2 l9_1994=float2(0.0);
l9_1994=l9_1992;
float2 l9_1995=float2(0.0);
l9_1995=(l9_1978*l9_1991)+l9_1994;
l9_1956=l9_1995;
l9_1958=l9_1956;
}
l9_1954=l9_1958;
float l9_1996=0.0;
float l9_1997;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1997=1.001;
}
else
{
l9_1997=0.001;
}
l9_1997-=0.001;
l9_1996=l9_1997;
float l9_1998=0.0;
l9_1998=l9_1996;
float2 l9_1999=float2(0.0);
l9_1999=mix(l9_1953,l9_1954,float2(l9_1998));
float2 l9_2000=float2(0.0);
l9_2000=l9_1999;
float2 l9_2001=float2(0.0);
l9_2001=l9_2000;
l9_1946=l9_2001;
l9_1950=l9_1946;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==3)
{
float2 l9_2002=float2(0.0);
l9_2002=l9_1949.Surface_UVCoord0;
float2 l9_2003=float2(0.0);
float2 l9_2004=float2(0.0);
float2 l9_2005=float2(0.0);
ssGlobals l9_2006=l9_1949;
float2 l9_2007;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_2008=float2(0.0);
float2 l9_2009=float2(0.0);
float2 l9_2010=float2(0.0);
float2 l9_2011=float2(0.0);
float2 l9_2012=float2(0.0);
float2 l9_2013=float2(0.0);
ssGlobals l9_2014=l9_2006;
float2 l9_2015;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2016=float2(0.0);
l9_2016=l9_2014.Surface_UVCoord0;
l9_2009=l9_2016;
l9_2015=l9_2009;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2017=float2(0.0);
l9_2017=l9_2014.Surface_UVCoord1;
l9_2010=l9_2017;
l9_2015=l9_2010;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2018=float2(0.0);
l9_2018=l9_2014.gScreenCoord;
l9_2011=l9_2018;
l9_2015=l9_2011;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2019=float2(0.0);
l9_2019=l9_2014.Surface_UVCoord0;
float2 l9_2020=float2(0.0);
float2 l9_2021=float2(0.0);
float2 l9_2022=float2(0.0);
ssGlobals l9_2023=l9_2014;
float2 l9_2024;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2025=float2(0.0);
float2 l9_2026=float2(0.0);
float2 l9_2027=float2(0.0);
float2 l9_2028=float2(0.0);
float2 l9_2029=float2(0.0);
ssGlobals l9_2030=l9_2023;
float2 l9_2031;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2032=float2(0.0);
l9_2032=l9_2030.Surface_UVCoord0;
l9_2026=l9_2032;
l9_2031=l9_2026;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2033=float2(0.0);
l9_2033=l9_2030.Surface_UVCoord1;
l9_2027=l9_2033;
l9_2031=l9_2027;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2034=float2(0.0);
l9_2034=l9_2030.gScreenCoord;
l9_2028=l9_2034;
l9_2031=l9_2028;
}
else
{
float2 l9_2035=float2(0.0);
l9_2035=l9_2030.Surface_UVCoord0;
l9_2029=l9_2035;
l9_2031=l9_2029;
}
}
}
l9_2025=l9_2031;
float2 l9_2036=float2(0.0);
float2 l9_2037=(*sc_set0.UserUniforms).uv2Scale;
l9_2036=l9_2037;
float2 l9_2038=float2(0.0);
l9_2038=l9_2036;
float2 l9_2039=float2(0.0);
float2 l9_2040=(*sc_set0.UserUniforms).uv2Offset;
l9_2039=l9_2040;
float2 l9_2041=float2(0.0);
l9_2041=l9_2039;
float2 l9_2042=float2(0.0);
l9_2042=(l9_2025*l9_2038)+l9_2041;
float2 l9_2043=float2(0.0);
l9_2043=l9_2042+(l9_2041*(l9_2023.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2021=l9_2043;
l9_2024=l9_2021;
}
else
{
float2 l9_2044=float2(0.0);
float2 l9_2045=float2(0.0);
float2 l9_2046=float2(0.0);
float2 l9_2047=float2(0.0);
float2 l9_2048=float2(0.0);
ssGlobals l9_2049=l9_2023;
float2 l9_2050;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2051=float2(0.0);
l9_2051=l9_2049.Surface_UVCoord0;
l9_2045=l9_2051;
l9_2050=l9_2045;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2052=float2(0.0);
l9_2052=l9_2049.Surface_UVCoord1;
l9_2046=l9_2052;
l9_2050=l9_2046;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2053=float2(0.0);
l9_2053=l9_2049.gScreenCoord;
l9_2047=l9_2053;
l9_2050=l9_2047;
}
else
{
float2 l9_2054=float2(0.0);
l9_2054=l9_2049.Surface_UVCoord0;
l9_2048=l9_2054;
l9_2050=l9_2048;
}
}
}
l9_2044=l9_2050;
float2 l9_2055=float2(0.0);
float2 l9_2056=(*sc_set0.UserUniforms).uv2Scale;
l9_2055=l9_2056;
float2 l9_2057=float2(0.0);
l9_2057=l9_2055;
float2 l9_2058=float2(0.0);
float2 l9_2059=(*sc_set0.UserUniforms).uv2Offset;
l9_2058=l9_2059;
float2 l9_2060=float2(0.0);
l9_2060=l9_2058;
float2 l9_2061=float2(0.0);
l9_2061=(l9_2044*l9_2057)+l9_2060;
l9_2022=l9_2061;
l9_2024=l9_2022;
}
l9_2020=l9_2024;
float l9_2062=0.0;
float l9_2063;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2063=1.001;
}
else
{
l9_2063=0.001;
}
l9_2063-=0.001;
l9_2062=l9_2063;
float l9_2064=0.0;
l9_2064=l9_2062;
float2 l9_2065=float2(0.0);
l9_2065=mix(l9_2019,l9_2020,float2(l9_2064));
float2 l9_2066=float2(0.0);
l9_2066=l9_2065;
float2 l9_2067=float2(0.0);
l9_2067=l9_2066;
l9_2012=l9_2067;
l9_2015=l9_2012;
}
else
{
float2 l9_2068=float2(0.0);
l9_2068=l9_2014.Surface_UVCoord0;
l9_2013=l9_2068;
l9_2015=l9_2013;
}
}
}
}
l9_2008=l9_2015;
float2 l9_2069=float2(0.0);
float2 l9_2070=(*sc_set0.UserUniforms).uv3Scale;
l9_2069=l9_2070;
float2 l9_2071=float2(0.0);
l9_2071=l9_2069;
float2 l9_2072=float2(0.0);
float2 l9_2073=(*sc_set0.UserUniforms).uv3Offset;
l9_2072=l9_2073;
float2 l9_2074=float2(0.0);
l9_2074=l9_2072;
float2 l9_2075=float2(0.0);
l9_2075=(l9_2008*l9_2071)+l9_2074;
float2 l9_2076=float2(0.0);
l9_2076=l9_2075+(l9_2074*(l9_2006.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_2004=l9_2076;
l9_2007=l9_2004;
}
else
{
float2 l9_2077=float2(0.0);
float2 l9_2078=float2(0.0);
float2 l9_2079=float2(0.0);
float2 l9_2080=float2(0.0);
float2 l9_2081=float2(0.0);
float2 l9_2082=float2(0.0);
ssGlobals l9_2083=l9_2006;
float2 l9_2084;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2085=float2(0.0);
l9_2085=l9_2083.Surface_UVCoord0;
l9_2078=l9_2085;
l9_2084=l9_2078;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2086=float2(0.0);
l9_2086=l9_2083.Surface_UVCoord1;
l9_2079=l9_2086;
l9_2084=l9_2079;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2087=float2(0.0);
l9_2087=l9_2083.gScreenCoord;
l9_2080=l9_2087;
l9_2084=l9_2080;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2088=float2(0.0);
l9_2088=l9_2083.Surface_UVCoord0;
float2 l9_2089=float2(0.0);
float2 l9_2090=float2(0.0);
float2 l9_2091=float2(0.0);
ssGlobals l9_2092=l9_2083;
float2 l9_2093;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2094=float2(0.0);
float2 l9_2095=float2(0.0);
float2 l9_2096=float2(0.0);
float2 l9_2097=float2(0.0);
float2 l9_2098=float2(0.0);
ssGlobals l9_2099=l9_2092;
float2 l9_2100;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2101=float2(0.0);
l9_2101=l9_2099.Surface_UVCoord0;
l9_2095=l9_2101;
l9_2100=l9_2095;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2102=float2(0.0);
l9_2102=l9_2099.Surface_UVCoord1;
l9_2096=l9_2102;
l9_2100=l9_2096;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2103=float2(0.0);
l9_2103=l9_2099.gScreenCoord;
l9_2097=l9_2103;
l9_2100=l9_2097;
}
else
{
float2 l9_2104=float2(0.0);
l9_2104=l9_2099.Surface_UVCoord0;
l9_2098=l9_2104;
l9_2100=l9_2098;
}
}
}
l9_2094=l9_2100;
float2 l9_2105=float2(0.0);
float2 l9_2106=(*sc_set0.UserUniforms).uv2Scale;
l9_2105=l9_2106;
float2 l9_2107=float2(0.0);
l9_2107=l9_2105;
float2 l9_2108=float2(0.0);
float2 l9_2109=(*sc_set0.UserUniforms).uv2Offset;
l9_2108=l9_2109;
float2 l9_2110=float2(0.0);
l9_2110=l9_2108;
float2 l9_2111=float2(0.0);
l9_2111=(l9_2094*l9_2107)+l9_2110;
float2 l9_2112=float2(0.0);
l9_2112=l9_2111+(l9_2110*(l9_2092.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2090=l9_2112;
l9_2093=l9_2090;
}
else
{
float2 l9_2113=float2(0.0);
float2 l9_2114=float2(0.0);
float2 l9_2115=float2(0.0);
float2 l9_2116=float2(0.0);
float2 l9_2117=float2(0.0);
ssGlobals l9_2118=l9_2092;
float2 l9_2119;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2120=float2(0.0);
l9_2120=l9_2118.Surface_UVCoord0;
l9_2114=l9_2120;
l9_2119=l9_2114;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2121=float2(0.0);
l9_2121=l9_2118.Surface_UVCoord1;
l9_2115=l9_2121;
l9_2119=l9_2115;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2122=float2(0.0);
l9_2122=l9_2118.gScreenCoord;
l9_2116=l9_2122;
l9_2119=l9_2116;
}
else
{
float2 l9_2123=float2(0.0);
l9_2123=l9_2118.Surface_UVCoord0;
l9_2117=l9_2123;
l9_2119=l9_2117;
}
}
}
l9_2113=l9_2119;
float2 l9_2124=float2(0.0);
float2 l9_2125=(*sc_set0.UserUniforms).uv2Scale;
l9_2124=l9_2125;
float2 l9_2126=float2(0.0);
l9_2126=l9_2124;
float2 l9_2127=float2(0.0);
float2 l9_2128=(*sc_set0.UserUniforms).uv2Offset;
l9_2127=l9_2128;
float2 l9_2129=float2(0.0);
l9_2129=l9_2127;
float2 l9_2130=float2(0.0);
l9_2130=(l9_2113*l9_2126)+l9_2129;
l9_2091=l9_2130;
l9_2093=l9_2091;
}
l9_2089=l9_2093;
float l9_2131=0.0;
float l9_2132;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2132=1.001;
}
else
{
l9_2132=0.001;
}
l9_2132-=0.001;
l9_2131=l9_2132;
float l9_2133=0.0;
l9_2133=l9_2131;
float2 l9_2134=float2(0.0);
l9_2134=mix(l9_2088,l9_2089,float2(l9_2133));
float2 l9_2135=float2(0.0);
l9_2135=l9_2134;
float2 l9_2136=float2(0.0);
l9_2136=l9_2135;
l9_2081=l9_2136;
l9_2084=l9_2081;
}
else
{
float2 l9_2137=float2(0.0);
l9_2137=l9_2083.Surface_UVCoord0;
l9_2082=l9_2137;
l9_2084=l9_2082;
}
}
}
}
l9_2077=l9_2084;
float2 l9_2138=float2(0.0);
float2 l9_2139=(*sc_set0.UserUniforms).uv3Scale;
l9_2138=l9_2139;
float2 l9_2140=float2(0.0);
l9_2140=l9_2138;
float2 l9_2141=float2(0.0);
float2 l9_2142=(*sc_set0.UserUniforms).uv3Offset;
l9_2141=l9_2142;
float2 l9_2143=float2(0.0);
l9_2143=l9_2141;
float2 l9_2144=float2(0.0);
l9_2144=(l9_2077*l9_2140)+l9_2143;
l9_2005=l9_2144;
l9_2007=l9_2005;
}
l9_2003=l9_2007;
float l9_2145=0.0;
float l9_2146;
if ((int(Tweak_N11_tmp)!=0))
{
l9_2146=1.001;
}
else
{
l9_2146=0.001;
}
l9_2146-=0.001;
l9_2145=l9_2146;
float l9_2147=0.0;
l9_2147=l9_2145;
float2 l9_2148=float2(0.0);
l9_2148=mix(l9_2002,l9_2003,float2(l9_2147));
float2 l9_2149=float2(0.0);
l9_2149=l9_2148;
float2 l9_2150=float2(0.0);
l9_2150=l9_2149;
l9_1947=l9_2150;
l9_1950=l9_1947;
}
else
{
float2 l9_2151=float2(0.0);
l9_2151=l9_1949.Surface_UVCoord0;
l9_1948=l9_2151;
l9_1950=l9_1948;
}
}
}
}
l9_1943=l9_1950;
float4 l9_2152=float4(0.0);
int l9_2153;
if ((int(emissiveTexHasSwappedViews_tmp)!=0))
{
int l9_2154=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2154=0;
}
else
{
l9_2154=in.varStereoViewID;
}
int l9_2155=l9_2154;
l9_2153=1-l9_2155;
}
else
{
int l9_2156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2156=0;
}
else
{
l9_2156=in.varStereoViewID;
}
int l9_2157=l9_2156;
l9_2153=l9_2157;
}
int l9_2158=l9_2153;
int l9_2159=emissiveTexLayout_tmp;
int l9_2160=l9_2158;
float2 l9_2161=l9_1943;
bool l9_2162=(int(SC_USE_UV_TRANSFORM_emissiveTex_tmp)!=0);
float3x3 l9_2163=(*sc_set0.UserUniforms).emissiveTexTransform;
int2 l9_2164=int2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp,SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp);
bool l9_2165=(int(SC_USE_UV_MIN_MAX_emissiveTex_tmp)!=0);
float4 l9_2166=(*sc_set0.UserUniforms).emissiveTexUvMinMax;
bool l9_2167=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp)!=0);
float4 l9_2168=(*sc_set0.UserUniforms).emissiveTexBorderColor;
float l9_2169=0.0;
bool l9_2170=l9_2167&&(!l9_2165);
float l9_2171=1.0;
float l9_2172=l9_2161.x;
int l9_2173=l9_2164.x;
if (l9_2173==1)
{
l9_2172=fract(l9_2172);
}
else
{
if (l9_2173==2)
{
float l9_2174=fract(l9_2172);
float l9_2175=l9_2172-l9_2174;
float l9_2176=step(0.25,fract(l9_2175*0.5));
l9_2172=mix(l9_2174,1.0-l9_2174,fast::clamp(l9_2176,0.0,1.0));
}
}
l9_2161.x=l9_2172;
float l9_2177=l9_2161.y;
int l9_2178=l9_2164.y;
if (l9_2178==1)
{
l9_2177=fract(l9_2177);
}
else
{
if (l9_2178==2)
{
float l9_2179=fract(l9_2177);
float l9_2180=l9_2177-l9_2179;
float l9_2181=step(0.25,fract(l9_2180*0.5));
l9_2177=mix(l9_2179,1.0-l9_2179,fast::clamp(l9_2181,0.0,1.0));
}
}
l9_2161.y=l9_2177;
if (l9_2165)
{
bool l9_2182=l9_2167;
bool l9_2183;
if (l9_2182)
{
l9_2183=l9_2164.x==3;
}
else
{
l9_2183=l9_2182;
}
float l9_2184=l9_2161.x;
float l9_2185=l9_2166.x;
float l9_2186=l9_2166.z;
bool l9_2187=l9_2183;
float l9_2188=l9_2171;
float l9_2189=fast::clamp(l9_2184,l9_2185,l9_2186);
float l9_2190=step(abs(l9_2184-l9_2189),9.9999997e-06);
l9_2188*=(l9_2190+((1.0-float(l9_2187))*(1.0-l9_2190)));
l9_2184=l9_2189;
l9_2161.x=l9_2184;
l9_2171=l9_2188;
bool l9_2191=l9_2167;
bool l9_2192;
if (l9_2191)
{
l9_2192=l9_2164.y==3;
}
else
{
l9_2192=l9_2191;
}
float l9_2193=l9_2161.y;
float l9_2194=l9_2166.y;
float l9_2195=l9_2166.w;
bool l9_2196=l9_2192;
float l9_2197=l9_2171;
float l9_2198=fast::clamp(l9_2193,l9_2194,l9_2195);
float l9_2199=step(abs(l9_2193-l9_2198),9.9999997e-06);
l9_2197*=(l9_2199+((1.0-float(l9_2196))*(1.0-l9_2199)));
l9_2193=l9_2198;
l9_2161.y=l9_2193;
l9_2171=l9_2197;
}
float2 l9_2200=l9_2161;
bool l9_2201=l9_2162;
float3x3 l9_2202=l9_2163;
if (l9_2201)
{
l9_2200=float2((l9_2202*float3(l9_2200,1.0)).xy);
}
float2 l9_2203=l9_2200;
l9_2161=l9_2203;
float l9_2204=l9_2161.x;
int l9_2205=l9_2164.x;
bool l9_2206=l9_2170;
float l9_2207=l9_2171;
if ((l9_2205==0)||(l9_2205==3))
{
float l9_2208=l9_2204;
float l9_2209=0.0;
float l9_2210=1.0;
bool l9_2211=l9_2206;
float l9_2212=l9_2207;
float l9_2213=fast::clamp(l9_2208,l9_2209,l9_2210);
float l9_2214=step(abs(l9_2208-l9_2213),9.9999997e-06);
l9_2212*=(l9_2214+((1.0-float(l9_2211))*(1.0-l9_2214)));
l9_2208=l9_2213;
l9_2204=l9_2208;
l9_2207=l9_2212;
}
l9_2161.x=l9_2204;
l9_2171=l9_2207;
float l9_2215=l9_2161.y;
int l9_2216=l9_2164.y;
bool l9_2217=l9_2170;
float l9_2218=l9_2171;
if ((l9_2216==0)||(l9_2216==3))
{
float l9_2219=l9_2215;
float l9_2220=0.0;
float l9_2221=1.0;
bool l9_2222=l9_2217;
float l9_2223=l9_2218;
float l9_2224=fast::clamp(l9_2219,l9_2220,l9_2221);
float l9_2225=step(abs(l9_2219-l9_2224),9.9999997e-06);
l9_2223*=(l9_2225+((1.0-float(l9_2222))*(1.0-l9_2225)));
l9_2219=l9_2224;
l9_2215=l9_2219;
l9_2218=l9_2223;
}
l9_2161.y=l9_2215;
l9_2171=l9_2218;
float2 l9_2226=l9_2161;
int l9_2227=l9_2159;
int l9_2228=l9_2160;
float l9_2229=l9_2169;
float2 l9_2230=l9_2226;
int l9_2231=l9_2227;
int l9_2232=l9_2228;
float3 l9_2233=float3(0.0);
if (l9_2231==0)
{
l9_2233=float3(l9_2230,0.0);
}
else
{
if (l9_2231==1)
{
l9_2233=float3(l9_2230.x,(l9_2230.y*0.5)+(0.5-(float(l9_2232)*0.5)),0.0);
}
else
{
l9_2233=float3(l9_2230,float(l9_2232));
}
}
float3 l9_2234=l9_2233;
float3 l9_2235=l9_2234;
float4 l9_2236=sc_set0.emissiveTex.sample(sc_set0.emissiveTexSmpSC,l9_2235.xy,bias(l9_2229));
float4 l9_2237=l9_2236;
if (l9_2167)
{
l9_2237=mix(l9_2168,l9_2237,float4(l9_2171));
}
float4 l9_2238=l9_2237;
l9_2152=l9_2238;
l9_1939=l9_2152;
l9_1942=l9_1939;
}
else
{
l9_1942=l9_1940;
}
l9_1938=l9_1942;
float3 l9_2239=float3(0.0);
l9_2239=l9_1937.xyz+l9_1938.xyz;
param_10=l9_2239;
param_12=param_10;
}
else
{
float4 l9_2240=float4(0.0);
float4 l9_2241=float4(0.0);
float4 l9_2242=(*sc_set0.UserUniforms).Port_Default_N132;
ssGlobals l9_2243=param_13;
float4 l9_2244;
if ((int(Tweak_N223_tmp)!=0))
{
float2 l9_2245=float2(0.0);
float2 l9_2246=float2(0.0);
float2 l9_2247=float2(0.0);
float2 l9_2248=float2(0.0);
float2 l9_2249=float2(0.0);
float2 l9_2250=float2(0.0);
ssGlobals l9_2251=l9_2243;
float2 l9_2252;
if (NODE_76_DROPLIST_ITEM_tmp==0)
{
float2 l9_2253=float2(0.0);
l9_2253=l9_2251.Surface_UVCoord0;
l9_2246=l9_2253;
l9_2252=l9_2246;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==1)
{
float2 l9_2254=float2(0.0);
l9_2254=l9_2251.Surface_UVCoord1;
l9_2247=l9_2254;
l9_2252=l9_2247;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==2)
{
float2 l9_2255=float2(0.0);
l9_2255=l9_2251.Surface_UVCoord0;
float2 l9_2256=float2(0.0);
float2 l9_2257=float2(0.0);
float2 l9_2258=float2(0.0);
ssGlobals l9_2259=l9_2251;
float2 l9_2260;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2261=float2(0.0);
float2 l9_2262=float2(0.0);
float2 l9_2263=float2(0.0);
float2 l9_2264=float2(0.0);
float2 l9_2265=float2(0.0);
ssGlobals l9_2266=l9_2259;
float2 l9_2267;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2268=float2(0.0);
l9_2268=l9_2266.Surface_UVCoord0;
l9_2262=l9_2268;
l9_2267=l9_2262;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2269=float2(0.0);
l9_2269=l9_2266.Surface_UVCoord1;
l9_2263=l9_2269;
l9_2267=l9_2263;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2270=float2(0.0);
l9_2270=l9_2266.gScreenCoord;
l9_2264=l9_2270;
l9_2267=l9_2264;
}
else
{
float2 l9_2271=float2(0.0);
l9_2271=l9_2266.Surface_UVCoord0;
l9_2265=l9_2271;
l9_2267=l9_2265;
}
}
}
l9_2261=l9_2267;
float2 l9_2272=float2(0.0);
float2 l9_2273=(*sc_set0.UserUniforms).uv2Scale;
l9_2272=l9_2273;
float2 l9_2274=float2(0.0);
l9_2274=l9_2272;
float2 l9_2275=float2(0.0);
float2 l9_2276=(*sc_set0.UserUniforms).uv2Offset;
l9_2275=l9_2276;
float2 l9_2277=float2(0.0);
l9_2277=l9_2275;
float2 l9_2278=float2(0.0);
l9_2278=(l9_2261*l9_2274)+l9_2277;
float2 l9_2279=float2(0.0);
l9_2279=l9_2278+(l9_2277*(l9_2259.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2257=l9_2279;
l9_2260=l9_2257;
}
else
{
float2 l9_2280=float2(0.0);
float2 l9_2281=float2(0.0);
float2 l9_2282=float2(0.0);
float2 l9_2283=float2(0.0);
float2 l9_2284=float2(0.0);
ssGlobals l9_2285=l9_2259;
float2 l9_2286;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2287=float2(0.0);
l9_2287=l9_2285.Surface_UVCoord0;
l9_2281=l9_2287;
l9_2286=l9_2281;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2288=float2(0.0);
l9_2288=l9_2285.Surface_UVCoord1;
l9_2282=l9_2288;
l9_2286=l9_2282;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2289=float2(0.0);
l9_2289=l9_2285.gScreenCoord;
l9_2283=l9_2289;
l9_2286=l9_2283;
}
else
{
float2 l9_2290=float2(0.0);
l9_2290=l9_2285.Surface_UVCoord0;
l9_2284=l9_2290;
l9_2286=l9_2284;
}
}
}
l9_2280=l9_2286;
float2 l9_2291=float2(0.0);
float2 l9_2292=(*sc_set0.UserUniforms).uv2Scale;
l9_2291=l9_2292;
float2 l9_2293=float2(0.0);
l9_2293=l9_2291;
float2 l9_2294=float2(0.0);
float2 l9_2295=(*sc_set0.UserUniforms).uv2Offset;
l9_2294=l9_2295;
float2 l9_2296=float2(0.0);
l9_2296=l9_2294;
float2 l9_2297=float2(0.0);
l9_2297=(l9_2280*l9_2293)+l9_2296;
l9_2258=l9_2297;
l9_2260=l9_2258;
}
l9_2256=l9_2260;
float l9_2298=0.0;
float l9_2299;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2299=1.001;
}
else
{
l9_2299=0.001;
}
l9_2299-=0.001;
l9_2298=l9_2299;
float l9_2300=0.0;
l9_2300=l9_2298;
float2 l9_2301=float2(0.0);
l9_2301=mix(l9_2255,l9_2256,float2(l9_2300));
float2 l9_2302=float2(0.0);
l9_2302=l9_2301;
float2 l9_2303=float2(0.0);
l9_2303=l9_2302;
l9_2248=l9_2303;
l9_2252=l9_2248;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==3)
{
float2 l9_2304=float2(0.0);
l9_2304=l9_2251.Surface_UVCoord0;
float2 l9_2305=float2(0.0);
float2 l9_2306=float2(0.0);
float2 l9_2307=float2(0.0);
ssGlobals l9_2308=l9_2251;
float2 l9_2309;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_2310=float2(0.0);
float2 l9_2311=float2(0.0);
float2 l9_2312=float2(0.0);
float2 l9_2313=float2(0.0);
float2 l9_2314=float2(0.0);
float2 l9_2315=float2(0.0);
ssGlobals l9_2316=l9_2308;
float2 l9_2317;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2318=float2(0.0);
l9_2318=l9_2316.Surface_UVCoord0;
l9_2311=l9_2318;
l9_2317=l9_2311;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2319=float2(0.0);
l9_2319=l9_2316.Surface_UVCoord1;
l9_2312=l9_2319;
l9_2317=l9_2312;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2320=float2(0.0);
l9_2320=l9_2316.gScreenCoord;
l9_2313=l9_2320;
l9_2317=l9_2313;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2321=float2(0.0);
l9_2321=l9_2316.Surface_UVCoord0;
float2 l9_2322=float2(0.0);
float2 l9_2323=float2(0.0);
float2 l9_2324=float2(0.0);
ssGlobals l9_2325=l9_2316;
float2 l9_2326;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2327=float2(0.0);
float2 l9_2328=float2(0.0);
float2 l9_2329=float2(0.0);
float2 l9_2330=float2(0.0);
float2 l9_2331=float2(0.0);
ssGlobals l9_2332=l9_2325;
float2 l9_2333;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2334=float2(0.0);
l9_2334=l9_2332.Surface_UVCoord0;
l9_2328=l9_2334;
l9_2333=l9_2328;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2335=float2(0.0);
l9_2335=l9_2332.Surface_UVCoord1;
l9_2329=l9_2335;
l9_2333=l9_2329;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2336=float2(0.0);
l9_2336=l9_2332.gScreenCoord;
l9_2330=l9_2336;
l9_2333=l9_2330;
}
else
{
float2 l9_2337=float2(0.0);
l9_2337=l9_2332.Surface_UVCoord0;
l9_2331=l9_2337;
l9_2333=l9_2331;
}
}
}
l9_2327=l9_2333;
float2 l9_2338=float2(0.0);
float2 l9_2339=(*sc_set0.UserUniforms).uv2Scale;
l9_2338=l9_2339;
float2 l9_2340=float2(0.0);
l9_2340=l9_2338;
float2 l9_2341=float2(0.0);
float2 l9_2342=(*sc_set0.UserUniforms).uv2Offset;
l9_2341=l9_2342;
float2 l9_2343=float2(0.0);
l9_2343=l9_2341;
float2 l9_2344=float2(0.0);
l9_2344=(l9_2327*l9_2340)+l9_2343;
float2 l9_2345=float2(0.0);
l9_2345=l9_2344+(l9_2343*(l9_2325.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2323=l9_2345;
l9_2326=l9_2323;
}
else
{
float2 l9_2346=float2(0.0);
float2 l9_2347=float2(0.0);
float2 l9_2348=float2(0.0);
float2 l9_2349=float2(0.0);
float2 l9_2350=float2(0.0);
ssGlobals l9_2351=l9_2325;
float2 l9_2352;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2353=float2(0.0);
l9_2353=l9_2351.Surface_UVCoord0;
l9_2347=l9_2353;
l9_2352=l9_2347;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2354=float2(0.0);
l9_2354=l9_2351.Surface_UVCoord1;
l9_2348=l9_2354;
l9_2352=l9_2348;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2355=float2(0.0);
l9_2355=l9_2351.gScreenCoord;
l9_2349=l9_2355;
l9_2352=l9_2349;
}
else
{
float2 l9_2356=float2(0.0);
l9_2356=l9_2351.Surface_UVCoord0;
l9_2350=l9_2356;
l9_2352=l9_2350;
}
}
}
l9_2346=l9_2352;
float2 l9_2357=float2(0.0);
float2 l9_2358=(*sc_set0.UserUniforms).uv2Scale;
l9_2357=l9_2358;
float2 l9_2359=float2(0.0);
l9_2359=l9_2357;
float2 l9_2360=float2(0.0);
float2 l9_2361=(*sc_set0.UserUniforms).uv2Offset;
l9_2360=l9_2361;
float2 l9_2362=float2(0.0);
l9_2362=l9_2360;
float2 l9_2363=float2(0.0);
l9_2363=(l9_2346*l9_2359)+l9_2362;
l9_2324=l9_2363;
l9_2326=l9_2324;
}
l9_2322=l9_2326;
float l9_2364=0.0;
float l9_2365;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2365=1.001;
}
else
{
l9_2365=0.001;
}
l9_2365-=0.001;
l9_2364=l9_2365;
float l9_2366=0.0;
l9_2366=l9_2364;
float2 l9_2367=float2(0.0);
l9_2367=mix(l9_2321,l9_2322,float2(l9_2366));
float2 l9_2368=float2(0.0);
l9_2368=l9_2367;
float2 l9_2369=float2(0.0);
l9_2369=l9_2368;
l9_2314=l9_2369;
l9_2317=l9_2314;
}
else
{
float2 l9_2370=float2(0.0);
l9_2370=l9_2316.Surface_UVCoord0;
l9_2315=l9_2370;
l9_2317=l9_2315;
}
}
}
}
l9_2310=l9_2317;
float2 l9_2371=float2(0.0);
float2 l9_2372=(*sc_set0.UserUniforms).uv3Scale;
l9_2371=l9_2372;
float2 l9_2373=float2(0.0);
l9_2373=l9_2371;
float2 l9_2374=float2(0.0);
float2 l9_2375=(*sc_set0.UserUniforms).uv3Offset;
l9_2374=l9_2375;
float2 l9_2376=float2(0.0);
l9_2376=l9_2374;
float2 l9_2377=float2(0.0);
l9_2377=(l9_2310*l9_2373)+l9_2376;
float2 l9_2378=float2(0.0);
l9_2378=l9_2377+(l9_2376*(l9_2308.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_2306=l9_2378;
l9_2309=l9_2306;
}
else
{
float2 l9_2379=float2(0.0);
float2 l9_2380=float2(0.0);
float2 l9_2381=float2(0.0);
float2 l9_2382=float2(0.0);
float2 l9_2383=float2(0.0);
float2 l9_2384=float2(0.0);
ssGlobals l9_2385=l9_2308;
float2 l9_2386;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2387=float2(0.0);
l9_2387=l9_2385.Surface_UVCoord0;
l9_2380=l9_2387;
l9_2386=l9_2380;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2388=float2(0.0);
l9_2388=l9_2385.Surface_UVCoord1;
l9_2381=l9_2388;
l9_2386=l9_2381;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2389=float2(0.0);
l9_2389=l9_2385.gScreenCoord;
l9_2382=l9_2389;
l9_2386=l9_2382;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2390=float2(0.0);
l9_2390=l9_2385.Surface_UVCoord0;
float2 l9_2391=float2(0.0);
float2 l9_2392=float2(0.0);
float2 l9_2393=float2(0.0);
ssGlobals l9_2394=l9_2385;
float2 l9_2395;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2396=float2(0.0);
float2 l9_2397=float2(0.0);
float2 l9_2398=float2(0.0);
float2 l9_2399=float2(0.0);
float2 l9_2400=float2(0.0);
ssGlobals l9_2401=l9_2394;
float2 l9_2402;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2403=float2(0.0);
l9_2403=l9_2401.Surface_UVCoord0;
l9_2397=l9_2403;
l9_2402=l9_2397;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2404=float2(0.0);
l9_2404=l9_2401.Surface_UVCoord1;
l9_2398=l9_2404;
l9_2402=l9_2398;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2405=float2(0.0);
l9_2405=l9_2401.gScreenCoord;
l9_2399=l9_2405;
l9_2402=l9_2399;
}
else
{
float2 l9_2406=float2(0.0);
l9_2406=l9_2401.Surface_UVCoord0;
l9_2400=l9_2406;
l9_2402=l9_2400;
}
}
}
l9_2396=l9_2402;
float2 l9_2407=float2(0.0);
float2 l9_2408=(*sc_set0.UserUniforms).uv2Scale;
l9_2407=l9_2408;
float2 l9_2409=float2(0.0);
l9_2409=l9_2407;
float2 l9_2410=float2(0.0);
float2 l9_2411=(*sc_set0.UserUniforms).uv2Offset;
l9_2410=l9_2411;
float2 l9_2412=float2(0.0);
l9_2412=l9_2410;
float2 l9_2413=float2(0.0);
l9_2413=(l9_2396*l9_2409)+l9_2412;
float2 l9_2414=float2(0.0);
l9_2414=l9_2413+(l9_2412*(l9_2394.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2392=l9_2414;
l9_2395=l9_2392;
}
else
{
float2 l9_2415=float2(0.0);
float2 l9_2416=float2(0.0);
float2 l9_2417=float2(0.0);
float2 l9_2418=float2(0.0);
float2 l9_2419=float2(0.0);
ssGlobals l9_2420=l9_2394;
float2 l9_2421;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2422=float2(0.0);
l9_2422=l9_2420.Surface_UVCoord0;
l9_2416=l9_2422;
l9_2421=l9_2416;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2423=float2(0.0);
l9_2423=l9_2420.Surface_UVCoord1;
l9_2417=l9_2423;
l9_2421=l9_2417;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2424=float2(0.0);
l9_2424=l9_2420.gScreenCoord;
l9_2418=l9_2424;
l9_2421=l9_2418;
}
else
{
float2 l9_2425=float2(0.0);
l9_2425=l9_2420.Surface_UVCoord0;
l9_2419=l9_2425;
l9_2421=l9_2419;
}
}
}
l9_2415=l9_2421;
float2 l9_2426=float2(0.0);
float2 l9_2427=(*sc_set0.UserUniforms).uv2Scale;
l9_2426=l9_2427;
float2 l9_2428=float2(0.0);
l9_2428=l9_2426;
float2 l9_2429=float2(0.0);
float2 l9_2430=(*sc_set0.UserUniforms).uv2Offset;
l9_2429=l9_2430;
float2 l9_2431=float2(0.0);
l9_2431=l9_2429;
float2 l9_2432=float2(0.0);
l9_2432=(l9_2415*l9_2428)+l9_2431;
l9_2393=l9_2432;
l9_2395=l9_2393;
}
l9_2391=l9_2395;
float l9_2433=0.0;
float l9_2434;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2434=1.001;
}
else
{
l9_2434=0.001;
}
l9_2434-=0.001;
l9_2433=l9_2434;
float l9_2435=0.0;
l9_2435=l9_2433;
float2 l9_2436=float2(0.0);
l9_2436=mix(l9_2390,l9_2391,float2(l9_2435));
float2 l9_2437=float2(0.0);
l9_2437=l9_2436;
float2 l9_2438=float2(0.0);
l9_2438=l9_2437;
l9_2383=l9_2438;
l9_2386=l9_2383;
}
else
{
float2 l9_2439=float2(0.0);
l9_2439=l9_2385.Surface_UVCoord0;
l9_2384=l9_2439;
l9_2386=l9_2384;
}
}
}
}
l9_2379=l9_2386;
float2 l9_2440=float2(0.0);
float2 l9_2441=(*sc_set0.UserUniforms).uv3Scale;
l9_2440=l9_2441;
float2 l9_2442=float2(0.0);
l9_2442=l9_2440;
float2 l9_2443=float2(0.0);
float2 l9_2444=(*sc_set0.UserUniforms).uv3Offset;
l9_2443=l9_2444;
float2 l9_2445=float2(0.0);
l9_2445=l9_2443;
float2 l9_2446=float2(0.0);
l9_2446=(l9_2379*l9_2442)+l9_2445;
l9_2307=l9_2446;
l9_2309=l9_2307;
}
l9_2305=l9_2309;
float l9_2447=0.0;
float l9_2448;
if ((int(Tweak_N11_tmp)!=0))
{
l9_2448=1.001;
}
else
{
l9_2448=0.001;
}
l9_2448-=0.001;
l9_2447=l9_2448;
float l9_2449=0.0;
l9_2449=l9_2447;
float2 l9_2450=float2(0.0);
l9_2450=mix(l9_2304,l9_2305,float2(l9_2449));
float2 l9_2451=float2(0.0);
l9_2451=l9_2450;
float2 l9_2452=float2(0.0);
l9_2452=l9_2451;
l9_2249=l9_2452;
l9_2252=l9_2249;
}
else
{
float2 l9_2453=float2(0.0);
l9_2453=l9_2251.Surface_UVCoord0;
l9_2250=l9_2453;
l9_2252=l9_2250;
}
}
}
}
l9_2245=l9_2252;
float4 l9_2454=float4(0.0);
int l9_2455;
if ((int(emissiveTexHasSwappedViews_tmp)!=0))
{
int l9_2456=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2456=0;
}
else
{
l9_2456=in.varStereoViewID;
}
int l9_2457=l9_2456;
l9_2455=1-l9_2457;
}
else
{
int l9_2458=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2458=0;
}
else
{
l9_2458=in.varStereoViewID;
}
int l9_2459=l9_2458;
l9_2455=l9_2459;
}
int l9_2460=l9_2455;
int l9_2461=emissiveTexLayout_tmp;
int l9_2462=l9_2460;
float2 l9_2463=l9_2245;
bool l9_2464=(int(SC_USE_UV_TRANSFORM_emissiveTex_tmp)!=0);
float3x3 l9_2465=(*sc_set0.UserUniforms).emissiveTexTransform;
int2 l9_2466=int2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp,SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp);
bool l9_2467=(int(SC_USE_UV_MIN_MAX_emissiveTex_tmp)!=0);
float4 l9_2468=(*sc_set0.UserUniforms).emissiveTexUvMinMax;
bool l9_2469=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp)!=0);
float4 l9_2470=(*sc_set0.UserUniforms).emissiveTexBorderColor;
float l9_2471=0.0;
bool l9_2472=l9_2469&&(!l9_2467);
float l9_2473=1.0;
float l9_2474=l9_2463.x;
int l9_2475=l9_2466.x;
if (l9_2475==1)
{
l9_2474=fract(l9_2474);
}
else
{
if (l9_2475==2)
{
float l9_2476=fract(l9_2474);
float l9_2477=l9_2474-l9_2476;
float l9_2478=step(0.25,fract(l9_2477*0.5));
l9_2474=mix(l9_2476,1.0-l9_2476,fast::clamp(l9_2478,0.0,1.0));
}
}
l9_2463.x=l9_2474;
float l9_2479=l9_2463.y;
int l9_2480=l9_2466.y;
if (l9_2480==1)
{
l9_2479=fract(l9_2479);
}
else
{
if (l9_2480==2)
{
float l9_2481=fract(l9_2479);
float l9_2482=l9_2479-l9_2481;
float l9_2483=step(0.25,fract(l9_2482*0.5));
l9_2479=mix(l9_2481,1.0-l9_2481,fast::clamp(l9_2483,0.0,1.0));
}
}
l9_2463.y=l9_2479;
if (l9_2467)
{
bool l9_2484=l9_2469;
bool l9_2485;
if (l9_2484)
{
l9_2485=l9_2466.x==3;
}
else
{
l9_2485=l9_2484;
}
float l9_2486=l9_2463.x;
float l9_2487=l9_2468.x;
float l9_2488=l9_2468.z;
bool l9_2489=l9_2485;
float l9_2490=l9_2473;
float l9_2491=fast::clamp(l9_2486,l9_2487,l9_2488);
float l9_2492=step(abs(l9_2486-l9_2491),9.9999997e-06);
l9_2490*=(l9_2492+((1.0-float(l9_2489))*(1.0-l9_2492)));
l9_2486=l9_2491;
l9_2463.x=l9_2486;
l9_2473=l9_2490;
bool l9_2493=l9_2469;
bool l9_2494;
if (l9_2493)
{
l9_2494=l9_2466.y==3;
}
else
{
l9_2494=l9_2493;
}
float l9_2495=l9_2463.y;
float l9_2496=l9_2468.y;
float l9_2497=l9_2468.w;
bool l9_2498=l9_2494;
float l9_2499=l9_2473;
float l9_2500=fast::clamp(l9_2495,l9_2496,l9_2497);
float l9_2501=step(abs(l9_2495-l9_2500),9.9999997e-06);
l9_2499*=(l9_2501+((1.0-float(l9_2498))*(1.0-l9_2501)));
l9_2495=l9_2500;
l9_2463.y=l9_2495;
l9_2473=l9_2499;
}
float2 l9_2502=l9_2463;
bool l9_2503=l9_2464;
float3x3 l9_2504=l9_2465;
if (l9_2503)
{
l9_2502=float2((l9_2504*float3(l9_2502,1.0)).xy);
}
float2 l9_2505=l9_2502;
l9_2463=l9_2505;
float l9_2506=l9_2463.x;
int l9_2507=l9_2466.x;
bool l9_2508=l9_2472;
float l9_2509=l9_2473;
if ((l9_2507==0)||(l9_2507==3))
{
float l9_2510=l9_2506;
float l9_2511=0.0;
float l9_2512=1.0;
bool l9_2513=l9_2508;
float l9_2514=l9_2509;
float l9_2515=fast::clamp(l9_2510,l9_2511,l9_2512);
float l9_2516=step(abs(l9_2510-l9_2515),9.9999997e-06);
l9_2514*=(l9_2516+((1.0-float(l9_2513))*(1.0-l9_2516)));
l9_2510=l9_2515;
l9_2506=l9_2510;
l9_2509=l9_2514;
}
l9_2463.x=l9_2506;
l9_2473=l9_2509;
float l9_2517=l9_2463.y;
int l9_2518=l9_2466.y;
bool l9_2519=l9_2472;
float l9_2520=l9_2473;
if ((l9_2518==0)||(l9_2518==3))
{
float l9_2521=l9_2517;
float l9_2522=0.0;
float l9_2523=1.0;
bool l9_2524=l9_2519;
float l9_2525=l9_2520;
float l9_2526=fast::clamp(l9_2521,l9_2522,l9_2523);
float l9_2527=step(abs(l9_2521-l9_2526),9.9999997e-06);
l9_2525*=(l9_2527+((1.0-float(l9_2524))*(1.0-l9_2527)));
l9_2521=l9_2526;
l9_2517=l9_2521;
l9_2520=l9_2525;
}
l9_2463.y=l9_2517;
l9_2473=l9_2520;
float2 l9_2528=l9_2463;
int l9_2529=l9_2461;
int l9_2530=l9_2462;
float l9_2531=l9_2471;
float2 l9_2532=l9_2528;
int l9_2533=l9_2529;
int l9_2534=l9_2530;
float3 l9_2535=float3(0.0);
if (l9_2533==0)
{
l9_2535=float3(l9_2532,0.0);
}
else
{
if (l9_2533==1)
{
l9_2535=float3(l9_2532.x,(l9_2532.y*0.5)+(0.5-(float(l9_2534)*0.5)),0.0);
}
else
{
l9_2535=float3(l9_2532,float(l9_2534));
}
}
float3 l9_2536=l9_2535;
float3 l9_2537=l9_2536;
float4 l9_2538=sc_set0.emissiveTex.sample(sc_set0.emissiveTexSmpSC,l9_2537.xy,bias(l9_2531));
float4 l9_2539=l9_2538;
if (l9_2469)
{
l9_2539=mix(l9_2470,l9_2539,float4(l9_2473));
}
float4 l9_2540=l9_2539;
l9_2454=l9_2540;
l9_2241=l9_2454;
l9_2244=l9_2241;
}
else
{
l9_2244=l9_2242;
}
l9_2240=l9_2244;
param_11=l9_2240.xyz;
param_12=param_11;
}
Result_N294=param_12;
float3 Output_N236=float3(0.0);
float3 param_14=(*sc_set0.UserUniforms).emissiveColor;
Output_N236=param_14;
float3 Value_N295=float3(0.0);
Value_N295=Output_N236;
float Output_N233=0.0;
float param_15=(*sc_set0.UserUniforms).emissiveIntensity;
Output_N233=param_15;
float Value_N296=0.0;
Value_N296=Output_N233;
float3 Output_N297=float3(0.0);
Output_N297=(Result_N294*Value_N295)*float3(Value_N296);
float3 Output_N82=float3(0.0);
float3 param_16=Output_N297;
float3 l9_2541;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2541=float3(pow(param_16.x,2.2),pow(param_16.y,2.2),pow(param_16.z,2.2));
}
else
{
l9_2541=param_16*param_16;
}
float3 l9_2542=l9_2541;
Output_N82=l9_2542;
float3 Result_N134=float3(0.0);
float3 param_17=float3(0.0);
float3 param_18=(*sc_set0.UserUniforms).Port_Default_N134;
ssGlobals param_20=Globals;
float3 param_19;
if ((int(Tweak_N179_tmp)!=0))
{
float l9_2543=0.0;
float l9_2544=(*sc_set0.UserUniforms).reflectionIntensity;
l9_2543=l9_2544;
float l9_2545=0.0;
l9_2545=l9_2543;
float3 l9_2546=float3(0.0);
l9_2546=param_20.ViewDirWS;
float3 l9_2547=float3(0.0);
float3 l9_2548=float3(0.0);
float3 l9_2549=float3(0.0);
ssGlobals l9_2550=param_20;
float3 l9_2551;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_2552=float3(0.0);
l9_2552=l9_2550.VertexTangent_WorldSpace;
float3 l9_2553=float3(0.0);
l9_2553=l9_2550.VertexBinormal_WorldSpace;
float3 l9_2554=float3(0.0);
l9_2554=l9_2550.VertexNormal_WorldSpace;
float3x3 l9_2555=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_2555=float3x3(float3(l9_2552),float3(l9_2553),float3(l9_2554));
float2 l9_2556=float2(0.0);
float2 l9_2557=float2(0.0);
float2 l9_2558=float2(0.0);
float2 l9_2559=float2(0.0);
float2 l9_2560=float2(0.0);
float2 l9_2561=float2(0.0);
ssGlobals l9_2562=l9_2550;
float2 l9_2563;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_2564=float2(0.0);
l9_2564=l9_2562.Surface_UVCoord0;
l9_2557=l9_2564;
l9_2563=l9_2557;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_2565=float2(0.0);
l9_2565=l9_2562.Surface_UVCoord1;
l9_2558=l9_2565;
l9_2563=l9_2558;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_2566=float2(0.0);
l9_2566=l9_2562.Surface_UVCoord0;
float2 l9_2567=float2(0.0);
float2 l9_2568=float2(0.0);
float2 l9_2569=float2(0.0);
ssGlobals l9_2570=l9_2562;
float2 l9_2571;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2572=float2(0.0);
float2 l9_2573=float2(0.0);
float2 l9_2574=float2(0.0);
float2 l9_2575=float2(0.0);
float2 l9_2576=float2(0.0);
ssGlobals l9_2577=l9_2570;
float2 l9_2578;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2579=float2(0.0);
l9_2579=l9_2577.Surface_UVCoord0;
l9_2573=l9_2579;
l9_2578=l9_2573;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2580=float2(0.0);
l9_2580=l9_2577.Surface_UVCoord1;
l9_2574=l9_2580;
l9_2578=l9_2574;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2581=float2(0.0);
l9_2581=l9_2577.gScreenCoord;
l9_2575=l9_2581;
l9_2578=l9_2575;
}
else
{
float2 l9_2582=float2(0.0);
l9_2582=l9_2577.Surface_UVCoord0;
l9_2576=l9_2582;
l9_2578=l9_2576;
}
}
}
l9_2572=l9_2578;
float2 l9_2583=float2(0.0);
float2 l9_2584=(*sc_set0.UserUniforms).uv2Scale;
l9_2583=l9_2584;
float2 l9_2585=float2(0.0);
l9_2585=l9_2583;
float2 l9_2586=float2(0.0);
float2 l9_2587=(*sc_set0.UserUniforms).uv2Offset;
l9_2586=l9_2587;
float2 l9_2588=float2(0.0);
l9_2588=l9_2586;
float2 l9_2589=float2(0.0);
l9_2589=(l9_2572*l9_2585)+l9_2588;
float2 l9_2590=float2(0.0);
l9_2590=l9_2589+(l9_2588*(l9_2570.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2568=l9_2590;
l9_2571=l9_2568;
}
else
{
float2 l9_2591=float2(0.0);
float2 l9_2592=float2(0.0);
float2 l9_2593=float2(0.0);
float2 l9_2594=float2(0.0);
float2 l9_2595=float2(0.0);
ssGlobals l9_2596=l9_2570;
float2 l9_2597;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2598=float2(0.0);
l9_2598=l9_2596.Surface_UVCoord0;
l9_2592=l9_2598;
l9_2597=l9_2592;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2599=float2(0.0);
l9_2599=l9_2596.Surface_UVCoord1;
l9_2593=l9_2599;
l9_2597=l9_2593;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2600=float2(0.0);
l9_2600=l9_2596.gScreenCoord;
l9_2594=l9_2600;
l9_2597=l9_2594;
}
else
{
float2 l9_2601=float2(0.0);
l9_2601=l9_2596.Surface_UVCoord0;
l9_2595=l9_2601;
l9_2597=l9_2595;
}
}
}
l9_2591=l9_2597;
float2 l9_2602=float2(0.0);
float2 l9_2603=(*sc_set0.UserUniforms).uv2Scale;
l9_2602=l9_2603;
float2 l9_2604=float2(0.0);
l9_2604=l9_2602;
float2 l9_2605=float2(0.0);
float2 l9_2606=(*sc_set0.UserUniforms).uv2Offset;
l9_2605=l9_2606;
float2 l9_2607=float2(0.0);
l9_2607=l9_2605;
float2 l9_2608=float2(0.0);
l9_2608=(l9_2591*l9_2604)+l9_2607;
l9_2569=l9_2608;
l9_2571=l9_2569;
}
l9_2567=l9_2571;
float l9_2609=0.0;
float l9_2610;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2610=1.001;
}
else
{
l9_2610=0.001;
}
l9_2610-=0.001;
l9_2609=l9_2610;
float l9_2611=0.0;
l9_2611=l9_2609;
float2 l9_2612=float2(0.0);
l9_2612=mix(l9_2566,l9_2567,float2(l9_2611));
float2 l9_2613=float2(0.0);
l9_2613=l9_2612;
float2 l9_2614=float2(0.0);
l9_2614=l9_2613;
l9_2559=l9_2614;
l9_2563=l9_2559;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_2615=float2(0.0);
l9_2615=l9_2562.Surface_UVCoord0;
float2 l9_2616=float2(0.0);
float2 l9_2617=float2(0.0);
float2 l9_2618=float2(0.0);
ssGlobals l9_2619=l9_2562;
float2 l9_2620;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_2621=float2(0.0);
float2 l9_2622=float2(0.0);
float2 l9_2623=float2(0.0);
float2 l9_2624=float2(0.0);
float2 l9_2625=float2(0.0);
float2 l9_2626=float2(0.0);
ssGlobals l9_2627=l9_2619;
float2 l9_2628;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2629=float2(0.0);
l9_2629=l9_2627.Surface_UVCoord0;
l9_2622=l9_2629;
l9_2628=l9_2622;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2630=float2(0.0);
l9_2630=l9_2627.Surface_UVCoord1;
l9_2623=l9_2630;
l9_2628=l9_2623;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2631=float2(0.0);
l9_2631=l9_2627.gScreenCoord;
l9_2624=l9_2631;
l9_2628=l9_2624;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2632=float2(0.0);
l9_2632=l9_2627.Surface_UVCoord0;
float2 l9_2633=float2(0.0);
float2 l9_2634=float2(0.0);
float2 l9_2635=float2(0.0);
ssGlobals l9_2636=l9_2627;
float2 l9_2637;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2638=float2(0.0);
float2 l9_2639=float2(0.0);
float2 l9_2640=float2(0.0);
float2 l9_2641=float2(0.0);
float2 l9_2642=float2(0.0);
ssGlobals l9_2643=l9_2636;
float2 l9_2644;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2645=float2(0.0);
l9_2645=l9_2643.Surface_UVCoord0;
l9_2639=l9_2645;
l9_2644=l9_2639;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2646=float2(0.0);
l9_2646=l9_2643.Surface_UVCoord1;
l9_2640=l9_2646;
l9_2644=l9_2640;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2647=float2(0.0);
l9_2647=l9_2643.gScreenCoord;
l9_2641=l9_2647;
l9_2644=l9_2641;
}
else
{
float2 l9_2648=float2(0.0);
l9_2648=l9_2643.Surface_UVCoord0;
l9_2642=l9_2648;
l9_2644=l9_2642;
}
}
}
l9_2638=l9_2644;
float2 l9_2649=float2(0.0);
float2 l9_2650=(*sc_set0.UserUniforms).uv2Scale;
l9_2649=l9_2650;
float2 l9_2651=float2(0.0);
l9_2651=l9_2649;
float2 l9_2652=float2(0.0);
float2 l9_2653=(*sc_set0.UserUniforms).uv2Offset;
l9_2652=l9_2653;
float2 l9_2654=float2(0.0);
l9_2654=l9_2652;
float2 l9_2655=float2(0.0);
l9_2655=(l9_2638*l9_2651)+l9_2654;
float2 l9_2656=float2(0.0);
l9_2656=l9_2655+(l9_2654*(l9_2636.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2634=l9_2656;
l9_2637=l9_2634;
}
else
{
float2 l9_2657=float2(0.0);
float2 l9_2658=float2(0.0);
float2 l9_2659=float2(0.0);
float2 l9_2660=float2(0.0);
float2 l9_2661=float2(0.0);
ssGlobals l9_2662=l9_2636;
float2 l9_2663;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2664=float2(0.0);
l9_2664=l9_2662.Surface_UVCoord0;
l9_2658=l9_2664;
l9_2663=l9_2658;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2665=float2(0.0);
l9_2665=l9_2662.Surface_UVCoord1;
l9_2659=l9_2665;
l9_2663=l9_2659;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2666=float2(0.0);
l9_2666=l9_2662.gScreenCoord;
l9_2660=l9_2666;
l9_2663=l9_2660;
}
else
{
float2 l9_2667=float2(0.0);
l9_2667=l9_2662.Surface_UVCoord0;
l9_2661=l9_2667;
l9_2663=l9_2661;
}
}
}
l9_2657=l9_2663;
float2 l9_2668=float2(0.0);
float2 l9_2669=(*sc_set0.UserUniforms).uv2Scale;
l9_2668=l9_2669;
float2 l9_2670=float2(0.0);
l9_2670=l9_2668;
float2 l9_2671=float2(0.0);
float2 l9_2672=(*sc_set0.UserUniforms).uv2Offset;
l9_2671=l9_2672;
float2 l9_2673=float2(0.0);
l9_2673=l9_2671;
float2 l9_2674=float2(0.0);
l9_2674=(l9_2657*l9_2670)+l9_2673;
l9_2635=l9_2674;
l9_2637=l9_2635;
}
l9_2633=l9_2637;
float l9_2675=0.0;
float l9_2676;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2676=1.001;
}
else
{
l9_2676=0.001;
}
l9_2676-=0.001;
l9_2675=l9_2676;
float l9_2677=0.0;
l9_2677=l9_2675;
float2 l9_2678=float2(0.0);
l9_2678=mix(l9_2632,l9_2633,float2(l9_2677));
float2 l9_2679=float2(0.0);
l9_2679=l9_2678;
float2 l9_2680=float2(0.0);
l9_2680=l9_2679;
l9_2625=l9_2680;
l9_2628=l9_2625;
}
else
{
float2 l9_2681=float2(0.0);
l9_2681=l9_2627.Surface_UVCoord0;
l9_2626=l9_2681;
l9_2628=l9_2626;
}
}
}
}
l9_2621=l9_2628;
float2 l9_2682=float2(0.0);
float2 l9_2683=(*sc_set0.UserUniforms).uv3Scale;
l9_2682=l9_2683;
float2 l9_2684=float2(0.0);
l9_2684=l9_2682;
float2 l9_2685=float2(0.0);
float2 l9_2686=(*sc_set0.UserUniforms).uv3Offset;
l9_2685=l9_2686;
float2 l9_2687=float2(0.0);
l9_2687=l9_2685;
float2 l9_2688=float2(0.0);
l9_2688=(l9_2621*l9_2684)+l9_2687;
float2 l9_2689=float2(0.0);
l9_2689=l9_2688+(l9_2687*(l9_2619.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_2617=l9_2689;
l9_2620=l9_2617;
}
else
{
float2 l9_2690=float2(0.0);
float2 l9_2691=float2(0.0);
float2 l9_2692=float2(0.0);
float2 l9_2693=float2(0.0);
float2 l9_2694=float2(0.0);
float2 l9_2695=float2(0.0);
ssGlobals l9_2696=l9_2619;
float2 l9_2697;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2698=float2(0.0);
l9_2698=l9_2696.Surface_UVCoord0;
l9_2691=l9_2698;
l9_2697=l9_2691;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2699=float2(0.0);
l9_2699=l9_2696.Surface_UVCoord1;
l9_2692=l9_2699;
l9_2697=l9_2692;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2700=float2(0.0);
l9_2700=l9_2696.gScreenCoord;
l9_2693=l9_2700;
l9_2697=l9_2693;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2701=float2(0.0);
l9_2701=l9_2696.Surface_UVCoord0;
float2 l9_2702=float2(0.0);
float2 l9_2703=float2(0.0);
float2 l9_2704=float2(0.0);
ssGlobals l9_2705=l9_2696;
float2 l9_2706;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2707=float2(0.0);
float2 l9_2708=float2(0.0);
float2 l9_2709=float2(0.0);
float2 l9_2710=float2(0.0);
float2 l9_2711=float2(0.0);
ssGlobals l9_2712=l9_2705;
float2 l9_2713;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2714=float2(0.0);
l9_2714=l9_2712.Surface_UVCoord0;
l9_2708=l9_2714;
l9_2713=l9_2708;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2715=float2(0.0);
l9_2715=l9_2712.Surface_UVCoord1;
l9_2709=l9_2715;
l9_2713=l9_2709;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2716=float2(0.0);
l9_2716=l9_2712.gScreenCoord;
l9_2710=l9_2716;
l9_2713=l9_2710;
}
else
{
float2 l9_2717=float2(0.0);
l9_2717=l9_2712.Surface_UVCoord0;
l9_2711=l9_2717;
l9_2713=l9_2711;
}
}
}
l9_2707=l9_2713;
float2 l9_2718=float2(0.0);
float2 l9_2719=(*sc_set0.UserUniforms).uv2Scale;
l9_2718=l9_2719;
float2 l9_2720=float2(0.0);
l9_2720=l9_2718;
float2 l9_2721=float2(0.0);
float2 l9_2722=(*sc_set0.UserUniforms).uv2Offset;
l9_2721=l9_2722;
float2 l9_2723=float2(0.0);
l9_2723=l9_2721;
float2 l9_2724=float2(0.0);
l9_2724=(l9_2707*l9_2720)+l9_2723;
float2 l9_2725=float2(0.0);
l9_2725=l9_2724+(l9_2723*(l9_2705.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2703=l9_2725;
l9_2706=l9_2703;
}
else
{
float2 l9_2726=float2(0.0);
float2 l9_2727=float2(0.0);
float2 l9_2728=float2(0.0);
float2 l9_2729=float2(0.0);
float2 l9_2730=float2(0.0);
ssGlobals l9_2731=l9_2705;
float2 l9_2732;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2733=float2(0.0);
l9_2733=l9_2731.Surface_UVCoord0;
l9_2727=l9_2733;
l9_2732=l9_2727;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2734=float2(0.0);
l9_2734=l9_2731.Surface_UVCoord1;
l9_2728=l9_2734;
l9_2732=l9_2728;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2735=float2(0.0);
l9_2735=l9_2731.gScreenCoord;
l9_2729=l9_2735;
l9_2732=l9_2729;
}
else
{
float2 l9_2736=float2(0.0);
l9_2736=l9_2731.Surface_UVCoord0;
l9_2730=l9_2736;
l9_2732=l9_2730;
}
}
}
l9_2726=l9_2732;
float2 l9_2737=float2(0.0);
float2 l9_2738=(*sc_set0.UserUniforms).uv2Scale;
l9_2737=l9_2738;
float2 l9_2739=float2(0.0);
l9_2739=l9_2737;
float2 l9_2740=float2(0.0);
float2 l9_2741=(*sc_set0.UserUniforms).uv2Offset;
l9_2740=l9_2741;
float2 l9_2742=float2(0.0);
l9_2742=l9_2740;
float2 l9_2743=float2(0.0);
l9_2743=(l9_2726*l9_2739)+l9_2742;
l9_2704=l9_2743;
l9_2706=l9_2704;
}
l9_2702=l9_2706;
float l9_2744=0.0;
float l9_2745;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2745=1.001;
}
else
{
l9_2745=0.001;
}
l9_2745-=0.001;
l9_2744=l9_2745;
float l9_2746=0.0;
l9_2746=l9_2744;
float2 l9_2747=float2(0.0);
l9_2747=mix(l9_2701,l9_2702,float2(l9_2746));
float2 l9_2748=float2(0.0);
l9_2748=l9_2747;
float2 l9_2749=float2(0.0);
l9_2749=l9_2748;
l9_2694=l9_2749;
l9_2697=l9_2694;
}
else
{
float2 l9_2750=float2(0.0);
l9_2750=l9_2696.Surface_UVCoord0;
l9_2695=l9_2750;
l9_2697=l9_2695;
}
}
}
}
l9_2690=l9_2697;
float2 l9_2751=float2(0.0);
float2 l9_2752=(*sc_set0.UserUniforms).uv3Scale;
l9_2751=l9_2752;
float2 l9_2753=float2(0.0);
l9_2753=l9_2751;
float2 l9_2754=float2(0.0);
float2 l9_2755=(*sc_set0.UserUniforms).uv3Offset;
l9_2754=l9_2755;
float2 l9_2756=float2(0.0);
l9_2756=l9_2754;
float2 l9_2757=float2(0.0);
l9_2757=(l9_2690*l9_2753)+l9_2756;
l9_2618=l9_2757;
l9_2620=l9_2618;
}
l9_2616=l9_2620;
float l9_2758=0.0;
float l9_2759;
if ((int(Tweak_N11_tmp)!=0))
{
l9_2759=1.001;
}
else
{
l9_2759=0.001;
}
l9_2759-=0.001;
l9_2758=l9_2759;
float l9_2760=0.0;
l9_2760=l9_2758;
float2 l9_2761=float2(0.0);
l9_2761=mix(l9_2615,l9_2616,float2(l9_2760));
float2 l9_2762=float2(0.0);
l9_2762=l9_2761;
float2 l9_2763=float2(0.0);
l9_2763=l9_2762;
l9_2560=l9_2763;
l9_2563=l9_2560;
}
else
{
float2 l9_2764=float2(0.0);
l9_2764=l9_2562.Surface_UVCoord0;
l9_2561=l9_2764;
l9_2563=l9_2561;
}
}
}
}
l9_2556=l9_2563;
float4 l9_2765=float4(0.0);
float2 l9_2766=l9_2556;
int l9_2767;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_2768=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2768=0;
}
else
{
l9_2768=in.varStereoViewID;
}
int l9_2769=l9_2768;
l9_2767=1-l9_2769;
}
else
{
int l9_2770=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2770=0;
}
else
{
l9_2770=in.varStereoViewID;
}
int l9_2771=l9_2770;
l9_2767=l9_2771;
}
int l9_2772=l9_2767;
int l9_2773=normalTexLayout_tmp;
int l9_2774=l9_2772;
float2 l9_2775=l9_2766;
bool l9_2776=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_2777=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_2778=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_2779=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_2780=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_2781=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_2782=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_2783=0.0;
bool l9_2784=l9_2781&&(!l9_2779);
float l9_2785=1.0;
float l9_2786=l9_2775.x;
int l9_2787=l9_2778.x;
if (l9_2787==1)
{
l9_2786=fract(l9_2786);
}
else
{
if (l9_2787==2)
{
float l9_2788=fract(l9_2786);
float l9_2789=l9_2786-l9_2788;
float l9_2790=step(0.25,fract(l9_2789*0.5));
l9_2786=mix(l9_2788,1.0-l9_2788,fast::clamp(l9_2790,0.0,1.0));
}
}
l9_2775.x=l9_2786;
float l9_2791=l9_2775.y;
int l9_2792=l9_2778.y;
if (l9_2792==1)
{
l9_2791=fract(l9_2791);
}
else
{
if (l9_2792==2)
{
float l9_2793=fract(l9_2791);
float l9_2794=l9_2791-l9_2793;
float l9_2795=step(0.25,fract(l9_2794*0.5));
l9_2791=mix(l9_2793,1.0-l9_2793,fast::clamp(l9_2795,0.0,1.0));
}
}
l9_2775.y=l9_2791;
if (l9_2779)
{
bool l9_2796=l9_2781;
bool l9_2797;
if (l9_2796)
{
l9_2797=l9_2778.x==3;
}
else
{
l9_2797=l9_2796;
}
float l9_2798=l9_2775.x;
float l9_2799=l9_2780.x;
float l9_2800=l9_2780.z;
bool l9_2801=l9_2797;
float l9_2802=l9_2785;
float l9_2803=fast::clamp(l9_2798,l9_2799,l9_2800);
float l9_2804=step(abs(l9_2798-l9_2803),9.9999997e-06);
l9_2802*=(l9_2804+((1.0-float(l9_2801))*(1.0-l9_2804)));
l9_2798=l9_2803;
l9_2775.x=l9_2798;
l9_2785=l9_2802;
bool l9_2805=l9_2781;
bool l9_2806;
if (l9_2805)
{
l9_2806=l9_2778.y==3;
}
else
{
l9_2806=l9_2805;
}
float l9_2807=l9_2775.y;
float l9_2808=l9_2780.y;
float l9_2809=l9_2780.w;
bool l9_2810=l9_2806;
float l9_2811=l9_2785;
float l9_2812=fast::clamp(l9_2807,l9_2808,l9_2809);
float l9_2813=step(abs(l9_2807-l9_2812),9.9999997e-06);
l9_2811*=(l9_2813+((1.0-float(l9_2810))*(1.0-l9_2813)));
l9_2807=l9_2812;
l9_2775.y=l9_2807;
l9_2785=l9_2811;
}
float2 l9_2814=l9_2775;
bool l9_2815=l9_2776;
float3x3 l9_2816=l9_2777;
if (l9_2815)
{
l9_2814=float2((l9_2816*float3(l9_2814,1.0)).xy);
}
float2 l9_2817=l9_2814;
l9_2775=l9_2817;
float l9_2818=l9_2775.x;
int l9_2819=l9_2778.x;
bool l9_2820=l9_2784;
float l9_2821=l9_2785;
if ((l9_2819==0)||(l9_2819==3))
{
float l9_2822=l9_2818;
float l9_2823=0.0;
float l9_2824=1.0;
bool l9_2825=l9_2820;
float l9_2826=l9_2821;
float l9_2827=fast::clamp(l9_2822,l9_2823,l9_2824);
float l9_2828=step(abs(l9_2822-l9_2827),9.9999997e-06);
l9_2826*=(l9_2828+((1.0-float(l9_2825))*(1.0-l9_2828)));
l9_2822=l9_2827;
l9_2818=l9_2822;
l9_2821=l9_2826;
}
l9_2775.x=l9_2818;
l9_2785=l9_2821;
float l9_2829=l9_2775.y;
int l9_2830=l9_2778.y;
bool l9_2831=l9_2784;
float l9_2832=l9_2785;
if ((l9_2830==0)||(l9_2830==3))
{
float l9_2833=l9_2829;
float l9_2834=0.0;
float l9_2835=1.0;
bool l9_2836=l9_2831;
float l9_2837=l9_2832;
float l9_2838=fast::clamp(l9_2833,l9_2834,l9_2835);
float l9_2839=step(abs(l9_2833-l9_2838),9.9999997e-06);
l9_2837*=(l9_2839+((1.0-float(l9_2836))*(1.0-l9_2839)));
l9_2833=l9_2838;
l9_2829=l9_2833;
l9_2832=l9_2837;
}
l9_2775.y=l9_2829;
l9_2785=l9_2832;
float2 l9_2840=l9_2775;
int l9_2841=l9_2773;
int l9_2842=l9_2774;
float l9_2843=l9_2783;
float2 l9_2844=l9_2840;
int l9_2845=l9_2841;
int l9_2846=l9_2842;
float3 l9_2847=float3(0.0);
if (l9_2845==0)
{
l9_2847=float3(l9_2844,0.0);
}
else
{
if (l9_2845==1)
{
l9_2847=float3(l9_2844.x,(l9_2844.y*0.5)+(0.5-(float(l9_2846)*0.5)),0.0);
}
else
{
l9_2847=float3(l9_2844,float(l9_2846));
}
}
float3 l9_2848=l9_2847;
float3 l9_2849=l9_2848;
float4 l9_2850=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_2849.xy,bias(l9_2843));
float4 l9_2851=l9_2850;
if (l9_2781)
{
l9_2851=mix(l9_2782,l9_2851,float4(l9_2785));
}
float4 l9_2852=l9_2851;
float4 l9_2853=l9_2852;
float3 l9_2854=(l9_2853.xyz*1.9921875)-float3(1.0);
l9_2853=float4(l9_2854.x,l9_2854.y,l9_2854.z,l9_2853.w);
l9_2765=l9_2853;
float3 l9_2855=float3(0.0);
float3 l9_2856=float3(0.0);
float3 l9_2857=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_2858=l9_2550;
float3 l9_2859;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_2860=float2(0.0);
float2 l9_2861=float2(0.0);
float2 l9_2862=float2(0.0);
float2 l9_2863=float2(0.0);
float2 l9_2864=float2(0.0);
float2 l9_2865=float2(0.0);
ssGlobals l9_2866=l9_2858;
float2 l9_2867;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_2868=float2(0.0);
l9_2868=l9_2866.Surface_UVCoord0;
l9_2861=l9_2868;
l9_2867=l9_2861;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_2869=float2(0.0);
l9_2869=l9_2866.Surface_UVCoord1;
l9_2862=l9_2869;
l9_2867=l9_2862;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_2870=float2(0.0);
l9_2870=l9_2866.Surface_UVCoord0;
float2 l9_2871=float2(0.0);
float2 l9_2872=float2(0.0);
float2 l9_2873=float2(0.0);
ssGlobals l9_2874=l9_2866;
float2 l9_2875;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2876=float2(0.0);
float2 l9_2877=float2(0.0);
float2 l9_2878=float2(0.0);
float2 l9_2879=float2(0.0);
float2 l9_2880=float2(0.0);
ssGlobals l9_2881=l9_2874;
float2 l9_2882;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2883=float2(0.0);
l9_2883=l9_2881.Surface_UVCoord0;
l9_2877=l9_2883;
l9_2882=l9_2877;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2884=float2(0.0);
l9_2884=l9_2881.Surface_UVCoord1;
l9_2878=l9_2884;
l9_2882=l9_2878;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2885=float2(0.0);
l9_2885=l9_2881.gScreenCoord;
l9_2879=l9_2885;
l9_2882=l9_2879;
}
else
{
float2 l9_2886=float2(0.0);
l9_2886=l9_2881.Surface_UVCoord0;
l9_2880=l9_2886;
l9_2882=l9_2880;
}
}
}
l9_2876=l9_2882;
float2 l9_2887=float2(0.0);
float2 l9_2888=(*sc_set0.UserUniforms).uv2Scale;
l9_2887=l9_2888;
float2 l9_2889=float2(0.0);
l9_2889=l9_2887;
float2 l9_2890=float2(0.0);
float2 l9_2891=(*sc_set0.UserUniforms).uv2Offset;
l9_2890=l9_2891;
float2 l9_2892=float2(0.0);
l9_2892=l9_2890;
float2 l9_2893=float2(0.0);
l9_2893=(l9_2876*l9_2889)+l9_2892;
float2 l9_2894=float2(0.0);
l9_2894=l9_2893+(l9_2892*(l9_2874.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2872=l9_2894;
l9_2875=l9_2872;
}
else
{
float2 l9_2895=float2(0.0);
float2 l9_2896=float2(0.0);
float2 l9_2897=float2(0.0);
float2 l9_2898=float2(0.0);
float2 l9_2899=float2(0.0);
ssGlobals l9_2900=l9_2874;
float2 l9_2901;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2902=float2(0.0);
l9_2902=l9_2900.Surface_UVCoord0;
l9_2896=l9_2902;
l9_2901=l9_2896;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2903=float2(0.0);
l9_2903=l9_2900.Surface_UVCoord1;
l9_2897=l9_2903;
l9_2901=l9_2897;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2904=float2(0.0);
l9_2904=l9_2900.gScreenCoord;
l9_2898=l9_2904;
l9_2901=l9_2898;
}
else
{
float2 l9_2905=float2(0.0);
l9_2905=l9_2900.Surface_UVCoord0;
l9_2899=l9_2905;
l9_2901=l9_2899;
}
}
}
l9_2895=l9_2901;
float2 l9_2906=float2(0.0);
float2 l9_2907=(*sc_set0.UserUniforms).uv2Scale;
l9_2906=l9_2907;
float2 l9_2908=float2(0.0);
l9_2908=l9_2906;
float2 l9_2909=float2(0.0);
float2 l9_2910=(*sc_set0.UserUniforms).uv2Offset;
l9_2909=l9_2910;
float2 l9_2911=float2(0.0);
l9_2911=l9_2909;
float2 l9_2912=float2(0.0);
l9_2912=(l9_2895*l9_2908)+l9_2911;
l9_2873=l9_2912;
l9_2875=l9_2873;
}
l9_2871=l9_2875;
float l9_2913=0.0;
float l9_2914;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2914=1.001;
}
else
{
l9_2914=0.001;
}
l9_2914-=0.001;
l9_2913=l9_2914;
float l9_2915=0.0;
l9_2915=l9_2913;
float2 l9_2916=float2(0.0);
l9_2916=mix(l9_2870,l9_2871,float2(l9_2915));
float2 l9_2917=float2(0.0);
l9_2917=l9_2916;
float2 l9_2918=float2(0.0);
l9_2918=l9_2917;
l9_2863=l9_2918;
l9_2867=l9_2863;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_2919=float2(0.0);
l9_2919=l9_2866.Surface_UVCoord0;
float2 l9_2920=float2(0.0);
float2 l9_2921=float2(0.0);
float2 l9_2922=float2(0.0);
ssGlobals l9_2923=l9_2866;
float2 l9_2924;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_2925=float2(0.0);
float2 l9_2926=float2(0.0);
float2 l9_2927=float2(0.0);
float2 l9_2928=float2(0.0);
float2 l9_2929=float2(0.0);
float2 l9_2930=float2(0.0);
ssGlobals l9_2931=l9_2923;
float2 l9_2932;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2933=float2(0.0);
l9_2933=l9_2931.Surface_UVCoord0;
l9_2926=l9_2933;
l9_2932=l9_2926;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2934=float2(0.0);
l9_2934=l9_2931.Surface_UVCoord1;
l9_2927=l9_2934;
l9_2932=l9_2927;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2935=float2(0.0);
l9_2935=l9_2931.gScreenCoord;
l9_2928=l9_2935;
l9_2932=l9_2928;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2936=float2(0.0);
l9_2936=l9_2931.Surface_UVCoord0;
float2 l9_2937=float2(0.0);
float2 l9_2938=float2(0.0);
float2 l9_2939=float2(0.0);
ssGlobals l9_2940=l9_2931;
float2 l9_2941;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2942=float2(0.0);
float2 l9_2943=float2(0.0);
float2 l9_2944=float2(0.0);
float2 l9_2945=float2(0.0);
float2 l9_2946=float2(0.0);
ssGlobals l9_2947=l9_2940;
float2 l9_2948;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2949=float2(0.0);
l9_2949=l9_2947.Surface_UVCoord0;
l9_2943=l9_2949;
l9_2948=l9_2943;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2950=float2(0.0);
l9_2950=l9_2947.Surface_UVCoord1;
l9_2944=l9_2950;
l9_2948=l9_2944;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2951=float2(0.0);
l9_2951=l9_2947.gScreenCoord;
l9_2945=l9_2951;
l9_2948=l9_2945;
}
else
{
float2 l9_2952=float2(0.0);
l9_2952=l9_2947.Surface_UVCoord0;
l9_2946=l9_2952;
l9_2948=l9_2946;
}
}
}
l9_2942=l9_2948;
float2 l9_2953=float2(0.0);
float2 l9_2954=(*sc_set0.UserUniforms).uv2Scale;
l9_2953=l9_2954;
float2 l9_2955=float2(0.0);
l9_2955=l9_2953;
float2 l9_2956=float2(0.0);
float2 l9_2957=(*sc_set0.UserUniforms).uv2Offset;
l9_2956=l9_2957;
float2 l9_2958=float2(0.0);
l9_2958=l9_2956;
float2 l9_2959=float2(0.0);
l9_2959=(l9_2942*l9_2955)+l9_2958;
float2 l9_2960=float2(0.0);
l9_2960=l9_2959+(l9_2958*(l9_2940.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2938=l9_2960;
l9_2941=l9_2938;
}
else
{
float2 l9_2961=float2(0.0);
float2 l9_2962=float2(0.0);
float2 l9_2963=float2(0.0);
float2 l9_2964=float2(0.0);
float2 l9_2965=float2(0.0);
ssGlobals l9_2966=l9_2940;
float2 l9_2967;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2968=float2(0.0);
l9_2968=l9_2966.Surface_UVCoord0;
l9_2962=l9_2968;
l9_2967=l9_2962;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2969=float2(0.0);
l9_2969=l9_2966.Surface_UVCoord1;
l9_2963=l9_2969;
l9_2967=l9_2963;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2970=float2(0.0);
l9_2970=l9_2966.gScreenCoord;
l9_2964=l9_2970;
l9_2967=l9_2964;
}
else
{
float2 l9_2971=float2(0.0);
l9_2971=l9_2966.Surface_UVCoord0;
l9_2965=l9_2971;
l9_2967=l9_2965;
}
}
}
l9_2961=l9_2967;
float2 l9_2972=float2(0.0);
float2 l9_2973=(*sc_set0.UserUniforms).uv2Scale;
l9_2972=l9_2973;
float2 l9_2974=float2(0.0);
l9_2974=l9_2972;
float2 l9_2975=float2(0.0);
float2 l9_2976=(*sc_set0.UserUniforms).uv2Offset;
l9_2975=l9_2976;
float2 l9_2977=float2(0.0);
l9_2977=l9_2975;
float2 l9_2978=float2(0.0);
l9_2978=(l9_2961*l9_2974)+l9_2977;
l9_2939=l9_2978;
l9_2941=l9_2939;
}
l9_2937=l9_2941;
float l9_2979=0.0;
float l9_2980;
if ((int(Tweak_N67_tmp)!=0))
{
l9_2980=1.001;
}
else
{
l9_2980=0.001;
}
l9_2980-=0.001;
l9_2979=l9_2980;
float l9_2981=0.0;
l9_2981=l9_2979;
float2 l9_2982=float2(0.0);
l9_2982=mix(l9_2936,l9_2937,float2(l9_2981));
float2 l9_2983=float2(0.0);
l9_2983=l9_2982;
float2 l9_2984=float2(0.0);
l9_2984=l9_2983;
l9_2929=l9_2984;
l9_2932=l9_2929;
}
else
{
float2 l9_2985=float2(0.0);
l9_2985=l9_2931.Surface_UVCoord0;
l9_2930=l9_2985;
l9_2932=l9_2930;
}
}
}
}
l9_2925=l9_2932;
float2 l9_2986=float2(0.0);
float2 l9_2987=(*sc_set0.UserUniforms).uv3Scale;
l9_2986=l9_2987;
float2 l9_2988=float2(0.0);
l9_2988=l9_2986;
float2 l9_2989=float2(0.0);
float2 l9_2990=(*sc_set0.UserUniforms).uv3Offset;
l9_2989=l9_2990;
float2 l9_2991=float2(0.0);
l9_2991=l9_2989;
float2 l9_2992=float2(0.0);
l9_2992=(l9_2925*l9_2988)+l9_2991;
float2 l9_2993=float2(0.0);
l9_2993=l9_2992+(l9_2991*(l9_2923.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_2921=l9_2993;
l9_2924=l9_2921;
}
else
{
float2 l9_2994=float2(0.0);
float2 l9_2995=float2(0.0);
float2 l9_2996=float2(0.0);
float2 l9_2997=float2(0.0);
float2 l9_2998=float2(0.0);
float2 l9_2999=float2(0.0);
ssGlobals l9_3000=l9_2923;
float2 l9_3001;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3002=float2(0.0);
l9_3002=l9_3000.Surface_UVCoord0;
l9_2995=l9_3002;
l9_3001=l9_2995;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3003=float2(0.0);
l9_3003=l9_3000.Surface_UVCoord1;
l9_2996=l9_3003;
l9_3001=l9_2996;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3004=float2(0.0);
l9_3004=l9_3000.gScreenCoord;
l9_2997=l9_3004;
l9_3001=l9_2997;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3005=float2(0.0);
l9_3005=l9_3000.Surface_UVCoord0;
float2 l9_3006=float2(0.0);
float2 l9_3007=float2(0.0);
float2 l9_3008=float2(0.0);
ssGlobals l9_3009=l9_3000;
float2 l9_3010;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3011=float2(0.0);
float2 l9_3012=float2(0.0);
float2 l9_3013=float2(0.0);
float2 l9_3014=float2(0.0);
float2 l9_3015=float2(0.0);
ssGlobals l9_3016=l9_3009;
float2 l9_3017;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3018=float2(0.0);
l9_3018=l9_3016.Surface_UVCoord0;
l9_3012=l9_3018;
l9_3017=l9_3012;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3019=float2(0.0);
l9_3019=l9_3016.Surface_UVCoord1;
l9_3013=l9_3019;
l9_3017=l9_3013;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3020=float2(0.0);
l9_3020=l9_3016.gScreenCoord;
l9_3014=l9_3020;
l9_3017=l9_3014;
}
else
{
float2 l9_3021=float2(0.0);
l9_3021=l9_3016.Surface_UVCoord0;
l9_3015=l9_3021;
l9_3017=l9_3015;
}
}
}
l9_3011=l9_3017;
float2 l9_3022=float2(0.0);
float2 l9_3023=(*sc_set0.UserUniforms).uv2Scale;
l9_3022=l9_3023;
float2 l9_3024=float2(0.0);
l9_3024=l9_3022;
float2 l9_3025=float2(0.0);
float2 l9_3026=(*sc_set0.UserUniforms).uv2Offset;
l9_3025=l9_3026;
float2 l9_3027=float2(0.0);
l9_3027=l9_3025;
float2 l9_3028=float2(0.0);
l9_3028=(l9_3011*l9_3024)+l9_3027;
float2 l9_3029=float2(0.0);
l9_3029=l9_3028+(l9_3027*(l9_3009.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3007=l9_3029;
l9_3010=l9_3007;
}
else
{
float2 l9_3030=float2(0.0);
float2 l9_3031=float2(0.0);
float2 l9_3032=float2(0.0);
float2 l9_3033=float2(0.0);
float2 l9_3034=float2(0.0);
ssGlobals l9_3035=l9_3009;
float2 l9_3036;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3037=float2(0.0);
l9_3037=l9_3035.Surface_UVCoord0;
l9_3031=l9_3037;
l9_3036=l9_3031;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3038=float2(0.0);
l9_3038=l9_3035.Surface_UVCoord1;
l9_3032=l9_3038;
l9_3036=l9_3032;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3039=float2(0.0);
l9_3039=l9_3035.gScreenCoord;
l9_3033=l9_3039;
l9_3036=l9_3033;
}
else
{
float2 l9_3040=float2(0.0);
l9_3040=l9_3035.Surface_UVCoord0;
l9_3034=l9_3040;
l9_3036=l9_3034;
}
}
}
l9_3030=l9_3036;
float2 l9_3041=float2(0.0);
float2 l9_3042=(*sc_set0.UserUniforms).uv2Scale;
l9_3041=l9_3042;
float2 l9_3043=float2(0.0);
l9_3043=l9_3041;
float2 l9_3044=float2(0.0);
float2 l9_3045=(*sc_set0.UserUniforms).uv2Offset;
l9_3044=l9_3045;
float2 l9_3046=float2(0.0);
l9_3046=l9_3044;
float2 l9_3047=float2(0.0);
l9_3047=(l9_3030*l9_3043)+l9_3046;
l9_3008=l9_3047;
l9_3010=l9_3008;
}
l9_3006=l9_3010;
float l9_3048=0.0;
float l9_3049;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3049=1.001;
}
else
{
l9_3049=0.001;
}
l9_3049-=0.001;
l9_3048=l9_3049;
float l9_3050=0.0;
l9_3050=l9_3048;
float2 l9_3051=float2(0.0);
l9_3051=mix(l9_3005,l9_3006,float2(l9_3050));
float2 l9_3052=float2(0.0);
l9_3052=l9_3051;
float2 l9_3053=float2(0.0);
l9_3053=l9_3052;
l9_2998=l9_3053;
l9_3001=l9_2998;
}
else
{
float2 l9_3054=float2(0.0);
l9_3054=l9_3000.Surface_UVCoord0;
l9_2999=l9_3054;
l9_3001=l9_2999;
}
}
}
}
l9_2994=l9_3001;
float2 l9_3055=float2(0.0);
float2 l9_3056=(*sc_set0.UserUniforms).uv3Scale;
l9_3055=l9_3056;
float2 l9_3057=float2(0.0);
l9_3057=l9_3055;
float2 l9_3058=float2(0.0);
float2 l9_3059=(*sc_set0.UserUniforms).uv3Offset;
l9_3058=l9_3059;
float2 l9_3060=float2(0.0);
l9_3060=l9_3058;
float2 l9_3061=float2(0.0);
l9_3061=(l9_2994*l9_3057)+l9_3060;
l9_2922=l9_3061;
l9_2924=l9_2922;
}
l9_2920=l9_2924;
float l9_3062=0.0;
float l9_3063;
if ((int(Tweak_N11_tmp)!=0))
{
l9_3063=1.001;
}
else
{
l9_3063=0.001;
}
l9_3063-=0.001;
l9_3062=l9_3063;
float l9_3064=0.0;
l9_3064=l9_3062;
float2 l9_3065=float2(0.0);
l9_3065=mix(l9_2919,l9_2920,float2(l9_3064));
float2 l9_3066=float2(0.0);
l9_3066=l9_3065;
float2 l9_3067=float2(0.0);
l9_3067=l9_3066;
l9_2864=l9_3067;
l9_2867=l9_2864;
}
else
{
float2 l9_3068=float2(0.0);
l9_3068=l9_2866.Surface_UVCoord0;
l9_2865=l9_3068;
l9_2867=l9_2865;
}
}
}
}
l9_2860=l9_2867;
float4 l9_3069=float4(0.0);
float2 l9_3070=l9_2860;
int l9_3071;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_3072=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3072=0;
}
else
{
l9_3072=in.varStereoViewID;
}
int l9_3073=l9_3072;
l9_3071=1-l9_3073;
}
else
{
int l9_3074=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3074=0;
}
else
{
l9_3074=in.varStereoViewID;
}
int l9_3075=l9_3074;
l9_3071=l9_3075;
}
int l9_3076=l9_3071;
int l9_3077=detailNormalTexLayout_tmp;
int l9_3078=l9_3076;
float2 l9_3079=l9_3070;
bool l9_3080=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_3081=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_3082=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_3083=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_3084=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_3085=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_3086=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_3087=0.0;
bool l9_3088=l9_3085&&(!l9_3083);
float l9_3089=1.0;
float l9_3090=l9_3079.x;
int l9_3091=l9_3082.x;
if (l9_3091==1)
{
l9_3090=fract(l9_3090);
}
else
{
if (l9_3091==2)
{
float l9_3092=fract(l9_3090);
float l9_3093=l9_3090-l9_3092;
float l9_3094=step(0.25,fract(l9_3093*0.5));
l9_3090=mix(l9_3092,1.0-l9_3092,fast::clamp(l9_3094,0.0,1.0));
}
}
l9_3079.x=l9_3090;
float l9_3095=l9_3079.y;
int l9_3096=l9_3082.y;
if (l9_3096==1)
{
l9_3095=fract(l9_3095);
}
else
{
if (l9_3096==2)
{
float l9_3097=fract(l9_3095);
float l9_3098=l9_3095-l9_3097;
float l9_3099=step(0.25,fract(l9_3098*0.5));
l9_3095=mix(l9_3097,1.0-l9_3097,fast::clamp(l9_3099,0.0,1.0));
}
}
l9_3079.y=l9_3095;
if (l9_3083)
{
bool l9_3100=l9_3085;
bool l9_3101;
if (l9_3100)
{
l9_3101=l9_3082.x==3;
}
else
{
l9_3101=l9_3100;
}
float l9_3102=l9_3079.x;
float l9_3103=l9_3084.x;
float l9_3104=l9_3084.z;
bool l9_3105=l9_3101;
float l9_3106=l9_3089;
float l9_3107=fast::clamp(l9_3102,l9_3103,l9_3104);
float l9_3108=step(abs(l9_3102-l9_3107),9.9999997e-06);
l9_3106*=(l9_3108+((1.0-float(l9_3105))*(1.0-l9_3108)));
l9_3102=l9_3107;
l9_3079.x=l9_3102;
l9_3089=l9_3106;
bool l9_3109=l9_3085;
bool l9_3110;
if (l9_3109)
{
l9_3110=l9_3082.y==3;
}
else
{
l9_3110=l9_3109;
}
float l9_3111=l9_3079.y;
float l9_3112=l9_3084.y;
float l9_3113=l9_3084.w;
bool l9_3114=l9_3110;
float l9_3115=l9_3089;
float l9_3116=fast::clamp(l9_3111,l9_3112,l9_3113);
float l9_3117=step(abs(l9_3111-l9_3116),9.9999997e-06);
l9_3115*=(l9_3117+((1.0-float(l9_3114))*(1.0-l9_3117)));
l9_3111=l9_3116;
l9_3079.y=l9_3111;
l9_3089=l9_3115;
}
float2 l9_3118=l9_3079;
bool l9_3119=l9_3080;
float3x3 l9_3120=l9_3081;
if (l9_3119)
{
l9_3118=float2((l9_3120*float3(l9_3118,1.0)).xy);
}
float2 l9_3121=l9_3118;
l9_3079=l9_3121;
float l9_3122=l9_3079.x;
int l9_3123=l9_3082.x;
bool l9_3124=l9_3088;
float l9_3125=l9_3089;
if ((l9_3123==0)||(l9_3123==3))
{
float l9_3126=l9_3122;
float l9_3127=0.0;
float l9_3128=1.0;
bool l9_3129=l9_3124;
float l9_3130=l9_3125;
float l9_3131=fast::clamp(l9_3126,l9_3127,l9_3128);
float l9_3132=step(abs(l9_3126-l9_3131),9.9999997e-06);
l9_3130*=(l9_3132+((1.0-float(l9_3129))*(1.0-l9_3132)));
l9_3126=l9_3131;
l9_3122=l9_3126;
l9_3125=l9_3130;
}
l9_3079.x=l9_3122;
l9_3089=l9_3125;
float l9_3133=l9_3079.y;
int l9_3134=l9_3082.y;
bool l9_3135=l9_3088;
float l9_3136=l9_3089;
if ((l9_3134==0)||(l9_3134==3))
{
float l9_3137=l9_3133;
float l9_3138=0.0;
float l9_3139=1.0;
bool l9_3140=l9_3135;
float l9_3141=l9_3136;
float l9_3142=fast::clamp(l9_3137,l9_3138,l9_3139);
float l9_3143=step(abs(l9_3137-l9_3142),9.9999997e-06);
l9_3141*=(l9_3143+((1.0-float(l9_3140))*(1.0-l9_3143)));
l9_3137=l9_3142;
l9_3133=l9_3137;
l9_3136=l9_3141;
}
l9_3079.y=l9_3133;
l9_3089=l9_3136;
float2 l9_3144=l9_3079;
int l9_3145=l9_3077;
int l9_3146=l9_3078;
float l9_3147=l9_3087;
float2 l9_3148=l9_3144;
int l9_3149=l9_3145;
int l9_3150=l9_3146;
float3 l9_3151=float3(0.0);
if (l9_3149==0)
{
l9_3151=float3(l9_3148,0.0);
}
else
{
if (l9_3149==1)
{
l9_3151=float3(l9_3148.x,(l9_3148.y*0.5)+(0.5-(float(l9_3150)*0.5)),0.0);
}
else
{
l9_3151=float3(l9_3148,float(l9_3150));
}
}
float3 l9_3152=l9_3151;
float3 l9_3153=l9_3152;
float4 l9_3154=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_3153.xy,bias(l9_3147));
float4 l9_3155=l9_3154;
if (l9_3085)
{
l9_3155=mix(l9_3086,l9_3155,float4(l9_3089));
}
float4 l9_3156=l9_3155;
float4 l9_3157=l9_3156;
float3 l9_3158=(l9_3157.xyz*1.9921875)-float3(1.0);
l9_3157=float4(l9_3158.x,l9_3158.y,l9_3158.z,l9_3157.w);
l9_3069=l9_3157;
l9_2856=l9_3069.xyz;
l9_2859=l9_2856;
}
else
{
l9_2859=l9_2857;
}
l9_2855=l9_2859;
float3 l9_3159=float3(0.0);
float3 l9_3160=l9_2765.xyz;
float l9_3161=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_3162=l9_2855;
float l9_3163=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_3164=l9_3160;
float l9_3165=l9_3161;
float3 l9_3166=l9_3162;
float l9_3167=l9_3163;
float3 l9_3168=mix(float3(0.0,0.0,1.0),l9_3164,float3(l9_3165))+float3(0.0,0.0,1.0);
float3 l9_3169=mix(float3(0.0,0.0,1.0),l9_3166,float3(l9_3167))*float3(-1.0,-1.0,1.0);
float3 l9_3170=normalize((l9_3168*dot(l9_3168,l9_3169))-(l9_3169*l9_3168.z));
l9_3162=l9_3170;
float3 l9_3171=l9_3162;
l9_3159=l9_3171;
float3 l9_3172=float3(0.0);
l9_3172=l9_2555*l9_3159;
float3 l9_3173=float3(0.0);
float3 l9_3174=l9_3172;
float l9_3175=dot(l9_3174,l9_3174);
float l9_3176;
if (l9_3175>0.0)
{
l9_3176=1.0/sqrt(l9_3175);
}
else
{
l9_3176=0.0;
}
float l9_3177=l9_3176;
float3 l9_3178=l9_3174*l9_3177;
l9_3173=l9_3178;
l9_2548=l9_3173;
l9_2551=l9_2548;
}
else
{
float3 l9_3179=float3(0.0);
l9_3179=l9_2550.VertexNormal_WorldSpace;
float3 l9_3180=float3(0.0);
float3 l9_3181=l9_3179;
float l9_3182=dot(l9_3181,l9_3181);
float l9_3183;
if (l9_3182>0.0)
{
l9_3183=1.0/sqrt(l9_3182);
}
else
{
l9_3183=0.0;
}
float l9_3184=l9_3183;
float3 l9_3185=l9_3181*l9_3184;
l9_3180=l9_3185;
l9_2549=l9_3180;
l9_2551=l9_2549;
}
l9_2547=l9_2551;
float3 l9_3186=float3(0.0);
l9_3186=l9_2547;
float3 l9_3187=float3(0.0);
l9_3187=l9_3186;
float3 l9_3188=float3(0.0);
l9_3188=reflect(l9_2546,l9_3187);
float3 l9_3189=float3(0.0);
l9_3189=l9_3188*(*sc_set0.UserUniforms).Port_Input1_N257;
float3 l9_3190=float3(0.0);
l9_3190=l9_3189;
float2 l9_3191=float2(0.0);
l9_3191=float2(l9_3190.x,l9_3190.y);
float l9_3192=0.0;
float l9_3193=0.0;
float l9_3194=0.0;
float3 l9_3195=l9_3190;
float l9_3196=l9_3195.x;
float l9_3197=l9_3195.y;
float l9_3198=l9_3195.z;
l9_3192=l9_3196;
l9_3193=l9_3197;
l9_3194=l9_3198;
float l9_3199=0.0;
l9_3199=l9_3192*l9_3192;
float l9_3200=0.0;
l9_3200=l9_3193*l9_3193;
float l9_3201=0.0;
l9_3201=l9_3194+(*sc_set0.UserUniforms).Port_Input1_N264;
float l9_3202=0.0;
l9_3202=l9_3201*l9_3201;
float l9_3203=0.0;
l9_3203=(l9_3199+l9_3200)+l9_3202;
float l9_3204=0.0;
float l9_3205;
if (l9_3203<=0.0)
{
l9_3205=0.0;
}
else
{
l9_3205=sqrt(l9_3203);
}
l9_3204=l9_3205;
float l9_3206=0.0;
l9_3206=l9_3204*(*sc_set0.UserUniforms).Port_Input1_N268;
float2 l9_3207=float2(0.0);
l9_3207=l9_3191/float2(l9_3206);
float2 l9_3208=float2(0.0);
l9_3208=l9_3207+float2((*sc_set0.UserUniforms).Port_Input1_N270);
float2 l9_3209=float2(0.0);
l9_3209=float2(1.0)-l9_3208;
float2 l9_3210=float2(0.0);
l9_3210=l9_3209;
float4 l9_3211=float4(0.0);
int l9_3212;
if ((int(reflectionTexHasSwappedViews_tmp)!=0))
{
int l9_3213=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3213=0;
}
else
{
l9_3213=in.varStereoViewID;
}
int l9_3214=l9_3213;
l9_3212=1-l9_3214;
}
else
{
int l9_3215=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3215=0;
}
else
{
l9_3215=in.varStereoViewID;
}
int l9_3216=l9_3215;
l9_3212=l9_3216;
}
int l9_3217=l9_3212;
int l9_3218=reflectionTexLayout_tmp;
int l9_3219=l9_3217;
float2 l9_3220=l9_3210;
bool l9_3221=(int(SC_USE_UV_TRANSFORM_reflectionTex_tmp)!=0);
float3x3 l9_3222=(*sc_set0.UserUniforms).reflectionTexTransform;
int2 l9_3223=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp);
bool l9_3224=(int(SC_USE_UV_MIN_MAX_reflectionTex_tmp)!=0);
float4 l9_3225=(*sc_set0.UserUniforms).reflectionTexUvMinMax;
bool l9_3226=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp)!=0);
float4 l9_3227=(*sc_set0.UserUniforms).reflectionTexBorderColor;
float l9_3228=0.0;
bool l9_3229=l9_3226&&(!l9_3224);
float l9_3230=1.0;
float l9_3231=l9_3220.x;
int l9_3232=l9_3223.x;
if (l9_3232==1)
{
l9_3231=fract(l9_3231);
}
else
{
if (l9_3232==2)
{
float l9_3233=fract(l9_3231);
float l9_3234=l9_3231-l9_3233;
float l9_3235=step(0.25,fract(l9_3234*0.5));
l9_3231=mix(l9_3233,1.0-l9_3233,fast::clamp(l9_3235,0.0,1.0));
}
}
l9_3220.x=l9_3231;
float l9_3236=l9_3220.y;
int l9_3237=l9_3223.y;
if (l9_3237==1)
{
l9_3236=fract(l9_3236);
}
else
{
if (l9_3237==2)
{
float l9_3238=fract(l9_3236);
float l9_3239=l9_3236-l9_3238;
float l9_3240=step(0.25,fract(l9_3239*0.5));
l9_3236=mix(l9_3238,1.0-l9_3238,fast::clamp(l9_3240,0.0,1.0));
}
}
l9_3220.y=l9_3236;
if (l9_3224)
{
bool l9_3241=l9_3226;
bool l9_3242;
if (l9_3241)
{
l9_3242=l9_3223.x==3;
}
else
{
l9_3242=l9_3241;
}
float l9_3243=l9_3220.x;
float l9_3244=l9_3225.x;
float l9_3245=l9_3225.z;
bool l9_3246=l9_3242;
float l9_3247=l9_3230;
float l9_3248=fast::clamp(l9_3243,l9_3244,l9_3245);
float l9_3249=step(abs(l9_3243-l9_3248),9.9999997e-06);
l9_3247*=(l9_3249+((1.0-float(l9_3246))*(1.0-l9_3249)));
l9_3243=l9_3248;
l9_3220.x=l9_3243;
l9_3230=l9_3247;
bool l9_3250=l9_3226;
bool l9_3251;
if (l9_3250)
{
l9_3251=l9_3223.y==3;
}
else
{
l9_3251=l9_3250;
}
float l9_3252=l9_3220.y;
float l9_3253=l9_3225.y;
float l9_3254=l9_3225.w;
bool l9_3255=l9_3251;
float l9_3256=l9_3230;
float l9_3257=fast::clamp(l9_3252,l9_3253,l9_3254);
float l9_3258=step(abs(l9_3252-l9_3257),9.9999997e-06);
l9_3256*=(l9_3258+((1.0-float(l9_3255))*(1.0-l9_3258)));
l9_3252=l9_3257;
l9_3220.y=l9_3252;
l9_3230=l9_3256;
}
float2 l9_3259=l9_3220;
bool l9_3260=l9_3221;
float3x3 l9_3261=l9_3222;
if (l9_3260)
{
l9_3259=float2((l9_3261*float3(l9_3259,1.0)).xy);
}
float2 l9_3262=l9_3259;
l9_3220=l9_3262;
float l9_3263=l9_3220.x;
int l9_3264=l9_3223.x;
bool l9_3265=l9_3229;
float l9_3266=l9_3230;
if ((l9_3264==0)||(l9_3264==3))
{
float l9_3267=l9_3263;
float l9_3268=0.0;
float l9_3269=1.0;
bool l9_3270=l9_3265;
float l9_3271=l9_3266;
float l9_3272=fast::clamp(l9_3267,l9_3268,l9_3269);
float l9_3273=step(abs(l9_3267-l9_3272),9.9999997e-06);
l9_3271*=(l9_3273+((1.0-float(l9_3270))*(1.0-l9_3273)));
l9_3267=l9_3272;
l9_3263=l9_3267;
l9_3266=l9_3271;
}
l9_3220.x=l9_3263;
l9_3230=l9_3266;
float l9_3274=l9_3220.y;
int l9_3275=l9_3223.y;
bool l9_3276=l9_3229;
float l9_3277=l9_3230;
if ((l9_3275==0)||(l9_3275==3))
{
float l9_3278=l9_3274;
float l9_3279=0.0;
float l9_3280=1.0;
bool l9_3281=l9_3276;
float l9_3282=l9_3277;
float l9_3283=fast::clamp(l9_3278,l9_3279,l9_3280);
float l9_3284=step(abs(l9_3278-l9_3283),9.9999997e-06);
l9_3282*=(l9_3284+((1.0-float(l9_3281))*(1.0-l9_3284)));
l9_3278=l9_3283;
l9_3274=l9_3278;
l9_3277=l9_3282;
}
l9_3220.y=l9_3274;
l9_3230=l9_3277;
float2 l9_3285=l9_3220;
int l9_3286=l9_3218;
int l9_3287=l9_3219;
float l9_3288=l9_3228;
float2 l9_3289=l9_3285;
int l9_3290=l9_3286;
int l9_3291=l9_3287;
float3 l9_3292=float3(0.0);
if (l9_3290==0)
{
l9_3292=float3(l9_3289,0.0);
}
else
{
if (l9_3290==1)
{
l9_3292=float3(l9_3289.x,(l9_3289.y*0.5)+(0.5-(float(l9_3291)*0.5)),0.0);
}
else
{
l9_3292=float3(l9_3289,float(l9_3291));
}
}
float3 l9_3293=l9_3292;
float3 l9_3294=l9_3293;
float4 l9_3295=sc_set0.reflectionTex.sample(sc_set0.reflectionTexSmpSC,l9_3294.xy,bias(l9_3288));
float4 l9_3296=l9_3295;
if (l9_3226)
{
l9_3296=mix(l9_3227,l9_3296,float4(l9_3230));
}
float4 l9_3297=l9_3296;
l9_3211=l9_3297;
float3 l9_3298=float3(0.0);
float3 l9_3299=float3(0.0);
float3 l9_3300=(*sc_set0.UserUniforms).Port_Default_N041;
ssGlobals l9_3301=param_20;
float3 l9_3302;
if ((int(Tweak_N177_tmp)!=0))
{
float2 l9_3303=float2(0.0);
float2 l9_3304=float2(0.0);
float2 l9_3305=float2(0.0);
float2 l9_3306=float2(0.0);
float2 l9_3307=float2(0.0);
float2 l9_3308=float2(0.0);
ssGlobals l9_3309=l9_3301;
float2 l9_3310;
if (NODE_228_DROPLIST_ITEM_tmp==0)
{
float2 l9_3311=float2(0.0);
l9_3311=l9_3309.Surface_UVCoord0;
l9_3304=l9_3311;
l9_3310=l9_3304;
}
else
{
if (NODE_228_DROPLIST_ITEM_tmp==1)
{
float2 l9_3312=float2(0.0);
l9_3312=l9_3309.Surface_UVCoord1;
l9_3305=l9_3312;
l9_3310=l9_3305;
}
else
{
if (NODE_228_DROPLIST_ITEM_tmp==2)
{
float2 l9_3313=float2(0.0);
l9_3313=l9_3309.Surface_UVCoord0;
float2 l9_3314=float2(0.0);
float2 l9_3315=float2(0.0);
float2 l9_3316=float2(0.0);
ssGlobals l9_3317=l9_3309;
float2 l9_3318;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3319=float2(0.0);
float2 l9_3320=float2(0.0);
float2 l9_3321=float2(0.0);
float2 l9_3322=float2(0.0);
float2 l9_3323=float2(0.0);
ssGlobals l9_3324=l9_3317;
float2 l9_3325;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3326=float2(0.0);
l9_3326=l9_3324.Surface_UVCoord0;
l9_3320=l9_3326;
l9_3325=l9_3320;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3327=float2(0.0);
l9_3327=l9_3324.Surface_UVCoord1;
l9_3321=l9_3327;
l9_3325=l9_3321;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3328=float2(0.0);
l9_3328=l9_3324.gScreenCoord;
l9_3322=l9_3328;
l9_3325=l9_3322;
}
else
{
float2 l9_3329=float2(0.0);
l9_3329=l9_3324.Surface_UVCoord0;
l9_3323=l9_3329;
l9_3325=l9_3323;
}
}
}
l9_3319=l9_3325;
float2 l9_3330=float2(0.0);
float2 l9_3331=(*sc_set0.UserUniforms).uv2Scale;
l9_3330=l9_3331;
float2 l9_3332=float2(0.0);
l9_3332=l9_3330;
float2 l9_3333=float2(0.0);
float2 l9_3334=(*sc_set0.UserUniforms).uv2Offset;
l9_3333=l9_3334;
float2 l9_3335=float2(0.0);
l9_3335=l9_3333;
float2 l9_3336=float2(0.0);
l9_3336=(l9_3319*l9_3332)+l9_3335;
float2 l9_3337=float2(0.0);
l9_3337=l9_3336+(l9_3335*(l9_3317.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3315=l9_3337;
l9_3318=l9_3315;
}
else
{
float2 l9_3338=float2(0.0);
float2 l9_3339=float2(0.0);
float2 l9_3340=float2(0.0);
float2 l9_3341=float2(0.0);
float2 l9_3342=float2(0.0);
ssGlobals l9_3343=l9_3317;
float2 l9_3344;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3345=float2(0.0);
l9_3345=l9_3343.Surface_UVCoord0;
l9_3339=l9_3345;
l9_3344=l9_3339;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3346=float2(0.0);
l9_3346=l9_3343.Surface_UVCoord1;
l9_3340=l9_3346;
l9_3344=l9_3340;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3347=float2(0.0);
l9_3347=l9_3343.gScreenCoord;
l9_3341=l9_3347;
l9_3344=l9_3341;
}
else
{
float2 l9_3348=float2(0.0);
l9_3348=l9_3343.Surface_UVCoord0;
l9_3342=l9_3348;
l9_3344=l9_3342;
}
}
}
l9_3338=l9_3344;
float2 l9_3349=float2(0.0);
float2 l9_3350=(*sc_set0.UserUniforms).uv2Scale;
l9_3349=l9_3350;
float2 l9_3351=float2(0.0);
l9_3351=l9_3349;
float2 l9_3352=float2(0.0);
float2 l9_3353=(*sc_set0.UserUniforms).uv2Offset;
l9_3352=l9_3353;
float2 l9_3354=float2(0.0);
l9_3354=l9_3352;
float2 l9_3355=float2(0.0);
l9_3355=(l9_3338*l9_3351)+l9_3354;
l9_3316=l9_3355;
l9_3318=l9_3316;
}
l9_3314=l9_3318;
float l9_3356=0.0;
float l9_3357;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3357=1.001;
}
else
{
l9_3357=0.001;
}
l9_3357-=0.001;
l9_3356=l9_3357;
float l9_3358=0.0;
l9_3358=l9_3356;
float2 l9_3359=float2(0.0);
l9_3359=mix(l9_3313,l9_3314,float2(l9_3358));
float2 l9_3360=float2(0.0);
l9_3360=l9_3359;
float2 l9_3361=float2(0.0);
l9_3361=l9_3360;
l9_3306=l9_3361;
l9_3310=l9_3306;
}
else
{
if (NODE_228_DROPLIST_ITEM_tmp==3)
{
float2 l9_3362=float2(0.0);
l9_3362=l9_3309.Surface_UVCoord0;
float2 l9_3363=float2(0.0);
float2 l9_3364=float2(0.0);
float2 l9_3365=float2(0.0);
ssGlobals l9_3366=l9_3309;
float2 l9_3367;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_3368=float2(0.0);
float2 l9_3369=float2(0.0);
float2 l9_3370=float2(0.0);
float2 l9_3371=float2(0.0);
float2 l9_3372=float2(0.0);
float2 l9_3373=float2(0.0);
ssGlobals l9_3374=l9_3366;
float2 l9_3375;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3376=float2(0.0);
l9_3376=l9_3374.Surface_UVCoord0;
l9_3369=l9_3376;
l9_3375=l9_3369;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3377=float2(0.0);
l9_3377=l9_3374.Surface_UVCoord1;
l9_3370=l9_3377;
l9_3375=l9_3370;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3378=float2(0.0);
l9_3378=l9_3374.gScreenCoord;
l9_3371=l9_3378;
l9_3375=l9_3371;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3379=float2(0.0);
l9_3379=l9_3374.Surface_UVCoord0;
float2 l9_3380=float2(0.0);
float2 l9_3381=float2(0.0);
float2 l9_3382=float2(0.0);
ssGlobals l9_3383=l9_3374;
float2 l9_3384;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3385=float2(0.0);
float2 l9_3386=float2(0.0);
float2 l9_3387=float2(0.0);
float2 l9_3388=float2(0.0);
float2 l9_3389=float2(0.0);
ssGlobals l9_3390=l9_3383;
float2 l9_3391;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3392=float2(0.0);
l9_3392=l9_3390.Surface_UVCoord0;
l9_3386=l9_3392;
l9_3391=l9_3386;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3393=float2(0.0);
l9_3393=l9_3390.Surface_UVCoord1;
l9_3387=l9_3393;
l9_3391=l9_3387;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3394=float2(0.0);
l9_3394=l9_3390.gScreenCoord;
l9_3388=l9_3394;
l9_3391=l9_3388;
}
else
{
float2 l9_3395=float2(0.0);
l9_3395=l9_3390.Surface_UVCoord0;
l9_3389=l9_3395;
l9_3391=l9_3389;
}
}
}
l9_3385=l9_3391;
float2 l9_3396=float2(0.0);
float2 l9_3397=(*sc_set0.UserUniforms).uv2Scale;
l9_3396=l9_3397;
float2 l9_3398=float2(0.0);
l9_3398=l9_3396;
float2 l9_3399=float2(0.0);
float2 l9_3400=(*sc_set0.UserUniforms).uv2Offset;
l9_3399=l9_3400;
float2 l9_3401=float2(0.0);
l9_3401=l9_3399;
float2 l9_3402=float2(0.0);
l9_3402=(l9_3385*l9_3398)+l9_3401;
float2 l9_3403=float2(0.0);
l9_3403=l9_3402+(l9_3401*(l9_3383.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3381=l9_3403;
l9_3384=l9_3381;
}
else
{
float2 l9_3404=float2(0.0);
float2 l9_3405=float2(0.0);
float2 l9_3406=float2(0.0);
float2 l9_3407=float2(0.0);
float2 l9_3408=float2(0.0);
ssGlobals l9_3409=l9_3383;
float2 l9_3410;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3411=float2(0.0);
l9_3411=l9_3409.Surface_UVCoord0;
l9_3405=l9_3411;
l9_3410=l9_3405;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3412=float2(0.0);
l9_3412=l9_3409.Surface_UVCoord1;
l9_3406=l9_3412;
l9_3410=l9_3406;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3413=float2(0.0);
l9_3413=l9_3409.gScreenCoord;
l9_3407=l9_3413;
l9_3410=l9_3407;
}
else
{
float2 l9_3414=float2(0.0);
l9_3414=l9_3409.Surface_UVCoord0;
l9_3408=l9_3414;
l9_3410=l9_3408;
}
}
}
l9_3404=l9_3410;
float2 l9_3415=float2(0.0);
float2 l9_3416=(*sc_set0.UserUniforms).uv2Scale;
l9_3415=l9_3416;
float2 l9_3417=float2(0.0);
l9_3417=l9_3415;
float2 l9_3418=float2(0.0);
float2 l9_3419=(*sc_set0.UserUniforms).uv2Offset;
l9_3418=l9_3419;
float2 l9_3420=float2(0.0);
l9_3420=l9_3418;
float2 l9_3421=float2(0.0);
l9_3421=(l9_3404*l9_3417)+l9_3420;
l9_3382=l9_3421;
l9_3384=l9_3382;
}
l9_3380=l9_3384;
float l9_3422=0.0;
float l9_3423;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3423=1.001;
}
else
{
l9_3423=0.001;
}
l9_3423-=0.001;
l9_3422=l9_3423;
float l9_3424=0.0;
l9_3424=l9_3422;
float2 l9_3425=float2(0.0);
l9_3425=mix(l9_3379,l9_3380,float2(l9_3424));
float2 l9_3426=float2(0.0);
l9_3426=l9_3425;
float2 l9_3427=float2(0.0);
l9_3427=l9_3426;
l9_3372=l9_3427;
l9_3375=l9_3372;
}
else
{
float2 l9_3428=float2(0.0);
l9_3428=l9_3374.Surface_UVCoord0;
l9_3373=l9_3428;
l9_3375=l9_3373;
}
}
}
}
l9_3368=l9_3375;
float2 l9_3429=float2(0.0);
float2 l9_3430=(*sc_set0.UserUniforms).uv3Scale;
l9_3429=l9_3430;
float2 l9_3431=float2(0.0);
l9_3431=l9_3429;
float2 l9_3432=float2(0.0);
float2 l9_3433=(*sc_set0.UserUniforms).uv3Offset;
l9_3432=l9_3433;
float2 l9_3434=float2(0.0);
l9_3434=l9_3432;
float2 l9_3435=float2(0.0);
l9_3435=(l9_3368*l9_3431)+l9_3434;
float2 l9_3436=float2(0.0);
l9_3436=l9_3435+(l9_3434*(l9_3366.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_3364=l9_3436;
l9_3367=l9_3364;
}
else
{
float2 l9_3437=float2(0.0);
float2 l9_3438=float2(0.0);
float2 l9_3439=float2(0.0);
float2 l9_3440=float2(0.0);
float2 l9_3441=float2(0.0);
float2 l9_3442=float2(0.0);
ssGlobals l9_3443=l9_3366;
float2 l9_3444;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3445=float2(0.0);
l9_3445=l9_3443.Surface_UVCoord0;
l9_3438=l9_3445;
l9_3444=l9_3438;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3446=float2(0.0);
l9_3446=l9_3443.Surface_UVCoord1;
l9_3439=l9_3446;
l9_3444=l9_3439;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3447=float2(0.0);
l9_3447=l9_3443.gScreenCoord;
l9_3440=l9_3447;
l9_3444=l9_3440;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3448=float2(0.0);
l9_3448=l9_3443.Surface_UVCoord0;
float2 l9_3449=float2(0.0);
float2 l9_3450=float2(0.0);
float2 l9_3451=float2(0.0);
ssGlobals l9_3452=l9_3443;
float2 l9_3453;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3454=float2(0.0);
float2 l9_3455=float2(0.0);
float2 l9_3456=float2(0.0);
float2 l9_3457=float2(0.0);
float2 l9_3458=float2(0.0);
ssGlobals l9_3459=l9_3452;
float2 l9_3460;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3461=float2(0.0);
l9_3461=l9_3459.Surface_UVCoord0;
l9_3455=l9_3461;
l9_3460=l9_3455;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3462=float2(0.0);
l9_3462=l9_3459.Surface_UVCoord1;
l9_3456=l9_3462;
l9_3460=l9_3456;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3463=float2(0.0);
l9_3463=l9_3459.gScreenCoord;
l9_3457=l9_3463;
l9_3460=l9_3457;
}
else
{
float2 l9_3464=float2(0.0);
l9_3464=l9_3459.Surface_UVCoord0;
l9_3458=l9_3464;
l9_3460=l9_3458;
}
}
}
l9_3454=l9_3460;
float2 l9_3465=float2(0.0);
float2 l9_3466=(*sc_set0.UserUniforms).uv2Scale;
l9_3465=l9_3466;
float2 l9_3467=float2(0.0);
l9_3467=l9_3465;
float2 l9_3468=float2(0.0);
float2 l9_3469=(*sc_set0.UserUniforms).uv2Offset;
l9_3468=l9_3469;
float2 l9_3470=float2(0.0);
l9_3470=l9_3468;
float2 l9_3471=float2(0.0);
l9_3471=(l9_3454*l9_3467)+l9_3470;
float2 l9_3472=float2(0.0);
l9_3472=l9_3471+(l9_3470*(l9_3452.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3450=l9_3472;
l9_3453=l9_3450;
}
else
{
float2 l9_3473=float2(0.0);
float2 l9_3474=float2(0.0);
float2 l9_3475=float2(0.0);
float2 l9_3476=float2(0.0);
float2 l9_3477=float2(0.0);
ssGlobals l9_3478=l9_3452;
float2 l9_3479;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3480=float2(0.0);
l9_3480=l9_3478.Surface_UVCoord0;
l9_3474=l9_3480;
l9_3479=l9_3474;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3481=float2(0.0);
l9_3481=l9_3478.Surface_UVCoord1;
l9_3475=l9_3481;
l9_3479=l9_3475;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3482=float2(0.0);
l9_3482=l9_3478.gScreenCoord;
l9_3476=l9_3482;
l9_3479=l9_3476;
}
else
{
float2 l9_3483=float2(0.0);
l9_3483=l9_3478.Surface_UVCoord0;
l9_3477=l9_3483;
l9_3479=l9_3477;
}
}
}
l9_3473=l9_3479;
float2 l9_3484=float2(0.0);
float2 l9_3485=(*sc_set0.UserUniforms).uv2Scale;
l9_3484=l9_3485;
float2 l9_3486=float2(0.0);
l9_3486=l9_3484;
float2 l9_3487=float2(0.0);
float2 l9_3488=(*sc_set0.UserUniforms).uv2Offset;
l9_3487=l9_3488;
float2 l9_3489=float2(0.0);
l9_3489=l9_3487;
float2 l9_3490=float2(0.0);
l9_3490=(l9_3473*l9_3486)+l9_3489;
l9_3451=l9_3490;
l9_3453=l9_3451;
}
l9_3449=l9_3453;
float l9_3491=0.0;
float l9_3492;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3492=1.001;
}
else
{
l9_3492=0.001;
}
l9_3492-=0.001;
l9_3491=l9_3492;
float l9_3493=0.0;
l9_3493=l9_3491;
float2 l9_3494=float2(0.0);
l9_3494=mix(l9_3448,l9_3449,float2(l9_3493));
float2 l9_3495=float2(0.0);
l9_3495=l9_3494;
float2 l9_3496=float2(0.0);
l9_3496=l9_3495;
l9_3441=l9_3496;
l9_3444=l9_3441;
}
else
{
float2 l9_3497=float2(0.0);
l9_3497=l9_3443.Surface_UVCoord0;
l9_3442=l9_3497;
l9_3444=l9_3442;
}
}
}
}
l9_3437=l9_3444;
float2 l9_3498=float2(0.0);
float2 l9_3499=(*sc_set0.UserUniforms).uv3Scale;
l9_3498=l9_3499;
float2 l9_3500=float2(0.0);
l9_3500=l9_3498;
float2 l9_3501=float2(0.0);
float2 l9_3502=(*sc_set0.UserUniforms).uv3Offset;
l9_3501=l9_3502;
float2 l9_3503=float2(0.0);
l9_3503=l9_3501;
float2 l9_3504=float2(0.0);
l9_3504=(l9_3437*l9_3500)+l9_3503;
l9_3365=l9_3504;
l9_3367=l9_3365;
}
l9_3363=l9_3367;
float l9_3505=0.0;
float l9_3506;
if ((int(Tweak_N11_tmp)!=0))
{
l9_3506=1.001;
}
else
{
l9_3506=0.001;
}
l9_3506-=0.001;
l9_3505=l9_3506;
float l9_3507=0.0;
l9_3507=l9_3505;
float2 l9_3508=float2(0.0);
l9_3508=mix(l9_3362,l9_3363,float2(l9_3507));
float2 l9_3509=float2(0.0);
l9_3509=l9_3508;
float2 l9_3510=float2(0.0);
l9_3510=l9_3509;
l9_3307=l9_3510;
l9_3310=l9_3307;
}
else
{
float2 l9_3511=float2(0.0);
l9_3511=l9_3309.Surface_UVCoord0;
l9_3308=l9_3511;
l9_3310=l9_3308;
}
}
}
}
l9_3303=l9_3310;
float4 l9_3512=float4(0.0);
int l9_3513;
if ((int(reflectionModulationTexHasSwappedViews_tmp)!=0))
{
int l9_3514=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3514=0;
}
else
{
l9_3514=in.varStereoViewID;
}
int l9_3515=l9_3514;
l9_3513=1-l9_3515;
}
else
{
int l9_3516=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3516=0;
}
else
{
l9_3516=in.varStereoViewID;
}
int l9_3517=l9_3516;
l9_3513=l9_3517;
}
int l9_3518=l9_3513;
int l9_3519=reflectionModulationTexLayout_tmp;
int l9_3520=l9_3518;
float2 l9_3521=l9_3303;
bool l9_3522=(int(SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp)!=0);
float3x3 l9_3523=(*sc_set0.UserUniforms).reflectionModulationTexTransform;
int2 l9_3524=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp);
bool l9_3525=(int(SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp)!=0);
float4 l9_3526=(*sc_set0.UserUniforms).reflectionModulationTexUvMinMax;
bool l9_3527=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp)!=0);
float4 l9_3528=(*sc_set0.UserUniforms).reflectionModulationTexBorderColor;
float l9_3529=0.0;
bool l9_3530=l9_3527&&(!l9_3525);
float l9_3531=1.0;
float l9_3532=l9_3521.x;
int l9_3533=l9_3524.x;
if (l9_3533==1)
{
l9_3532=fract(l9_3532);
}
else
{
if (l9_3533==2)
{
float l9_3534=fract(l9_3532);
float l9_3535=l9_3532-l9_3534;
float l9_3536=step(0.25,fract(l9_3535*0.5));
l9_3532=mix(l9_3534,1.0-l9_3534,fast::clamp(l9_3536,0.0,1.0));
}
}
l9_3521.x=l9_3532;
float l9_3537=l9_3521.y;
int l9_3538=l9_3524.y;
if (l9_3538==1)
{
l9_3537=fract(l9_3537);
}
else
{
if (l9_3538==2)
{
float l9_3539=fract(l9_3537);
float l9_3540=l9_3537-l9_3539;
float l9_3541=step(0.25,fract(l9_3540*0.5));
l9_3537=mix(l9_3539,1.0-l9_3539,fast::clamp(l9_3541,0.0,1.0));
}
}
l9_3521.y=l9_3537;
if (l9_3525)
{
bool l9_3542=l9_3527;
bool l9_3543;
if (l9_3542)
{
l9_3543=l9_3524.x==3;
}
else
{
l9_3543=l9_3542;
}
float l9_3544=l9_3521.x;
float l9_3545=l9_3526.x;
float l9_3546=l9_3526.z;
bool l9_3547=l9_3543;
float l9_3548=l9_3531;
float l9_3549=fast::clamp(l9_3544,l9_3545,l9_3546);
float l9_3550=step(abs(l9_3544-l9_3549),9.9999997e-06);
l9_3548*=(l9_3550+((1.0-float(l9_3547))*(1.0-l9_3550)));
l9_3544=l9_3549;
l9_3521.x=l9_3544;
l9_3531=l9_3548;
bool l9_3551=l9_3527;
bool l9_3552;
if (l9_3551)
{
l9_3552=l9_3524.y==3;
}
else
{
l9_3552=l9_3551;
}
float l9_3553=l9_3521.y;
float l9_3554=l9_3526.y;
float l9_3555=l9_3526.w;
bool l9_3556=l9_3552;
float l9_3557=l9_3531;
float l9_3558=fast::clamp(l9_3553,l9_3554,l9_3555);
float l9_3559=step(abs(l9_3553-l9_3558),9.9999997e-06);
l9_3557*=(l9_3559+((1.0-float(l9_3556))*(1.0-l9_3559)));
l9_3553=l9_3558;
l9_3521.y=l9_3553;
l9_3531=l9_3557;
}
float2 l9_3560=l9_3521;
bool l9_3561=l9_3522;
float3x3 l9_3562=l9_3523;
if (l9_3561)
{
l9_3560=float2((l9_3562*float3(l9_3560,1.0)).xy);
}
float2 l9_3563=l9_3560;
l9_3521=l9_3563;
float l9_3564=l9_3521.x;
int l9_3565=l9_3524.x;
bool l9_3566=l9_3530;
float l9_3567=l9_3531;
if ((l9_3565==0)||(l9_3565==3))
{
float l9_3568=l9_3564;
float l9_3569=0.0;
float l9_3570=1.0;
bool l9_3571=l9_3566;
float l9_3572=l9_3567;
float l9_3573=fast::clamp(l9_3568,l9_3569,l9_3570);
float l9_3574=step(abs(l9_3568-l9_3573),9.9999997e-06);
l9_3572*=(l9_3574+((1.0-float(l9_3571))*(1.0-l9_3574)));
l9_3568=l9_3573;
l9_3564=l9_3568;
l9_3567=l9_3572;
}
l9_3521.x=l9_3564;
l9_3531=l9_3567;
float l9_3575=l9_3521.y;
int l9_3576=l9_3524.y;
bool l9_3577=l9_3530;
float l9_3578=l9_3531;
if ((l9_3576==0)||(l9_3576==3))
{
float l9_3579=l9_3575;
float l9_3580=0.0;
float l9_3581=1.0;
bool l9_3582=l9_3577;
float l9_3583=l9_3578;
float l9_3584=fast::clamp(l9_3579,l9_3580,l9_3581);
float l9_3585=step(abs(l9_3579-l9_3584),9.9999997e-06);
l9_3583*=(l9_3585+((1.0-float(l9_3582))*(1.0-l9_3585)));
l9_3579=l9_3584;
l9_3575=l9_3579;
l9_3578=l9_3583;
}
l9_3521.y=l9_3575;
l9_3531=l9_3578;
float2 l9_3586=l9_3521;
int l9_3587=l9_3519;
int l9_3588=l9_3520;
float l9_3589=l9_3529;
float2 l9_3590=l9_3586;
int l9_3591=l9_3587;
int l9_3592=l9_3588;
float3 l9_3593=float3(0.0);
if (l9_3591==0)
{
l9_3593=float3(l9_3590,0.0);
}
else
{
if (l9_3591==1)
{
l9_3593=float3(l9_3590.x,(l9_3590.y*0.5)+(0.5-(float(l9_3592)*0.5)),0.0);
}
else
{
l9_3593=float3(l9_3590,float(l9_3592));
}
}
float3 l9_3594=l9_3593;
float3 l9_3595=l9_3594;
float4 l9_3596=sc_set0.reflectionModulationTex.sample(sc_set0.reflectionModulationTexSmpSC,l9_3595.xy,bias(l9_3589));
float4 l9_3597=l9_3596;
if (l9_3527)
{
l9_3597=mix(l9_3528,l9_3597,float4(l9_3531));
}
float4 l9_3598=l9_3597;
l9_3512=l9_3598;
l9_3299=l9_3512.xyz;
l9_3302=l9_3299;
}
else
{
l9_3302=l9_3300;
}
l9_3298=l9_3302;
float3 l9_3599=float3(0.0);
l9_3599=l9_3211.xyz*l9_3298;
float3 l9_3600=float3(0.0);
float3 l9_3601=l9_3599;
float3 l9_3602;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_3602=float3(pow(l9_3601.x,2.2),pow(l9_3601.y,2.2),pow(l9_3601.z,2.2));
}
else
{
l9_3602=l9_3601*l9_3601;
}
float3 l9_3603=l9_3602;
l9_3600=l9_3603;
float3 l9_3604=float3(0.0);
l9_3604=float3(l9_2545)*l9_3600;
param_17=l9_3604;
param_19=param_17;
}
else
{
param_19=param_18;
}
Result_N134=param_19;
float3 Export_N303=float3(0.0);
Export_N303=Result_N134;
float3 Value_N298=float3(0.0);
Value_N298=Export_N303;
float3 Result_N173=float3(0.0);
float3 param_21=float3(0.0);
float3 param_22=(*sc_set0.UserUniforms).Port_Default_N173;
ssGlobals param_24=Globals;
float3 param_23;
if ((int(Tweak_N74_tmp)!=0))
{
float3 l9_3605=float3(0.0);
float3 l9_3606=(*sc_set0.UserUniforms).rimColor;
l9_3605=l9_3606;
float3 l9_3607=float3(0.0);
l9_3607=l9_3605;
float l9_3608=0.0;
float l9_3609=(*sc_set0.UserUniforms).rimIntensity;
l9_3608=l9_3609;
float l9_3610=0.0;
l9_3610=l9_3608;
float3 l9_3611=float3(0.0);
float3 l9_3612=float3(0.0);
float3 l9_3613=(*sc_set0.UserUniforms).Port_Default_N170;
ssGlobals l9_3614=param_24;
float3 l9_3615;
if ((int(Tweak_N216_tmp)!=0))
{
float2 l9_3616=float2(0.0);
float2 l9_3617=float2(0.0);
float2 l9_3618=float2(0.0);
float2 l9_3619=float2(0.0);
float2 l9_3620=float2(0.0);
float2 l9_3621=float2(0.0);
ssGlobals l9_3622=l9_3614;
float2 l9_3623;
if (NODE_315_DROPLIST_ITEM_tmp==0)
{
float2 l9_3624=float2(0.0);
l9_3624=l9_3622.Surface_UVCoord0;
l9_3617=l9_3624;
l9_3623=l9_3617;
}
else
{
if (NODE_315_DROPLIST_ITEM_tmp==1)
{
float2 l9_3625=float2(0.0);
l9_3625=l9_3622.Surface_UVCoord1;
l9_3618=l9_3625;
l9_3623=l9_3618;
}
else
{
if (NODE_315_DROPLIST_ITEM_tmp==2)
{
float2 l9_3626=float2(0.0);
l9_3626=l9_3622.Surface_UVCoord0;
float2 l9_3627=float2(0.0);
float2 l9_3628=float2(0.0);
float2 l9_3629=float2(0.0);
ssGlobals l9_3630=l9_3622;
float2 l9_3631;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3632=float2(0.0);
float2 l9_3633=float2(0.0);
float2 l9_3634=float2(0.0);
float2 l9_3635=float2(0.0);
float2 l9_3636=float2(0.0);
ssGlobals l9_3637=l9_3630;
float2 l9_3638;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3639=float2(0.0);
l9_3639=l9_3637.Surface_UVCoord0;
l9_3633=l9_3639;
l9_3638=l9_3633;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3640=float2(0.0);
l9_3640=l9_3637.Surface_UVCoord1;
l9_3634=l9_3640;
l9_3638=l9_3634;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3641=float2(0.0);
l9_3641=l9_3637.gScreenCoord;
l9_3635=l9_3641;
l9_3638=l9_3635;
}
else
{
float2 l9_3642=float2(0.0);
l9_3642=l9_3637.Surface_UVCoord0;
l9_3636=l9_3642;
l9_3638=l9_3636;
}
}
}
l9_3632=l9_3638;
float2 l9_3643=float2(0.0);
float2 l9_3644=(*sc_set0.UserUniforms).uv2Scale;
l9_3643=l9_3644;
float2 l9_3645=float2(0.0);
l9_3645=l9_3643;
float2 l9_3646=float2(0.0);
float2 l9_3647=(*sc_set0.UserUniforms).uv2Offset;
l9_3646=l9_3647;
float2 l9_3648=float2(0.0);
l9_3648=l9_3646;
float2 l9_3649=float2(0.0);
l9_3649=(l9_3632*l9_3645)+l9_3648;
float2 l9_3650=float2(0.0);
l9_3650=l9_3649+(l9_3648*(l9_3630.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3628=l9_3650;
l9_3631=l9_3628;
}
else
{
float2 l9_3651=float2(0.0);
float2 l9_3652=float2(0.0);
float2 l9_3653=float2(0.0);
float2 l9_3654=float2(0.0);
float2 l9_3655=float2(0.0);
ssGlobals l9_3656=l9_3630;
float2 l9_3657;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3658=float2(0.0);
l9_3658=l9_3656.Surface_UVCoord0;
l9_3652=l9_3658;
l9_3657=l9_3652;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3659=float2(0.0);
l9_3659=l9_3656.Surface_UVCoord1;
l9_3653=l9_3659;
l9_3657=l9_3653;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3660=float2(0.0);
l9_3660=l9_3656.gScreenCoord;
l9_3654=l9_3660;
l9_3657=l9_3654;
}
else
{
float2 l9_3661=float2(0.0);
l9_3661=l9_3656.Surface_UVCoord0;
l9_3655=l9_3661;
l9_3657=l9_3655;
}
}
}
l9_3651=l9_3657;
float2 l9_3662=float2(0.0);
float2 l9_3663=(*sc_set0.UserUniforms).uv2Scale;
l9_3662=l9_3663;
float2 l9_3664=float2(0.0);
l9_3664=l9_3662;
float2 l9_3665=float2(0.0);
float2 l9_3666=(*sc_set0.UserUniforms).uv2Offset;
l9_3665=l9_3666;
float2 l9_3667=float2(0.0);
l9_3667=l9_3665;
float2 l9_3668=float2(0.0);
l9_3668=(l9_3651*l9_3664)+l9_3667;
l9_3629=l9_3668;
l9_3631=l9_3629;
}
l9_3627=l9_3631;
float l9_3669=0.0;
float l9_3670;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3670=1.001;
}
else
{
l9_3670=0.001;
}
l9_3670-=0.001;
l9_3669=l9_3670;
float l9_3671=0.0;
l9_3671=l9_3669;
float2 l9_3672=float2(0.0);
l9_3672=mix(l9_3626,l9_3627,float2(l9_3671));
float2 l9_3673=float2(0.0);
l9_3673=l9_3672;
float2 l9_3674=float2(0.0);
l9_3674=l9_3673;
l9_3619=l9_3674;
l9_3623=l9_3619;
}
else
{
if (NODE_315_DROPLIST_ITEM_tmp==3)
{
float2 l9_3675=float2(0.0);
l9_3675=l9_3622.Surface_UVCoord0;
float2 l9_3676=float2(0.0);
float2 l9_3677=float2(0.0);
float2 l9_3678=float2(0.0);
ssGlobals l9_3679=l9_3622;
float2 l9_3680;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_3681=float2(0.0);
float2 l9_3682=float2(0.0);
float2 l9_3683=float2(0.0);
float2 l9_3684=float2(0.0);
float2 l9_3685=float2(0.0);
float2 l9_3686=float2(0.0);
ssGlobals l9_3687=l9_3679;
float2 l9_3688;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3689=float2(0.0);
l9_3689=l9_3687.Surface_UVCoord0;
l9_3682=l9_3689;
l9_3688=l9_3682;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3690=float2(0.0);
l9_3690=l9_3687.Surface_UVCoord1;
l9_3683=l9_3690;
l9_3688=l9_3683;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3691=float2(0.0);
l9_3691=l9_3687.gScreenCoord;
l9_3684=l9_3691;
l9_3688=l9_3684;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3692=float2(0.0);
l9_3692=l9_3687.Surface_UVCoord0;
float2 l9_3693=float2(0.0);
float2 l9_3694=float2(0.0);
float2 l9_3695=float2(0.0);
ssGlobals l9_3696=l9_3687;
float2 l9_3697;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3698=float2(0.0);
float2 l9_3699=float2(0.0);
float2 l9_3700=float2(0.0);
float2 l9_3701=float2(0.0);
float2 l9_3702=float2(0.0);
ssGlobals l9_3703=l9_3696;
float2 l9_3704;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3705=float2(0.0);
l9_3705=l9_3703.Surface_UVCoord0;
l9_3699=l9_3705;
l9_3704=l9_3699;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3706=float2(0.0);
l9_3706=l9_3703.Surface_UVCoord1;
l9_3700=l9_3706;
l9_3704=l9_3700;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3707=float2(0.0);
l9_3707=l9_3703.gScreenCoord;
l9_3701=l9_3707;
l9_3704=l9_3701;
}
else
{
float2 l9_3708=float2(0.0);
l9_3708=l9_3703.Surface_UVCoord0;
l9_3702=l9_3708;
l9_3704=l9_3702;
}
}
}
l9_3698=l9_3704;
float2 l9_3709=float2(0.0);
float2 l9_3710=(*sc_set0.UserUniforms).uv2Scale;
l9_3709=l9_3710;
float2 l9_3711=float2(0.0);
l9_3711=l9_3709;
float2 l9_3712=float2(0.0);
float2 l9_3713=(*sc_set0.UserUniforms).uv2Offset;
l9_3712=l9_3713;
float2 l9_3714=float2(0.0);
l9_3714=l9_3712;
float2 l9_3715=float2(0.0);
l9_3715=(l9_3698*l9_3711)+l9_3714;
float2 l9_3716=float2(0.0);
l9_3716=l9_3715+(l9_3714*(l9_3696.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3694=l9_3716;
l9_3697=l9_3694;
}
else
{
float2 l9_3717=float2(0.0);
float2 l9_3718=float2(0.0);
float2 l9_3719=float2(0.0);
float2 l9_3720=float2(0.0);
float2 l9_3721=float2(0.0);
ssGlobals l9_3722=l9_3696;
float2 l9_3723;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3724=float2(0.0);
l9_3724=l9_3722.Surface_UVCoord0;
l9_3718=l9_3724;
l9_3723=l9_3718;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3725=float2(0.0);
l9_3725=l9_3722.Surface_UVCoord1;
l9_3719=l9_3725;
l9_3723=l9_3719;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3726=float2(0.0);
l9_3726=l9_3722.gScreenCoord;
l9_3720=l9_3726;
l9_3723=l9_3720;
}
else
{
float2 l9_3727=float2(0.0);
l9_3727=l9_3722.Surface_UVCoord0;
l9_3721=l9_3727;
l9_3723=l9_3721;
}
}
}
l9_3717=l9_3723;
float2 l9_3728=float2(0.0);
float2 l9_3729=(*sc_set0.UserUniforms).uv2Scale;
l9_3728=l9_3729;
float2 l9_3730=float2(0.0);
l9_3730=l9_3728;
float2 l9_3731=float2(0.0);
float2 l9_3732=(*sc_set0.UserUniforms).uv2Offset;
l9_3731=l9_3732;
float2 l9_3733=float2(0.0);
l9_3733=l9_3731;
float2 l9_3734=float2(0.0);
l9_3734=(l9_3717*l9_3730)+l9_3733;
l9_3695=l9_3734;
l9_3697=l9_3695;
}
l9_3693=l9_3697;
float l9_3735=0.0;
float l9_3736;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3736=1.001;
}
else
{
l9_3736=0.001;
}
l9_3736-=0.001;
l9_3735=l9_3736;
float l9_3737=0.0;
l9_3737=l9_3735;
float2 l9_3738=float2(0.0);
l9_3738=mix(l9_3692,l9_3693,float2(l9_3737));
float2 l9_3739=float2(0.0);
l9_3739=l9_3738;
float2 l9_3740=float2(0.0);
l9_3740=l9_3739;
l9_3685=l9_3740;
l9_3688=l9_3685;
}
else
{
float2 l9_3741=float2(0.0);
l9_3741=l9_3687.Surface_UVCoord0;
l9_3686=l9_3741;
l9_3688=l9_3686;
}
}
}
}
l9_3681=l9_3688;
float2 l9_3742=float2(0.0);
float2 l9_3743=(*sc_set0.UserUniforms).uv3Scale;
l9_3742=l9_3743;
float2 l9_3744=float2(0.0);
l9_3744=l9_3742;
float2 l9_3745=float2(0.0);
float2 l9_3746=(*sc_set0.UserUniforms).uv3Offset;
l9_3745=l9_3746;
float2 l9_3747=float2(0.0);
l9_3747=l9_3745;
float2 l9_3748=float2(0.0);
l9_3748=(l9_3681*l9_3744)+l9_3747;
float2 l9_3749=float2(0.0);
l9_3749=l9_3748+(l9_3747*(l9_3679.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_3677=l9_3749;
l9_3680=l9_3677;
}
else
{
float2 l9_3750=float2(0.0);
float2 l9_3751=float2(0.0);
float2 l9_3752=float2(0.0);
float2 l9_3753=float2(0.0);
float2 l9_3754=float2(0.0);
float2 l9_3755=float2(0.0);
ssGlobals l9_3756=l9_3679;
float2 l9_3757;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3758=float2(0.0);
l9_3758=l9_3756.Surface_UVCoord0;
l9_3751=l9_3758;
l9_3757=l9_3751;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3759=float2(0.0);
l9_3759=l9_3756.Surface_UVCoord1;
l9_3752=l9_3759;
l9_3757=l9_3752;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3760=float2(0.0);
l9_3760=l9_3756.gScreenCoord;
l9_3753=l9_3760;
l9_3757=l9_3753;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3761=float2(0.0);
l9_3761=l9_3756.Surface_UVCoord0;
float2 l9_3762=float2(0.0);
float2 l9_3763=float2(0.0);
float2 l9_3764=float2(0.0);
ssGlobals l9_3765=l9_3756;
float2 l9_3766;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3767=float2(0.0);
float2 l9_3768=float2(0.0);
float2 l9_3769=float2(0.0);
float2 l9_3770=float2(0.0);
float2 l9_3771=float2(0.0);
ssGlobals l9_3772=l9_3765;
float2 l9_3773;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3774=float2(0.0);
l9_3774=l9_3772.Surface_UVCoord0;
l9_3768=l9_3774;
l9_3773=l9_3768;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3775=float2(0.0);
l9_3775=l9_3772.Surface_UVCoord1;
l9_3769=l9_3775;
l9_3773=l9_3769;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3776=float2(0.0);
l9_3776=l9_3772.gScreenCoord;
l9_3770=l9_3776;
l9_3773=l9_3770;
}
else
{
float2 l9_3777=float2(0.0);
l9_3777=l9_3772.Surface_UVCoord0;
l9_3771=l9_3777;
l9_3773=l9_3771;
}
}
}
l9_3767=l9_3773;
float2 l9_3778=float2(0.0);
float2 l9_3779=(*sc_set0.UserUniforms).uv2Scale;
l9_3778=l9_3779;
float2 l9_3780=float2(0.0);
l9_3780=l9_3778;
float2 l9_3781=float2(0.0);
float2 l9_3782=(*sc_set0.UserUniforms).uv2Offset;
l9_3781=l9_3782;
float2 l9_3783=float2(0.0);
l9_3783=l9_3781;
float2 l9_3784=float2(0.0);
l9_3784=(l9_3767*l9_3780)+l9_3783;
float2 l9_3785=float2(0.0);
l9_3785=l9_3784+(l9_3783*(l9_3765.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3763=l9_3785;
l9_3766=l9_3763;
}
else
{
float2 l9_3786=float2(0.0);
float2 l9_3787=float2(0.0);
float2 l9_3788=float2(0.0);
float2 l9_3789=float2(0.0);
float2 l9_3790=float2(0.0);
ssGlobals l9_3791=l9_3765;
float2 l9_3792;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3793=float2(0.0);
l9_3793=l9_3791.Surface_UVCoord0;
l9_3787=l9_3793;
l9_3792=l9_3787;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3794=float2(0.0);
l9_3794=l9_3791.Surface_UVCoord1;
l9_3788=l9_3794;
l9_3792=l9_3788;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3795=float2(0.0);
l9_3795=l9_3791.gScreenCoord;
l9_3789=l9_3795;
l9_3792=l9_3789;
}
else
{
float2 l9_3796=float2(0.0);
l9_3796=l9_3791.Surface_UVCoord0;
l9_3790=l9_3796;
l9_3792=l9_3790;
}
}
}
l9_3786=l9_3792;
float2 l9_3797=float2(0.0);
float2 l9_3798=(*sc_set0.UserUniforms).uv2Scale;
l9_3797=l9_3798;
float2 l9_3799=float2(0.0);
l9_3799=l9_3797;
float2 l9_3800=float2(0.0);
float2 l9_3801=(*sc_set0.UserUniforms).uv2Offset;
l9_3800=l9_3801;
float2 l9_3802=float2(0.0);
l9_3802=l9_3800;
float2 l9_3803=float2(0.0);
l9_3803=(l9_3786*l9_3799)+l9_3802;
l9_3764=l9_3803;
l9_3766=l9_3764;
}
l9_3762=l9_3766;
float l9_3804=0.0;
float l9_3805;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3805=1.001;
}
else
{
l9_3805=0.001;
}
l9_3805-=0.001;
l9_3804=l9_3805;
float l9_3806=0.0;
l9_3806=l9_3804;
float2 l9_3807=float2(0.0);
l9_3807=mix(l9_3761,l9_3762,float2(l9_3806));
float2 l9_3808=float2(0.0);
l9_3808=l9_3807;
float2 l9_3809=float2(0.0);
l9_3809=l9_3808;
l9_3754=l9_3809;
l9_3757=l9_3754;
}
else
{
float2 l9_3810=float2(0.0);
l9_3810=l9_3756.Surface_UVCoord0;
l9_3755=l9_3810;
l9_3757=l9_3755;
}
}
}
}
l9_3750=l9_3757;
float2 l9_3811=float2(0.0);
float2 l9_3812=(*sc_set0.UserUniforms).uv3Scale;
l9_3811=l9_3812;
float2 l9_3813=float2(0.0);
l9_3813=l9_3811;
float2 l9_3814=float2(0.0);
float2 l9_3815=(*sc_set0.UserUniforms).uv3Offset;
l9_3814=l9_3815;
float2 l9_3816=float2(0.0);
l9_3816=l9_3814;
float2 l9_3817=float2(0.0);
l9_3817=(l9_3750*l9_3813)+l9_3816;
l9_3678=l9_3817;
l9_3680=l9_3678;
}
l9_3676=l9_3680;
float l9_3818=0.0;
float l9_3819;
if ((int(Tweak_N11_tmp)!=0))
{
l9_3819=1.001;
}
else
{
l9_3819=0.001;
}
l9_3819-=0.001;
l9_3818=l9_3819;
float l9_3820=0.0;
l9_3820=l9_3818;
float2 l9_3821=float2(0.0);
l9_3821=mix(l9_3675,l9_3676,float2(l9_3820));
float2 l9_3822=float2(0.0);
l9_3822=l9_3821;
float2 l9_3823=float2(0.0);
l9_3823=l9_3822;
l9_3620=l9_3823;
l9_3623=l9_3620;
}
else
{
float2 l9_3824=float2(0.0);
l9_3824=l9_3622.Surface_UVCoord0;
l9_3621=l9_3824;
l9_3623=l9_3621;
}
}
}
}
l9_3616=l9_3623;
float4 l9_3825=float4(0.0);
int l9_3826;
if ((int(rimColorTexHasSwappedViews_tmp)!=0))
{
int l9_3827=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3827=0;
}
else
{
l9_3827=in.varStereoViewID;
}
int l9_3828=l9_3827;
l9_3826=1-l9_3828;
}
else
{
int l9_3829=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3829=0;
}
else
{
l9_3829=in.varStereoViewID;
}
int l9_3830=l9_3829;
l9_3826=l9_3830;
}
int l9_3831=l9_3826;
int l9_3832=rimColorTexLayout_tmp;
int l9_3833=l9_3831;
float2 l9_3834=l9_3616;
bool l9_3835=(int(SC_USE_UV_TRANSFORM_rimColorTex_tmp)!=0);
float3x3 l9_3836=(*sc_set0.UserUniforms).rimColorTexTransform;
int2 l9_3837=int2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp,SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp);
bool l9_3838=(int(SC_USE_UV_MIN_MAX_rimColorTex_tmp)!=0);
float4 l9_3839=(*sc_set0.UserUniforms).rimColorTexUvMinMax;
bool l9_3840=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp)!=0);
float4 l9_3841=(*sc_set0.UserUniforms).rimColorTexBorderColor;
float l9_3842=0.0;
bool l9_3843=l9_3840&&(!l9_3838);
float l9_3844=1.0;
float l9_3845=l9_3834.x;
int l9_3846=l9_3837.x;
if (l9_3846==1)
{
l9_3845=fract(l9_3845);
}
else
{
if (l9_3846==2)
{
float l9_3847=fract(l9_3845);
float l9_3848=l9_3845-l9_3847;
float l9_3849=step(0.25,fract(l9_3848*0.5));
l9_3845=mix(l9_3847,1.0-l9_3847,fast::clamp(l9_3849,0.0,1.0));
}
}
l9_3834.x=l9_3845;
float l9_3850=l9_3834.y;
int l9_3851=l9_3837.y;
if (l9_3851==1)
{
l9_3850=fract(l9_3850);
}
else
{
if (l9_3851==2)
{
float l9_3852=fract(l9_3850);
float l9_3853=l9_3850-l9_3852;
float l9_3854=step(0.25,fract(l9_3853*0.5));
l9_3850=mix(l9_3852,1.0-l9_3852,fast::clamp(l9_3854,0.0,1.0));
}
}
l9_3834.y=l9_3850;
if (l9_3838)
{
bool l9_3855=l9_3840;
bool l9_3856;
if (l9_3855)
{
l9_3856=l9_3837.x==3;
}
else
{
l9_3856=l9_3855;
}
float l9_3857=l9_3834.x;
float l9_3858=l9_3839.x;
float l9_3859=l9_3839.z;
bool l9_3860=l9_3856;
float l9_3861=l9_3844;
float l9_3862=fast::clamp(l9_3857,l9_3858,l9_3859);
float l9_3863=step(abs(l9_3857-l9_3862),9.9999997e-06);
l9_3861*=(l9_3863+((1.0-float(l9_3860))*(1.0-l9_3863)));
l9_3857=l9_3862;
l9_3834.x=l9_3857;
l9_3844=l9_3861;
bool l9_3864=l9_3840;
bool l9_3865;
if (l9_3864)
{
l9_3865=l9_3837.y==3;
}
else
{
l9_3865=l9_3864;
}
float l9_3866=l9_3834.y;
float l9_3867=l9_3839.y;
float l9_3868=l9_3839.w;
bool l9_3869=l9_3865;
float l9_3870=l9_3844;
float l9_3871=fast::clamp(l9_3866,l9_3867,l9_3868);
float l9_3872=step(abs(l9_3866-l9_3871),9.9999997e-06);
l9_3870*=(l9_3872+((1.0-float(l9_3869))*(1.0-l9_3872)));
l9_3866=l9_3871;
l9_3834.y=l9_3866;
l9_3844=l9_3870;
}
float2 l9_3873=l9_3834;
bool l9_3874=l9_3835;
float3x3 l9_3875=l9_3836;
if (l9_3874)
{
l9_3873=float2((l9_3875*float3(l9_3873,1.0)).xy);
}
float2 l9_3876=l9_3873;
l9_3834=l9_3876;
float l9_3877=l9_3834.x;
int l9_3878=l9_3837.x;
bool l9_3879=l9_3843;
float l9_3880=l9_3844;
if ((l9_3878==0)||(l9_3878==3))
{
float l9_3881=l9_3877;
float l9_3882=0.0;
float l9_3883=1.0;
bool l9_3884=l9_3879;
float l9_3885=l9_3880;
float l9_3886=fast::clamp(l9_3881,l9_3882,l9_3883);
float l9_3887=step(abs(l9_3881-l9_3886),9.9999997e-06);
l9_3885*=(l9_3887+((1.0-float(l9_3884))*(1.0-l9_3887)));
l9_3881=l9_3886;
l9_3877=l9_3881;
l9_3880=l9_3885;
}
l9_3834.x=l9_3877;
l9_3844=l9_3880;
float l9_3888=l9_3834.y;
int l9_3889=l9_3837.y;
bool l9_3890=l9_3843;
float l9_3891=l9_3844;
if ((l9_3889==0)||(l9_3889==3))
{
float l9_3892=l9_3888;
float l9_3893=0.0;
float l9_3894=1.0;
bool l9_3895=l9_3890;
float l9_3896=l9_3891;
float l9_3897=fast::clamp(l9_3892,l9_3893,l9_3894);
float l9_3898=step(abs(l9_3892-l9_3897),9.9999997e-06);
l9_3896*=(l9_3898+((1.0-float(l9_3895))*(1.0-l9_3898)));
l9_3892=l9_3897;
l9_3888=l9_3892;
l9_3891=l9_3896;
}
l9_3834.y=l9_3888;
l9_3844=l9_3891;
float2 l9_3899=l9_3834;
int l9_3900=l9_3832;
int l9_3901=l9_3833;
float l9_3902=l9_3842;
float2 l9_3903=l9_3899;
int l9_3904=l9_3900;
int l9_3905=l9_3901;
float3 l9_3906=float3(0.0);
if (l9_3904==0)
{
l9_3906=float3(l9_3903,0.0);
}
else
{
if (l9_3904==1)
{
l9_3906=float3(l9_3903.x,(l9_3903.y*0.5)+(0.5-(float(l9_3905)*0.5)),0.0);
}
else
{
l9_3906=float3(l9_3903,float(l9_3905));
}
}
float3 l9_3907=l9_3906;
float3 l9_3908=l9_3907;
float4 l9_3909=sc_set0.rimColorTex.sample(sc_set0.rimColorTexSmpSC,l9_3908.xy,bias(l9_3902));
float4 l9_3910=l9_3909;
if (l9_3840)
{
l9_3910=mix(l9_3841,l9_3910,float4(l9_3844));
}
float4 l9_3911=l9_3910;
l9_3825=l9_3911;
l9_3612=l9_3825.xyz;
l9_3615=l9_3612;
}
else
{
l9_3615=l9_3613;
}
l9_3611=l9_3615;
float3 l9_3912=float3(0.0);
l9_3912=(l9_3607*float3(l9_3610))*l9_3611;
float3 l9_3913=float3(0.0);
float3 l9_3914=l9_3912;
float3 l9_3915;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_3915=float3(pow(l9_3914.x,2.2),pow(l9_3914.y,2.2),pow(l9_3914.z,2.2));
}
else
{
l9_3915=l9_3914*l9_3914;
}
float3 l9_3916=l9_3915;
l9_3913=l9_3916;
float l9_3917=0.0;
float l9_3918=0.0;
float l9_3919=0.0;
ssGlobals l9_3920=param_24;
float l9_3921;
if ((int(rimInvert_tmp)!=0))
{
float3 l9_3922=float3(0.0);
float3 l9_3923=float3(0.0);
float3 l9_3924=float3(0.0);
ssGlobals l9_3925=l9_3920;
float3 l9_3926;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_3927=float3(0.0);
l9_3927=l9_3925.VertexTangent_WorldSpace;
float3 l9_3928=float3(0.0);
l9_3928=l9_3925.VertexBinormal_WorldSpace;
float3 l9_3929=float3(0.0);
l9_3929=l9_3925.VertexNormal_WorldSpace;
float3x3 l9_3930=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_3930=float3x3(float3(l9_3927),float3(l9_3928),float3(l9_3929));
float2 l9_3931=float2(0.0);
float2 l9_3932=float2(0.0);
float2 l9_3933=float2(0.0);
float2 l9_3934=float2(0.0);
float2 l9_3935=float2(0.0);
float2 l9_3936=float2(0.0);
ssGlobals l9_3937=l9_3925;
float2 l9_3938;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_3939=float2(0.0);
l9_3939=l9_3937.Surface_UVCoord0;
l9_3932=l9_3939;
l9_3938=l9_3932;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_3940=float2(0.0);
l9_3940=l9_3937.Surface_UVCoord1;
l9_3933=l9_3940;
l9_3938=l9_3933;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_3941=float2(0.0);
l9_3941=l9_3937.Surface_UVCoord0;
float2 l9_3942=float2(0.0);
float2 l9_3943=float2(0.0);
float2 l9_3944=float2(0.0);
ssGlobals l9_3945=l9_3937;
float2 l9_3946;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3947=float2(0.0);
float2 l9_3948=float2(0.0);
float2 l9_3949=float2(0.0);
float2 l9_3950=float2(0.0);
float2 l9_3951=float2(0.0);
ssGlobals l9_3952=l9_3945;
float2 l9_3953;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3954=float2(0.0);
l9_3954=l9_3952.Surface_UVCoord0;
l9_3948=l9_3954;
l9_3953=l9_3948;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3955=float2(0.0);
l9_3955=l9_3952.Surface_UVCoord1;
l9_3949=l9_3955;
l9_3953=l9_3949;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3956=float2(0.0);
l9_3956=l9_3952.gScreenCoord;
l9_3950=l9_3956;
l9_3953=l9_3950;
}
else
{
float2 l9_3957=float2(0.0);
l9_3957=l9_3952.Surface_UVCoord0;
l9_3951=l9_3957;
l9_3953=l9_3951;
}
}
}
l9_3947=l9_3953;
float2 l9_3958=float2(0.0);
float2 l9_3959=(*sc_set0.UserUniforms).uv2Scale;
l9_3958=l9_3959;
float2 l9_3960=float2(0.0);
l9_3960=l9_3958;
float2 l9_3961=float2(0.0);
float2 l9_3962=(*sc_set0.UserUniforms).uv2Offset;
l9_3961=l9_3962;
float2 l9_3963=float2(0.0);
l9_3963=l9_3961;
float2 l9_3964=float2(0.0);
l9_3964=(l9_3947*l9_3960)+l9_3963;
float2 l9_3965=float2(0.0);
l9_3965=l9_3964+(l9_3963*(l9_3945.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3943=l9_3965;
l9_3946=l9_3943;
}
else
{
float2 l9_3966=float2(0.0);
float2 l9_3967=float2(0.0);
float2 l9_3968=float2(0.0);
float2 l9_3969=float2(0.0);
float2 l9_3970=float2(0.0);
ssGlobals l9_3971=l9_3945;
float2 l9_3972;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3973=float2(0.0);
l9_3973=l9_3971.Surface_UVCoord0;
l9_3967=l9_3973;
l9_3972=l9_3967;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3974=float2(0.0);
l9_3974=l9_3971.Surface_UVCoord1;
l9_3968=l9_3974;
l9_3972=l9_3968;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3975=float2(0.0);
l9_3975=l9_3971.gScreenCoord;
l9_3969=l9_3975;
l9_3972=l9_3969;
}
else
{
float2 l9_3976=float2(0.0);
l9_3976=l9_3971.Surface_UVCoord0;
l9_3970=l9_3976;
l9_3972=l9_3970;
}
}
}
l9_3966=l9_3972;
float2 l9_3977=float2(0.0);
float2 l9_3978=(*sc_set0.UserUniforms).uv2Scale;
l9_3977=l9_3978;
float2 l9_3979=float2(0.0);
l9_3979=l9_3977;
float2 l9_3980=float2(0.0);
float2 l9_3981=(*sc_set0.UserUniforms).uv2Offset;
l9_3980=l9_3981;
float2 l9_3982=float2(0.0);
l9_3982=l9_3980;
float2 l9_3983=float2(0.0);
l9_3983=(l9_3966*l9_3979)+l9_3982;
l9_3944=l9_3983;
l9_3946=l9_3944;
}
l9_3942=l9_3946;
float l9_3984=0.0;
float l9_3985;
if ((int(Tweak_N67_tmp)!=0))
{
l9_3985=1.001;
}
else
{
l9_3985=0.001;
}
l9_3985-=0.001;
l9_3984=l9_3985;
float l9_3986=0.0;
l9_3986=l9_3984;
float2 l9_3987=float2(0.0);
l9_3987=mix(l9_3941,l9_3942,float2(l9_3986));
float2 l9_3988=float2(0.0);
l9_3988=l9_3987;
float2 l9_3989=float2(0.0);
l9_3989=l9_3988;
l9_3934=l9_3989;
l9_3938=l9_3934;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_3990=float2(0.0);
l9_3990=l9_3937.Surface_UVCoord0;
float2 l9_3991=float2(0.0);
float2 l9_3992=float2(0.0);
float2 l9_3993=float2(0.0);
ssGlobals l9_3994=l9_3937;
float2 l9_3995;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_3996=float2(0.0);
float2 l9_3997=float2(0.0);
float2 l9_3998=float2(0.0);
float2 l9_3999=float2(0.0);
float2 l9_4000=float2(0.0);
float2 l9_4001=float2(0.0);
ssGlobals l9_4002=l9_3994;
float2 l9_4003;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4004=float2(0.0);
l9_4004=l9_4002.Surface_UVCoord0;
l9_3997=l9_4004;
l9_4003=l9_3997;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4005=float2(0.0);
l9_4005=l9_4002.Surface_UVCoord1;
l9_3998=l9_4005;
l9_4003=l9_3998;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4006=float2(0.0);
l9_4006=l9_4002.gScreenCoord;
l9_3999=l9_4006;
l9_4003=l9_3999;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4007=float2(0.0);
l9_4007=l9_4002.Surface_UVCoord0;
float2 l9_4008=float2(0.0);
float2 l9_4009=float2(0.0);
float2 l9_4010=float2(0.0);
ssGlobals l9_4011=l9_4002;
float2 l9_4012;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4013=float2(0.0);
float2 l9_4014=float2(0.0);
float2 l9_4015=float2(0.0);
float2 l9_4016=float2(0.0);
float2 l9_4017=float2(0.0);
ssGlobals l9_4018=l9_4011;
float2 l9_4019;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4020=float2(0.0);
l9_4020=l9_4018.Surface_UVCoord0;
l9_4014=l9_4020;
l9_4019=l9_4014;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4021=float2(0.0);
l9_4021=l9_4018.Surface_UVCoord1;
l9_4015=l9_4021;
l9_4019=l9_4015;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4022=float2(0.0);
l9_4022=l9_4018.gScreenCoord;
l9_4016=l9_4022;
l9_4019=l9_4016;
}
else
{
float2 l9_4023=float2(0.0);
l9_4023=l9_4018.Surface_UVCoord0;
l9_4017=l9_4023;
l9_4019=l9_4017;
}
}
}
l9_4013=l9_4019;
float2 l9_4024=float2(0.0);
float2 l9_4025=(*sc_set0.UserUniforms).uv2Scale;
l9_4024=l9_4025;
float2 l9_4026=float2(0.0);
l9_4026=l9_4024;
float2 l9_4027=float2(0.0);
float2 l9_4028=(*sc_set0.UserUniforms).uv2Offset;
l9_4027=l9_4028;
float2 l9_4029=float2(0.0);
l9_4029=l9_4027;
float2 l9_4030=float2(0.0);
l9_4030=(l9_4013*l9_4026)+l9_4029;
float2 l9_4031=float2(0.0);
l9_4031=l9_4030+(l9_4029*(l9_4011.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4009=l9_4031;
l9_4012=l9_4009;
}
else
{
float2 l9_4032=float2(0.0);
float2 l9_4033=float2(0.0);
float2 l9_4034=float2(0.0);
float2 l9_4035=float2(0.0);
float2 l9_4036=float2(0.0);
ssGlobals l9_4037=l9_4011;
float2 l9_4038;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4039=float2(0.0);
l9_4039=l9_4037.Surface_UVCoord0;
l9_4033=l9_4039;
l9_4038=l9_4033;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4040=float2(0.0);
l9_4040=l9_4037.Surface_UVCoord1;
l9_4034=l9_4040;
l9_4038=l9_4034;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4041=float2(0.0);
l9_4041=l9_4037.gScreenCoord;
l9_4035=l9_4041;
l9_4038=l9_4035;
}
else
{
float2 l9_4042=float2(0.0);
l9_4042=l9_4037.Surface_UVCoord0;
l9_4036=l9_4042;
l9_4038=l9_4036;
}
}
}
l9_4032=l9_4038;
float2 l9_4043=float2(0.0);
float2 l9_4044=(*sc_set0.UserUniforms).uv2Scale;
l9_4043=l9_4044;
float2 l9_4045=float2(0.0);
l9_4045=l9_4043;
float2 l9_4046=float2(0.0);
float2 l9_4047=(*sc_set0.UserUniforms).uv2Offset;
l9_4046=l9_4047;
float2 l9_4048=float2(0.0);
l9_4048=l9_4046;
float2 l9_4049=float2(0.0);
l9_4049=(l9_4032*l9_4045)+l9_4048;
l9_4010=l9_4049;
l9_4012=l9_4010;
}
l9_4008=l9_4012;
float l9_4050=0.0;
float l9_4051;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4051=1.001;
}
else
{
l9_4051=0.001;
}
l9_4051-=0.001;
l9_4050=l9_4051;
float l9_4052=0.0;
l9_4052=l9_4050;
float2 l9_4053=float2(0.0);
l9_4053=mix(l9_4007,l9_4008,float2(l9_4052));
float2 l9_4054=float2(0.0);
l9_4054=l9_4053;
float2 l9_4055=float2(0.0);
l9_4055=l9_4054;
l9_4000=l9_4055;
l9_4003=l9_4000;
}
else
{
float2 l9_4056=float2(0.0);
l9_4056=l9_4002.Surface_UVCoord0;
l9_4001=l9_4056;
l9_4003=l9_4001;
}
}
}
}
l9_3996=l9_4003;
float2 l9_4057=float2(0.0);
float2 l9_4058=(*sc_set0.UserUniforms).uv3Scale;
l9_4057=l9_4058;
float2 l9_4059=float2(0.0);
l9_4059=l9_4057;
float2 l9_4060=float2(0.0);
float2 l9_4061=(*sc_set0.UserUniforms).uv3Offset;
l9_4060=l9_4061;
float2 l9_4062=float2(0.0);
l9_4062=l9_4060;
float2 l9_4063=float2(0.0);
l9_4063=(l9_3996*l9_4059)+l9_4062;
float2 l9_4064=float2(0.0);
l9_4064=l9_4063+(l9_4062*(l9_3994.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_3992=l9_4064;
l9_3995=l9_3992;
}
else
{
float2 l9_4065=float2(0.0);
float2 l9_4066=float2(0.0);
float2 l9_4067=float2(0.0);
float2 l9_4068=float2(0.0);
float2 l9_4069=float2(0.0);
float2 l9_4070=float2(0.0);
ssGlobals l9_4071=l9_3994;
float2 l9_4072;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4073=float2(0.0);
l9_4073=l9_4071.Surface_UVCoord0;
l9_4066=l9_4073;
l9_4072=l9_4066;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4074=float2(0.0);
l9_4074=l9_4071.Surface_UVCoord1;
l9_4067=l9_4074;
l9_4072=l9_4067;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4075=float2(0.0);
l9_4075=l9_4071.gScreenCoord;
l9_4068=l9_4075;
l9_4072=l9_4068;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4076=float2(0.0);
l9_4076=l9_4071.Surface_UVCoord0;
float2 l9_4077=float2(0.0);
float2 l9_4078=float2(0.0);
float2 l9_4079=float2(0.0);
ssGlobals l9_4080=l9_4071;
float2 l9_4081;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4082=float2(0.0);
float2 l9_4083=float2(0.0);
float2 l9_4084=float2(0.0);
float2 l9_4085=float2(0.0);
float2 l9_4086=float2(0.0);
ssGlobals l9_4087=l9_4080;
float2 l9_4088;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4089=float2(0.0);
l9_4089=l9_4087.Surface_UVCoord0;
l9_4083=l9_4089;
l9_4088=l9_4083;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4090=float2(0.0);
l9_4090=l9_4087.Surface_UVCoord1;
l9_4084=l9_4090;
l9_4088=l9_4084;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4091=float2(0.0);
l9_4091=l9_4087.gScreenCoord;
l9_4085=l9_4091;
l9_4088=l9_4085;
}
else
{
float2 l9_4092=float2(0.0);
l9_4092=l9_4087.Surface_UVCoord0;
l9_4086=l9_4092;
l9_4088=l9_4086;
}
}
}
l9_4082=l9_4088;
float2 l9_4093=float2(0.0);
float2 l9_4094=(*sc_set0.UserUniforms).uv2Scale;
l9_4093=l9_4094;
float2 l9_4095=float2(0.0);
l9_4095=l9_4093;
float2 l9_4096=float2(0.0);
float2 l9_4097=(*sc_set0.UserUniforms).uv2Offset;
l9_4096=l9_4097;
float2 l9_4098=float2(0.0);
l9_4098=l9_4096;
float2 l9_4099=float2(0.0);
l9_4099=(l9_4082*l9_4095)+l9_4098;
float2 l9_4100=float2(0.0);
l9_4100=l9_4099+(l9_4098*(l9_4080.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4078=l9_4100;
l9_4081=l9_4078;
}
else
{
float2 l9_4101=float2(0.0);
float2 l9_4102=float2(0.0);
float2 l9_4103=float2(0.0);
float2 l9_4104=float2(0.0);
float2 l9_4105=float2(0.0);
ssGlobals l9_4106=l9_4080;
float2 l9_4107;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4108=float2(0.0);
l9_4108=l9_4106.Surface_UVCoord0;
l9_4102=l9_4108;
l9_4107=l9_4102;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4109=float2(0.0);
l9_4109=l9_4106.Surface_UVCoord1;
l9_4103=l9_4109;
l9_4107=l9_4103;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4110=float2(0.0);
l9_4110=l9_4106.gScreenCoord;
l9_4104=l9_4110;
l9_4107=l9_4104;
}
else
{
float2 l9_4111=float2(0.0);
l9_4111=l9_4106.Surface_UVCoord0;
l9_4105=l9_4111;
l9_4107=l9_4105;
}
}
}
l9_4101=l9_4107;
float2 l9_4112=float2(0.0);
float2 l9_4113=(*sc_set0.UserUniforms).uv2Scale;
l9_4112=l9_4113;
float2 l9_4114=float2(0.0);
l9_4114=l9_4112;
float2 l9_4115=float2(0.0);
float2 l9_4116=(*sc_set0.UserUniforms).uv2Offset;
l9_4115=l9_4116;
float2 l9_4117=float2(0.0);
l9_4117=l9_4115;
float2 l9_4118=float2(0.0);
l9_4118=(l9_4101*l9_4114)+l9_4117;
l9_4079=l9_4118;
l9_4081=l9_4079;
}
l9_4077=l9_4081;
float l9_4119=0.0;
float l9_4120;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4120=1.001;
}
else
{
l9_4120=0.001;
}
l9_4120-=0.001;
l9_4119=l9_4120;
float l9_4121=0.0;
l9_4121=l9_4119;
float2 l9_4122=float2(0.0);
l9_4122=mix(l9_4076,l9_4077,float2(l9_4121));
float2 l9_4123=float2(0.0);
l9_4123=l9_4122;
float2 l9_4124=float2(0.0);
l9_4124=l9_4123;
l9_4069=l9_4124;
l9_4072=l9_4069;
}
else
{
float2 l9_4125=float2(0.0);
l9_4125=l9_4071.Surface_UVCoord0;
l9_4070=l9_4125;
l9_4072=l9_4070;
}
}
}
}
l9_4065=l9_4072;
float2 l9_4126=float2(0.0);
float2 l9_4127=(*sc_set0.UserUniforms).uv3Scale;
l9_4126=l9_4127;
float2 l9_4128=float2(0.0);
l9_4128=l9_4126;
float2 l9_4129=float2(0.0);
float2 l9_4130=(*sc_set0.UserUniforms).uv3Offset;
l9_4129=l9_4130;
float2 l9_4131=float2(0.0);
l9_4131=l9_4129;
float2 l9_4132=float2(0.0);
l9_4132=(l9_4065*l9_4128)+l9_4131;
l9_3993=l9_4132;
l9_3995=l9_3993;
}
l9_3991=l9_3995;
float l9_4133=0.0;
float l9_4134;
if ((int(Tweak_N11_tmp)!=0))
{
l9_4134=1.001;
}
else
{
l9_4134=0.001;
}
l9_4134-=0.001;
l9_4133=l9_4134;
float l9_4135=0.0;
l9_4135=l9_4133;
float2 l9_4136=float2(0.0);
l9_4136=mix(l9_3990,l9_3991,float2(l9_4135));
float2 l9_4137=float2(0.0);
l9_4137=l9_4136;
float2 l9_4138=float2(0.0);
l9_4138=l9_4137;
l9_3935=l9_4138;
l9_3938=l9_3935;
}
else
{
float2 l9_4139=float2(0.0);
l9_4139=l9_3937.Surface_UVCoord0;
l9_3936=l9_4139;
l9_3938=l9_3936;
}
}
}
}
l9_3931=l9_3938;
float4 l9_4140=float4(0.0);
float2 l9_4141=l9_3931;
int l9_4142;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_4143=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4143=0;
}
else
{
l9_4143=in.varStereoViewID;
}
int l9_4144=l9_4143;
l9_4142=1-l9_4144;
}
else
{
int l9_4145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4145=0;
}
else
{
l9_4145=in.varStereoViewID;
}
int l9_4146=l9_4145;
l9_4142=l9_4146;
}
int l9_4147=l9_4142;
int l9_4148=normalTexLayout_tmp;
int l9_4149=l9_4147;
float2 l9_4150=l9_4141;
bool l9_4151=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_4152=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_4153=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_4154=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_4155=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_4156=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_4157=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_4158=0.0;
bool l9_4159=l9_4156&&(!l9_4154);
float l9_4160=1.0;
float l9_4161=l9_4150.x;
int l9_4162=l9_4153.x;
if (l9_4162==1)
{
l9_4161=fract(l9_4161);
}
else
{
if (l9_4162==2)
{
float l9_4163=fract(l9_4161);
float l9_4164=l9_4161-l9_4163;
float l9_4165=step(0.25,fract(l9_4164*0.5));
l9_4161=mix(l9_4163,1.0-l9_4163,fast::clamp(l9_4165,0.0,1.0));
}
}
l9_4150.x=l9_4161;
float l9_4166=l9_4150.y;
int l9_4167=l9_4153.y;
if (l9_4167==1)
{
l9_4166=fract(l9_4166);
}
else
{
if (l9_4167==2)
{
float l9_4168=fract(l9_4166);
float l9_4169=l9_4166-l9_4168;
float l9_4170=step(0.25,fract(l9_4169*0.5));
l9_4166=mix(l9_4168,1.0-l9_4168,fast::clamp(l9_4170,0.0,1.0));
}
}
l9_4150.y=l9_4166;
if (l9_4154)
{
bool l9_4171=l9_4156;
bool l9_4172;
if (l9_4171)
{
l9_4172=l9_4153.x==3;
}
else
{
l9_4172=l9_4171;
}
float l9_4173=l9_4150.x;
float l9_4174=l9_4155.x;
float l9_4175=l9_4155.z;
bool l9_4176=l9_4172;
float l9_4177=l9_4160;
float l9_4178=fast::clamp(l9_4173,l9_4174,l9_4175);
float l9_4179=step(abs(l9_4173-l9_4178),9.9999997e-06);
l9_4177*=(l9_4179+((1.0-float(l9_4176))*(1.0-l9_4179)));
l9_4173=l9_4178;
l9_4150.x=l9_4173;
l9_4160=l9_4177;
bool l9_4180=l9_4156;
bool l9_4181;
if (l9_4180)
{
l9_4181=l9_4153.y==3;
}
else
{
l9_4181=l9_4180;
}
float l9_4182=l9_4150.y;
float l9_4183=l9_4155.y;
float l9_4184=l9_4155.w;
bool l9_4185=l9_4181;
float l9_4186=l9_4160;
float l9_4187=fast::clamp(l9_4182,l9_4183,l9_4184);
float l9_4188=step(abs(l9_4182-l9_4187),9.9999997e-06);
l9_4186*=(l9_4188+((1.0-float(l9_4185))*(1.0-l9_4188)));
l9_4182=l9_4187;
l9_4150.y=l9_4182;
l9_4160=l9_4186;
}
float2 l9_4189=l9_4150;
bool l9_4190=l9_4151;
float3x3 l9_4191=l9_4152;
if (l9_4190)
{
l9_4189=float2((l9_4191*float3(l9_4189,1.0)).xy);
}
float2 l9_4192=l9_4189;
l9_4150=l9_4192;
float l9_4193=l9_4150.x;
int l9_4194=l9_4153.x;
bool l9_4195=l9_4159;
float l9_4196=l9_4160;
if ((l9_4194==0)||(l9_4194==3))
{
float l9_4197=l9_4193;
float l9_4198=0.0;
float l9_4199=1.0;
bool l9_4200=l9_4195;
float l9_4201=l9_4196;
float l9_4202=fast::clamp(l9_4197,l9_4198,l9_4199);
float l9_4203=step(abs(l9_4197-l9_4202),9.9999997e-06);
l9_4201*=(l9_4203+((1.0-float(l9_4200))*(1.0-l9_4203)));
l9_4197=l9_4202;
l9_4193=l9_4197;
l9_4196=l9_4201;
}
l9_4150.x=l9_4193;
l9_4160=l9_4196;
float l9_4204=l9_4150.y;
int l9_4205=l9_4153.y;
bool l9_4206=l9_4159;
float l9_4207=l9_4160;
if ((l9_4205==0)||(l9_4205==3))
{
float l9_4208=l9_4204;
float l9_4209=0.0;
float l9_4210=1.0;
bool l9_4211=l9_4206;
float l9_4212=l9_4207;
float l9_4213=fast::clamp(l9_4208,l9_4209,l9_4210);
float l9_4214=step(abs(l9_4208-l9_4213),9.9999997e-06);
l9_4212*=(l9_4214+((1.0-float(l9_4211))*(1.0-l9_4214)));
l9_4208=l9_4213;
l9_4204=l9_4208;
l9_4207=l9_4212;
}
l9_4150.y=l9_4204;
l9_4160=l9_4207;
float2 l9_4215=l9_4150;
int l9_4216=l9_4148;
int l9_4217=l9_4149;
float l9_4218=l9_4158;
float2 l9_4219=l9_4215;
int l9_4220=l9_4216;
int l9_4221=l9_4217;
float3 l9_4222=float3(0.0);
if (l9_4220==0)
{
l9_4222=float3(l9_4219,0.0);
}
else
{
if (l9_4220==1)
{
l9_4222=float3(l9_4219.x,(l9_4219.y*0.5)+(0.5-(float(l9_4221)*0.5)),0.0);
}
else
{
l9_4222=float3(l9_4219,float(l9_4221));
}
}
float3 l9_4223=l9_4222;
float3 l9_4224=l9_4223;
float4 l9_4225=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_4224.xy,bias(l9_4218));
float4 l9_4226=l9_4225;
if (l9_4156)
{
l9_4226=mix(l9_4157,l9_4226,float4(l9_4160));
}
float4 l9_4227=l9_4226;
float4 l9_4228=l9_4227;
float3 l9_4229=(l9_4228.xyz*1.9921875)-float3(1.0);
l9_4228=float4(l9_4229.x,l9_4229.y,l9_4229.z,l9_4228.w);
l9_4140=l9_4228;
float3 l9_4230=float3(0.0);
float3 l9_4231=float3(0.0);
float3 l9_4232=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_4233=l9_3925;
float3 l9_4234;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_4235=float2(0.0);
float2 l9_4236=float2(0.0);
float2 l9_4237=float2(0.0);
float2 l9_4238=float2(0.0);
float2 l9_4239=float2(0.0);
float2 l9_4240=float2(0.0);
ssGlobals l9_4241=l9_4233;
float2 l9_4242;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_4243=float2(0.0);
l9_4243=l9_4241.Surface_UVCoord0;
l9_4236=l9_4243;
l9_4242=l9_4236;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_4244=float2(0.0);
l9_4244=l9_4241.Surface_UVCoord1;
l9_4237=l9_4244;
l9_4242=l9_4237;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_4245=float2(0.0);
l9_4245=l9_4241.Surface_UVCoord0;
float2 l9_4246=float2(0.0);
float2 l9_4247=float2(0.0);
float2 l9_4248=float2(0.0);
ssGlobals l9_4249=l9_4241;
float2 l9_4250;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4251=float2(0.0);
float2 l9_4252=float2(0.0);
float2 l9_4253=float2(0.0);
float2 l9_4254=float2(0.0);
float2 l9_4255=float2(0.0);
ssGlobals l9_4256=l9_4249;
float2 l9_4257;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4258=float2(0.0);
l9_4258=l9_4256.Surface_UVCoord0;
l9_4252=l9_4258;
l9_4257=l9_4252;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4259=float2(0.0);
l9_4259=l9_4256.Surface_UVCoord1;
l9_4253=l9_4259;
l9_4257=l9_4253;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4260=float2(0.0);
l9_4260=l9_4256.gScreenCoord;
l9_4254=l9_4260;
l9_4257=l9_4254;
}
else
{
float2 l9_4261=float2(0.0);
l9_4261=l9_4256.Surface_UVCoord0;
l9_4255=l9_4261;
l9_4257=l9_4255;
}
}
}
l9_4251=l9_4257;
float2 l9_4262=float2(0.0);
float2 l9_4263=(*sc_set0.UserUniforms).uv2Scale;
l9_4262=l9_4263;
float2 l9_4264=float2(0.0);
l9_4264=l9_4262;
float2 l9_4265=float2(0.0);
float2 l9_4266=(*sc_set0.UserUniforms).uv2Offset;
l9_4265=l9_4266;
float2 l9_4267=float2(0.0);
l9_4267=l9_4265;
float2 l9_4268=float2(0.0);
l9_4268=(l9_4251*l9_4264)+l9_4267;
float2 l9_4269=float2(0.0);
l9_4269=l9_4268+(l9_4267*(l9_4249.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4247=l9_4269;
l9_4250=l9_4247;
}
else
{
float2 l9_4270=float2(0.0);
float2 l9_4271=float2(0.0);
float2 l9_4272=float2(0.0);
float2 l9_4273=float2(0.0);
float2 l9_4274=float2(0.0);
ssGlobals l9_4275=l9_4249;
float2 l9_4276;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4277=float2(0.0);
l9_4277=l9_4275.Surface_UVCoord0;
l9_4271=l9_4277;
l9_4276=l9_4271;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4278=float2(0.0);
l9_4278=l9_4275.Surface_UVCoord1;
l9_4272=l9_4278;
l9_4276=l9_4272;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4279=float2(0.0);
l9_4279=l9_4275.gScreenCoord;
l9_4273=l9_4279;
l9_4276=l9_4273;
}
else
{
float2 l9_4280=float2(0.0);
l9_4280=l9_4275.Surface_UVCoord0;
l9_4274=l9_4280;
l9_4276=l9_4274;
}
}
}
l9_4270=l9_4276;
float2 l9_4281=float2(0.0);
float2 l9_4282=(*sc_set0.UserUniforms).uv2Scale;
l9_4281=l9_4282;
float2 l9_4283=float2(0.0);
l9_4283=l9_4281;
float2 l9_4284=float2(0.0);
float2 l9_4285=(*sc_set0.UserUniforms).uv2Offset;
l9_4284=l9_4285;
float2 l9_4286=float2(0.0);
l9_4286=l9_4284;
float2 l9_4287=float2(0.0);
l9_4287=(l9_4270*l9_4283)+l9_4286;
l9_4248=l9_4287;
l9_4250=l9_4248;
}
l9_4246=l9_4250;
float l9_4288=0.0;
float l9_4289;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4289=1.001;
}
else
{
l9_4289=0.001;
}
l9_4289-=0.001;
l9_4288=l9_4289;
float l9_4290=0.0;
l9_4290=l9_4288;
float2 l9_4291=float2(0.0);
l9_4291=mix(l9_4245,l9_4246,float2(l9_4290));
float2 l9_4292=float2(0.0);
l9_4292=l9_4291;
float2 l9_4293=float2(0.0);
l9_4293=l9_4292;
l9_4238=l9_4293;
l9_4242=l9_4238;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_4294=float2(0.0);
l9_4294=l9_4241.Surface_UVCoord0;
float2 l9_4295=float2(0.0);
float2 l9_4296=float2(0.0);
float2 l9_4297=float2(0.0);
ssGlobals l9_4298=l9_4241;
float2 l9_4299;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_4300=float2(0.0);
float2 l9_4301=float2(0.0);
float2 l9_4302=float2(0.0);
float2 l9_4303=float2(0.0);
float2 l9_4304=float2(0.0);
float2 l9_4305=float2(0.0);
ssGlobals l9_4306=l9_4298;
float2 l9_4307;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4308=float2(0.0);
l9_4308=l9_4306.Surface_UVCoord0;
l9_4301=l9_4308;
l9_4307=l9_4301;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4309=float2(0.0);
l9_4309=l9_4306.Surface_UVCoord1;
l9_4302=l9_4309;
l9_4307=l9_4302;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4310=float2(0.0);
l9_4310=l9_4306.gScreenCoord;
l9_4303=l9_4310;
l9_4307=l9_4303;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4311=float2(0.0);
l9_4311=l9_4306.Surface_UVCoord0;
float2 l9_4312=float2(0.0);
float2 l9_4313=float2(0.0);
float2 l9_4314=float2(0.0);
ssGlobals l9_4315=l9_4306;
float2 l9_4316;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4317=float2(0.0);
float2 l9_4318=float2(0.0);
float2 l9_4319=float2(0.0);
float2 l9_4320=float2(0.0);
float2 l9_4321=float2(0.0);
ssGlobals l9_4322=l9_4315;
float2 l9_4323;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4324=float2(0.0);
l9_4324=l9_4322.Surface_UVCoord0;
l9_4318=l9_4324;
l9_4323=l9_4318;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4325=float2(0.0);
l9_4325=l9_4322.Surface_UVCoord1;
l9_4319=l9_4325;
l9_4323=l9_4319;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4326=float2(0.0);
l9_4326=l9_4322.gScreenCoord;
l9_4320=l9_4326;
l9_4323=l9_4320;
}
else
{
float2 l9_4327=float2(0.0);
l9_4327=l9_4322.Surface_UVCoord0;
l9_4321=l9_4327;
l9_4323=l9_4321;
}
}
}
l9_4317=l9_4323;
float2 l9_4328=float2(0.0);
float2 l9_4329=(*sc_set0.UserUniforms).uv2Scale;
l9_4328=l9_4329;
float2 l9_4330=float2(0.0);
l9_4330=l9_4328;
float2 l9_4331=float2(0.0);
float2 l9_4332=(*sc_set0.UserUniforms).uv2Offset;
l9_4331=l9_4332;
float2 l9_4333=float2(0.0);
l9_4333=l9_4331;
float2 l9_4334=float2(0.0);
l9_4334=(l9_4317*l9_4330)+l9_4333;
float2 l9_4335=float2(0.0);
l9_4335=l9_4334+(l9_4333*(l9_4315.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4313=l9_4335;
l9_4316=l9_4313;
}
else
{
float2 l9_4336=float2(0.0);
float2 l9_4337=float2(0.0);
float2 l9_4338=float2(0.0);
float2 l9_4339=float2(0.0);
float2 l9_4340=float2(0.0);
ssGlobals l9_4341=l9_4315;
float2 l9_4342;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4343=float2(0.0);
l9_4343=l9_4341.Surface_UVCoord0;
l9_4337=l9_4343;
l9_4342=l9_4337;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4344=float2(0.0);
l9_4344=l9_4341.Surface_UVCoord1;
l9_4338=l9_4344;
l9_4342=l9_4338;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4345=float2(0.0);
l9_4345=l9_4341.gScreenCoord;
l9_4339=l9_4345;
l9_4342=l9_4339;
}
else
{
float2 l9_4346=float2(0.0);
l9_4346=l9_4341.Surface_UVCoord0;
l9_4340=l9_4346;
l9_4342=l9_4340;
}
}
}
l9_4336=l9_4342;
float2 l9_4347=float2(0.0);
float2 l9_4348=(*sc_set0.UserUniforms).uv2Scale;
l9_4347=l9_4348;
float2 l9_4349=float2(0.0);
l9_4349=l9_4347;
float2 l9_4350=float2(0.0);
float2 l9_4351=(*sc_set0.UserUniforms).uv2Offset;
l9_4350=l9_4351;
float2 l9_4352=float2(0.0);
l9_4352=l9_4350;
float2 l9_4353=float2(0.0);
l9_4353=(l9_4336*l9_4349)+l9_4352;
l9_4314=l9_4353;
l9_4316=l9_4314;
}
l9_4312=l9_4316;
float l9_4354=0.0;
float l9_4355;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4355=1.001;
}
else
{
l9_4355=0.001;
}
l9_4355-=0.001;
l9_4354=l9_4355;
float l9_4356=0.0;
l9_4356=l9_4354;
float2 l9_4357=float2(0.0);
l9_4357=mix(l9_4311,l9_4312,float2(l9_4356));
float2 l9_4358=float2(0.0);
l9_4358=l9_4357;
float2 l9_4359=float2(0.0);
l9_4359=l9_4358;
l9_4304=l9_4359;
l9_4307=l9_4304;
}
else
{
float2 l9_4360=float2(0.0);
l9_4360=l9_4306.Surface_UVCoord0;
l9_4305=l9_4360;
l9_4307=l9_4305;
}
}
}
}
l9_4300=l9_4307;
float2 l9_4361=float2(0.0);
float2 l9_4362=(*sc_set0.UserUniforms).uv3Scale;
l9_4361=l9_4362;
float2 l9_4363=float2(0.0);
l9_4363=l9_4361;
float2 l9_4364=float2(0.0);
float2 l9_4365=(*sc_set0.UserUniforms).uv3Offset;
l9_4364=l9_4365;
float2 l9_4366=float2(0.0);
l9_4366=l9_4364;
float2 l9_4367=float2(0.0);
l9_4367=(l9_4300*l9_4363)+l9_4366;
float2 l9_4368=float2(0.0);
l9_4368=l9_4367+(l9_4366*(l9_4298.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_4296=l9_4368;
l9_4299=l9_4296;
}
else
{
float2 l9_4369=float2(0.0);
float2 l9_4370=float2(0.0);
float2 l9_4371=float2(0.0);
float2 l9_4372=float2(0.0);
float2 l9_4373=float2(0.0);
float2 l9_4374=float2(0.0);
ssGlobals l9_4375=l9_4298;
float2 l9_4376;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4377=float2(0.0);
l9_4377=l9_4375.Surface_UVCoord0;
l9_4370=l9_4377;
l9_4376=l9_4370;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4378=float2(0.0);
l9_4378=l9_4375.Surface_UVCoord1;
l9_4371=l9_4378;
l9_4376=l9_4371;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4379=float2(0.0);
l9_4379=l9_4375.gScreenCoord;
l9_4372=l9_4379;
l9_4376=l9_4372;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4380=float2(0.0);
l9_4380=l9_4375.Surface_UVCoord0;
float2 l9_4381=float2(0.0);
float2 l9_4382=float2(0.0);
float2 l9_4383=float2(0.0);
ssGlobals l9_4384=l9_4375;
float2 l9_4385;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4386=float2(0.0);
float2 l9_4387=float2(0.0);
float2 l9_4388=float2(0.0);
float2 l9_4389=float2(0.0);
float2 l9_4390=float2(0.0);
ssGlobals l9_4391=l9_4384;
float2 l9_4392;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4393=float2(0.0);
l9_4393=l9_4391.Surface_UVCoord0;
l9_4387=l9_4393;
l9_4392=l9_4387;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4394=float2(0.0);
l9_4394=l9_4391.Surface_UVCoord1;
l9_4388=l9_4394;
l9_4392=l9_4388;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4395=float2(0.0);
l9_4395=l9_4391.gScreenCoord;
l9_4389=l9_4395;
l9_4392=l9_4389;
}
else
{
float2 l9_4396=float2(0.0);
l9_4396=l9_4391.Surface_UVCoord0;
l9_4390=l9_4396;
l9_4392=l9_4390;
}
}
}
l9_4386=l9_4392;
float2 l9_4397=float2(0.0);
float2 l9_4398=(*sc_set0.UserUniforms).uv2Scale;
l9_4397=l9_4398;
float2 l9_4399=float2(0.0);
l9_4399=l9_4397;
float2 l9_4400=float2(0.0);
float2 l9_4401=(*sc_set0.UserUniforms).uv2Offset;
l9_4400=l9_4401;
float2 l9_4402=float2(0.0);
l9_4402=l9_4400;
float2 l9_4403=float2(0.0);
l9_4403=(l9_4386*l9_4399)+l9_4402;
float2 l9_4404=float2(0.0);
l9_4404=l9_4403+(l9_4402*(l9_4384.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4382=l9_4404;
l9_4385=l9_4382;
}
else
{
float2 l9_4405=float2(0.0);
float2 l9_4406=float2(0.0);
float2 l9_4407=float2(0.0);
float2 l9_4408=float2(0.0);
float2 l9_4409=float2(0.0);
ssGlobals l9_4410=l9_4384;
float2 l9_4411;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4412=float2(0.0);
l9_4412=l9_4410.Surface_UVCoord0;
l9_4406=l9_4412;
l9_4411=l9_4406;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4413=float2(0.0);
l9_4413=l9_4410.Surface_UVCoord1;
l9_4407=l9_4413;
l9_4411=l9_4407;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4414=float2(0.0);
l9_4414=l9_4410.gScreenCoord;
l9_4408=l9_4414;
l9_4411=l9_4408;
}
else
{
float2 l9_4415=float2(0.0);
l9_4415=l9_4410.Surface_UVCoord0;
l9_4409=l9_4415;
l9_4411=l9_4409;
}
}
}
l9_4405=l9_4411;
float2 l9_4416=float2(0.0);
float2 l9_4417=(*sc_set0.UserUniforms).uv2Scale;
l9_4416=l9_4417;
float2 l9_4418=float2(0.0);
l9_4418=l9_4416;
float2 l9_4419=float2(0.0);
float2 l9_4420=(*sc_set0.UserUniforms).uv2Offset;
l9_4419=l9_4420;
float2 l9_4421=float2(0.0);
l9_4421=l9_4419;
float2 l9_4422=float2(0.0);
l9_4422=(l9_4405*l9_4418)+l9_4421;
l9_4383=l9_4422;
l9_4385=l9_4383;
}
l9_4381=l9_4385;
float l9_4423=0.0;
float l9_4424;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4424=1.001;
}
else
{
l9_4424=0.001;
}
l9_4424-=0.001;
l9_4423=l9_4424;
float l9_4425=0.0;
l9_4425=l9_4423;
float2 l9_4426=float2(0.0);
l9_4426=mix(l9_4380,l9_4381,float2(l9_4425));
float2 l9_4427=float2(0.0);
l9_4427=l9_4426;
float2 l9_4428=float2(0.0);
l9_4428=l9_4427;
l9_4373=l9_4428;
l9_4376=l9_4373;
}
else
{
float2 l9_4429=float2(0.0);
l9_4429=l9_4375.Surface_UVCoord0;
l9_4374=l9_4429;
l9_4376=l9_4374;
}
}
}
}
l9_4369=l9_4376;
float2 l9_4430=float2(0.0);
float2 l9_4431=(*sc_set0.UserUniforms).uv3Scale;
l9_4430=l9_4431;
float2 l9_4432=float2(0.0);
l9_4432=l9_4430;
float2 l9_4433=float2(0.0);
float2 l9_4434=(*sc_set0.UserUniforms).uv3Offset;
l9_4433=l9_4434;
float2 l9_4435=float2(0.0);
l9_4435=l9_4433;
float2 l9_4436=float2(0.0);
l9_4436=(l9_4369*l9_4432)+l9_4435;
l9_4297=l9_4436;
l9_4299=l9_4297;
}
l9_4295=l9_4299;
float l9_4437=0.0;
float l9_4438;
if ((int(Tweak_N11_tmp)!=0))
{
l9_4438=1.001;
}
else
{
l9_4438=0.001;
}
l9_4438-=0.001;
l9_4437=l9_4438;
float l9_4439=0.0;
l9_4439=l9_4437;
float2 l9_4440=float2(0.0);
l9_4440=mix(l9_4294,l9_4295,float2(l9_4439));
float2 l9_4441=float2(0.0);
l9_4441=l9_4440;
float2 l9_4442=float2(0.0);
l9_4442=l9_4441;
l9_4239=l9_4442;
l9_4242=l9_4239;
}
else
{
float2 l9_4443=float2(0.0);
l9_4443=l9_4241.Surface_UVCoord0;
l9_4240=l9_4443;
l9_4242=l9_4240;
}
}
}
}
l9_4235=l9_4242;
float4 l9_4444=float4(0.0);
float2 l9_4445=l9_4235;
int l9_4446;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_4447=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4447=0;
}
else
{
l9_4447=in.varStereoViewID;
}
int l9_4448=l9_4447;
l9_4446=1-l9_4448;
}
else
{
int l9_4449=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4449=0;
}
else
{
l9_4449=in.varStereoViewID;
}
int l9_4450=l9_4449;
l9_4446=l9_4450;
}
int l9_4451=l9_4446;
int l9_4452=detailNormalTexLayout_tmp;
int l9_4453=l9_4451;
float2 l9_4454=l9_4445;
bool l9_4455=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_4456=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_4457=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_4458=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_4459=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_4460=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_4461=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_4462=0.0;
bool l9_4463=l9_4460&&(!l9_4458);
float l9_4464=1.0;
float l9_4465=l9_4454.x;
int l9_4466=l9_4457.x;
if (l9_4466==1)
{
l9_4465=fract(l9_4465);
}
else
{
if (l9_4466==2)
{
float l9_4467=fract(l9_4465);
float l9_4468=l9_4465-l9_4467;
float l9_4469=step(0.25,fract(l9_4468*0.5));
l9_4465=mix(l9_4467,1.0-l9_4467,fast::clamp(l9_4469,0.0,1.0));
}
}
l9_4454.x=l9_4465;
float l9_4470=l9_4454.y;
int l9_4471=l9_4457.y;
if (l9_4471==1)
{
l9_4470=fract(l9_4470);
}
else
{
if (l9_4471==2)
{
float l9_4472=fract(l9_4470);
float l9_4473=l9_4470-l9_4472;
float l9_4474=step(0.25,fract(l9_4473*0.5));
l9_4470=mix(l9_4472,1.0-l9_4472,fast::clamp(l9_4474,0.0,1.0));
}
}
l9_4454.y=l9_4470;
if (l9_4458)
{
bool l9_4475=l9_4460;
bool l9_4476;
if (l9_4475)
{
l9_4476=l9_4457.x==3;
}
else
{
l9_4476=l9_4475;
}
float l9_4477=l9_4454.x;
float l9_4478=l9_4459.x;
float l9_4479=l9_4459.z;
bool l9_4480=l9_4476;
float l9_4481=l9_4464;
float l9_4482=fast::clamp(l9_4477,l9_4478,l9_4479);
float l9_4483=step(abs(l9_4477-l9_4482),9.9999997e-06);
l9_4481*=(l9_4483+((1.0-float(l9_4480))*(1.0-l9_4483)));
l9_4477=l9_4482;
l9_4454.x=l9_4477;
l9_4464=l9_4481;
bool l9_4484=l9_4460;
bool l9_4485;
if (l9_4484)
{
l9_4485=l9_4457.y==3;
}
else
{
l9_4485=l9_4484;
}
float l9_4486=l9_4454.y;
float l9_4487=l9_4459.y;
float l9_4488=l9_4459.w;
bool l9_4489=l9_4485;
float l9_4490=l9_4464;
float l9_4491=fast::clamp(l9_4486,l9_4487,l9_4488);
float l9_4492=step(abs(l9_4486-l9_4491),9.9999997e-06);
l9_4490*=(l9_4492+((1.0-float(l9_4489))*(1.0-l9_4492)));
l9_4486=l9_4491;
l9_4454.y=l9_4486;
l9_4464=l9_4490;
}
float2 l9_4493=l9_4454;
bool l9_4494=l9_4455;
float3x3 l9_4495=l9_4456;
if (l9_4494)
{
l9_4493=float2((l9_4495*float3(l9_4493,1.0)).xy);
}
float2 l9_4496=l9_4493;
l9_4454=l9_4496;
float l9_4497=l9_4454.x;
int l9_4498=l9_4457.x;
bool l9_4499=l9_4463;
float l9_4500=l9_4464;
if ((l9_4498==0)||(l9_4498==3))
{
float l9_4501=l9_4497;
float l9_4502=0.0;
float l9_4503=1.0;
bool l9_4504=l9_4499;
float l9_4505=l9_4500;
float l9_4506=fast::clamp(l9_4501,l9_4502,l9_4503);
float l9_4507=step(abs(l9_4501-l9_4506),9.9999997e-06);
l9_4505*=(l9_4507+((1.0-float(l9_4504))*(1.0-l9_4507)));
l9_4501=l9_4506;
l9_4497=l9_4501;
l9_4500=l9_4505;
}
l9_4454.x=l9_4497;
l9_4464=l9_4500;
float l9_4508=l9_4454.y;
int l9_4509=l9_4457.y;
bool l9_4510=l9_4463;
float l9_4511=l9_4464;
if ((l9_4509==0)||(l9_4509==3))
{
float l9_4512=l9_4508;
float l9_4513=0.0;
float l9_4514=1.0;
bool l9_4515=l9_4510;
float l9_4516=l9_4511;
float l9_4517=fast::clamp(l9_4512,l9_4513,l9_4514);
float l9_4518=step(abs(l9_4512-l9_4517),9.9999997e-06);
l9_4516*=(l9_4518+((1.0-float(l9_4515))*(1.0-l9_4518)));
l9_4512=l9_4517;
l9_4508=l9_4512;
l9_4511=l9_4516;
}
l9_4454.y=l9_4508;
l9_4464=l9_4511;
float2 l9_4519=l9_4454;
int l9_4520=l9_4452;
int l9_4521=l9_4453;
float l9_4522=l9_4462;
float2 l9_4523=l9_4519;
int l9_4524=l9_4520;
int l9_4525=l9_4521;
float3 l9_4526=float3(0.0);
if (l9_4524==0)
{
l9_4526=float3(l9_4523,0.0);
}
else
{
if (l9_4524==1)
{
l9_4526=float3(l9_4523.x,(l9_4523.y*0.5)+(0.5-(float(l9_4525)*0.5)),0.0);
}
else
{
l9_4526=float3(l9_4523,float(l9_4525));
}
}
float3 l9_4527=l9_4526;
float3 l9_4528=l9_4527;
float4 l9_4529=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_4528.xy,bias(l9_4522));
float4 l9_4530=l9_4529;
if (l9_4460)
{
l9_4530=mix(l9_4461,l9_4530,float4(l9_4464));
}
float4 l9_4531=l9_4530;
float4 l9_4532=l9_4531;
float3 l9_4533=(l9_4532.xyz*1.9921875)-float3(1.0);
l9_4532=float4(l9_4533.x,l9_4533.y,l9_4533.z,l9_4532.w);
l9_4444=l9_4532;
l9_4231=l9_4444.xyz;
l9_4234=l9_4231;
}
else
{
l9_4234=l9_4232;
}
l9_4230=l9_4234;
float3 l9_4534=float3(0.0);
float3 l9_4535=l9_4140.xyz;
float l9_4536=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_4537=l9_4230;
float l9_4538=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_4539=l9_4535;
float l9_4540=l9_4536;
float3 l9_4541=l9_4537;
float l9_4542=l9_4538;
float3 l9_4543=mix(float3(0.0,0.0,1.0),l9_4539,float3(l9_4540))+float3(0.0,0.0,1.0);
float3 l9_4544=mix(float3(0.0,0.0,1.0),l9_4541,float3(l9_4542))*float3(-1.0,-1.0,1.0);
float3 l9_4545=normalize((l9_4543*dot(l9_4543,l9_4544))-(l9_4544*l9_4543.z));
l9_4537=l9_4545;
float3 l9_4546=l9_4537;
l9_4534=l9_4546;
float3 l9_4547=float3(0.0);
l9_4547=l9_3930*l9_4534;
float3 l9_4548=float3(0.0);
float3 l9_4549=l9_4547;
float l9_4550=dot(l9_4549,l9_4549);
float l9_4551;
if (l9_4550>0.0)
{
l9_4551=1.0/sqrt(l9_4550);
}
else
{
l9_4551=0.0;
}
float l9_4552=l9_4551;
float3 l9_4553=l9_4549*l9_4552;
l9_4548=l9_4553;
l9_3923=l9_4548;
l9_3926=l9_3923;
}
else
{
float3 l9_4554=float3(0.0);
l9_4554=l9_3925.VertexNormal_WorldSpace;
float3 l9_4555=float3(0.0);
float3 l9_4556=l9_4554;
float l9_4557=dot(l9_4556,l9_4556);
float l9_4558;
if (l9_4557>0.0)
{
l9_4558=1.0/sqrt(l9_4557);
}
else
{
l9_4558=0.0;
}
float l9_4559=l9_4558;
float3 l9_4560=l9_4556*l9_4559;
l9_4555=l9_4560;
l9_3924=l9_4555;
l9_3926=l9_3924;
}
l9_3922=l9_3926;
float3 l9_4561=float3(0.0);
l9_4561=l9_3922;
float3 l9_4562=float3(0.0);
l9_4562=l9_4561;
float3 l9_4563=float3(0.0);
l9_4563=-l9_3920.ViewDirWS;
float l9_4564=0.0;
l9_4564=dot(l9_4562,l9_4563);
float l9_4565=0.0;
l9_4565=abs(l9_4564);
l9_3918=l9_4565;
l9_3921=l9_3918;
}
else
{
float3 l9_4566=float3(0.0);
float3 l9_4567=float3(0.0);
float3 l9_4568=float3(0.0);
ssGlobals l9_4569=l9_3920;
float3 l9_4570;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_4571=float3(0.0);
l9_4571=l9_4569.VertexTangent_WorldSpace;
float3 l9_4572=float3(0.0);
l9_4572=l9_4569.VertexBinormal_WorldSpace;
float3 l9_4573=float3(0.0);
l9_4573=l9_4569.VertexNormal_WorldSpace;
float3x3 l9_4574=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_4574=float3x3(float3(l9_4571),float3(l9_4572),float3(l9_4573));
float2 l9_4575=float2(0.0);
float2 l9_4576=float2(0.0);
float2 l9_4577=float2(0.0);
float2 l9_4578=float2(0.0);
float2 l9_4579=float2(0.0);
float2 l9_4580=float2(0.0);
ssGlobals l9_4581=l9_4569;
float2 l9_4582;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_4583=float2(0.0);
l9_4583=l9_4581.Surface_UVCoord0;
l9_4576=l9_4583;
l9_4582=l9_4576;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_4584=float2(0.0);
l9_4584=l9_4581.Surface_UVCoord1;
l9_4577=l9_4584;
l9_4582=l9_4577;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_4585=float2(0.0);
l9_4585=l9_4581.Surface_UVCoord0;
float2 l9_4586=float2(0.0);
float2 l9_4587=float2(0.0);
float2 l9_4588=float2(0.0);
ssGlobals l9_4589=l9_4581;
float2 l9_4590;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4591=float2(0.0);
float2 l9_4592=float2(0.0);
float2 l9_4593=float2(0.0);
float2 l9_4594=float2(0.0);
float2 l9_4595=float2(0.0);
ssGlobals l9_4596=l9_4589;
float2 l9_4597;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4598=float2(0.0);
l9_4598=l9_4596.Surface_UVCoord0;
l9_4592=l9_4598;
l9_4597=l9_4592;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4599=float2(0.0);
l9_4599=l9_4596.Surface_UVCoord1;
l9_4593=l9_4599;
l9_4597=l9_4593;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4600=float2(0.0);
l9_4600=l9_4596.gScreenCoord;
l9_4594=l9_4600;
l9_4597=l9_4594;
}
else
{
float2 l9_4601=float2(0.0);
l9_4601=l9_4596.Surface_UVCoord0;
l9_4595=l9_4601;
l9_4597=l9_4595;
}
}
}
l9_4591=l9_4597;
float2 l9_4602=float2(0.0);
float2 l9_4603=(*sc_set0.UserUniforms).uv2Scale;
l9_4602=l9_4603;
float2 l9_4604=float2(0.0);
l9_4604=l9_4602;
float2 l9_4605=float2(0.0);
float2 l9_4606=(*sc_set0.UserUniforms).uv2Offset;
l9_4605=l9_4606;
float2 l9_4607=float2(0.0);
l9_4607=l9_4605;
float2 l9_4608=float2(0.0);
l9_4608=(l9_4591*l9_4604)+l9_4607;
float2 l9_4609=float2(0.0);
l9_4609=l9_4608+(l9_4607*(l9_4589.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4587=l9_4609;
l9_4590=l9_4587;
}
else
{
float2 l9_4610=float2(0.0);
float2 l9_4611=float2(0.0);
float2 l9_4612=float2(0.0);
float2 l9_4613=float2(0.0);
float2 l9_4614=float2(0.0);
ssGlobals l9_4615=l9_4589;
float2 l9_4616;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4617=float2(0.0);
l9_4617=l9_4615.Surface_UVCoord0;
l9_4611=l9_4617;
l9_4616=l9_4611;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4618=float2(0.0);
l9_4618=l9_4615.Surface_UVCoord1;
l9_4612=l9_4618;
l9_4616=l9_4612;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4619=float2(0.0);
l9_4619=l9_4615.gScreenCoord;
l9_4613=l9_4619;
l9_4616=l9_4613;
}
else
{
float2 l9_4620=float2(0.0);
l9_4620=l9_4615.Surface_UVCoord0;
l9_4614=l9_4620;
l9_4616=l9_4614;
}
}
}
l9_4610=l9_4616;
float2 l9_4621=float2(0.0);
float2 l9_4622=(*sc_set0.UserUniforms).uv2Scale;
l9_4621=l9_4622;
float2 l9_4623=float2(0.0);
l9_4623=l9_4621;
float2 l9_4624=float2(0.0);
float2 l9_4625=(*sc_set0.UserUniforms).uv2Offset;
l9_4624=l9_4625;
float2 l9_4626=float2(0.0);
l9_4626=l9_4624;
float2 l9_4627=float2(0.0);
l9_4627=(l9_4610*l9_4623)+l9_4626;
l9_4588=l9_4627;
l9_4590=l9_4588;
}
l9_4586=l9_4590;
float l9_4628=0.0;
float l9_4629;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4629=1.001;
}
else
{
l9_4629=0.001;
}
l9_4629-=0.001;
l9_4628=l9_4629;
float l9_4630=0.0;
l9_4630=l9_4628;
float2 l9_4631=float2(0.0);
l9_4631=mix(l9_4585,l9_4586,float2(l9_4630));
float2 l9_4632=float2(0.0);
l9_4632=l9_4631;
float2 l9_4633=float2(0.0);
l9_4633=l9_4632;
l9_4578=l9_4633;
l9_4582=l9_4578;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_4634=float2(0.0);
l9_4634=l9_4581.Surface_UVCoord0;
float2 l9_4635=float2(0.0);
float2 l9_4636=float2(0.0);
float2 l9_4637=float2(0.0);
ssGlobals l9_4638=l9_4581;
float2 l9_4639;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_4640=float2(0.0);
float2 l9_4641=float2(0.0);
float2 l9_4642=float2(0.0);
float2 l9_4643=float2(0.0);
float2 l9_4644=float2(0.0);
float2 l9_4645=float2(0.0);
ssGlobals l9_4646=l9_4638;
float2 l9_4647;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4648=float2(0.0);
l9_4648=l9_4646.Surface_UVCoord0;
l9_4641=l9_4648;
l9_4647=l9_4641;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4649=float2(0.0);
l9_4649=l9_4646.Surface_UVCoord1;
l9_4642=l9_4649;
l9_4647=l9_4642;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4650=float2(0.0);
l9_4650=l9_4646.gScreenCoord;
l9_4643=l9_4650;
l9_4647=l9_4643;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4651=float2(0.0);
l9_4651=l9_4646.Surface_UVCoord0;
float2 l9_4652=float2(0.0);
float2 l9_4653=float2(0.0);
float2 l9_4654=float2(0.0);
ssGlobals l9_4655=l9_4646;
float2 l9_4656;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4657=float2(0.0);
float2 l9_4658=float2(0.0);
float2 l9_4659=float2(0.0);
float2 l9_4660=float2(0.0);
float2 l9_4661=float2(0.0);
ssGlobals l9_4662=l9_4655;
float2 l9_4663;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4664=float2(0.0);
l9_4664=l9_4662.Surface_UVCoord0;
l9_4658=l9_4664;
l9_4663=l9_4658;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4665=float2(0.0);
l9_4665=l9_4662.Surface_UVCoord1;
l9_4659=l9_4665;
l9_4663=l9_4659;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4666=float2(0.0);
l9_4666=l9_4662.gScreenCoord;
l9_4660=l9_4666;
l9_4663=l9_4660;
}
else
{
float2 l9_4667=float2(0.0);
l9_4667=l9_4662.Surface_UVCoord0;
l9_4661=l9_4667;
l9_4663=l9_4661;
}
}
}
l9_4657=l9_4663;
float2 l9_4668=float2(0.0);
float2 l9_4669=(*sc_set0.UserUniforms).uv2Scale;
l9_4668=l9_4669;
float2 l9_4670=float2(0.0);
l9_4670=l9_4668;
float2 l9_4671=float2(0.0);
float2 l9_4672=(*sc_set0.UserUniforms).uv2Offset;
l9_4671=l9_4672;
float2 l9_4673=float2(0.0);
l9_4673=l9_4671;
float2 l9_4674=float2(0.0);
l9_4674=(l9_4657*l9_4670)+l9_4673;
float2 l9_4675=float2(0.0);
l9_4675=l9_4674+(l9_4673*(l9_4655.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4653=l9_4675;
l9_4656=l9_4653;
}
else
{
float2 l9_4676=float2(0.0);
float2 l9_4677=float2(0.0);
float2 l9_4678=float2(0.0);
float2 l9_4679=float2(0.0);
float2 l9_4680=float2(0.0);
ssGlobals l9_4681=l9_4655;
float2 l9_4682;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4683=float2(0.0);
l9_4683=l9_4681.Surface_UVCoord0;
l9_4677=l9_4683;
l9_4682=l9_4677;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4684=float2(0.0);
l9_4684=l9_4681.Surface_UVCoord1;
l9_4678=l9_4684;
l9_4682=l9_4678;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4685=float2(0.0);
l9_4685=l9_4681.gScreenCoord;
l9_4679=l9_4685;
l9_4682=l9_4679;
}
else
{
float2 l9_4686=float2(0.0);
l9_4686=l9_4681.Surface_UVCoord0;
l9_4680=l9_4686;
l9_4682=l9_4680;
}
}
}
l9_4676=l9_4682;
float2 l9_4687=float2(0.0);
float2 l9_4688=(*sc_set0.UserUniforms).uv2Scale;
l9_4687=l9_4688;
float2 l9_4689=float2(0.0);
l9_4689=l9_4687;
float2 l9_4690=float2(0.0);
float2 l9_4691=(*sc_set0.UserUniforms).uv2Offset;
l9_4690=l9_4691;
float2 l9_4692=float2(0.0);
l9_4692=l9_4690;
float2 l9_4693=float2(0.0);
l9_4693=(l9_4676*l9_4689)+l9_4692;
l9_4654=l9_4693;
l9_4656=l9_4654;
}
l9_4652=l9_4656;
float l9_4694=0.0;
float l9_4695;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4695=1.001;
}
else
{
l9_4695=0.001;
}
l9_4695-=0.001;
l9_4694=l9_4695;
float l9_4696=0.0;
l9_4696=l9_4694;
float2 l9_4697=float2(0.0);
l9_4697=mix(l9_4651,l9_4652,float2(l9_4696));
float2 l9_4698=float2(0.0);
l9_4698=l9_4697;
float2 l9_4699=float2(0.0);
l9_4699=l9_4698;
l9_4644=l9_4699;
l9_4647=l9_4644;
}
else
{
float2 l9_4700=float2(0.0);
l9_4700=l9_4646.Surface_UVCoord0;
l9_4645=l9_4700;
l9_4647=l9_4645;
}
}
}
}
l9_4640=l9_4647;
float2 l9_4701=float2(0.0);
float2 l9_4702=(*sc_set0.UserUniforms).uv3Scale;
l9_4701=l9_4702;
float2 l9_4703=float2(0.0);
l9_4703=l9_4701;
float2 l9_4704=float2(0.0);
float2 l9_4705=(*sc_set0.UserUniforms).uv3Offset;
l9_4704=l9_4705;
float2 l9_4706=float2(0.0);
l9_4706=l9_4704;
float2 l9_4707=float2(0.0);
l9_4707=(l9_4640*l9_4703)+l9_4706;
float2 l9_4708=float2(0.0);
l9_4708=l9_4707+(l9_4706*(l9_4638.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_4636=l9_4708;
l9_4639=l9_4636;
}
else
{
float2 l9_4709=float2(0.0);
float2 l9_4710=float2(0.0);
float2 l9_4711=float2(0.0);
float2 l9_4712=float2(0.0);
float2 l9_4713=float2(0.0);
float2 l9_4714=float2(0.0);
ssGlobals l9_4715=l9_4638;
float2 l9_4716;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4717=float2(0.0);
l9_4717=l9_4715.Surface_UVCoord0;
l9_4710=l9_4717;
l9_4716=l9_4710;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4718=float2(0.0);
l9_4718=l9_4715.Surface_UVCoord1;
l9_4711=l9_4718;
l9_4716=l9_4711;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4719=float2(0.0);
l9_4719=l9_4715.gScreenCoord;
l9_4712=l9_4719;
l9_4716=l9_4712;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4720=float2(0.0);
l9_4720=l9_4715.Surface_UVCoord0;
float2 l9_4721=float2(0.0);
float2 l9_4722=float2(0.0);
float2 l9_4723=float2(0.0);
ssGlobals l9_4724=l9_4715;
float2 l9_4725;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4726=float2(0.0);
float2 l9_4727=float2(0.0);
float2 l9_4728=float2(0.0);
float2 l9_4729=float2(0.0);
float2 l9_4730=float2(0.0);
ssGlobals l9_4731=l9_4724;
float2 l9_4732;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4733=float2(0.0);
l9_4733=l9_4731.Surface_UVCoord0;
l9_4727=l9_4733;
l9_4732=l9_4727;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4734=float2(0.0);
l9_4734=l9_4731.Surface_UVCoord1;
l9_4728=l9_4734;
l9_4732=l9_4728;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4735=float2(0.0);
l9_4735=l9_4731.gScreenCoord;
l9_4729=l9_4735;
l9_4732=l9_4729;
}
else
{
float2 l9_4736=float2(0.0);
l9_4736=l9_4731.Surface_UVCoord0;
l9_4730=l9_4736;
l9_4732=l9_4730;
}
}
}
l9_4726=l9_4732;
float2 l9_4737=float2(0.0);
float2 l9_4738=(*sc_set0.UserUniforms).uv2Scale;
l9_4737=l9_4738;
float2 l9_4739=float2(0.0);
l9_4739=l9_4737;
float2 l9_4740=float2(0.0);
float2 l9_4741=(*sc_set0.UserUniforms).uv2Offset;
l9_4740=l9_4741;
float2 l9_4742=float2(0.0);
l9_4742=l9_4740;
float2 l9_4743=float2(0.0);
l9_4743=(l9_4726*l9_4739)+l9_4742;
float2 l9_4744=float2(0.0);
l9_4744=l9_4743+(l9_4742*(l9_4724.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4722=l9_4744;
l9_4725=l9_4722;
}
else
{
float2 l9_4745=float2(0.0);
float2 l9_4746=float2(0.0);
float2 l9_4747=float2(0.0);
float2 l9_4748=float2(0.0);
float2 l9_4749=float2(0.0);
ssGlobals l9_4750=l9_4724;
float2 l9_4751;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4752=float2(0.0);
l9_4752=l9_4750.Surface_UVCoord0;
l9_4746=l9_4752;
l9_4751=l9_4746;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4753=float2(0.0);
l9_4753=l9_4750.Surface_UVCoord1;
l9_4747=l9_4753;
l9_4751=l9_4747;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4754=float2(0.0);
l9_4754=l9_4750.gScreenCoord;
l9_4748=l9_4754;
l9_4751=l9_4748;
}
else
{
float2 l9_4755=float2(0.0);
l9_4755=l9_4750.Surface_UVCoord0;
l9_4749=l9_4755;
l9_4751=l9_4749;
}
}
}
l9_4745=l9_4751;
float2 l9_4756=float2(0.0);
float2 l9_4757=(*sc_set0.UserUniforms).uv2Scale;
l9_4756=l9_4757;
float2 l9_4758=float2(0.0);
l9_4758=l9_4756;
float2 l9_4759=float2(0.0);
float2 l9_4760=(*sc_set0.UserUniforms).uv2Offset;
l9_4759=l9_4760;
float2 l9_4761=float2(0.0);
l9_4761=l9_4759;
float2 l9_4762=float2(0.0);
l9_4762=(l9_4745*l9_4758)+l9_4761;
l9_4723=l9_4762;
l9_4725=l9_4723;
}
l9_4721=l9_4725;
float l9_4763=0.0;
float l9_4764;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4764=1.001;
}
else
{
l9_4764=0.001;
}
l9_4764-=0.001;
l9_4763=l9_4764;
float l9_4765=0.0;
l9_4765=l9_4763;
float2 l9_4766=float2(0.0);
l9_4766=mix(l9_4720,l9_4721,float2(l9_4765));
float2 l9_4767=float2(0.0);
l9_4767=l9_4766;
float2 l9_4768=float2(0.0);
l9_4768=l9_4767;
l9_4713=l9_4768;
l9_4716=l9_4713;
}
else
{
float2 l9_4769=float2(0.0);
l9_4769=l9_4715.Surface_UVCoord0;
l9_4714=l9_4769;
l9_4716=l9_4714;
}
}
}
}
l9_4709=l9_4716;
float2 l9_4770=float2(0.0);
float2 l9_4771=(*sc_set0.UserUniforms).uv3Scale;
l9_4770=l9_4771;
float2 l9_4772=float2(0.0);
l9_4772=l9_4770;
float2 l9_4773=float2(0.0);
float2 l9_4774=(*sc_set0.UserUniforms).uv3Offset;
l9_4773=l9_4774;
float2 l9_4775=float2(0.0);
l9_4775=l9_4773;
float2 l9_4776=float2(0.0);
l9_4776=(l9_4709*l9_4772)+l9_4775;
l9_4637=l9_4776;
l9_4639=l9_4637;
}
l9_4635=l9_4639;
float l9_4777=0.0;
float l9_4778;
if ((int(Tweak_N11_tmp)!=0))
{
l9_4778=1.001;
}
else
{
l9_4778=0.001;
}
l9_4778-=0.001;
l9_4777=l9_4778;
float l9_4779=0.0;
l9_4779=l9_4777;
float2 l9_4780=float2(0.0);
l9_4780=mix(l9_4634,l9_4635,float2(l9_4779));
float2 l9_4781=float2(0.0);
l9_4781=l9_4780;
float2 l9_4782=float2(0.0);
l9_4782=l9_4781;
l9_4579=l9_4782;
l9_4582=l9_4579;
}
else
{
float2 l9_4783=float2(0.0);
l9_4783=l9_4581.Surface_UVCoord0;
l9_4580=l9_4783;
l9_4582=l9_4580;
}
}
}
}
l9_4575=l9_4582;
float4 l9_4784=float4(0.0);
float2 l9_4785=l9_4575;
int l9_4786;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_4787=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4787=0;
}
else
{
l9_4787=in.varStereoViewID;
}
int l9_4788=l9_4787;
l9_4786=1-l9_4788;
}
else
{
int l9_4789=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4789=0;
}
else
{
l9_4789=in.varStereoViewID;
}
int l9_4790=l9_4789;
l9_4786=l9_4790;
}
int l9_4791=l9_4786;
int l9_4792=normalTexLayout_tmp;
int l9_4793=l9_4791;
float2 l9_4794=l9_4785;
bool l9_4795=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_4796=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_4797=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_4798=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_4799=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_4800=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_4801=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_4802=0.0;
bool l9_4803=l9_4800&&(!l9_4798);
float l9_4804=1.0;
float l9_4805=l9_4794.x;
int l9_4806=l9_4797.x;
if (l9_4806==1)
{
l9_4805=fract(l9_4805);
}
else
{
if (l9_4806==2)
{
float l9_4807=fract(l9_4805);
float l9_4808=l9_4805-l9_4807;
float l9_4809=step(0.25,fract(l9_4808*0.5));
l9_4805=mix(l9_4807,1.0-l9_4807,fast::clamp(l9_4809,0.0,1.0));
}
}
l9_4794.x=l9_4805;
float l9_4810=l9_4794.y;
int l9_4811=l9_4797.y;
if (l9_4811==1)
{
l9_4810=fract(l9_4810);
}
else
{
if (l9_4811==2)
{
float l9_4812=fract(l9_4810);
float l9_4813=l9_4810-l9_4812;
float l9_4814=step(0.25,fract(l9_4813*0.5));
l9_4810=mix(l9_4812,1.0-l9_4812,fast::clamp(l9_4814,0.0,1.0));
}
}
l9_4794.y=l9_4810;
if (l9_4798)
{
bool l9_4815=l9_4800;
bool l9_4816;
if (l9_4815)
{
l9_4816=l9_4797.x==3;
}
else
{
l9_4816=l9_4815;
}
float l9_4817=l9_4794.x;
float l9_4818=l9_4799.x;
float l9_4819=l9_4799.z;
bool l9_4820=l9_4816;
float l9_4821=l9_4804;
float l9_4822=fast::clamp(l9_4817,l9_4818,l9_4819);
float l9_4823=step(abs(l9_4817-l9_4822),9.9999997e-06);
l9_4821*=(l9_4823+((1.0-float(l9_4820))*(1.0-l9_4823)));
l9_4817=l9_4822;
l9_4794.x=l9_4817;
l9_4804=l9_4821;
bool l9_4824=l9_4800;
bool l9_4825;
if (l9_4824)
{
l9_4825=l9_4797.y==3;
}
else
{
l9_4825=l9_4824;
}
float l9_4826=l9_4794.y;
float l9_4827=l9_4799.y;
float l9_4828=l9_4799.w;
bool l9_4829=l9_4825;
float l9_4830=l9_4804;
float l9_4831=fast::clamp(l9_4826,l9_4827,l9_4828);
float l9_4832=step(abs(l9_4826-l9_4831),9.9999997e-06);
l9_4830*=(l9_4832+((1.0-float(l9_4829))*(1.0-l9_4832)));
l9_4826=l9_4831;
l9_4794.y=l9_4826;
l9_4804=l9_4830;
}
float2 l9_4833=l9_4794;
bool l9_4834=l9_4795;
float3x3 l9_4835=l9_4796;
if (l9_4834)
{
l9_4833=float2((l9_4835*float3(l9_4833,1.0)).xy);
}
float2 l9_4836=l9_4833;
l9_4794=l9_4836;
float l9_4837=l9_4794.x;
int l9_4838=l9_4797.x;
bool l9_4839=l9_4803;
float l9_4840=l9_4804;
if ((l9_4838==0)||(l9_4838==3))
{
float l9_4841=l9_4837;
float l9_4842=0.0;
float l9_4843=1.0;
bool l9_4844=l9_4839;
float l9_4845=l9_4840;
float l9_4846=fast::clamp(l9_4841,l9_4842,l9_4843);
float l9_4847=step(abs(l9_4841-l9_4846),9.9999997e-06);
l9_4845*=(l9_4847+((1.0-float(l9_4844))*(1.0-l9_4847)));
l9_4841=l9_4846;
l9_4837=l9_4841;
l9_4840=l9_4845;
}
l9_4794.x=l9_4837;
l9_4804=l9_4840;
float l9_4848=l9_4794.y;
int l9_4849=l9_4797.y;
bool l9_4850=l9_4803;
float l9_4851=l9_4804;
if ((l9_4849==0)||(l9_4849==3))
{
float l9_4852=l9_4848;
float l9_4853=0.0;
float l9_4854=1.0;
bool l9_4855=l9_4850;
float l9_4856=l9_4851;
float l9_4857=fast::clamp(l9_4852,l9_4853,l9_4854);
float l9_4858=step(abs(l9_4852-l9_4857),9.9999997e-06);
l9_4856*=(l9_4858+((1.0-float(l9_4855))*(1.0-l9_4858)));
l9_4852=l9_4857;
l9_4848=l9_4852;
l9_4851=l9_4856;
}
l9_4794.y=l9_4848;
l9_4804=l9_4851;
float2 l9_4859=l9_4794;
int l9_4860=l9_4792;
int l9_4861=l9_4793;
float l9_4862=l9_4802;
float2 l9_4863=l9_4859;
int l9_4864=l9_4860;
int l9_4865=l9_4861;
float3 l9_4866=float3(0.0);
if (l9_4864==0)
{
l9_4866=float3(l9_4863,0.0);
}
else
{
if (l9_4864==1)
{
l9_4866=float3(l9_4863.x,(l9_4863.y*0.5)+(0.5-(float(l9_4865)*0.5)),0.0);
}
else
{
l9_4866=float3(l9_4863,float(l9_4865));
}
}
float3 l9_4867=l9_4866;
float3 l9_4868=l9_4867;
float4 l9_4869=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_4868.xy,bias(l9_4862));
float4 l9_4870=l9_4869;
if (l9_4800)
{
l9_4870=mix(l9_4801,l9_4870,float4(l9_4804));
}
float4 l9_4871=l9_4870;
float4 l9_4872=l9_4871;
float3 l9_4873=(l9_4872.xyz*1.9921875)-float3(1.0);
l9_4872=float4(l9_4873.x,l9_4873.y,l9_4873.z,l9_4872.w);
l9_4784=l9_4872;
float3 l9_4874=float3(0.0);
float3 l9_4875=float3(0.0);
float3 l9_4876=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_4877=l9_4569;
float3 l9_4878;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_4879=float2(0.0);
float2 l9_4880=float2(0.0);
float2 l9_4881=float2(0.0);
float2 l9_4882=float2(0.0);
float2 l9_4883=float2(0.0);
float2 l9_4884=float2(0.0);
ssGlobals l9_4885=l9_4877;
float2 l9_4886;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_4887=float2(0.0);
l9_4887=l9_4885.Surface_UVCoord0;
l9_4880=l9_4887;
l9_4886=l9_4880;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_4888=float2(0.0);
l9_4888=l9_4885.Surface_UVCoord1;
l9_4881=l9_4888;
l9_4886=l9_4881;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_4889=float2(0.0);
l9_4889=l9_4885.Surface_UVCoord0;
float2 l9_4890=float2(0.0);
float2 l9_4891=float2(0.0);
float2 l9_4892=float2(0.0);
ssGlobals l9_4893=l9_4885;
float2 l9_4894;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4895=float2(0.0);
float2 l9_4896=float2(0.0);
float2 l9_4897=float2(0.0);
float2 l9_4898=float2(0.0);
float2 l9_4899=float2(0.0);
ssGlobals l9_4900=l9_4893;
float2 l9_4901;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4902=float2(0.0);
l9_4902=l9_4900.Surface_UVCoord0;
l9_4896=l9_4902;
l9_4901=l9_4896;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4903=float2(0.0);
l9_4903=l9_4900.Surface_UVCoord1;
l9_4897=l9_4903;
l9_4901=l9_4897;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4904=float2(0.0);
l9_4904=l9_4900.gScreenCoord;
l9_4898=l9_4904;
l9_4901=l9_4898;
}
else
{
float2 l9_4905=float2(0.0);
l9_4905=l9_4900.Surface_UVCoord0;
l9_4899=l9_4905;
l9_4901=l9_4899;
}
}
}
l9_4895=l9_4901;
float2 l9_4906=float2(0.0);
float2 l9_4907=(*sc_set0.UserUniforms).uv2Scale;
l9_4906=l9_4907;
float2 l9_4908=float2(0.0);
l9_4908=l9_4906;
float2 l9_4909=float2(0.0);
float2 l9_4910=(*sc_set0.UserUniforms).uv2Offset;
l9_4909=l9_4910;
float2 l9_4911=float2(0.0);
l9_4911=l9_4909;
float2 l9_4912=float2(0.0);
l9_4912=(l9_4895*l9_4908)+l9_4911;
float2 l9_4913=float2(0.0);
l9_4913=l9_4912+(l9_4911*(l9_4893.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4891=l9_4913;
l9_4894=l9_4891;
}
else
{
float2 l9_4914=float2(0.0);
float2 l9_4915=float2(0.0);
float2 l9_4916=float2(0.0);
float2 l9_4917=float2(0.0);
float2 l9_4918=float2(0.0);
ssGlobals l9_4919=l9_4893;
float2 l9_4920;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4921=float2(0.0);
l9_4921=l9_4919.Surface_UVCoord0;
l9_4915=l9_4921;
l9_4920=l9_4915;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4922=float2(0.0);
l9_4922=l9_4919.Surface_UVCoord1;
l9_4916=l9_4922;
l9_4920=l9_4916;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4923=float2(0.0);
l9_4923=l9_4919.gScreenCoord;
l9_4917=l9_4923;
l9_4920=l9_4917;
}
else
{
float2 l9_4924=float2(0.0);
l9_4924=l9_4919.Surface_UVCoord0;
l9_4918=l9_4924;
l9_4920=l9_4918;
}
}
}
l9_4914=l9_4920;
float2 l9_4925=float2(0.0);
float2 l9_4926=(*sc_set0.UserUniforms).uv2Scale;
l9_4925=l9_4926;
float2 l9_4927=float2(0.0);
l9_4927=l9_4925;
float2 l9_4928=float2(0.0);
float2 l9_4929=(*sc_set0.UserUniforms).uv2Offset;
l9_4928=l9_4929;
float2 l9_4930=float2(0.0);
l9_4930=l9_4928;
float2 l9_4931=float2(0.0);
l9_4931=(l9_4914*l9_4927)+l9_4930;
l9_4892=l9_4931;
l9_4894=l9_4892;
}
l9_4890=l9_4894;
float l9_4932=0.0;
float l9_4933;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4933=1.001;
}
else
{
l9_4933=0.001;
}
l9_4933-=0.001;
l9_4932=l9_4933;
float l9_4934=0.0;
l9_4934=l9_4932;
float2 l9_4935=float2(0.0);
l9_4935=mix(l9_4889,l9_4890,float2(l9_4934));
float2 l9_4936=float2(0.0);
l9_4936=l9_4935;
float2 l9_4937=float2(0.0);
l9_4937=l9_4936;
l9_4882=l9_4937;
l9_4886=l9_4882;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_4938=float2(0.0);
l9_4938=l9_4885.Surface_UVCoord0;
float2 l9_4939=float2(0.0);
float2 l9_4940=float2(0.0);
float2 l9_4941=float2(0.0);
ssGlobals l9_4942=l9_4885;
float2 l9_4943;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_4944=float2(0.0);
float2 l9_4945=float2(0.0);
float2 l9_4946=float2(0.0);
float2 l9_4947=float2(0.0);
float2 l9_4948=float2(0.0);
float2 l9_4949=float2(0.0);
ssGlobals l9_4950=l9_4942;
float2 l9_4951;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4952=float2(0.0);
l9_4952=l9_4950.Surface_UVCoord0;
l9_4945=l9_4952;
l9_4951=l9_4945;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4953=float2(0.0);
l9_4953=l9_4950.Surface_UVCoord1;
l9_4946=l9_4953;
l9_4951=l9_4946;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4954=float2(0.0);
l9_4954=l9_4950.gScreenCoord;
l9_4947=l9_4954;
l9_4951=l9_4947;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4955=float2(0.0);
l9_4955=l9_4950.Surface_UVCoord0;
float2 l9_4956=float2(0.0);
float2 l9_4957=float2(0.0);
float2 l9_4958=float2(0.0);
ssGlobals l9_4959=l9_4950;
float2 l9_4960;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4961=float2(0.0);
float2 l9_4962=float2(0.0);
float2 l9_4963=float2(0.0);
float2 l9_4964=float2(0.0);
float2 l9_4965=float2(0.0);
ssGlobals l9_4966=l9_4959;
float2 l9_4967;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4968=float2(0.0);
l9_4968=l9_4966.Surface_UVCoord0;
l9_4962=l9_4968;
l9_4967=l9_4962;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4969=float2(0.0);
l9_4969=l9_4966.Surface_UVCoord1;
l9_4963=l9_4969;
l9_4967=l9_4963;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4970=float2(0.0);
l9_4970=l9_4966.gScreenCoord;
l9_4964=l9_4970;
l9_4967=l9_4964;
}
else
{
float2 l9_4971=float2(0.0);
l9_4971=l9_4966.Surface_UVCoord0;
l9_4965=l9_4971;
l9_4967=l9_4965;
}
}
}
l9_4961=l9_4967;
float2 l9_4972=float2(0.0);
float2 l9_4973=(*sc_set0.UserUniforms).uv2Scale;
l9_4972=l9_4973;
float2 l9_4974=float2(0.0);
l9_4974=l9_4972;
float2 l9_4975=float2(0.0);
float2 l9_4976=(*sc_set0.UserUniforms).uv2Offset;
l9_4975=l9_4976;
float2 l9_4977=float2(0.0);
l9_4977=l9_4975;
float2 l9_4978=float2(0.0);
l9_4978=(l9_4961*l9_4974)+l9_4977;
float2 l9_4979=float2(0.0);
l9_4979=l9_4978+(l9_4977*(l9_4959.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4957=l9_4979;
l9_4960=l9_4957;
}
else
{
float2 l9_4980=float2(0.0);
float2 l9_4981=float2(0.0);
float2 l9_4982=float2(0.0);
float2 l9_4983=float2(0.0);
float2 l9_4984=float2(0.0);
ssGlobals l9_4985=l9_4959;
float2 l9_4986;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4987=float2(0.0);
l9_4987=l9_4985.Surface_UVCoord0;
l9_4981=l9_4987;
l9_4986=l9_4981;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4988=float2(0.0);
l9_4988=l9_4985.Surface_UVCoord1;
l9_4982=l9_4988;
l9_4986=l9_4982;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4989=float2(0.0);
l9_4989=l9_4985.gScreenCoord;
l9_4983=l9_4989;
l9_4986=l9_4983;
}
else
{
float2 l9_4990=float2(0.0);
l9_4990=l9_4985.Surface_UVCoord0;
l9_4984=l9_4990;
l9_4986=l9_4984;
}
}
}
l9_4980=l9_4986;
float2 l9_4991=float2(0.0);
float2 l9_4992=(*sc_set0.UserUniforms).uv2Scale;
l9_4991=l9_4992;
float2 l9_4993=float2(0.0);
l9_4993=l9_4991;
float2 l9_4994=float2(0.0);
float2 l9_4995=(*sc_set0.UserUniforms).uv2Offset;
l9_4994=l9_4995;
float2 l9_4996=float2(0.0);
l9_4996=l9_4994;
float2 l9_4997=float2(0.0);
l9_4997=(l9_4980*l9_4993)+l9_4996;
l9_4958=l9_4997;
l9_4960=l9_4958;
}
l9_4956=l9_4960;
float l9_4998=0.0;
float l9_4999;
if ((int(Tweak_N67_tmp)!=0))
{
l9_4999=1.001;
}
else
{
l9_4999=0.001;
}
l9_4999-=0.001;
l9_4998=l9_4999;
float l9_5000=0.0;
l9_5000=l9_4998;
float2 l9_5001=float2(0.0);
l9_5001=mix(l9_4955,l9_4956,float2(l9_5000));
float2 l9_5002=float2(0.0);
l9_5002=l9_5001;
float2 l9_5003=float2(0.0);
l9_5003=l9_5002;
l9_4948=l9_5003;
l9_4951=l9_4948;
}
else
{
float2 l9_5004=float2(0.0);
l9_5004=l9_4950.Surface_UVCoord0;
l9_4949=l9_5004;
l9_4951=l9_4949;
}
}
}
}
l9_4944=l9_4951;
float2 l9_5005=float2(0.0);
float2 l9_5006=(*sc_set0.UserUniforms).uv3Scale;
l9_5005=l9_5006;
float2 l9_5007=float2(0.0);
l9_5007=l9_5005;
float2 l9_5008=float2(0.0);
float2 l9_5009=(*sc_set0.UserUniforms).uv3Offset;
l9_5008=l9_5009;
float2 l9_5010=float2(0.0);
l9_5010=l9_5008;
float2 l9_5011=float2(0.0);
l9_5011=(l9_4944*l9_5007)+l9_5010;
float2 l9_5012=float2(0.0);
l9_5012=l9_5011+(l9_5010*(l9_4942.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_4940=l9_5012;
l9_4943=l9_4940;
}
else
{
float2 l9_5013=float2(0.0);
float2 l9_5014=float2(0.0);
float2 l9_5015=float2(0.0);
float2 l9_5016=float2(0.0);
float2 l9_5017=float2(0.0);
float2 l9_5018=float2(0.0);
ssGlobals l9_5019=l9_4942;
float2 l9_5020;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_5021=float2(0.0);
l9_5021=l9_5019.Surface_UVCoord0;
l9_5014=l9_5021;
l9_5020=l9_5014;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_5022=float2(0.0);
l9_5022=l9_5019.Surface_UVCoord1;
l9_5015=l9_5022;
l9_5020=l9_5015;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_5023=float2(0.0);
l9_5023=l9_5019.gScreenCoord;
l9_5016=l9_5023;
l9_5020=l9_5016;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_5024=float2(0.0);
l9_5024=l9_5019.Surface_UVCoord0;
float2 l9_5025=float2(0.0);
float2 l9_5026=float2(0.0);
float2 l9_5027=float2(0.0);
ssGlobals l9_5028=l9_5019;
float2 l9_5029;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5030=float2(0.0);
float2 l9_5031=float2(0.0);
float2 l9_5032=float2(0.0);
float2 l9_5033=float2(0.0);
float2 l9_5034=float2(0.0);
ssGlobals l9_5035=l9_5028;
float2 l9_5036;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5037=float2(0.0);
l9_5037=l9_5035.Surface_UVCoord0;
l9_5031=l9_5037;
l9_5036=l9_5031;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5038=float2(0.0);
l9_5038=l9_5035.Surface_UVCoord1;
l9_5032=l9_5038;
l9_5036=l9_5032;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5039=float2(0.0);
l9_5039=l9_5035.gScreenCoord;
l9_5033=l9_5039;
l9_5036=l9_5033;
}
else
{
float2 l9_5040=float2(0.0);
l9_5040=l9_5035.Surface_UVCoord0;
l9_5034=l9_5040;
l9_5036=l9_5034;
}
}
}
l9_5030=l9_5036;
float2 l9_5041=float2(0.0);
float2 l9_5042=(*sc_set0.UserUniforms).uv2Scale;
l9_5041=l9_5042;
float2 l9_5043=float2(0.0);
l9_5043=l9_5041;
float2 l9_5044=float2(0.0);
float2 l9_5045=(*sc_set0.UserUniforms).uv2Offset;
l9_5044=l9_5045;
float2 l9_5046=float2(0.0);
l9_5046=l9_5044;
float2 l9_5047=float2(0.0);
l9_5047=(l9_5030*l9_5043)+l9_5046;
float2 l9_5048=float2(0.0);
l9_5048=l9_5047+(l9_5046*(l9_5028.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5026=l9_5048;
l9_5029=l9_5026;
}
else
{
float2 l9_5049=float2(0.0);
float2 l9_5050=float2(0.0);
float2 l9_5051=float2(0.0);
float2 l9_5052=float2(0.0);
float2 l9_5053=float2(0.0);
ssGlobals l9_5054=l9_5028;
float2 l9_5055;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5056=float2(0.0);
l9_5056=l9_5054.Surface_UVCoord0;
l9_5050=l9_5056;
l9_5055=l9_5050;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5057=float2(0.0);
l9_5057=l9_5054.Surface_UVCoord1;
l9_5051=l9_5057;
l9_5055=l9_5051;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5058=float2(0.0);
l9_5058=l9_5054.gScreenCoord;
l9_5052=l9_5058;
l9_5055=l9_5052;
}
else
{
float2 l9_5059=float2(0.0);
l9_5059=l9_5054.Surface_UVCoord0;
l9_5053=l9_5059;
l9_5055=l9_5053;
}
}
}
l9_5049=l9_5055;
float2 l9_5060=float2(0.0);
float2 l9_5061=(*sc_set0.UserUniforms).uv2Scale;
l9_5060=l9_5061;
float2 l9_5062=float2(0.0);
l9_5062=l9_5060;
float2 l9_5063=float2(0.0);
float2 l9_5064=(*sc_set0.UserUniforms).uv2Offset;
l9_5063=l9_5064;
float2 l9_5065=float2(0.0);
l9_5065=l9_5063;
float2 l9_5066=float2(0.0);
l9_5066=(l9_5049*l9_5062)+l9_5065;
l9_5027=l9_5066;
l9_5029=l9_5027;
}
l9_5025=l9_5029;
float l9_5067=0.0;
float l9_5068;
if ((int(Tweak_N67_tmp)!=0))
{
l9_5068=1.001;
}
else
{
l9_5068=0.001;
}
l9_5068-=0.001;
l9_5067=l9_5068;
float l9_5069=0.0;
l9_5069=l9_5067;
float2 l9_5070=float2(0.0);
l9_5070=mix(l9_5024,l9_5025,float2(l9_5069));
float2 l9_5071=float2(0.0);
l9_5071=l9_5070;
float2 l9_5072=float2(0.0);
l9_5072=l9_5071;
l9_5017=l9_5072;
l9_5020=l9_5017;
}
else
{
float2 l9_5073=float2(0.0);
l9_5073=l9_5019.Surface_UVCoord0;
l9_5018=l9_5073;
l9_5020=l9_5018;
}
}
}
}
l9_5013=l9_5020;
float2 l9_5074=float2(0.0);
float2 l9_5075=(*sc_set0.UserUniforms).uv3Scale;
l9_5074=l9_5075;
float2 l9_5076=float2(0.0);
l9_5076=l9_5074;
float2 l9_5077=float2(0.0);
float2 l9_5078=(*sc_set0.UserUniforms).uv3Offset;
l9_5077=l9_5078;
float2 l9_5079=float2(0.0);
l9_5079=l9_5077;
float2 l9_5080=float2(0.0);
l9_5080=(l9_5013*l9_5076)+l9_5079;
l9_4941=l9_5080;
l9_4943=l9_4941;
}
l9_4939=l9_4943;
float l9_5081=0.0;
float l9_5082;
if ((int(Tweak_N11_tmp)!=0))
{
l9_5082=1.001;
}
else
{
l9_5082=0.001;
}
l9_5082-=0.001;
l9_5081=l9_5082;
float l9_5083=0.0;
l9_5083=l9_5081;
float2 l9_5084=float2(0.0);
l9_5084=mix(l9_4938,l9_4939,float2(l9_5083));
float2 l9_5085=float2(0.0);
l9_5085=l9_5084;
float2 l9_5086=float2(0.0);
l9_5086=l9_5085;
l9_4883=l9_5086;
l9_4886=l9_4883;
}
else
{
float2 l9_5087=float2(0.0);
l9_5087=l9_4885.Surface_UVCoord0;
l9_4884=l9_5087;
l9_4886=l9_4884;
}
}
}
}
l9_4879=l9_4886;
float4 l9_5088=float4(0.0);
float2 l9_5089=l9_4879;
int l9_5090;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_5091=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5091=0;
}
else
{
l9_5091=in.varStereoViewID;
}
int l9_5092=l9_5091;
l9_5090=1-l9_5092;
}
else
{
int l9_5093=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5093=0;
}
else
{
l9_5093=in.varStereoViewID;
}
int l9_5094=l9_5093;
l9_5090=l9_5094;
}
int l9_5095=l9_5090;
int l9_5096=detailNormalTexLayout_tmp;
int l9_5097=l9_5095;
float2 l9_5098=l9_5089;
bool l9_5099=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_5100=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_5101=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_5102=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_5103=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_5104=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_5105=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_5106=0.0;
bool l9_5107=l9_5104&&(!l9_5102);
float l9_5108=1.0;
float l9_5109=l9_5098.x;
int l9_5110=l9_5101.x;
if (l9_5110==1)
{
l9_5109=fract(l9_5109);
}
else
{
if (l9_5110==2)
{
float l9_5111=fract(l9_5109);
float l9_5112=l9_5109-l9_5111;
float l9_5113=step(0.25,fract(l9_5112*0.5));
l9_5109=mix(l9_5111,1.0-l9_5111,fast::clamp(l9_5113,0.0,1.0));
}
}
l9_5098.x=l9_5109;
float l9_5114=l9_5098.y;
int l9_5115=l9_5101.y;
if (l9_5115==1)
{
l9_5114=fract(l9_5114);
}
else
{
if (l9_5115==2)
{
float l9_5116=fract(l9_5114);
float l9_5117=l9_5114-l9_5116;
float l9_5118=step(0.25,fract(l9_5117*0.5));
l9_5114=mix(l9_5116,1.0-l9_5116,fast::clamp(l9_5118,0.0,1.0));
}
}
l9_5098.y=l9_5114;
if (l9_5102)
{
bool l9_5119=l9_5104;
bool l9_5120;
if (l9_5119)
{
l9_5120=l9_5101.x==3;
}
else
{
l9_5120=l9_5119;
}
float l9_5121=l9_5098.x;
float l9_5122=l9_5103.x;
float l9_5123=l9_5103.z;
bool l9_5124=l9_5120;
float l9_5125=l9_5108;
float l9_5126=fast::clamp(l9_5121,l9_5122,l9_5123);
float l9_5127=step(abs(l9_5121-l9_5126),9.9999997e-06);
l9_5125*=(l9_5127+((1.0-float(l9_5124))*(1.0-l9_5127)));
l9_5121=l9_5126;
l9_5098.x=l9_5121;
l9_5108=l9_5125;
bool l9_5128=l9_5104;
bool l9_5129;
if (l9_5128)
{
l9_5129=l9_5101.y==3;
}
else
{
l9_5129=l9_5128;
}
float l9_5130=l9_5098.y;
float l9_5131=l9_5103.y;
float l9_5132=l9_5103.w;
bool l9_5133=l9_5129;
float l9_5134=l9_5108;
float l9_5135=fast::clamp(l9_5130,l9_5131,l9_5132);
float l9_5136=step(abs(l9_5130-l9_5135),9.9999997e-06);
l9_5134*=(l9_5136+((1.0-float(l9_5133))*(1.0-l9_5136)));
l9_5130=l9_5135;
l9_5098.y=l9_5130;
l9_5108=l9_5134;
}
float2 l9_5137=l9_5098;
bool l9_5138=l9_5099;
float3x3 l9_5139=l9_5100;
if (l9_5138)
{
l9_5137=float2((l9_5139*float3(l9_5137,1.0)).xy);
}
float2 l9_5140=l9_5137;
l9_5098=l9_5140;
float l9_5141=l9_5098.x;
int l9_5142=l9_5101.x;
bool l9_5143=l9_5107;
float l9_5144=l9_5108;
if ((l9_5142==0)||(l9_5142==3))
{
float l9_5145=l9_5141;
float l9_5146=0.0;
float l9_5147=1.0;
bool l9_5148=l9_5143;
float l9_5149=l9_5144;
float l9_5150=fast::clamp(l9_5145,l9_5146,l9_5147);
float l9_5151=step(abs(l9_5145-l9_5150),9.9999997e-06);
l9_5149*=(l9_5151+((1.0-float(l9_5148))*(1.0-l9_5151)));
l9_5145=l9_5150;
l9_5141=l9_5145;
l9_5144=l9_5149;
}
l9_5098.x=l9_5141;
l9_5108=l9_5144;
float l9_5152=l9_5098.y;
int l9_5153=l9_5101.y;
bool l9_5154=l9_5107;
float l9_5155=l9_5108;
if ((l9_5153==0)||(l9_5153==3))
{
float l9_5156=l9_5152;
float l9_5157=0.0;
float l9_5158=1.0;
bool l9_5159=l9_5154;
float l9_5160=l9_5155;
float l9_5161=fast::clamp(l9_5156,l9_5157,l9_5158);
float l9_5162=step(abs(l9_5156-l9_5161),9.9999997e-06);
l9_5160*=(l9_5162+((1.0-float(l9_5159))*(1.0-l9_5162)));
l9_5156=l9_5161;
l9_5152=l9_5156;
l9_5155=l9_5160;
}
l9_5098.y=l9_5152;
l9_5108=l9_5155;
float2 l9_5163=l9_5098;
int l9_5164=l9_5096;
int l9_5165=l9_5097;
float l9_5166=l9_5106;
float2 l9_5167=l9_5163;
int l9_5168=l9_5164;
int l9_5169=l9_5165;
float3 l9_5170=float3(0.0);
if (l9_5168==0)
{
l9_5170=float3(l9_5167,0.0);
}
else
{
if (l9_5168==1)
{
l9_5170=float3(l9_5167.x,(l9_5167.y*0.5)+(0.5-(float(l9_5169)*0.5)),0.0);
}
else
{
l9_5170=float3(l9_5167,float(l9_5169));
}
}
float3 l9_5171=l9_5170;
float3 l9_5172=l9_5171;
float4 l9_5173=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_5172.xy,bias(l9_5166));
float4 l9_5174=l9_5173;
if (l9_5104)
{
l9_5174=mix(l9_5105,l9_5174,float4(l9_5108));
}
float4 l9_5175=l9_5174;
float4 l9_5176=l9_5175;
float3 l9_5177=(l9_5176.xyz*1.9921875)-float3(1.0);
l9_5176=float4(l9_5177.x,l9_5177.y,l9_5177.z,l9_5176.w);
l9_5088=l9_5176;
l9_4875=l9_5088.xyz;
l9_4878=l9_4875;
}
else
{
l9_4878=l9_4876;
}
l9_4874=l9_4878;
float3 l9_5178=float3(0.0);
float3 l9_5179=l9_4784.xyz;
float l9_5180=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_5181=l9_4874;
float l9_5182=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_5183=l9_5179;
float l9_5184=l9_5180;
float3 l9_5185=l9_5181;
float l9_5186=l9_5182;
float3 l9_5187=mix(float3(0.0,0.0,1.0),l9_5183,float3(l9_5184))+float3(0.0,0.0,1.0);
float3 l9_5188=mix(float3(0.0,0.0,1.0),l9_5185,float3(l9_5186))*float3(-1.0,-1.0,1.0);
float3 l9_5189=normalize((l9_5187*dot(l9_5187,l9_5188))-(l9_5188*l9_5187.z));
l9_5181=l9_5189;
float3 l9_5190=l9_5181;
l9_5178=l9_5190;
float3 l9_5191=float3(0.0);
l9_5191=l9_4574*l9_5178;
float3 l9_5192=float3(0.0);
float3 l9_5193=l9_5191;
float l9_5194=dot(l9_5193,l9_5193);
float l9_5195;
if (l9_5194>0.0)
{
l9_5195=1.0/sqrt(l9_5194);
}
else
{
l9_5195=0.0;
}
float l9_5196=l9_5195;
float3 l9_5197=l9_5193*l9_5196;
l9_5192=l9_5197;
l9_4567=l9_5192;
l9_4570=l9_4567;
}
else
{
float3 l9_5198=float3(0.0);
l9_5198=l9_4569.VertexNormal_WorldSpace;
float3 l9_5199=float3(0.0);
float3 l9_5200=l9_5198;
float l9_5201=dot(l9_5200,l9_5200);
float l9_5202;
if (l9_5201>0.0)
{
l9_5202=1.0/sqrt(l9_5201);
}
else
{
l9_5202=0.0;
}
float l9_5203=l9_5202;
float3 l9_5204=l9_5200*l9_5203;
l9_5199=l9_5204;
l9_4568=l9_5199;
l9_4570=l9_4568;
}
l9_4566=l9_4570;
float3 l9_5205=float3(0.0);
l9_5205=l9_4566;
float3 l9_5206=float3(0.0);
l9_5206=l9_5205;
float3 l9_5207=float3(0.0);
l9_5207=-l9_3920.ViewDirWS;
float l9_5208=0.0;
l9_5208=dot(l9_5206,l9_5207);
float l9_5209=0.0;
l9_5209=abs(l9_5208);
float l9_5210=0.0;
l9_5210=1.0-l9_5209;
l9_3919=l9_5210;
l9_3921=l9_3919;
}
l9_3917=l9_3921;
float l9_5211=0.0;
float l9_5212=(*sc_set0.UserUniforms).rimExponent;
l9_5211=l9_5212;
float l9_5213=0.0;
l9_5213=l9_5211;
float l9_5214=0.0;
float l9_5215;
if (l9_3917<=0.0)
{
l9_5215=0.0;
}
else
{
l9_5215=pow(l9_3917,l9_5213);
}
l9_5214=l9_5215;
float3 l9_5216=float3(0.0);
l9_5216=l9_3913*float3(l9_5214);
param_21=l9_5216;
param_23=param_21;
}
else
{
param_23=param_22;
}
Result_N173=param_23;
float3 Export_N347=float3(0.0);
Export_N347=Result_N173;
float3 Value_N306=float3(0.0);
Value_N306=Export_N347;
float3 Output_N299=float3(0.0);
Output_N299=(Output_N82+Value_N298)+Value_N306;
float3 Output_N251=float3(0.0);
float3 param_25=Output_N299;
float3 l9_5217;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_5217=float3(pow(param_25.x,0.45454544),pow(param_25.y,0.45454544),pow(param_25.z,0.45454544));
}
else
{
l9_5217=sqrt(param_25);
}
float3 l9_5218=l9_5217;
Output_N251=l9_5218;
float3 Export_N300=float3(0.0);
Export_N300=Output_N251;
float4 Output_N36=float4(0.0);
float3 param_26=Output_N104.xyz;
float param_27=Output_N2;
float3 param_28=Export_N334;
float3 param_29=Export_N300;
float3 param_30=(*sc_set0.UserUniforms).Port_AO_N036;
ssGlobals param_32=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_32.BumpedNormal=param_28;
}
param_27=fast::clamp(param_27,0.0,1.0);
float l9_5219=param_27;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_5219<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_5220=gl_FragCoord;
float2 l9_5221=floor(mod(l9_5220.xy,float2(4.0)));
float l9_5222=(mod(dot(l9_5221,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_5219<l9_5222)
{
discard_fragment();
}
}
param_26=fast::max(param_26,float3(0.0));
float4 param_31;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_31=float4(param_26,param_27);
}
else
{
param_29=fast::max(param_29,float3(0.0));
float l9_5223=0.0;
float l9_5224=1.0;
float3 l9_5225=float3(1.0);
float3 l9_5226=param_26;
float l9_5227=param_27;
float3 l9_5228=param_32.BumpedNormal;
float3 l9_5229=param_32.PositionWS;
float3 l9_5230=param_32.ViewDirWS;
float3 l9_5231=param_29;
float l9_5232=l9_5223;
float l9_5233=l9_5224;
float3 l9_5234=param_30;
float3 l9_5235=l9_5225;
param_31=ngsCalculateLighting(l9_5226,l9_5227,l9_5228,l9_5229,l9_5230,l9_5231,l9_5232,l9_5233,l9_5234,l9_5235,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,out.sc_FragData0,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
param_31=fast::max(param_31,float4(0.0));
Output_N36=param_31;
FinalColor=Output_N36;
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param_33=FinalColor;
if ((int(sc_RayTracingCasterForceOpaque_tmp)!=0))
{
param_33.w=1.0;
}
float4 l9_5236=fast::max(param_33,float4(0.0));
float4 param_34=l9_5236;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_34.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=param_34;
return out;
}
float4 param_35=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_5237=param_35;
float4 l9_5238=l9_5237;
float l9_5239=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_5239=l9_5238.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_5239=fast::clamp(l9_5238.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_5239=fast::clamp(dot(l9_5238.xyz,float3(l9_5238.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_5239=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_5239=(1.0-dot(l9_5238.xyz,float3(0.33333001)))*l9_5238.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_5239=(1.0-fast::clamp(dot(l9_5238.xyz,float3(1.0)),0.0,1.0))*l9_5238.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_5239=fast::clamp(dot(l9_5238.xyz,float3(1.0)),0.0,1.0)*l9_5238.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_5239=fast::clamp(dot(l9_5238.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_5239=fast::clamp(dot(l9_5238.xyz,float3(1.0)),0.0,1.0)*l9_5238.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_5239=dot(l9_5238.xyz,float3(0.33333001))*l9_5238.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_5239=1.0-fast::clamp(dot(l9_5238.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_5239=fast::clamp(dot(l9_5238.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_5240=l9_5239;
float l9_5241=l9_5240;
float l9_5242=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_5241;
float3 l9_5243=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_5237.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_5244=float4(l9_5243.x,l9_5243.y,l9_5243.z,l9_5242);
param_35=l9_5244;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_35=float4(param_35.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_5245=param_35;
float4 l9_5246=float4(0.0);
float4 l9_5247=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_5248=out.sc_FragData0;
l9_5247=l9_5248;
}
else
{
float4 l9_5249=gl_FragCoord;
float2 l9_5250=l9_5249.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_5251=l9_5250;
float2 l9_5252=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_5253=1;
int l9_5254=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5254=0;
}
else
{
l9_5254=in.varStereoViewID;
}
int l9_5255=l9_5254;
int l9_5256=l9_5255;
float3 l9_5257=float3(l9_5251,0.0);
int l9_5258=l9_5253;
int l9_5259=l9_5256;
if (l9_5258==1)
{
l9_5257.y=((2.0*l9_5257.y)+float(l9_5259))-1.0;
}
float2 l9_5260=l9_5257.xy;
l9_5252=l9_5260;
}
else
{
l9_5252=l9_5251;
}
float2 l9_5261=l9_5252;
float2 l9_5262=l9_5261;
float2 l9_5263=l9_5262;
float2 l9_5264=l9_5263;
float l9_5265=0.0;
int l9_5266;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_5267=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5267=0;
}
else
{
l9_5267=in.varStereoViewID;
}
int l9_5268=l9_5267;
l9_5266=1-l9_5268;
}
else
{
int l9_5269=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5269=0;
}
else
{
l9_5269=in.varStereoViewID;
}
int l9_5270=l9_5269;
l9_5266=l9_5270;
}
int l9_5271=l9_5266;
float2 l9_5272=l9_5264;
int l9_5273=sc_ScreenTextureLayout_tmp;
int l9_5274=l9_5271;
float l9_5275=l9_5265;
float2 l9_5276=l9_5272;
int l9_5277=l9_5273;
int l9_5278=l9_5274;
float3 l9_5279=float3(0.0);
if (l9_5277==0)
{
l9_5279=float3(l9_5276,0.0);
}
else
{
if (l9_5277==1)
{
l9_5279=float3(l9_5276.x,(l9_5276.y*0.5)+(0.5-(float(l9_5278)*0.5)),0.0);
}
else
{
l9_5279=float3(l9_5276,float(l9_5278));
}
}
float3 l9_5280=l9_5279;
float3 l9_5281=l9_5280;
float4 l9_5282=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_5281.xy,bias(l9_5275));
float4 l9_5283=l9_5282;
float4 l9_5284=l9_5283;
l9_5247=l9_5284;
}
float4 l9_5285=l9_5247;
float3 l9_5286=l9_5285.xyz;
float3 l9_5287=l9_5286;
float3 l9_5288=l9_5245.xyz;
float3 l9_5289=definedBlend(l9_5287,l9_5288,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_5246=float4(l9_5289.x,l9_5289.y,l9_5289.z,l9_5246.w);
float3 l9_5290=mix(l9_5286,l9_5246.xyz,float3(l9_5245.w));
l9_5246=float4(l9_5290.x,l9_5290.y,l9_5290.z,l9_5246.w);
l9_5246.w=1.0;
float4 l9_5291=l9_5246;
param_35=l9_5291;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_5292=float4(in.varScreenPos.xyz,1.0);
param_35=l9_5292;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_5293=gl_FragCoord;
float l9_5294=fast::clamp(abs(l9_5293.z),0.0,1.0);
float4 l9_5295=float4(l9_5294,1.0-l9_5294,1.0,1.0);
param_35=l9_5295;
}
else
{
float4 l9_5296=param_35;
float4 l9_5297=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_5297=float4(mix(float3(1.0),l9_5296.xyz,float3(l9_5296.w)),l9_5296.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_5298=l9_5296.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_5298=fast::clamp(l9_5298,0.0,1.0);
}
l9_5297=float4(l9_5296.xyz*l9_5298,l9_5298);
}
else
{
l9_5297=l9_5296;
}
}
float4 l9_5299=l9_5297;
param_35=l9_5299;
}
}
}
}
}
float4 l9_5300=param_35;
FinalColor=l9_5300;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_5301=float4(0.0);
l9_5301=float4(0.0);
float4 l9_5302=l9_5301;
float4 Cost=l9_5302;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_36=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_36,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_37=FinalColor;
float4 l9_5303=param_37;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_5303.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_5303;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float4 VertexColor;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float2 gScreenCoord;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 recolorRed;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float3 recolorGreen;
float3 recolorBlue;
float progress_value;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float reflectionIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float rimExponent;
float4 Port_Import_N042;
float Port_Input1_N044;
float Port_Import_N088;
float3 Port_Import_N089;
float4 Port_Import_N384;
float Port_Import_N307;
float Port_Import_N201;
float Port_Import_N010;
float Port_Import_N007;
float2 Port_Import_N008;
float2 Port_Import_N009;
float Port_Speed_N022;
float Port_Import_N012;
float2 Port_Import_N254;
float Port_Import_N055;
float Port_Import_N056;
float2 Port_Import_N000;
float2 Port_Import_N060;
float2 Port_Import_N061;
float Port_Speed_N063;
float Port_Import_N065;
float2 Port_Import_N255;
float4 Port_Default_N369;
float4 Port_Import_N092;
float3 Port_Import_N090;
float3 Port_Import_N091;
float3 Port_Import_N144;
float Port_Value2_N073;
float Port_Import_N336;
float Port_Import_N160;
float2 Port_Import_N167;
float2 Port_Import_N207;
float Port_Strength1_N200;
float Port_Import_N095;
float Port_Import_N108;
float3 Port_Default_N113;
float Port_Strength2_N200;
float Port_Import_N273;
float Port_Input1_N274;
float Port_Import_N131;
float Port_Import_N116;
float2 Port_Import_N120;
float2 Port_Import_N127;
float4 Port_Default_N132;
float3 Port_Import_N295;
float Port_Import_N296;
float Port_Import_N133;
float Port_Import_N231;
float3 Port_Import_N327;
float3 Port_Input1_N257;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float Port_Import_N123;
float Port_Import_N025;
float2 Port_Import_N030;
float2 Port_Import_N031;
float3 Port_Default_N041;
float3 Port_Default_N134;
float3 Port_Import_N298;
float Port_Import_N172;
float3 Port_Import_N318;
float Port_Import_N319;
float Port_Import_N171;
float Port_Import_N135;
float2 Port_Import_N150;
float2 Port_Import_N152;
float3 Port_Default_N170;
float Port_Import_N339;
float3 Port_Import_N328;
float Port_Import_N340;
float3 Port_Default_N173;
float3 Port_Import_N306;
float3 Port_AO_N036;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> normalTex [[id(8)]];
texture2d<float> reflectionModulationTex [[id(9)]];
texture2d<float> reflectionTex [[id(10)]];
texture2d<float> rimColorTex [[id(11)]];
texture2d<float> sc_EnvmapDiffuse [[id(12)]];
texture2d<float> sc_EnvmapSpecular [[id(13)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(22)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
sampler baseTexSmpSC [[id(31)]];
sampler detailNormalTexSmpSC [[id(32)]];
sampler emissiveTexSmpSC [[id(33)]];
sampler intensityTextureSmpSC [[id(34)]];
sampler normalTexSmpSC [[id(35)]];
sampler reflectionModulationTexSmpSC [[id(36)]];
sampler reflectionTexSmpSC [[id(37)]];
sampler rimColorTexSmpSC [[id(38)]];
sampler sc_EnvmapDiffuseSmpSC [[id(39)]];
sampler sc_EnvmapSpecularSmpSC [[id(40)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(42)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(43)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(44)]];
sampler sc_RayTracingShadowsSmpSC [[id(46)]];
sampler sc_SSAOTextureSmpSC [[id(47)]];
sampler sc_ScreenTextureSmpSC [[id(48)]];
sampler sc_ShadowTextureSmpSC [[id(49)]];
constant userUniformsObj* UserUniforms [[id(51)]];
};
struct main_recv_out
{
uint4 sc_RayTracingPositionAndMask [[color(0)]];
uint4 sc_RayTracingNormalAndMore [[color(1)]];
};
struct main_recv_in
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_recv_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexColor=in.varColor;
Globals.Surface_UVCoord0=in.varTex01.xy;
Globals.Surface_UVCoord1=in.varTex01.zw;
float4 l9_0=gl_FragCoord;
float2 l9_1=l9_0.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2=l9_1;
float2 l9_3=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4=1;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
int l9_7=l9_6;
float3 l9_8=float3(l9_2,0.0);
int l9_9=l9_4;
int l9_10=l9_7;
if (l9_9==1)
{
l9_8.y=((2.0*l9_8.y)+float(l9_10))-1.0;
}
float2 l9_11=l9_8.xy;
l9_3=l9_11;
}
else
{
l9_3=l9_2;
}
float2 l9_12=l9_3;
float2 l9_13=l9_12;
Globals.gScreenCoord=l9_13;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.SurfacePosition_WorldSpace=in.varPosAndMotion.xyz;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float4 Result_N363=float4(0.0);
float4 param=float4(0.0);
float4 param_1=float4(0.0);
ssGlobals param_3=Globals;
float4 param_2;
if (NODE_38_DROPLIST_ITEM_tmp==1)
{
float4 l9_14=float4(0.0);
l9_14=param_3.VertexColor;
float3 l9_15=float3(0.0);
float3 l9_16=float3(0.0);
float3 l9_17=float3(0.0);
ssGlobals l9_18=param_3;
float3 l9_19;
if ((int(Tweak_N37_tmp)!=0))
{
float3 l9_20=float3(0.0);
float3 l9_21=(*sc_set0.UserUniforms).recolorRed;
l9_20=l9_21;
float3 l9_22=float3(0.0);
l9_22=l9_20;
float4 l9_23=float4(0.0);
float4 l9_24=(*sc_set0.UserUniforms).baseColor;
l9_23=l9_24;
float4 l9_25=float4(0.0);
l9_25=l9_23;
float4 l9_26=float4(0.0);
float4 l9_27=float4(0.0);
float4 l9_28=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_29=l9_18;
float4 l9_30;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_31=float2(0.0);
float2 l9_32=float2(0.0);
float2 l9_33=float2(0.0);
float2 l9_34=float2(0.0);
float2 l9_35=float2(0.0);
float2 l9_36=float2(0.0);
ssGlobals l9_37=l9_29;
float2 l9_38;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_39=float2(0.0);
l9_39=l9_37.Surface_UVCoord0;
l9_32=l9_39;
l9_38=l9_32;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_40=float2(0.0);
l9_40=l9_37.Surface_UVCoord1;
l9_33=l9_40;
l9_38=l9_33;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_41=float2(0.0);
l9_41=l9_37.Surface_UVCoord0;
float2 l9_42=float2(0.0);
float2 l9_43=float2(0.0);
float2 l9_44=float2(0.0);
ssGlobals l9_45=l9_37;
float2 l9_46;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_47=float2(0.0);
float2 l9_48=float2(0.0);
float2 l9_49=float2(0.0);
float2 l9_50=float2(0.0);
float2 l9_51=float2(0.0);
ssGlobals l9_52=l9_45;
float2 l9_53;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_54=float2(0.0);
l9_54=l9_52.Surface_UVCoord0;
l9_48=l9_54;
l9_53=l9_48;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_55=float2(0.0);
l9_55=l9_52.Surface_UVCoord1;
l9_49=l9_55;
l9_53=l9_49;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_56=float2(0.0);
l9_56=l9_52.gScreenCoord;
l9_50=l9_56;
l9_53=l9_50;
}
else
{
float2 l9_57=float2(0.0);
l9_57=l9_52.Surface_UVCoord0;
l9_51=l9_57;
l9_53=l9_51;
}
}
}
l9_47=l9_53;
float2 l9_58=float2(0.0);
float2 l9_59=(*sc_set0.UserUniforms).uv2Scale;
l9_58=l9_59;
float2 l9_60=float2(0.0);
l9_60=l9_58;
float2 l9_61=float2(0.0);
float2 l9_62=(*sc_set0.UserUniforms).uv2Offset;
l9_61=l9_62;
float2 l9_63=float2(0.0);
l9_63=l9_61;
float2 l9_64=float2(0.0);
l9_64=(l9_47*l9_60)+l9_63;
float2 l9_65=float2(0.0);
l9_65=l9_64+(l9_63*(l9_45.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_43=l9_65;
l9_46=l9_43;
}
else
{
float2 l9_66=float2(0.0);
float2 l9_67=float2(0.0);
float2 l9_68=float2(0.0);
float2 l9_69=float2(0.0);
float2 l9_70=float2(0.0);
ssGlobals l9_71=l9_45;
float2 l9_72;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_73=float2(0.0);
l9_73=l9_71.Surface_UVCoord0;
l9_67=l9_73;
l9_72=l9_67;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_74=float2(0.0);
l9_74=l9_71.Surface_UVCoord1;
l9_68=l9_74;
l9_72=l9_68;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_75=float2(0.0);
l9_75=l9_71.gScreenCoord;
l9_69=l9_75;
l9_72=l9_69;
}
else
{
float2 l9_76=float2(0.0);
l9_76=l9_71.Surface_UVCoord0;
l9_70=l9_76;
l9_72=l9_70;
}
}
}
l9_66=l9_72;
float2 l9_77=float2(0.0);
float2 l9_78=(*sc_set0.UserUniforms).uv2Scale;
l9_77=l9_78;
float2 l9_79=float2(0.0);
l9_79=l9_77;
float2 l9_80=float2(0.0);
float2 l9_81=(*sc_set0.UserUniforms).uv2Offset;
l9_80=l9_81;
float2 l9_82=float2(0.0);
l9_82=l9_80;
float2 l9_83=float2(0.0);
l9_83=(l9_66*l9_79)+l9_82;
l9_44=l9_83;
l9_46=l9_44;
}
l9_42=l9_46;
float l9_84=0.0;
float l9_85;
if ((int(Tweak_N67_tmp)!=0))
{
l9_85=1.001;
}
else
{
l9_85=0.001;
}
l9_85-=0.001;
l9_84=l9_85;
float l9_86=0.0;
l9_86=l9_84;
float2 l9_87=float2(0.0);
l9_87=mix(l9_41,l9_42,float2(l9_86));
float2 l9_88=float2(0.0);
l9_88=l9_87;
float2 l9_89=float2(0.0);
l9_89=l9_88;
l9_34=l9_89;
l9_38=l9_34;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_90=float2(0.0);
l9_90=l9_37.Surface_UVCoord0;
float2 l9_91=float2(0.0);
float2 l9_92=float2(0.0);
float2 l9_93=float2(0.0);
ssGlobals l9_94=l9_37;
float2 l9_95;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_96=float2(0.0);
float2 l9_97=float2(0.0);
float2 l9_98=float2(0.0);
float2 l9_99=float2(0.0);
float2 l9_100=float2(0.0);
float2 l9_101=float2(0.0);
ssGlobals l9_102=l9_94;
float2 l9_103;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_104=float2(0.0);
l9_104=l9_102.Surface_UVCoord0;
l9_97=l9_104;
l9_103=l9_97;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_105=float2(0.0);
l9_105=l9_102.Surface_UVCoord1;
l9_98=l9_105;
l9_103=l9_98;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_106=float2(0.0);
l9_106=l9_102.gScreenCoord;
l9_99=l9_106;
l9_103=l9_99;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_107=float2(0.0);
l9_107=l9_102.Surface_UVCoord0;
float2 l9_108=float2(0.0);
float2 l9_109=float2(0.0);
float2 l9_110=float2(0.0);
ssGlobals l9_111=l9_102;
float2 l9_112;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_113=float2(0.0);
float2 l9_114=float2(0.0);
float2 l9_115=float2(0.0);
float2 l9_116=float2(0.0);
float2 l9_117=float2(0.0);
ssGlobals l9_118=l9_111;
float2 l9_119;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_120=float2(0.0);
l9_120=l9_118.Surface_UVCoord0;
l9_114=l9_120;
l9_119=l9_114;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_121=float2(0.0);
l9_121=l9_118.Surface_UVCoord1;
l9_115=l9_121;
l9_119=l9_115;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_122=float2(0.0);
l9_122=l9_118.gScreenCoord;
l9_116=l9_122;
l9_119=l9_116;
}
else
{
float2 l9_123=float2(0.0);
l9_123=l9_118.Surface_UVCoord0;
l9_117=l9_123;
l9_119=l9_117;
}
}
}
l9_113=l9_119;
float2 l9_124=float2(0.0);
float2 l9_125=(*sc_set0.UserUniforms).uv2Scale;
l9_124=l9_125;
float2 l9_126=float2(0.0);
l9_126=l9_124;
float2 l9_127=float2(0.0);
float2 l9_128=(*sc_set0.UserUniforms).uv2Offset;
l9_127=l9_128;
float2 l9_129=float2(0.0);
l9_129=l9_127;
float2 l9_130=float2(0.0);
l9_130=(l9_113*l9_126)+l9_129;
float2 l9_131=float2(0.0);
l9_131=l9_130+(l9_129*(l9_111.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_109=l9_131;
l9_112=l9_109;
}
else
{
float2 l9_132=float2(0.0);
float2 l9_133=float2(0.0);
float2 l9_134=float2(0.0);
float2 l9_135=float2(0.0);
float2 l9_136=float2(0.0);
ssGlobals l9_137=l9_111;
float2 l9_138;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_139=float2(0.0);
l9_139=l9_137.Surface_UVCoord0;
l9_133=l9_139;
l9_138=l9_133;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_140=float2(0.0);
l9_140=l9_137.Surface_UVCoord1;
l9_134=l9_140;
l9_138=l9_134;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_141=float2(0.0);
l9_141=l9_137.gScreenCoord;
l9_135=l9_141;
l9_138=l9_135;
}
else
{
float2 l9_142=float2(0.0);
l9_142=l9_137.Surface_UVCoord0;
l9_136=l9_142;
l9_138=l9_136;
}
}
}
l9_132=l9_138;
float2 l9_143=float2(0.0);
float2 l9_144=(*sc_set0.UserUniforms).uv2Scale;
l9_143=l9_144;
float2 l9_145=float2(0.0);
l9_145=l9_143;
float2 l9_146=float2(0.0);
float2 l9_147=(*sc_set0.UserUniforms).uv2Offset;
l9_146=l9_147;
float2 l9_148=float2(0.0);
l9_148=l9_146;
float2 l9_149=float2(0.0);
l9_149=(l9_132*l9_145)+l9_148;
l9_110=l9_149;
l9_112=l9_110;
}
l9_108=l9_112;
float l9_150=0.0;
float l9_151;
if ((int(Tweak_N67_tmp)!=0))
{
l9_151=1.001;
}
else
{
l9_151=0.001;
}
l9_151-=0.001;
l9_150=l9_151;
float l9_152=0.0;
l9_152=l9_150;
float2 l9_153=float2(0.0);
l9_153=mix(l9_107,l9_108,float2(l9_152));
float2 l9_154=float2(0.0);
l9_154=l9_153;
float2 l9_155=float2(0.0);
l9_155=l9_154;
l9_100=l9_155;
l9_103=l9_100;
}
else
{
float2 l9_156=float2(0.0);
l9_156=l9_102.Surface_UVCoord0;
l9_101=l9_156;
l9_103=l9_101;
}
}
}
}
l9_96=l9_103;
float2 l9_157=float2(0.0);
float2 l9_158=(*sc_set0.UserUniforms).uv3Scale;
l9_157=l9_158;
float2 l9_159=float2(0.0);
l9_159=l9_157;
float2 l9_160=float2(0.0);
float2 l9_161=(*sc_set0.UserUniforms).uv3Offset;
l9_160=l9_161;
float2 l9_162=float2(0.0);
l9_162=l9_160;
float2 l9_163=float2(0.0);
l9_163=(l9_96*l9_159)+l9_162;
float2 l9_164=float2(0.0);
l9_164=l9_163+(l9_162*(l9_94.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_92=l9_164;
l9_95=l9_92;
}
else
{
float2 l9_165=float2(0.0);
float2 l9_166=float2(0.0);
float2 l9_167=float2(0.0);
float2 l9_168=float2(0.0);
float2 l9_169=float2(0.0);
float2 l9_170=float2(0.0);
ssGlobals l9_171=l9_94;
float2 l9_172;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_173=float2(0.0);
l9_173=l9_171.Surface_UVCoord0;
l9_166=l9_173;
l9_172=l9_166;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_174=float2(0.0);
l9_174=l9_171.Surface_UVCoord1;
l9_167=l9_174;
l9_172=l9_167;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_175=float2(0.0);
l9_175=l9_171.gScreenCoord;
l9_168=l9_175;
l9_172=l9_168;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_176=float2(0.0);
l9_176=l9_171.Surface_UVCoord0;
float2 l9_177=float2(0.0);
float2 l9_178=float2(0.0);
float2 l9_179=float2(0.0);
ssGlobals l9_180=l9_171;
float2 l9_181;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_182=float2(0.0);
float2 l9_183=float2(0.0);
float2 l9_184=float2(0.0);
float2 l9_185=float2(0.0);
float2 l9_186=float2(0.0);
ssGlobals l9_187=l9_180;
float2 l9_188;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_189=float2(0.0);
l9_189=l9_187.Surface_UVCoord0;
l9_183=l9_189;
l9_188=l9_183;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_190=float2(0.0);
l9_190=l9_187.Surface_UVCoord1;
l9_184=l9_190;
l9_188=l9_184;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_191=float2(0.0);
l9_191=l9_187.gScreenCoord;
l9_185=l9_191;
l9_188=l9_185;
}
else
{
float2 l9_192=float2(0.0);
l9_192=l9_187.Surface_UVCoord0;
l9_186=l9_192;
l9_188=l9_186;
}
}
}
l9_182=l9_188;
float2 l9_193=float2(0.0);
float2 l9_194=(*sc_set0.UserUniforms).uv2Scale;
l9_193=l9_194;
float2 l9_195=float2(0.0);
l9_195=l9_193;
float2 l9_196=float2(0.0);
float2 l9_197=(*sc_set0.UserUniforms).uv2Offset;
l9_196=l9_197;
float2 l9_198=float2(0.0);
l9_198=l9_196;
float2 l9_199=float2(0.0);
l9_199=(l9_182*l9_195)+l9_198;
float2 l9_200=float2(0.0);
l9_200=l9_199+(l9_198*(l9_180.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_178=l9_200;
l9_181=l9_178;
}
else
{
float2 l9_201=float2(0.0);
float2 l9_202=float2(0.0);
float2 l9_203=float2(0.0);
float2 l9_204=float2(0.0);
float2 l9_205=float2(0.0);
ssGlobals l9_206=l9_180;
float2 l9_207;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_208=float2(0.0);
l9_208=l9_206.Surface_UVCoord0;
l9_202=l9_208;
l9_207=l9_202;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_209=float2(0.0);
l9_209=l9_206.Surface_UVCoord1;
l9_203=l9_209;
l9_207=l9_203;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_210=float2(0.0);
l9_210=l9_206.gScreenCoord;
l9_204=l9_210;
l9_207=l9_204;
}
else
{
float2 l9_211=float2(0.0);
l9_211=l9_206.Surface_UVCoord0;
l9_205=l9_211;
l9_207=l9_205;
}
}
}
l9_201=l9_207;
float2 l9_212=float2(0.0);
float2 l9_213=(*sc_set0.UserUniforms).uv2Scale;
l9_212=l9_213;
float2 l9_214=float2(0.0);
l9_214=l9_212;
float2 l9_215=float2(0.0);
float2 l9_216=(*sc_set0.UserUniforms).uv2Offset;
l9_215=l9_216;
float2 l9_217=float2(0.0);
l9_217=l9_215;
float2 l9_218=float2(0.0);
l9_218=(l9_201*l9_214)+l9_217;
l9_179=l9_218;
l9_181=l9_179;
}
l9_177=l9_181;
float l9_219=0.0;
float l9_220;
if ((int(Tweak_N67_tmp)!=0))
{
l9_220=1.001;
}
else
{
l9_220=0.001;
}
l9_220-=0.001;
l9_219=l9_220;
float l9_221=0.0;
l9_221=l9_219;
float2 l9_222=float2(0.0);
l9_222=mix(l9_176,l9_177,float2(l9_221));
float2 l9_223=float2(0.0);
l9_223=l9_222;
float2 l9_224=float2(0.0);
l9_224=l9_223;
l9_169=l9_224;
l9_172=l9_169;
}
else
{
float2 l9_225=float2(0.0);
l9_225=l9_171.Surface_UVCoord0;
l9_170=l9_225;
l9_172=l9_170;
}
}
}
}
l9_165=l9_172;
float2 l9_226=float2(0.0);
float2 l9_227=(*sc_set0.UserUniforms).uv3Scale;
l9_226=l9_227;
float2 l9_228=float2(0.0);
l9_228=l9_226;
float2 l9_229=float2(0.0);
float2 l9_230=(*sc_set0.UserUniforms).uv3Offset;
l9_229=l9_230;
float2 l9_231=float2(0.0);
l9_231=l9_229;
float2 l9_232=float2(0.0);
l9_232=(l9_165*l9_228)+l9_231;
l9_93=l9_232;
l9_95=l9_93;
}
l9_91=l9_95;
float l9_233=0.0;
float l9_234;
if ((int(Tweak_N11_tmp)!=0))
{
l9_234=1.001;
}
else
{
l9_234=0.001;
}
l9_234-=0.001;
l9_233=l9_234;
float l9_235=0.0;
l9_235=l9_233;
float2 l9_236=float2(0.0);
l9_236=mix(l9_90,l9_91,float2(l9_235));
float2 l9_237=float2(0.0);
l9_237=l9_236;
float2 l9_238=float2(0.0);
l9_238=l9_237;
l9_35=l9_238;
l9_38=l9_35;
}
else
{
float2 l9_239=float2(0.0);
l9_239=l9_37.Surface_UVCoord0;
l9_36=l9_239;
l9_38=l9_36;
}
}
}
}
l9_31=l9_38;
float4 l9_240=float4(0.0);
int l9_241;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_242=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_242=0;
}
else
{
l9_242=in.varStereoViewID;
}
int l9_243=l9_242;
l9_241=1-l9_243;
}
else
{
int l9_244=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_244=0;
}
else
{
l9_244=in.varStereoViewID;
}
int l9_245=l9_244;
l9_241=l9_245;
}
int l9_246=l9_241;
int l9_247=baseTexLayout_tmp;
int l9_248=l9_246;
float2 l9_249=l9_31;
bool l9_250=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_251=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_252=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_253=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_254=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_255=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_256=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_257=0.0;
bool l9_258=l9_255&&(!l9_253);
float l9_259=1.0;
float l9_260=l9_249.x;
int l9_261=l9_252.x;
if (l9_261==1)
{
l9_260=fract(l9_260);
}
else
{
if (l9_261==2)
{
float l9_262=fract(l9_260);
float l9_263=l9_260-l9_262;
float l9_264=step(0.25,fract(l9_263*0.5));
l9_260=mix(l9_262,1.0-l9_262,fast::clamp(l9_264,0.0,1.0));
}
}
l9_249.x=l9_260;
float l9_265=l9_249.y;
int l9_266=l9_252.y;
if (l9_266==1)
{
l9_265=fract(l9_265);
}
else
{
if (l9_266==2)
{
float l9_267=fract(l9_265);
float l9_268=l9_265-l9_267;
float l9_269=step(0.25,fract(l9_268*0.5));
l9_265=mix(l9_267,1.0-l9_267,fast::clamp(l9_269,0.0,1.0));
}
}
l9_249.y=l9_265;
if (l9_253)
{
bool l9_270=l9_255;
bool l9_271;
if (l9_270)
{
l9_271=l9_252.x==3;
}
else
{
l9_271=l9_270;
}
float l9_272=l9_249.x;
float l9_273=l9_254.x;
float l9_274=l9_254.z;
bool l9_275=l9_271;
float l9_276=l9_259;
float l9_277=fast::clamp(l9_272,l9_273,l9_274);
float l9_278=step(abs(l9_272-l9_277),9.9999997e-06);
l9_276*=(l9_278+((1.0-float(l9_275))*(1.0-l9_278)));
l9_272=l9_277;
l9_249.x=l9_272;
l9_259=l9_276;
bool l9_279=l9_255;
bool l9_280;
if (l9_279)
{
l9_280=l9_252.y==3;
}
else
{
l9_280=l9_279;
}
float l9_281=l9_249.y;
float l9_282=l9_254.y;
float l9_283=l9_254.w;
bool l9_284=l9_280;
float l9_285=l9_259;
float l9_286=fast::clamp(l9_281,l9_282,l9_283);
float l9_287=step(abs(l9_281-l9_286),9.9999997e-06);
l9_285*=(l9_287+((1.0-float(l9_284))*(1.0-l9_287)));
l9_281=l9_286;
l9_249.y=l9_281;
l9_259=l9_285;
}
float2 l9_288=l9_249;
bool l9_289=l9_250;
float3x3 l9_290=l9_251;
if (l9_289)
{
l9_288=float2((l9_290*float3(l9_288,1.0)).xy);
}
float2 l9_291=l9_288;
l9_249=l9_291;
float l9_292=l9_249.x;
int l9_293=l9_252.x;
bool l9_294=l9_258;
float l9_295=l9_259;
if ((l9_293==0)||(l9_293==3))
{
float l9_296=l9_292;
float l9_297=0.0;
float l9_298=1.0;
bool l9_299=l9_294;
float l9_300=l9_295;
float l9_301=fast::clamp(l9_296,l9_297,l9_298);
float l9_302=step(abs(l9_296-l9_301),9.9999997e-06);
l9_300*=(l9_302+((1.0-float(l9_299))*(1.0-l9_302)));
l9_296=l9_301;
l9_292=l9_296;
l9_295=l9_300;
}
l9_249.x=l9_292;
l9_259=l9_295;
float l9_303=l9_249.y;
int l9_304=l9_252.y;
bool l9_305=l9_258;
float l9_306=l9_259;
if ((l9_304==0)||(l9_304==3))
{
float l9_307=l9_303;
float l9_308=0.0;
float l9_309=1.0;
bool l9_310=l9_305;
float l9_311=l9_306;
float l9_312=fast::clamp(l9_307,l9_308,l9_309);
float l9_313=step(abs(l9_307-l9_312),9.9999997e-06);
l9_311*=(l9_313+((1.0-float(l9_310))*(1.0-l9_313)));
l9_307=l9_312;
l9_303=l9_307;
l9_306=l9_311;
}
l9_249.y=l9_303;
l9_259=l9_306;
float2 l9_314=l9_249;
int l9_315=l9_247;
int l9_316=l9_248;
float l9_317=l9_257;
float2 l9_318=l9_314;
int l9_319=l9_315;
int l9_320=l9_316;
float3 l9_321=float3(0.0);
if (l9_319==0)
{
l9_321=float3(l9_318,0.0);
}
else
{
if (l9_319==1)
{
l9_321=float3(l9_318.x,(l9_318.y*0.5)+(0.5-(float(l9_320)*0.5)),0.0);
}
else
{
l9_321=float3(l9_318,float(l9_320));
}
}
float3 l9_322=l9_321;
float3 l9_323=l9_322;
float4 l9_324=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_323.xy,bias(l9_317));
float4 l9_325=l9_324;
if (l9_255)
{
l9_325=mix(l9_256,l9_325,float4(l9_259));
}
float4 l9_326=l9_325;
l9_240=l9_326;
l9_27=l9_240;
l9_30=l9_27;
}
else
{
l9_30=l9_28;
}
l9_26=l9_30;
float4 l9_327=float4(0.0);
l9_327=l9_25*l9_26;
float4 l9_328=float4(0.0);
l9_328=l9_327;
float4 l9_329=float4(0.0);
l9_329=l9_328;
float l9_330=0.0;
float l9_331=0.0;
float l9_332=0.0;
float3 l9_333=l9_329.xyz;
float l9_334=l9_333.x;
float l9_335=l9_333.y;
float l9_336=l9_333.z;
l9_330=l9_334;
l9_331=l9_335;
l9_332=l9_336;
float3 l9_337=float3(0.0);
l9_337=l9_22*float3(l9_330);
float3 l9_338=float3(0.0);
float3 l9_339=(*sc_set0.UserUniforms).recolorGreen;
l9_338=l9_339;
float3 l9_340=float3(0.0);
l9_340=l9_338;
float3 l9_341=float3(0.0);
l9_341=l9_340*float3(l9_331);
float3 l9_342=float3(0.0);
float3 l9_343=(*sc_set0.UserUniforms).recolorBlue;
l9_342=l9_343;
float3 l9_344=float3(0.0);
l9_344=l9_342;
float3 l9_345=float3(0.0);
l9_345=l9_344*float3(l9_332);
float3 l9_346=float3(0.0);
l9_346=(l9_337+l9_341)+l9_345;
l9_16=l9_346;
l9_19=l9_16;
}
else
{
float4 l9_347=float4(0.0);
float4 l9_348=(*sc_set0.UserUniforms).baseColor;
l9_347=l9_348;
float4 l9_349=float4(0.0);
l9_349=l9_347;
float4 l9_350=float4(0.0);
float4 l9_351=float4(0.0);
float4 l9_352=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_353=l9_18;
float4 l9_354;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_355=float2(0.0);
float2 l9_356=float2(0.0);
float2 l9_357=float2(0.0);
float2 l9_358=float2(0.0);
float2 l9_359=float2(0.0);
float2 l9_360=float2(0.0);
ssGlobals l9_361=l9_353;
float2 l9_362;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_363=float2(0.0);
l9_363=l9_361.Surface_UVCoord0;
l9_356=l9_363;
l9_362=l9_356;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_364=float2(0.0);
l9_364=l9_361.Surface_UVCoord1;
l9_357=l9_364;
l9_362=l9_357;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_365=float2(0.0);
l9_365=l9_361.Surface_UVCoord0;
float2 l9_366=float2(0.0);
float2 l9_367=float2(0.0);
float2 l9_368=float2(0.0);
ssGlobals l9_369=l9_361;
float2 l9_370;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_371=float2(0.0);
float2 l9_372=float2(0.0);
float2 l9_373=float2(0.0);
float2 l9_374=float2(0.0);
float2 l9_375=float2(0.0);
ssGlobals l9_376=l9_369;
float2 l9_377;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_378=float2(0.0);
l9_378=l9_376.Surface_UVCoord0;
l9_372=l9_378;
l9_377=l9_372;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_379=float2(0.0);
l9_379=l9_376.Surface_UVCoord1;
l9_373=l9_379;
l9_377=l9_373;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_380=float2(0.0);
l9_380=l9_376.gScreenCoord;
l9_374=l9_380;
l9_377=l9_374;
}
else
{
float2 l9_381=float2(0.0);
l9_381=l9_376.Surface_UVCoord0;
l9_375=l9_381;
l9_377=l9_375;
}
}
}
l9_371=l9_377;
float2 l9_382=float2(0.0);
float2 l9_383=(*sc_set0.UserUniforms).uv2Scale;
l9_382=l9_383;
float2 l9_384=float2(0.0);
l9_384=l9_382;
float2 l9_385=float2(0.0);
float2 l9_386=(*sc_set0.UserUniforms).uv2Offset;
l9_385=l9_386;
float2 l9_387=float2(0.0);
l9_387=l9_385;
float2 l9_388=float2(0.0);
l9_388=(l9_371*l9_384)+l9_387;
float2 l9_389=float2(0.0);
l9_389=l9_388+(l9_387*(l9_369.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_367=l9_389;
l9_370=l9_367;
}
else
{
float2 l9_390=float2(0.0);
float2 l9_391=float2(0.0);
float2 l9_392=float2(0.0);
float2 l9_393=float2(0.0);
float2 l9_394=float2(0.0);
ssGlobals l9_395=l9_369;
float2 l9_396;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_397=float2(0.0);
l9_397=l9_395.Surface_UVCoord0;
l9_391=l9_397;
l9_396=l9_391;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_398=float2(0.0);
l9_398=l9_395.Surface_UVCoord1;
l9_392=l9_398;
l9_396=l9_392;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_399=float2(0.0);
l9_399=l9_395.gScreenCoord;
l9_393=l9_399;
l9_396=l9_393;
}
else
{
float2 l9_400=float2(0.0);
l9_400=l9_395.Surface_UVCoord0;
l9_394=l9_400;
l9_396=l9_394;
}
}
}
l9_390=l9_396;
float2 l9_401=float2(0.0);
float2 l9_402=(*sc_set0.UserUniforms).uv2Scale;
l9_401=l9_402;
float2 l9_403=float2(0.0);
l9_403=l9_401;
float2 l9_404=float2(0.0);
float2 l9_405=(*sc_set0.UserUniforms).uv2Offset;
l9_404=l9_405;
float2 l9_406=float2(0.0);
l9_406=l9_404;
float2 l9_407=float2(0.0);
l9_407=(l9_390*l9_403)+l9_406;
l9_368=l9_407;
l9_370=l9_368;
}
l9_366=l9_370;
float l9_408=0.0;
float l9_409;
if ((int(Tweak_N67_tmp)!=0))
{
l9_409=1.001;
}
else
{
l9_409=0.001;
}
l9_409-=0.001;
l9_408=l9_409;
float l9_410=0.0;
l9_410=l9_408;
float2 l9_411=float2(0.0);
l9_411=mix(l9_365,l9_366,float2(l9_410));
float2 l9_412=float2(0.0);
l9_412=l9_411;
float2 l9_413=float2(0.0);
l9_413=l9_412;
l9_358=l9_413;
l9_362=l9_358;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_414=float2(0.0);
l9_414=l9_361.Surface_UVCoord0;
float2 l9_415=float2(0.0);
float2 l9_416=float2(0.0);
float2 l9_417=float2(0.0);
ssGlobals l9_418=l9_361;
float2 l9_419;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_420=float2(0.0);
float2 l9_421=float2(0.0);
float2 l9_422=float2(0.0);
float2 l9_423=float2(0.0);
float2 l9_424=float2(0.0);
float2 l9_425=float2(0.0);
ssGlobals l9_426=l9_418;
float2 l9_427;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_428=float2(0.0);
l9_428=l9_426.Surface_UVCoord0;
l9_421=l9_428;
l9_427=l9_421;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_429=float2(0.0);
l9_429=l9_426.Surface_UVCoord1;
l9_422=l9_429;
l9_427=l9_422;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_430=float2(0.0);
l9_430=l9_426.gScreenCoord;
l9_423=l9_430;
l9_427=l9_423;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_431=float2(0.0);
l9_431=l9_426.Surface_UVCoord0;
float2 l9_432=float2(0.0);
float2 l9_433=float2(0.0);
float2 l9_434=float2(0.0);
ssGlobals l9_435=l9_426;
float2 l9_436;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_437=float2(0.0);
float2 l9_438=float2(0.0);
float2 l9_439=float2(0.0);
float2 l9_440=float2(0.0);
float2 l9_441=float2(0.0);
ssGlobals l9_442=l9_435;
float2 l9_443;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_444=float2(0.0);
l9_444=l9_442.Surface_UVCoord0;
l9_438=l9_444;
l9_443=l9_438;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_445=float2(0.0);
l9_445=l9_442.Surface_UVCoord1;
l9_439=l9_445;
l9_443=l9_439;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_446=float2(0.0);
l9_446=l9_442.gScreenCoord;
l9_440=l9_446;
l9_443=l9_440;
}
else
{
float2 l9_447=float2(0.0);
l9_447=l9_442.Surface_UVCoord0;
l9_441=l9_447;
l9_443=l9_441;
}
}
}
l9_437=l9_443;
float2 l9_448=float2(0.0);
float2 l9_449=(*sc_set0.UserUniforms).uv2Scale;
l9_448=l9_449;
float2 l9_450=float2(0.0);
l9_450=l9_448;
float2 l9_451=float2(0.0);
float2 l9_452=(*sc_set0.UserUniforms).uv2Offset;
l9_451=l9_452;
float2 l9_453=float2(0.0);
l9_453=l9_451;
float2 l9_454=float2(0.0);
l9_454=(l9_437*l9_450)+l9_453;
float2 l9_455=float2(0.0);
l9_455=l9_454+(l9_453*(l9_435.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_433=l9_455;
l9_436=l9_433;
}
else
{
float2 l9_456=float2(0.0);
float2 l9_457=float2(0.0);
float2 l9_458=float2(0.0);
float2 l9_459=float2(0.0);
float2 l9_460=float2(0.0);
ssGlobals l9_461=l9_435;
float2 l9_462;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_463=float2(0.0);
l9_463=l9_461.Surface_UVCoord0;
l9_457=l9_463;
l9_462=l9_457;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_464=float2(0.0);
l9_464=l9_461.Surface_UVCoord1;
l9_458=l9_464;
l9_462=l9_458;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_465=float2(0.0);
l9_465=l9_461.gScreenCoord;
l9_459=l9_465;
l9_462=l9_459;
}
else
{
float2 l9_466=float2(0.0);
l9_466=l9_461.Surface_UVCoord0;
l9_460=l9_466;
l9_462=l9_460;
}
}
}
l9_456=l9_462;
float2 l9_467=float2(0.0);
float2 l9_468=(*sc_set0.UserUniforms).uv2Scale;
l9_467=l9_468;
float2 l9_469=float2(0.0);
l9_469=l9_467;
float2 l9_470=float2(0.0);
float2 l9_471=(*sc_set0.UserUniforms).uv2Offset;
l9_470=l9_471;
float2 l9_472=float2(0.0);
l9_472=l9_470;
float2 l9_473=float2(0.0);
l9_473=(l9_456*l9_469)+l9_472;
l9_434=l9_473;
l9_436=l9_434;
}
l9_432=l9_436;
float l9_474=0.0;
float l9_475;
if ((int(Tweak_N67_tmp)!=0))
{
l9_475=1.001;
}
else
{
l9_475=0.001;
}
l9_475-=0.001;
l9_474=l9_475;
float l9_476=0.0;
l9_476=l9_474;
float2 l9_477=float2(0.0);
l9_477=mix(l9_431,l9_432,float2(l9_476));
float2 l9_478=float2(0.0);
l9_478=l9_477;
float2 l9_479=float2(0.0);
l9_479=l9_478;
l9_424=l9_479;
l9_427=l9_424;
}
else
{
float2 l9_480=float2(0.0);
l9_480=l9_426.Surface_UVCoord0;
l9_425=l9_480;
l9_427=l9_425;
}
}
}
}
l9_420=l9_427;
float2 l9_481=float2(0.0);
float2 l9_482=(*sc_set0.UserUniforms).uv3Scale;
l9_481=l9_482;
float2 l9_483=float2(0.0);
l9_483=l9_481;
float2 l9_484=float2(0.0);
float2 l9_485=(*sc_set0.UserUniforms).uv3Offset;
l9_484=l9_485;
float2 l9_486=float2(0.0);
l9_486=l9_484;
float2 l9_487=float2(0.0);
l9_487=(l9_420*l9_483)+l9_486;
float2 l9_488=float2(0.0);
l9_488=l9_487+(l9_486*(l9_418.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_416=l9_488;
l9_419=l9_416;
}
else
{
float2 l9_489=float2(0.0);
float2 l9_490=float2(0.0);
float2 l9_491=float2(0.0);
float2 l9_492=float2(0.0);
float2 l9_493=float2(0.0);
float2 l9_494=float2(0.0);
ssGlobals l9_495=l9_418;
float2 l9_496;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_497=float2(0.0);
l9_497=l9_495.Surface_UVCoord0;
l9_490=l9_497;
l9_496=l9_490;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_498=float2(0.0);
l9_498=l9_495.Surface_UVCoord1;
l9_491=l9_498;
l9_496=l9_491;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_499=float2(0.0);
l9_499=l9_495.gScreenCoord;
l9_492=l9_499;
l9_496=l9_492;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_500=float2(0.0);
l9_500=l9_495.Surface_UVCoord0;
float2 l9_501=float2(0.0);
float2 l9_502=float2(0.0);
float2 l9_503=float2(0.0);
ssGlobals l9_504=l9_495;
float2 l9_505;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_506=float2(0.0);
float2 l9_507=float2(0.0);
float2 l9_508=float2(0.0);
float2 l9_509=float2(0.0);
float2 l9_510=float2(0.0);
ssGlobals l9_511=l9_504;
float2 l9_512;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_513=float2(0.0);
l9_513=l9_511.Surface_UVCoord0;
l9_507=l9_513;
l9_512=l9_507;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_514=float2(0.0);
l9_514=l9_511.Surface_UVCoord1;
l9_508=l9_514;
l9_512=l9_508;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_515=float2(0.0);
l9_515=l9_511.gScreenCoord;
l9_509=l9_515;
l9_512=l9_509;
}
else
{
float2 l9_516=float2(0.0);
l9_516=l9_511.Surface_UVCoord0;
l9_510=l9_516;
l9_512=l9_510;
}
}
}
l9_506=l9_512;
float2 l9_517=float2(0.0);
float2 l9_518=(*sc_set0.UserUniforms).uv2Scale;
l9_517=l9_518;
float2 l9_519=float2(0.0);
l9_519=l9_517;
float2 l9_520=float2(0.0);
float2 l9_521=(*sc_set0.UserUniforms).uv2Offset;
l9_520=l9_521;
float2 l9_522=float2(0.0);
l9_522=l9_520;
float2 l9_523=float2(0.0);
l9_523=(l9_506*l9_519)+l9_522;
float2 l9_524=float2(0.0);
l9_524=l9_523+(l9_522*(l9_504.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_502=l9_524;
l9_505=l9_502;
}
else
{
float2 l9_525=float2(0.0);
float2 l9_526=float2(0.0);
float2 l9_527=float2(0.0);
float2 l9_528=float2(0.0);
float2 l9_529=float2(0.0);
ssGlobals l9_530=l9_504;
float2 l9_531;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_532=float2(0.0);
l9_532=l9_530.Surface_UVCoord0;
l9_526=l9_532;
l9_531=l9_526;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_533=float2(0.0);
l9_533=l9_530.Surface_UVCoord1;
l9_527=l9_533;
l9_531=l9_527;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_534=float2(0.0);
l9_534=l9_530.gScreenCoord;
l9_528=l9_534;
l9_531=l9_528;
}
else
{
float2 l9_535=float2(0.0);
l9_535=l9_530.Surface_UVCoord0;
l9_529=l9_535;
l9_531=l9_529;
}
}
}
l9_525=l9_531;
float2 l9_536=float2(0.0);
float2 l9_537=(*sc_set0.UserUniforms).uv2Scale;
l9_536=l9_537;
float2 l9_538=float2(0.0);
l9_538=l9_536;
float2 l9_539=float2(0.0);
float2 l9_540=(*sc_set0.UserUniforms).uv2Offset;
l9_539=l9_540;
float2 l9_541=float2(0.0);
l9_541=l9_539;
float2 l9_542=float2(0.0);
l9_542=(l9_525*l9_538)+l9_541;
l9_503=l9_542;
l9_505=l9_503;
}
l9_501=l9_505;
float l9_543=0.0;
float l9_544;
if ((int(Tweak_N67_tmp)!=0))
{
l9_544=1.001;
}
else
{
l9_544=0.001;
}
l9_544-=0.001;
l9_543=l9_544;
float l9_545=0.0;
l9_545=l9_543;
float2 l9_546=float2(0.0);
l9_546=mix(l9_500,l9_501,float2(l9_545));
float2 l9_547=float2(0.0);
l9_547=l9_546;
float2 l9_548=float2(0.0);
l9_548=l9_547;
l9_493=l9_548;
l9_496=l9_493;
}
else
{
float2 l9_549=float2(0.0);
l9_549=l9_495.Surface_UVCoord0;
l9_494=l9_549;
l9_496=l9_494;
}
}
}
}
l9_489=l9_496;
float2 l9_550=float2(0.0);
float2 l9_551=(*sc_set0.UserUniforms).uv3Scale;
l9_550=l9_551;
float2 l9_552=float2(0.0);
l9_552=l9_550;
float2 l9_553=float2(0.0);
float2 l9_554=(*sc_set0.UserUniforms).uv3Offset;
l9_553=l9_554;
float2 l9_555=float2(0.0);
l9_555=l9_553;
float2 l9_556=float2(0.0);
l9_556=(l9_489*l9_552)+l9_555;
l9_417=l9_556;
l9_419=l9_417;
}
l9_415=l9_419;
float l9_557=0.0;
float l9_558;
if ((int(Tweak_N11_tmp)!=0))
{
l9_558=1.001;
}
else
{
l9_558=0.001;
}
l9_558-=0.001;
l9_557=l9_558;
float l9_559=0.0;
l9_559=l9_557;
float2 l9_560=float2(0.0);
l9_560=mix(l9_414,l9_415,float2(l9_559));
float2 l9_561=float2(0.0);
l9_561=l9_560;
float2 l9_562=float2(0.0);
l9_562=l9_561;
l9_359=l9_562;
l9_362=l9_359;
}
else
{
float2 l9_563=float2(0.0);
l9_563=l9_361.Surface_UVCoord0;
l9_360=l9_563;
l9_362=l9_360;
}
}
}
}
l9_355=l9_362;
float4 l9_564=float4(0.0);
int l9_565;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_566=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_566=0;
}
else
{
l9_566=in.varStereoViewID;
}
int l9_567=l9_566;
l9_565=1-l9_567;
}
else
{
int l9_568=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_568=0;
}
else
{
l9_568=in.varStereoViewID;
}
int l9_569=l9_568;
l9_565=l9_569;
}
int l9_570=l9_565;
int l9_571=baseTexLayout_tmp;
int l9_572=l9_570;
float2 l9_573=l9_355;
bool l9_574=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_575=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_576=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_577=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_578=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_579=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_580=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_581=0.0;
bool l9_582=l9_579&&(!l9_577);
float l9_583=1.0;
float l9_584=l9_573.x;
int l9_585=l9_576.x;
if (l9_585==1)
{
l9_584=fract(l9_584);
}
else
{
if (l9_585==2)
{
float l9_586=fract(l9_584);
float l9_587=l9_584-l9_586;
float l9_588=step(0.25,fract(l9_587*0.5));
l9_584=mix(l9_586,1.0-l9_586,fast::clamp(l9_588,0.0,1.0));
}
}
l9_573.x=l9_584;
float l9_589=l9_573.y;
int l9_590=l9_576.y;
if (l9_590==1)
{
l9_589=fract(l9_589);
}
else
{
if (l9_590==2)
{
float l9_591=fract(l9_589);
float l9_592=l9_589-l9_591;
float l9_593=step(0.25,fract(l9_592*0.5));
l9_589=mix(l9_591,1.0-l9_591,fast::clamp(l9_593,0.0,1.0));
}
}
l9_573.y=l9_589;
if (l9_577)
{
bool l9_594=l9_579;
bool l9_595;
if (l9_594)
{
l9_595=l9_576.x==3;
}
else
{
l9_595=l9_594;
}
float l9_596=l9_573.x;
float l9_597=l9_578.x;
float l9_598=l9_578.z;
bool l9_599=l9_595;
float l9_600=l9_583;
float l9_601=fast::clamp(l9_596,l9_597,l9_598);
float l9_602=step(abs(l9_596-l9_601),9.9999997e-06);
l9_600*=(l9_602+((1.0-float(l9_599))*(1.0-l9_602)));
l9_596=l9_601;
l9_573.x=l9_596;
l9_583=l9_600;
bool l9_603=l9_579;
bool l9_604;
if (l9_603)
{
l9_604=l9_576.y==3;
}
else
{
l9_604=l9_603;
}
float l9_605=l9_573.y;
float l9_606=l9_578.y;
float l9_607=l9_578.w;
bool l9_608=l9_604;
float l9_609=l9_583;
float l9_610=fast::clamp(l9_605,l9_606,l9_607);
float l9_611=step(abs(l9_605-l9_610),9.9999997e-06);
l9_609*=(l9_611+((1.0-float(l9_608))*(1.0-l9_611)));
l9_605=l9_610;
l9_573.y=l9_605;
l9_583=l9_609;
}
float2 l9_612=l9_573;
bool l9_613=l9_574;
float3x3 l9_614=l9_575;
if (l9_613)
{
l9_612=float2((l9_614*float3(l9_612,1.0)).xy);
}
float2 l9_615=l9_612;
l9_573=l9_615;
float l9_616=l9_573.x;
int l9_617=l9_576.x;
bool l9_618=l9_582;
float l9_619=l9_583;
if ((l9_617==0)||(l9_617==3))
{
float l9_620=l9_616;
float l9_621=0.0;
float l9_622=1.0;
bool l9_623=l9_618;
float l9_624=l9_619;
float l9_625=fast::clamp(l9_620,l9_621,l9_622);
float l9_626=step(abs(l9_620-l9_625),9.9999997e-06);
l9_624*=(l9_626+((1.0-float(l9_623))*(1.0-l9_626)));
l9_620=l9_625;
l9_616=l9_620;
l9_619=l9_624;
}
l9_573.x=l9_616;
l9_583=l9_619;
float l9_627=l9_573.y;
int l9_628=l9_576.y;
bool l9_629=l9_582;
float l9_630=l9_583;
if ((l9_628==0)||(l9_628==3))
{
float l9_631=l9_627;
float l9_632=0.0;
float l9_633=1.0;
bool l9_634=l9_629;
float l9_635=l9_630;
float l9_636=fast::clamp(l9_631,l9_632,l9_633);
float l9_637=step(abs(l9_631-l9_636),9.9999997e-06);
l9_635*=(l9_637+((1.0-float(l9_634))*(1.0-l9_637)));
l9_631=l9_636;
l9_627=l9_631;
l9_630=l9_635;
}
l9_573.y=l9_627;
l9_583=l9_630;
float2 l9_638=l9_573;
int l9_639=l9_571;
int l9_640=l9_572;
float l9_641=l9_581;
float2 l9_642=l9_638;
int l9_643=l9_639;
int l9_644=l9_640;
float3 l9_645=float3(0.0);
if (l9_643==0)
{
l9_645=float3(l9_642,0.0);
}
else
{
if (l9_643==1)
{
l9_645=float3(l9_642.x,(l9_642.y*0.5)+(0.5-(float(l9_644)*0.5)),0.0);
}
else
{
l9_645=float3(l9_642,float(l9_644));
}
}
float3 l9_646=l9_645;
float3 l9_647=l9_646;
float4 l9_648=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_647.xy,bias(l9_641));
float4 l9_649=l9_648;
if (l9_579)
{
l9_649=mix(l9_580,l9_649,float4(l9_583));
}
float4 l9_650=l9_649;
l9_564=l9_650;
l9_351=l9_564;
l9_354=l9_351;
}
else
{
l9_354=l9_352;
}
l9_350=l9_354;
float4 l9_651=float4(0.0);
l9_651=l9_349*l9_350;
float4 l9_652=float4(0.0);
l9_652=l9_651;
float4 l9_653=float4(0.0);
l9_653=l9_652;
l9_17=l9_653.xyz;
l9_19=l9_17;
}
l9_15=l9_19;
float3 l9_654=float3(0.0);
l9_654=l9_15;
float3 l9_655=float3(0.0);
l9_655=l9_654;
float4 l9_656=float4(0.0);
l9_656=float4(l9_655.x,l9_655.y,l9_655.z,l9_656.w);
l9_656.w=(*sc_set0.UserUniforms).Port_Value2_N073;
float4 l9_657=float4(0.0);
l9_657=l9_14*l9_656;
param=l9_657;
param_2=param;
}
else
{
float3 l9_658=float3(0.0);
float3 l9_659=float3(0.0);
float3 l9_660=float3(0.0);
ssGlobals l9_661=param_3;
float3 l9_662;
if ((int(Tweak_N37_tmp)!=0))
{
float3 l9_663=float3(0.0);
float3 l9_664=(*sc_set0.UserUniforms).recolorRed;
l9_663=l9_664;
float3 l9_665=float3(0.0);
l9_665=l9_663;
float4 l9_666=float4(0.0);
float4 l9_667=(*sc_set0.UserUniforms).baseColor;
l9_666=l9_667;
float4 l9_668=float4(0.0);
l9_668=l9_666;
float4 l9_669=float4(0.0);
float4 l9_670=float4(0.0);
float4 l9_671=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_672=l9_661;
float4 l9_673;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_674=float2(0.0);
float2 l9_675=float2(0.0);
float2 l9_676=float2(0.0);
float2 l9_677=float2(0.0);
float2 l9_678=float2(0.0);
float2 l9_679=float2(0.0);
ssGlobals l9_680=l9_672;
float2 l9_681;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_682=float2(0.0);
l9_682=l9_680.Surface_UVCoord0;
l9_675=l9_682;
l9_681=l9_675;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_683=float2(0.0);
l9_683=l9_680.Surface_UVCoord1;
l9_676=l9_683;
l9_681=l9_676;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_684=float2(0.0);
l9_684=l9_680.Surface_UVCoord0;
float2 l9_685=float2(0.0);
float2 l9_686=float2(0.0);
float2 l9_687=float2(0.0);
ssGlobals l9_688=l9_680;
float2 l9_689;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_690=float2(0.0);
float2 l9_691=float2(0.0);
float2 l9_692=float2(0.0);
float2 l9_693=float2(0.0);
float2 l9_694=float2(0.0);
ssGlobals l9_695=l9_688;
float2 l9_696;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_697=float2(0.0);
l9_697=l9_695.Surface_UVCoord0;
l9_691=l9_697;
l9_696=l9_691;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_698=float2(0.0);
l9_698=l9_695.Surface_UVCoord1;
l9_692=l9_698;
l9_696=l9_692;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_699=float2(0.0);
l9_699=l9_695.gScreenCoord;
l9_693=l9_699;
l9_696=l9_693;
}
else
{
float2 l9_700=float2(0.0);
l9_700=l9_695.Surface_UVCoord0;
l9_694=l9_700;
l9_696=l9_694;
}
}
}
l9_690=l9_696;
float2 l9_701=float2(0.0);
float2 l9_702=(*sc_set0.UserUniforms).uv2Scale;
l9_701=l9_702;
float2 l9_703=float2(0.0);
l9_703=l9_701;
float2 l9_704=float2(0.0);
float2 l9_705=(*sc_set0.UserUniforms).uv2Offset;
l9_704=l9_705;
float2 l9_706=float2(0.0);
l9_706=l9_704;
float2 l9_707=float2(0.0);
l9_707=(l9_690*l9_703)+l9_706;
float2 l9_708=float2(0.0);
l9_708=l9_707+(l9_706*(l9_688.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_686=l9_708;
l9_689=l9_686;
}
else
{
float2 l9_709=float2(0.0);
float2 l9_710=float2(0.0);
float2 l9_711=float2(0.0);
float2 l9_712=float2(0.0);
float2 l9_713=float2(0.0);
ssGlobals l9_714=l9_688;
float2 l9_715;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_716=float2(0.0);
l9_716=l9_714.Surface_UVCoord0;
l9_710=l9_716;
l9_715=l9_710;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_717=float2(0.0);
l9_717=l9_714.Surface_UVCoord1;
l9_711=l9_717;
l9_715=l9_711;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_718=float2(0.0);
l9_718=l9_714.gScreenCoord;
l9_712=l9_718;
l9_715=l9_712;
}
else
{
float2 l9_719=float2(0.0);
l9_719=l9_714.Surface_UVCoord0;
l9_713=l9_719;
l9_715=l9_713;
}
}
}
l9_709=l9_715;
float2 l9_720=float2(0.0);
float2 l9_721=(*sc_set0.UserUniforms).uv2Scale;
l9_720=l9_721;
float2 l9_722=float2(0.0);
l9_722=l9_720;
float2 l9_723=float2(0.0);
float2 l9_724=(*sc_set0.UserUniforms).uv2Offset;
l9_723=l9_724;
float2 l9_725=float2(0.0);
l9_725=l9_723;
float2 l9_726=float2(0.0);
l9_726=(l9_709*l9_722)+l9_725;
l9_687=l9_726;
l9_689=l9_687;
}
l9_685=l9_689;
float l9_727=0.0;
float l9_728;
if ((int(Tweak_N67_tmp)!=0))
{
l9_728=1.001;
}
else
{
l9_728=0.001;
}
l9_728-=0.001;
l9_727=l9_728;
float l9_729=0.0;
l9_729=l9_727;
float2 l9_730=float2(0.0);
l9_730=mix(l9_684,l9_685,float2(l9_729));
float2 l9_731=float2(0.0);
l9_731=l9_730;
float2 l9_732=float2(0.0);
l9_732=l9_731;
l9_677=l9_732;
l9_681=l9_677;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_733=float2(0.0);
l9_733=l9_680.Surface_UVCoord0;
float2 l9_734=float2(0.0);
float2 l9_735=float2(0.0);
float2 l9_736=float2(0.0);
ssGlobals l9_737=l9_680;
float2 l9_738;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_739=float2(0.0);
float2 l9_740=float2(0.0);
float2 l9_741=float2(0.0);
float2 l9_742=float2(0.0);
float2 l9_743=float2(0.0);
float2 l9_744=float2(0.0);
ssGlobals l9_745=l9_737;
float2 l9_746;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_747=float2(0.0);
l9_747=l9_745.Surface_UVCoord0;
l9_740=l9_747;
l9_746=l9_740;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_748=float2(0.0);
l9_748=l9_745.Surface_UVCoord1;
l9_741=l9_748;
l9_746=l9_741;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_749=float2(0.0);
l9_749=l9_745.gScreenCoord;
l9_742=l9_749;
l9_746=l9_742;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_750=float2(0.0);
l9_750=l9_745.Surface_UVCoord0;
float2 l9_751=float2(0.0);
float2 l9_752=float2(0.0);
float2 l9_753=float2(0.0);
ssGlobals l9_754=l9_745;
float2 l9_755;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_756=float2(0.0);
float2 l9_757=float2(0.0);
float2 l9_758=float2(0.0);
float2 l9_759=float2(0.0);
float2 l9_760=float2(0.0);
ssGlobals l9_761=l9_754;
float2 l9_762;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_763=float2(0.0);
l9_763=l9_761.Surface_UVCoord0;
l9_757=l9_763;
l9_762=l9_757;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_764=float2(0.0);
l9_764=l9_761.Surface_UVCoord1;
l9_758=l9_764;
l9_762=l9_758;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_765=float2(0.0);
l9_765=l9_761.gScreenCoord;
l9_759=l9_765;
l9_762=l9_759;
}
else
{
float2 l9_766=float2(0.0);
l9_766=l9_761.Surface_UVCoord0;
l9_760=l9_766;
l9_762=l9_760;
}
}
}
l9_756=l9_762;
float2 l9_767=float2(0.0);
float2 l9_768=(*sc_set0.UserUniforms).uv2Scale;
l9_767=l9_768;
float2 l9_769=float2(0.0);
l9_769=l9_767;
float2 l9_770=float2(0.0);
float2 l9_771=(*sc_set0.UserUniforms).uv2Offset;
l9_770=l9_771;
float2 l9_772=float2(0.0);
l9_772=l9_770;
float2 l9_773=float2(0.0);
l9_773=(l9_756*l9_769)+l9_772;
float2 l9_774=float2(0.0);
l9_774=l9_773+(l9_772*(l9_754.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_752=l9_774;
l9_755=l9_752;
}
else
{
float2 l9_775=float2(0.0);
float2 l9_776=float2(0.0);
float2 l9_777=float2(0.0);
float2 l9_778=float2(0.0);
float2 l9_779=float2(0.0);
ssGlobals l9_780=l9_754;
float2 l9_781;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_782=float2(0.0);
l9_782=l9_780.Surface_UVCoord0;
l9_776=l9_782;
l9_781=l9_776;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_783=float2(0.0);
l9_783=l9_780.Surface_UVCoord1;
l9_777=l9_783;
l9_781=l9_777;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_784=float2(0.0);
l9_784=l9_780.gScreenCoord;
l9_778=l9_784;
l9_781=l9_778;
}
else
{
float2 l9_785=float2(0.0);
l9_785=l9_780.Surface_UVCoord0;
l9_779=l9_785;
l9_781=l9_779;
}
}
}
l9_775=l9_781;
float2 l9_786=float2(0.0);
float2 l9_787=(*sc_set0.UserUniforms).uv2Scale;
l9_786=l9_787;
float2 l9_788=float2(0.0);
l9_788=l9_786;
float2 l9_789=float2(0.0);
float2 l9_790=(*sc_set0.UserUniforms).uv2Offset;
l9_789=l9_790;
float2 l9_791=float2(0.0);
l9_791=l9_789;
float2 l9_792=float2(0.0);
l9_792=(l9_775*l9_788)+l9_791;
l9_753=l9_792;
l9_755=l9_753;
}
l9_751=l9_755;
float l9_793=0.0;
float l9_794;
if ((int(Tweak_N67_tmp)!=0))
{
l9_794=1.001;
}
else
{
l9_794=0.001;
}
l9_794-=0.001;
l9_793=l9_794;
float l9_795=0.0;
l9_795=l9_793;
float2 l9_796=float2(0.0);
l9_796=mix(l9_750,l9_751,float2(l9_795));
float2 l9_797=float2(0.0);
l9_797=l9_796;
float2 l9_798=float2(0.0);
l9_798=l9_797;
l9_743=l9_798;
l9_746=l9_743;
}
else
{
float2 l9_799=float2(0.0);
l9_799=l9_745.Surface_UVCoord0;
l9_744=l9_799;
l9_746=l9_744;
}
}
}
}
l9_739=l9_746;
float2 l9_800=float2(0.0);
float2 l9_801=(*sc_set0.UserUniforms).uv3Scale;
l9_800=l9_801;
float2 l9_802=float2(0.0);
l9_802=l9_800;
float2 l9_803=float2(0.0);
float2 l9_804=(*sc_set0.UserUniforms).uv3Offset;
l9_803=l9_804;
float2 l9_805=float2(0.0);
l9_805=l9_803;
float2 l9_806=float2(0.0);
l9_806=(l9_739*l9_802)+l9_805;
float2 l9_807=float2(0.0);
l9_807=l9_806+(l9_805*(l9_737.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_735=l9_807;
l9_738=l9_735;
}
else
{
float2 l9_808=float2(0.0);
float2 l9_809=float2(0.0);
float2 l9_810=float2(0.0);
float2 l9_811=float2(0.0);
float2 l9_812=float2(0.0);
float2 l9_813=float2(0.0);
ssGlobals l9_814=l9_737;
float2 l9_815;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_816=float2(0.0);
l9_816=l9_814.Surface_UVCoord0;
l9_809=l9_816;
l9_815=l9_809;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_817=float2(0.0);
l9_817=l9_814.Surface_UVCoord1;
l9_810=l9_817;
l9_815=l9_810;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_818=float2(0.0);
l9_818=l9_814.gScreenCoord;
l9_811=l9_818;
l9_815=l9_811;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_819=float2(0.0);
l9_819=l9_814.Surface_UVCoord0;
float2 l9_820=float2(0.0);
float2 l9_821=float2(0.0);
float2 l9_822=float2(0.0);
ssGlobals l9_823=l9_814;
float2 l9_824;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_825=float2(0.0);
float2 l9_826=float2(0.0);
float2 l9_827=float2(0.0);
float2 l9_828=float2(0.0);
float2 l9_829=float2(0.0);
ssGlobals l9_830=l9_823;
float2 l9_831;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_832=float2(0.0);
l9_832=l9_830.Surface_UVCoord0;
l9_826=l9_832;
l9_831=l9_826;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_833=float2(0.0);
l9_833=l9_830.Surface_UVCoord1;
l9_827=l9_833;
l9_831=l9_827;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_834=float2(0.0);
l9_834=l9_830.gScreenCoord;
l9_828=l9_834;
l9_831=l9_828;
}
else
{
float2 l9_835=float2(0.0);
l9_835=l9_830.Surface_UVCoord0;
l9_829=l9_835;
l9_831=l9_829;
}
}
}
l9_825=l9_831;
float2 l9_836=float2(0.0);
float2 l9_837=(*sc_set0.UserUniforms).uv2Scale;
l9_836=l9_837;
float2 l9_838=float2(0.0);
l9_838=l9_836;
float2 l9_839=float2(0.0);
float2 l9_840=(*sc_set0.UserUniforms).uv2Offset;
l9_839=l9_840;
float2 l9_841=float2(0.0);
l9_841=l9_839;
float2 l9_842=float2(0.0);
l9_842=(l9_825*l9_838)+l9_841;
float2 l9_843=float2(0.0);
l9_843=l9_842+(l9_841*(l9_823.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_821=l9_843;
l9_824=l9_821;
}
else
{
float2 l9_844=float2(0.0);
float2 l9_845=float2(0.0);
float2 l9_846=float2(0.0);
float2 l9_847=float2(0.0);
float2 l9_848=float2(0.0);
ssGlobals l9_849=l9_823;
float2 l9_850;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_851=float2(0.0);
l9_851=l9_849.Surface_UVCoord0;
l9_845=l9_851;
l9_850=l9_845;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_852=float2(0.0);
l9_852=l9_849.Surface_UVCoord1;
l9_846=l9_852;
l9_850=l9_846;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_853=float2(0.0);
l9_853=l9_849.gScreenCoord;
l9_847=l9_853;
l9_850=l9_847;
}
else
{
float2 l9_854=float2(0.0);
l9_854=l9_849.Surface_UVCoord0;
l9_848=l9_854;
l9_850=l9_848;
}
}
}
l9_844=l9_850;
float2 l9_855=float2(0.0);
float2 l9_856=(*sc_set0.UserUniforms).uv2Scale;
l9_855=l9_856;
float2 l9_857=float2(0.0);
l9_857=l9_855;
float2 l9_858=float2(0.0);
float2 l9_859=(*sc_set0.UserUniforms).uv2Offset;
l9_858=l9_859;
float2 l9_860=float2(0.0);
l9_860=l9_858;
float2 l9_861=float2(0.0);
l9_861=(l9_844*l9_857)+l9_860;
l9_822=l9_861;
l9_824=l9_822;
}
l9_820=l9_824;
float l9_862=0.0;
float l9_863;
if ((int(Tweak_N67_tmp)!=0))
{
l9_863=1.001;
}
else
{
l9_863=0.001;
}
l9_863-=0.001;
l9_862=l9_863;
float l9_864=0.0;
l9_864=l9_862;
float2 l9_865=float2(0.0);
l9_865=mix(l9_819,l9_820,float2(l9_864));
float2 l9_866=float2(0.0);
l9_866=l9_865;
float2 l9_867=float2(0.0);
l9_867=l9_866;
l9_812=l9_867;
l9_815=l9_812;
}
else
{
float2 l9_868=float2(0.0);
l9_868=l9_814.Surface_UVCoord0;
l9_813=l9_868;
l9_815=l9_813;
}
}
}
}
l9_808=l9_815;
float2 l9_869=float2(0.0);
float2 l9_870=(*sc_set0.UserUniforms).uv3Scale;
l9_869=l9_870;
float2 l9_871=float2(0.0);
l9_871=l9_869;
float2 l9_872=float2(0.0);
float2 l9_873=(*sc_set0.UserUniforms).uv3Offset;
l9_872=l9_873;
float2 l9_874=float2(0.0);
l9_874=l9_872;
float2 l9_875=float2(0.0);
l9_875=(l9_808*l9_871)+l9_874;
l9_736=l9_875;
l9_738=l9_736;
}
l9_734=l9_738;
float l9_876=0.0;
float l9_877;
if ((int(Tweak_N11_tmp)!=0))
{
l9_877=1.001;
}
else
{
l9_877=0.001;
}
l9_877-=0.001;
l9_876=l9_877;
float l9_878=0.0;
l9_878=l9_876;
float2 l9_879=float2(0.0);
l9_879=mix(l9_733,l9_734,float2(l9_878));
float2 l9_880=float2(0.0);
l9_880=l9_879;
float2 l9_881=float2(0.0);
l9_881=l9_880;
l9_678=l9_881;
l9_681=l9_678;
}
else
{
float2 l9_882=float2(0.0);
l9_882=l9_680.Surface_UVCoord0;
l9_679=l9_882;
l9_681=l9_679;
}
}
}
}
l9_674=l9_681;
float4 l9_883=float4(0.0);
int l9_884;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_885=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_885=0;
}
else
{
l9_885=in.varStereoViewID;
}
int l9_886=l9_885;
l9_884=1-l9_886;
}
else
{
int l9_887=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_887=0;
}
else
{
l9_887=in.varStereoViewID;
}
int l9_888=l9_887;
l9_884=l9_888;
}
int l9_889=l9_884;
int l9_890=baseTexLayout_tmp;
int l9_891=l9_889;
float2 l9_892=l9_674;
bool l9_893=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_894=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_895=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_896=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_897=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_898=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_899=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_900=0.0;
bool l9_901=l9_898&&(!l9_896);
float l9_902=1.0;
float l9_903=l9_892.x;
int l9_904=l9_895.x;
if (l9_904==1)
{
l9_903=fract(l9_903);
}
else
{
if (l9_904==2)
{
float l9_905=fract(l9_903);
float l9_906=l9_903-l9_905;
float l9_907=step(0.25,fract(l9_906*0.5));
l9_903=mix(l9_905,1.0-l9_905,fast::clamp(l9_907,0.0,1.0));
}
}
l9_892.x=l9_903;
float l9_908=l9_892.y;
int l9_909=l9_895.y;
if (l9_909==1)
{
l9_908=fract(l9_908);
}
else
{
if (l9_909==2)
{
float l9_910=fract(l9_908);
float l9_911=l9_908-l9_910;
float l9_912=step(0.25,fract(l9_911*0.5));
l9_908=mix(l9_910,1.0-l9_910,fast::clamp(l9_912,0.0,1.0));
}
}
l9_892.y=l9_908;
if (l9_896)
{
bool l9_913=l9_898;
bool l9_914;
if (l9_913)
{
l9_914=l9_895.x==3;
}
else
{
l9_914=l9_913;
}
float l9_915=l9_892.x;
float l9_916=l9_897.x;
float l9_917=l9_897.z;
bool l9_918=l9_914;
float l9_919=l9_902;
float l9_920=fast::clamp(l9_915,l9_916,l9_917);
float l9_921=step(abs(l9_915-l9_920),9.9999997e-06);
l9_919*=(l9_921+((1.0-float(l9_918))*(1.0-l9_921)));
l9_915=l9_920;
l9_892.x=l9_915;
l9_902=l9_919;
bool l9_922=l9_898;
bool l9_923;
if (l9_922)
{
l9_923=l9_895.y==3;
}
else
{
l9_923=l9_922;
}
float l9_924=l9_892.y;
float l9_925=l9_897.y;
float l9_926=l9_897.w;
bool l9_927=l9_923;
float l9_928=l9_902;
float l9_929=fast::clamp(l9_924,l9_925,l9_926);
float l9_930=step(abs(l9_924-l9_929),9.9999997e-06);
l9_928*=(l9_930+((1.0-float(l9_927))*(1.0-l9_930)));
l9_924=l9_929;
l9_892.y=l9_924;
l9_902=l9_928;
}
float2 l9_931=l9_892;
bool l9_932=l9_893;
float3x3 l9_933=l9_894;
if (l9_932)
{
l9_931=float2((l9_933*float3(l9_931,1.0)).xy);
}
float2 l9_934=l9_931;
l9_892=l9_934;
float l9_935=l9_892.x;
int l9_936=l9_895.x;
bool l9_937=l9_901;
float l9_938=l9_902;
if ((l9_936==0)||(l9_936==3))
{
float l9_939=l9_935;
float l9_940=0.0;
float l9_941=1.0;
bool l9_942=l9_937;
float l9_943=l9_938;
float l9_944=fast::clamp(l9_939,l9_940,l9_941);
float l9_945=step(abs(l9_939-l9_944),9.9999997e-06);
l9_943*=(l9_945+((1.0-float(l9_942))*(1.0-l9_945)));
l9_939=l9_944;
l9_935=l9_939;
l9_938=l9_943;
}
l9_892.x=l9_935;
l9_902=l9_938;
float l9_946=l9_892.y;
int l9_947=l9_895.y;
bool l9_948=l9_901;
float l9_949=l9_902;
if ((l9_947==0)||(l9_947==3))
{
float l9_950=l9_946;
float l9_951=0.0;
float l9_952=1.0;
bool l9_953=l9_948;
float l9_954=l9_949;
float l9_955=fast::clamp(l9_950,l9_951,l9_952);
float l9_956=step(abs(l9_950-l9_955),9.9999997e-06);
l9_954*=(l9_956+((1.0-float(l9_953))*(1.0-l9_956)));
l9_950=l9_955;
l9_946=l9_950;
l9_949=l9_954;
}
l9_892.y=l9_946;
l9_902=l9_949;
float2 l9_957=l9_892;
int l9_958=l9_890;
int l9_959=l9_891;
float l9_960=l9_900;
float2 l9_961=l9_957;
int l9_962=l9_958;
int l9_963=l9_959;
float3 l9_964=float3(0.0);
if (l9_962==0)
{
l9_964=float3(l9_961,0.0);
}
else
{
if (l9_962==1)
{
l9_964=float3(l9_961.x,(l9_961.y*0.5)+(0.5-(float(l9_963)*0.5)),0.0);
}
else
{
l9_964=float3(l9_961,float(l9_963));
}
}
float3 l9_965=l9_964;
float3 l9_966=l9_965;
float4 l9_967=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_966.xy,bias(l9_960));
float4 l9_968=l9_967;
if (l9_898)
{
l9_968=mix(l9_899,l9_968,float4(l9_902));
}
float4 l9_969=l9_968;
l9_883=l9_969;
l9_670=l9_883;
l9_673=l9_670;
}
else
{
l9_673=l9_671;
}
l9_669=l9_673;
float4 l9_970=float4(0.0);
l9_970=l9_668*l9_669;
float4 l9_971=float4(0.0);
l9_971=l9_970;
float4 l9_972=float4(0.0);
l9_972=l9_971;
float l9_973=0.0;
float l9_974=0.0;
float l9_975=0.0;
float3 l9_976=l9_972.xyz;
float l9_977=l9_976.x;
float l9_978=l9_976.y;
float l9_979=l9_976.z;
l9_973=l9_977;
l9_974=l9_978;
l9_975=l9_979;
float3 l9_980=float3(0.0);
l9_980=l9_665*float3(l9_973);
float3 l9_981=float3(0.0);
float3 l9_982=(*sc_set0.UserUniforms).recolorGreen;
l9_981=l9_982;
float3 l9_983=float3(0.0);
l9_983=l9_981;
float3 l9_984=float3(0.0);
l9_984=l9_983*float3(l9_974);
float3 l9_985=float3(0.0);
float3 l9_986=(*sc_set0.UserUniforms).recolorBlue;
l9_985=l9_986;
float3 l9_987=float3(0.0);
l9_987=l9_985;
float3 l9_988=float3(0.0);
l9_988=l9_987*float3(l9_975);
float3 l9_989=float3(0.0);
l9_989=(l9_980+l9_984)+l9_988;
l9_659=l9_989;
l9_662=l9_659;
}
else
{
float4 l9_990=float4(0.0);
float4 l9_991=(*sc_set0.UserUniforms).baseColor;
l9_990=l9_991;
float4 l9_992=float4(0.0);
l9_992=l9_990;
float4 l9_993=float4(0.0);
float4 l9_994=float4(0.0);
float4 l9_995=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_996=l9_661;
float4 l9_997;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_998=float2(0.0);
float2 l9_999=float2(0.0);
float2 l9_1000=float2(0.0);
float2 l9_1001=float2(0.0);
float2 l9_1002=float2(0.0);
float2 l9_1003=float2(0.0);
ssGlobals l9_1004=l9_996;
float2 l9_1005;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_1006=float2(0.0);
l9_1006=l9_1004.Surface_UVCoord0;
l9_999=l9_1006;
l9_1005=l9_999;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_1007=float2(0.0);
l9_1007=l9_1004.Surface_UVCoord1;
l9_1000=l9_1007;
l9_1005=l9_1000;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_1008=float2(0.0);
l9_1008=l9_1004.Surface_UVCoord0;
float2 l9_1009=float2(0.0);
float2 l9_1010=float2(0.0);
float2 l9_1011=float2(0.0);
ssGlobals l9_1012=l9_1004;
float2 l9_1013;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1014=float2(0.0);
float2 l9_1015=float2(0.0);
float2 l9_1016=float2(0.0);
float2 l9_1017=float2(0.0);
float2 l9_1018=float2(0.0);
ssGlobals l9_1019=l9_1012;
float2 l9_1020;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1021=float2(0.0);
l9_1021=l9_1019.Surface_UVCoord0;
l9_1015=l9_1021;
l9_1020=l9_1015;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1022=float2(0.0);
l9_1022=l9_1019.Surface_UVCoord1;
l9_1016=l9_1022;
l9_1020=l9_1016;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1023=float2(0.0);
l9_1023=l9_1019.gScreenCoord;
l9_1017=l9_1023;
l9_1020=l9_1017;
}
else
{
float2 l9_1024=float2(0.0);
l9_1024=l9_1019.Surface_UVCoord0;
l9_1018=l9_1024;
l9_1020=l9_1018;
}
}
}
l9_1014=l9_1020;
float2 l9_1025=float2(0.0);
float2 l9_1026=(*sc_set0.UserUniforms).uv2Scale;
l9_1025=l9_1026;
float2 l9_1027=float2(0.0);
l9_1027=l9_1025;
float2 l9_1028=float2(0.0);
float2 l9_1029=(*sc_set0.UserUniforms).uv2Offset;
l9_1028=l9_1029;
float2 l9_1030=float2(0.0);
l9_1030=l9_1028;
float2 l9_1031=float2(0.0);
l9_1031=(l9_1014*l9_1027)+l9_1030;
float2 l9_1032=float2(0.0);
l9_1032=l9_1031+(l9_1030*(l9_1012.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1010=l9_1032;
l9_1013=l9_1010;
}
else
{
float2 l9_1033=float2(0.0);
float2 l9_1034=float2(0.0);
float2 l9_1035=float2(0.0);
float2 l9_1036=float2(0.0);
float2 l9_1037=float2(0.0);
ssGlobals l9_1038=l9_1012;
float2 l9_1039;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1040=float2(0.0);
l9_1040=l9_1038.Surface_UVCoord0;
l9_1034=l9_1040;
l9_1039=l9_1034;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1041=float2(0.0);
l9_1041=l9_1038.Surface_UVCoord1;
l9_1035=l9_1041;
l9_1039=l9_1035;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1042=float2(0.0);
l9_1042=l9_1038.gScreenCoord;
l9_1036=l9_1042;
l9_1039=l9_1036;
}
else
{
float2 l9_1043=float2(0.0);
l9_1043=l9_1038.Surface_UVCoord0;
l9_1037=l9_1043;
l9_1039=l9_1037;
}
}
}
l9_1033=l9_1039;
float2 l9_1044=float2(0.0);
float2 l9_1045=(*sc_set0.UserUniforms).uv2Scale;
l9_1044=l9_1045;
float2 l9_1046=float2(0.0);
l9_1046=l9_1044;
float2 l9_1047=float2(0.0);
float2 l9_1048=(*sc_set0.UserUniforms).uv2Offset;
l9_1047=l9_1048;
float2 l9_1049=float2(0.0);
l9_1049=l9_1047;
float2 l9_1050=float2(0.0);
l9_1050=(l9_1033*l9_1046)+l9_1049;
l9_1011=l9_1050;
l9_1013=l9_1011;
}
l9_1009=l9_1013;
float l9_1051=0.0;
float l9_1052;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1052=1.001;
}
else
{
l9_1052=0.001;
}
l9_1052-=0.001;
l9_1051=l9_1052;
float l9_1053=0.0;
l9_1053=l9_1051;
float2 l9_1054=float2(0.0);
l9_1054=mix(l9_1008,l9_1009,float2(l9_1053));
float2 l9_1055=float2(0.0);
l9_1055=l9_1054;
float2 l9_1056=float2(0.0);
l9_1056=l9_1055;
l9_1001=l9_1056;
l9_1005=l9_1001;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_1057=float2(0.0);
l9_1057=l9_1004.Surface_UVCoord0;
float2 l9_1058=float2(0.0);
float2 l9_1059=float2(0.0);
float2 l9_1060=float2(0.0);
ssGlobals l9_1061=l9_1004;
float2 l9_1062;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1063=float2(0.0);
float2 l9_1064=float2(0.0);
float2 l9_1065=float2(0.0);
float2 l9_1066=float2(0.0);
float2 l9_1067=float2(0.0);
float2 l9_1068=float2(0.0);
ssGlobals l9_1069=l9_1061;
float2 l9_1070;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1071=float2(0.0);
l9_1071=l9_1069.Surface_UVCoord0;
l9_1064=l9_1071;
l9_1070=l9_1064;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1072=float2(0.0);
l9_1072=l9_1069.Surface_UVCoord1;
l9_1065=l9_1072;
l9_1070=l9_1065;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1073=float2(0.0);
l9_1073=l9_1069.gScreenCoord;
l9_1066=l9_1073;
l9_1070=l9_1066;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1074=float2(0.0);
l9_1074=l9_1069.Surface_UVCoord0;
float2 l9_1075=float2(0.0);
float2 l9_1076=float2(0.0);
float2 l9_1077=float2(0.0);
ssGlobals l9_1078=l9_1069;
float2 l9_1079;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1080=float2(0.0);
float2 l9_1081=float2(0.0);
float2 l9_1082=float2(0.0);
float2 l9_1083=float2(0.0);
float2 l9_1084=float2(0.0);
ssGlobals l9_1085=l9_1078;
float2 l9_1086;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1087=float2(0.0);
l9_1087=l9_1085.Surface_UVCoord0;
l9_1081=l9_1087;
l9_1086=l9_1081;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1088=float2(0.0);
l9_1088=l9_1085.Surface_UVCoord1;
l9_1082=l9_1088;
l9_1086=l9_1082;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1089=float2(0.0);
l9_1089=l9_1085.gScreenCoord;
l9_1083=l9_1089;
l9_1086=l9_1083;
}
else
{
float2 l9_1090=float2(0.0);
l9_1090=l9_1085.Surface_UVCoord0;
l9_1084=l9_1090;
l9_1086=l9_1084;
}
}
}
l9_1080=l9_1086;
float2 l9_1091=float2(0.0);
float2 l9_1092=(*sc_set0.UserUniforms).uv2Scale;
l9_1091=l9_1092;
float2 l9_1093=float2(0.0);
l9_1093=l9_1091;
float2 l9_1094=float2(0.0);
float2 l9_1095=(*sc_set0.UserUniforms).uv2Offset;
l9_1094=l9_1095;
float2 l9_1096=float2(0.0);
l9_1096=l9_1094;
float2 l9_1097=float2(0.0);
l9_1097=(l9_1080*l9_1093)+l9_1096;
float2 l9_1098=float2(0.0);
l9_1098=l9_1097+(l9_1096*(l9_1078.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1076=l9_1098;
l9_1079=l9_1076;
}
else
{
float2 l9_1099=float2(0.0);
float2 l9_1100=float2(0.0);
float2 l9_1101=float2(0.0);
float2 l9_1102=float2(0.0);
float2 l9_1103=float2(0.0);
ssGlobals l9_1104=l9_1078;
float2 l9_1105;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1106=float2(0.0);
l9_1106=l9_1104.Surface_UVCoord0;
l9_1100=l9_1106;
l9_1105=l9_1100;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1107=float2(0.0);
l9_1107=l9_1104.Surface_UVCoord1;
l9_1101=l9_1107;
l9_1105=l9_1101;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1108=float2(0.0);
l9_1108=l9_1104.gScreenCoord;
l9_1102=l9_1108;
l9_1105=l9_1102;
}
else
{
float2 l9_1109=float2(0.0);
l9_1109=l9_1104.Surface_UVCoord0;
l9_1103=l9_1109;
l9_1105=l9_1103;
}
}
}
l9_1099=l9_1105;
float2 l9_1110=float2(0.0);
float2 l9_1111=(*sc_set0.UserUniforms).uv2Scale;
l9_1110=l9_1111;
float2 l9_1112=float2(0.0);
l9_1112=l9_1110;
float2 l9_1113=float2(0.0);
float2 l9_1114=(*sc_set0.UserUniforms).uv2Offset;
l9_1113=l9_1114;
float2 l9_1115=float2(0.0);
l9_1115=l9_1113;
float2 l9_1116=float2(0.0);
l9_1116=(l9_1099*l9_1112)+l9_1115;
l9_1077=l9_1116;
l9_1079=l9_1077;
}
l9_1075=l9_1079;
float l9_1117=0.0;
float l9_1118;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1118=1.001;
}
else
{
l9_1118=0.001;
}
l9_1118-=0.001;
l9_1117=l9_1118;
float l9_1119=0.0;
l9_1119=l9_1117;
float2 l9_1120=float2(0.0);
l9_1120=mix(l9_1074,l9_1075,float2(l9_1119));
float2 l9_1121=float2(0.0);
l9_1121=l9_1120;
float2 l9_1122=float2(0.0);
l9_1122=l9_1121;
l9_1067=l9_1122;
l9_1070=l9_1067;
}
else
{
float2 l9_1123=float2(0.0);
l9_1123=l9_1069.Surface_UVCoord0;
l9_1068=l9_1123;
l9_1070=l9_1068;
}
}
}
}
l9_1063=l9_1070;
float2 l9_1124=float2(0.0);
float2 l9_1125=(*sc_set0.UserUniforms).uv3Scale;
l9_1124=l9_1125;
float2 l9_1126=float2(0.0);
l9_1126=l9_1124;
float2 l9_1127=float2(0.0);
float2 l9_1128=(*sc_set0.UserUniforms).uv3Offset;
l9_1127=l9_1128;
float2 l9_1129=float2(0.0);
l9_1129=l9_1127;
float2 l9_1130=float2(0.0);
l9_1130=(l9_1063*l9_1126)+l9_1129;
float2 l9_1131=float2(0.0);
l9_1131=l9_1130+(l9_1129*(l9_1061.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1059=l9_1131;
l9_1062=l9_1059;
}
else
{
float2 l9_1132=float2(0.0);
float2 l9_1133=float2(0.0);
float2 l9_1134=float2(0.0);
float2 l9_1135=float2(0.0);
float2 l9_1136=float2(0.0);
float2 l9_1137=float2(0.0);
ssGlobals l9_1138=l9_1061;
float2 l9_1139;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1140=float2(0.0);
l9_1140=l9_1138.Surface_UVCoord0;
l9_1133=l9_1140;
l9_1139=l9_1133;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1141=float2(0.0);
l9_1141=l9_1138.Surface_UVCoord1;
l9_1134=l9_1141;
l9_1139=l9_1134;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1142=float2(0.0);
l9_1142=l9_1138.gScreenCoord;
l9_1135=l9_1142;
l9_1139=l9_1135;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1143=float2(0.0);
l9_1143=l9_1138.Surface_UVCoord0;
float2 l9_1144=float2(0.0);
float2 l9_1145=float2(0.0);
float2 l9_1146=float2(0.0);
ssGlobals l9_1147=l9_1138;
float2 l9_1148;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1149=float2(0.0);
float2 l9_1150=float2(0.0);
float2 l9_1151=float2(0.0);
float2 l9_1152=float2(0.0);
float2 l9_1153=float2(0.0);
ssGlobals l9_1154=l9_1147;
float2 l9_1155;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1156=float2(0.0);
l9_1156=l9_1154.Surface_UVCoord0;
l9_1150=l9_1156;
l9_1155=l9_1150;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1157=float2(0.0);
l9_1157=l9_1154.Surface_UVCoord1;
l9_1151=l9_1157;
l9_1155=l9_1151;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1158=float2(0.0);
l9_1158=l9_1154.gScreenCoord;
l9_1152=l9_1158;
l9_1155=l9_1152;
}
else
{
float2 l9_1159=float2(0.0);
l9_1159=l9_1154.Surface_UVCoord0;
l9_1153=l9_1159;
l9_1155=l9_1153;
}
}
}
l9_1149=l9_1155;
float2 l9_1160=float2(0.0);
float2 l9_1161=(*sc_set0.UserUniforms).uv2Scale;
l9_1160=l9_1161;
float2 l9_1162=float2(0.0);
l9_1162=l9_1160;
float2 l9_1163=float2(0.0);
float2 l9_1164=(*sc_set0.UserUniforms).uv2Offset;
l9_1163=l9_1164;
float2 l9_1165=float2(0.0);
l9_1165=l9_1163;
float2 l9_1166=float2(0.0);
l9_1166=(l9_1149*l9_1162)+l9_1165;
float2 l9_1167=float2(0.0);
l9_1167=l9_1166+(l9_1165*(l9_1147.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1145=l9_1167;
l9_1148=l9_1145;
}
else
{
float2 l9_1168=float2(0.0);
float2 l9_1169=float2(0.0);
float2 l9_1170=float2(0.0);
float2 l9_1171=float2(0.0);
float2 l9_1172=float2(0.0);
ssGlobals l9_1173=l9_1147;
float2 l9_1174;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1175=float2(0.0);
l9_1175=l9_1173.Surface_UVCoord0;
l9_1169=l9_1175;
l9_1174=l9_1169;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1176=float2(0.0);
l9_1176=l9_1173.Surface_UVCoord1;
l9_1170=l9_1176;
l9_1174=l9_1170;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1177=float2(0.0);
l9_1177=l9_1173.gScreenCoord;
l9_1171=l9_1177;
l9_1174=l9_1171;
}
else
{
float2 l9_1178=float2(0.0);
l9_1178=l9_1173.Surface_UVCoord0;
l9_1172=l9_1178;
l9_1174=l9_1172;
}
}
}
l9_1168=l9_1174;
float2 l9_1179=float2(0.0);
float2 l9_1180=(*sc_set0.UserUniforms).uv2Scale;
l9_1179=l9_1180;
float2 l9_1181=float2(0.0);
l9_1181=l9_1179;
float2 l9_1182=float2(0.0);
float2 l9_1183=(*sc_set0.UserUniforms).uv2Offset;
l9_1182=l9_1183;
float2 l9_1184=float2(0.0);
l9_1184=l9_1182;
float2 l9_1185=float2(0.0);
l9_1185=(l9_1168*l9_1181)+l9_1184;
l9_1146=l9_1185;
l9_1148=l9_1146;
}
l9_1144=l9_1148;
float l9_1186=0.0;
float l9_1187;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1187=1.001;
}
else
{
l9_1187=0.001;
}
l9_1187-=0.001;
l9_1186=l9_1187;
float l9_1188=0.0;
l9_1188=l9_1186;
float2 l9_1189=float2(0.0);
l9_1189=mix(l9_1143,l9_1144,float2(l9_1188));
float2 l9_1190=float2(0.0);
l9_1190=l9_1189;
float2 l9_1191=float2(0.0);
l9_1191=l9_1190;
l9_1136=l9_1191;
l9_1139=l9_1136;
}
else
{
float2 l9_1192=float2(0.0);
l9_1192=l9_1138.Surface_UVCoord0;
l9_1137=l9_1192;
l9_1139=l9_1137;
}
}
}
}
l9_1132=l9_1139;
float2 l9_1193=float2(0.0);
float2 l9_1194=(*sc_set0.UserUniforms).uv3Scale;
l9_1193=l9_1194;
float2 l9_1195=float2(0.0);
l9_1195=l9_1193;
float2 l9_1196=float2(0.0);
float2 l9_1197=(*sc_set0.UserUniforms).uv3Offset;
l9_1196=l9_1197;
float2 l9_1198=float2(0.0);
l9_1198=l9_1196;
float2 l9_1199=float2(0.0);
l9_1199=(l9_1132*l9_1195)+l9_1198;
l9_1060=l9_1199;
l9_1062=l9_1060;
}
l9_1058=l9_1062;
float l9_1200=0.0;
float l9_1201;
if ((int(Tweak_N11_tmp)!=0))
{
l9_1201=1.001;
}
else
{
l9_1201=0.001;
}
l9_1201-=0.001;
l9_1200=l9_1201;
float l9_1202=0.0;
l9_1202=l9_1200;
float2 l9_1203=float2(0.0);
l9_1203=mix(l9_1057,l9_1058,float2(l9_1202));
float2 l9_1204=float2(0.0);
l9_1204=l9_1203;
float2 l9_1205=float2(0.0);
l9_1205=l9_1204;
l9_1002=l9_1205;
l9_1005=l9_1002;
}
else
{
float2 l9_1206=float2(0.0);
l9_1206=l9_1004.Surface_UVCoord0;
l9_1003=l9_1206;
l9_1005=l9_1003;
}
}
}
}
l9_998=l9_1005;
float4 l9_1207=float4(0.0);
int l9_1208;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_1209=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1209=0;
}
else
{
l9_1209=in.varStereoViewID;
}
int l9_1210=l9_1209;
l9_1208=1-l9_1210;
}
else
{
int l9_1211=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1211=0;
}
else
{
l9_1211=in.varStereoViewID;
}
int l9_1212=l9_1211;
l9_1208=l9_1212;
}
int l9_1213=l9_1208;
int l9_1214=baseTexLayout_tmp;
int l9_1215=l9_1213;
float2 l9_1216=l9_998;
bool l9_1217=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_1218=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_1219=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_1220=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_1221=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_1222=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_1223=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_1224=0.0;
bool l9_1225=l9_1222&&(!l9_1220);
float l9_1226=1.0;
float l9_1227=l9_1216.x;
int l9_1228=l9_1219.x;
if (l9_1228==1)
{
l9_1227=fract(l9_1227);
}
else
{
if (l9_1228==2)
{
float l9_1229=fract(l9_1227);
float l9_1230=l9_1227-l9_1229;
float l9_1231=step(0.25,fract(l9_1230*0.5));
l9_1227=mix(l9_1229,1.0-l9_1229,fast::clamp(l9_1231,0.0,1.0));
}
}
l9_1216.x=l9_1227;
float l9_1232=l9_1216.y;
int l9_1233=l9_1219.y;
if (l9_1233==1)
{
l9_1232=fract(l9_1232);
}
else
{
if (l9_1233==2)
{
float l9_1234=fract(l9_1232);
float l9_1235=l9_1232-l9_1234;
float l9_1236=step(0.25,fract(l9_1235*0.5));
l9_1232=mix(l9_1234,1.0-l9_1234,fast::clamp(l9_1236,0.0,1.0));
}
}
l9_1216.y=l9_1232;
if (l9_1220)
{
bool l9_1237=l9_1222;
bool l9_1238;
if (l9_1237)
{
l9_1238=l9_1219.x==3;
}
else
{
l9_1238=l9_1237;
}
float l9_1239=l9_1216.x;
float l9_1240=l9_1221.x;
float l9_1241=l9_1221.z;
bool l9_1242=l9_1238;
float l9_1243=l9_1226;
float l9_1244=fast::clamp(l9_1239,l9_1240,l9_1241);
float l9_1245=step(abs(l9_1239-l9_1244),9.9999997e-06);
l9_1243*=(l9_1245+((1.0-float(l9_1242))*(1.0-l9_1245)));
l9_1239=l9_1244;
l9_1216.x=l9_1239;
l9_1226=l9_1243;
bool l9_1246=l9_1222;
bool l9_1247;
if (l9_1246)
{
l9_1247=l9_1219.y==3;
}
else
{
l9_1247=l9_1246;
}
float l9_1248=l9_1216.y;
float l9_1249=l9_1221.y;
float l9_1250=l9_1221.w;
bool l9_1251=l9_1247;
float l9_1252=l9_1226;
float l9_1253=fast::clamp(l9_1248,l9_1249,l9_1250);
float l9_1254=step(abs(l9_1248-l9_1253),9.9999997e-06);
l9_1252*=(l9_1254+((1.0-float(l9_1251))*(1.0-l9_1254)));
l9_1248=l9_1253;
l9_1216.y=l9_1248;
l9_1226=l9_1252;
}
float2 l9_1255=l9_1216;
bool l9_1256=l9_1217;
float3x3 l9_1257=l9_1218;
if (l9_1256)
{
l9_1255=float2((l9_1257*float3(l9_1255,1.0)).xy);
}
float2 l9_1258=l9_1255;
l9_1216=l9_1258;
float l9_1259=l9_1216.x;
int l9_1260=l9_1219.x;
bool l9_1261=l9_1225;
float l9_1262=l9_1226;
if ((l9_1260==0)||(l9_1260==3))
{
float l9_1263=l9_1259;
float l9_1264=0.0;
float l9_1265=1.0;
bool l9_1266=l9_1261;
float l9_1267=l9_1262;
float l9_1268=fast::clamp(l9_1263,l9_1264,l9_1265);
float l9_1269=step(abs(l9_1263-l9_1268),9.9999997e-06);
l9_1267*=(l9_1269+((1.0-float(l9_1266))*(1.0-l9_1269)));
l9_1263=l9_1268;
l9_1259=l9_1263;
l9_1262=l9_1267;
}
l9_1216.x=l9_1259;
l9_1226=l9_1262;
float l9_1270=l9_1216.y;
int l9_1271=l9_1219.y;
bool l9_1272=l9_1225;
float l9_1273=l9_1226;
if ((l9_1271==0)||(l9_1271==3))
{
float l9_1274=l9_1270;
float l9_1275=0.0;
float l9_1276=1.0;
bool l9_1277=l9_1272;
float l9_1278=l9_1273;
float l9_1279=fast::clamp(l9_1274,l9_1275,l9_1276);
float l9_1280=step(abs(l9_1274-l9_1279),9.9999997e-06);
l9_1278*=(l9_1280+((1.0-float(l9_1277))*(1.0-l9_1280)));
l9_1274=l9_1279;
l9_1270=l9_1274;
l9_1273=l9_1278;
}
l9_1216.y=l9_1270;
l9_1226=l9_1273;
float2 l9_1281=l9_1216;
int l9_1282=l9_1214;
int l9_1283=l9_1215;
float l9_1284=l9_1224;
float2 l9_1285=l9_1281;
int l9_1286=l9_1282;
int l9_1287=l9_1283;
float3 l9_1288=float3(0.0);
if (l9_1286==0)
{
l9_1288=float3(l9_1285,0.0);
}
else
{
if (l9_1286==1)
{
l9_1288=float3(l9_1285.x,(l9_1285.y*0.5)+(0.5-(float(l9_1287)*0.5)),0.0);
}
else
{
l9_1288=float3(l9_1285,float(l9_1287));
}
}
float3 l9_1289=l9_1288;
float3 l9_1290=l9_1289;
float4 l9_1291=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_1290.xy,bias(l9_1284));
float4 l9_1292=l9_1291;
if (l9_1222)
{
l9_1292=mix(l9_1223,l9_1292,float4(l9_1226));
}
float4 l9_1293=l9_1292;
l9_1207=l9_1293;
l9_994=l9_1207;
l9_997=l9_994;
}
else
{
l9_997=l9_995;
}
l9_993=l9_997;
float4 l9_1294=float4(0.0);
l9_1294=l9_992*l9_993;
float4 l9_1295=float4(0.0);
l9_1295=l9_1294;
float4 l9_1296=float4(0.0);
l9_1296=l9_1295;
l9_660=l9_1296.xyz;
l9_662=l9_660;
}
l9_658=l9_662;
float3 l9_1297=float3(0.0);
l9_1297=l9_658;
float3 l9_1298=float3(0.0);
l9_1298=l9_1297;
float4 l9_1299=float4(0.0);
l9_1299=float4(l9_1298.x,l9_1298.y,l9_1298.z,l9_1299.w);
l9_1299.w=(*sc_set0.UserUniforms).Port_Value2_N073;
param_1=l9_1299;
param_2=param_1;
}
Result_N363=param_2;
float4 Export_N364=float4(0.0);
Export_N364=Result_N363;
float2 UVCoord_N1=float2(0.0);
UVCoord_N1=Globals.Surface_UVCoord0;
float Output_N78=0.0;
Output_N78=UVCoord_N1.y;
float Output_N79=0.0;
float param_4=(*sc_set0.UserUniforms).progress_value;
Output_N79=param_4;
float Output_N97=0.0;
Output_N97=step(Output_N78,Output_N79);
float4 Output_N104=float4(0.0);
Output_N104=Export_N364*float4(Output_N97);
float Output_N2=0.0;
Output_N2=Output_N104.w;
float3 Result_N337=float3(0.0);
float3 param_5=float3(0.0);
float3 param_6=float3(0.0);
ssGlobals param_8=Globals;
float3 param_7;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_1300=float3(0.0);
l9_1300=param_8.VertexTangent_WorldSpace;
float3 l9_1301=float3(0.0);
l9_1301=param_8.VertexBinormal_WorldSpace;
float3 l9_1302=float3(0.0);
l9_1302=param_8.VertexNormal_WorldSpace;
float3x3 l9_1303=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_1303=float3x3(float3(l9_1300),float3(l9_1301),float3(l9_1302));
float2 l9_1304=float2(0.0);
float2 l9_1305=float2(0.0);
float2 l9_1306=float2(0.0);
float2 l9_1307=float2(0.0);
float2 l9_1308=float2(0.0);
float2 l9_1309=float2(0.0);
ssGlobals l9_1310=param_8;
float2 l9_1311;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_1312=float2(0.0);
l9_1312=l9_1310.Surface_UVCoord0;
l9_1305=l9_1312;
l9_1311=l9_1305;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_1313=float2(0.0);
l9_1313=l9_1310.Surface_UVCoord1;
l9_1306=l9_1313;
l9_1311=l9_1306;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_1314=float2(0.0);
l9_1314=l9_1310.Surface_UVCoord0;
float2 l9_1315=float2(0.0);
float2 l9_1316=float2(0.0);
float2 l9_1317=float2(0.0);
ssGlobals l9_1318=l9_1310;
float2 l9_1319;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1320=float2(0.0);
float2 l9_1321=float2(0.0);
float2 l9_1322=float2(0.0);
float2 l9_1323=float2(0.0);
float2 l9_1324=float2(0.0);
ssGlobals l9_1325=l9_1318;
float2 l9_1326;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1327=float2(0.0);
l9_1327=l9_1325.Surface_UVCoord0;
l9_1321=l9_1327;
l9_1326=l9_1321;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1328=float2(0.0);
l9_1328=l9_1325.Surface_UVCoord1;
l9_1322=l9_1328;
l9_1326=l9_1322;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1329=float2(0.0);
l9_1329=l9_1325.gScreenCoord;
l9_1323=l9_1329;
l9_1326=l9_1323;
}
else
{
float2 l9_1330=float2(0.0);
l9_1330=l9_1325.Surface_UVCoord0;
l9_1324=l9_1330;
l9_1326=l9_1324;
}
}
}
l9_1320=l9_1326;
float2 l9_1331=float2(0.0);
float2 l9_1332=(*sc_set0.UserUniforms).uv2Scale;
l9_1331=l9_1332;
float2 l9_1333=float2(0.0);
l9_1333=l9_1331;
float2 l9_1334=float2(0.0);
float2 l9_1335=(*sc_set0.UserUniforms).uv2Offset;
l9_1334=l9_1335;
float2 l9_1336=float2(0.0);
l9_1336=l9_1334;
float2 l9_1337=float2(0.0);
l9_1337=(l9_1320*l9_1333)+l9_1336;
float2 l9_1338=float2(0.0);
l9_1338=l9_1337+(l9_1336*(l9_1318.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1316=l9_1338;
l9_1319=l9_1316;
}
else
{
float2 l9_1339=float2(0.0);
float2 l9_1340=float2(0.0);
float2 l9_1341=float2(0.0);
float2 l9_1342=float2(0.0);
float2 l9_1343=float2(0.0);
ssGlobals l9_1344=l9_1318;
float2 l9_1345;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1346=float2(0.0);
l9_1346=l9_1344.Surface_UVCoord0;
l9_1340=l9_1346;
l9_1345=l9_1340;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1347=float2(0.0);
l9_1347=l9_1344.Surface_UVCoord1;
l9_1341=l9_1347;
l9_1345=l9_1341;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1348=float2(0.0);
l9_1348=l9_1344.gScreenCoord;
l9_1342=l9_1348;
l9_1345=l9_1342;
}
else
{
float2 l9_1349=float2(0.0);
l9_1349=l9_1344.Surface_UVCoord0;
l9_1343=l9_1349;
l9_1345=l9_1343;
}
}
}
l9_1339=l9_1345;
float2 l9_1350=float2(0.0);
float2 l9_1351=(*sc_set0.UserUniforms).uv2Scale;
l9_1350=l9_1351;
float2 l9_1352=float2(0.0);
l9_1352=l9_1350;
float2 l9_1353=float2(0.0);
float2 l9_1354=(*sc_set0.UserUniforms).uv2Offset;
l9_1353=l9_1354;
float2 l9_1355=float2(0.0);
l9_1355=l9_1353;
float2 l9_1356=float2(0.0);
l9_1356=(l9_1339*l9_1352)+l9_1355;
l9_1317=l9_1356;
l9_1319=l9_1317;
}
l9_1315=l9_1319;
float l9_1357=0.0;
float l9_1358;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1358=1.001;
}
else
{
l9_1358=0.001;
}
l9_1358-=0.001;
l9_1357=l9_1358;
float l9_1359=0.0;
l9_1359=l9_1357;
float2 l9_1360=float2(0.0);
l9_1360=mix(l9_1314,l9_1315,float2(l9_1359));
float2 l9_1361=float2(0.0);
l9_1361=l9_1360;
float2 l9_1362=float2(0.0);
l9_1362=l9_1361;
l9_1307=l9_1362;
l9_1311=l9_1307;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_1363=float2(0.0);
l9_1363=l9_1310.Surface_UVCoord0;
float2 l9_1364=float2(0.0);
float2 l9_1365=float2(0.0);
float2 l9_1366=float2(0.0);
ssGlobals l9_1367=l9_1310;
float2 l9_1368;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1369=float2(0.0);
float2 l9_1370=float2(0.0);
float2 l9_1371=float2(0.0);
float2 l9_1372=float2(0.0);
float2 l9_1373=float2(0.0);
float2 l9_1374=float2(0.0);
ssGlobals l9_1375=l9_1367;
float2 l9_1376;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1377=float2(0.0);
l9_1377=l9_1375.Surface_UVCoord0;
l9_1370=l9_1377;
l9_1376=l9_1370;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1378=float2(0.0);
l9_1378=l9_1375.Surface_UVCoord1;
l9_1371=l9_1378;
l9_1376=l9_1371;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1379=float2(0.0);
l9_1379=l9_1375.gScreenCoord;
l9_1372=l9_1379;
l9_1376=l9_1372;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1380=float2(0.0);
l9_1380=l9_1375.Surface_UVCoord0;
float2 l9_1381=float2(0.0);
float2 l9_1382=float2(0.0);
float2 l9_1383=float2(0.0);
ssGlobals l9_1384=l9_1375;
float2 l9_1385;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1386=float2(0.0);
float2 l9_1387=float2(0.0);
float2 l9_1388=float2(0.0);
float2 l9_1389=float2(0.0);
float2 l9_1390=float2(0.0);
ssGlobals l9_1391=l9_1384;
float2 l9_1392;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1393=float2(0.0);
l9_1393=l9_1391.Surface_UVCoord0;
l9_1387=l9_1393;
l9_1392=l9_1387;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1394=float2(0.0);
l9_1394=l9_1391.Surface_UVCoord1;
l9_1388=l9_1394;
l9_1392=l9_1388;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1395=float2(0.0);
l9_1395=l9_1391.gScreenCoord;
l9_1389=l9_1395;
l9_1392=l9_1389;
}
else
{
float2 l9_1396=float2(0.0);
l9_1396=l9_1391.Surface_UVCoord0;
l9_1390=l9_1396;
l9_1392=l9_1390;
}
}
}
l9_1386=l9_1392;
float2 l9_1397=float2(0.0);
float2 l9_1398=(*sc_set0.UserUniforms).uv2Scale;
l9_1397=l9_1398;
float2 l9_1399=float2(0.0);
l9_1399=l9_1397;
float2 l9_1400=float2(0.0);
float2 l9_1401=(*sc_set0.UserUniforms).uv2Offset;
l9_1400=l9_1401;
float2 l9_1402=float2(0.0);
l9_1402=l9_1400;
float2 l9_1403=float2(0.0);
l9_1403=(l9_1386*l9_1399)+l9_1402;
float2 l9_1404=float2(0.0);
l9_1404=l9_1403+(l9_1402*(l9_1384.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1382=l9_1404;
l9_1385=l9_1382;
}
else
{
float2 l9_1405=float2(0.0);
float2 l9_1406=float2(0.0);
float2 l9_1407=float2(0.0);
float2 l9_1408=float2(0.0);
float2 l9_1409=float2(0.0);
ssGlobals l9_1410=l9_1384;
float2 l9_1411;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1412=float2(0.0);
l9_1412=l9_1410.Surface_UVCoord0;
l9_1406=l9_1412;
l9_1411=l9_1406;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1413=float2(0.0);
l9_1413=l9_1410.Surface_UVCoord1;
l9_1407=l9_1413;
l9_1411=l9_1407;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1414=float2(0.0);
l9_1414=l9_1410.gScreenCoord;
l9_1408=l9_1414;
l9_1411=l9_1408;
}
else
{
float2 l9_1415=float2(0.0);
l9_1415=l9_1410.Surface_UVCoord0;
l9_1409=l9_1415;
l9_1411=l9_1409;
}
}
}
l9_1405=l9_1411;
float2 l9_1416=float2(0.0);
float2 l9_1417=(*sc_set0.UserUniforms).uv2Scale;
l9_1416=l9_1417;
float2 l9_1418=float2(0.0);
l9_1418=l9_1416;
float2 l9_1419=float2(0.0);
float2 l9_1420=(*sc_set0.UserUniforms).uv2Offset;
l9_1419=l9_1420;
float2 l9_1421=float2(0.0);
l9_1421=l9_1419;
float2 l9_1422=float2(0.0);
l9_1422=(l9_1405*l9_1418)+l9_1421;
l9_1383=l9_1422;
l9_1385=l9_1383;
}
l9_1381=l9_1385;
float l9_1423=0.0;
float l9_1424;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1424=1.001;
}
else
{
l9_1424=0.001;
}
l9_1424-=0.001;
l9_1423=l9_1424;
float l9_1425=0.0;
l9_1425=l9_1423;
float2 l9_1426=float2(0.0);
l9_1426=mix(l9_1380,l9_1381,float2(l9_1425));
float2 l9_1427=float2(0.0);
l9_1427=l9_1426;
float2 l9_1428=float2(0.0);
l9_1428=l9_1427;
l9_1373=l9_1428;
l9_1376=l9_1373;
}
else
{
float2 l9_1429=float2(0.0);
l9_1429=l9_1375.Surface_UVCoord0;
l9_1374=l9_1429;
l9_1376=l9_1374;
}
}
}
}
l9_1369=l9_1376;
float2 l9_1430=float2(0.0);
float2 l9_1431=(*sc_set0.UserUniforms).uv3Scale;
l9_1430=l9_1431;
float2 l9_1432=float2(0.0);
l9_1432=l9_1430;
float2 l9_1433=float2(0.0);
float2 l9_1434=(*sc_set0.UserUniforms).uv3Offset;
l9_1433=l9_1434;
float2 l9_1435=float2(0.0);
l9_1435=l9_1433;
float2 l9_1436=float2(0.0);
l9_1436=(l9_1369*l9_1432)+l9_1435;
float2 l9_1437=float2(0.0);
l9_1437=l9_1436+(l9_1435*(l9_1367.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1365=l9_1437;
l9_1368=l9_1365;
}
else
{
float2 l9_1438=float2(0.0);
float2 l9_1439=float2(0.0);
float2 l9_1440=float2(0.0);
float2 l9_1441=float2(0.0);
float2 l9_1442=float2(0.0);
float2 l9_1443=float2(0.0);
ssGlobals l9_1444=l9_1367;
float2 l9_1445;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1446=float2(0.0);
l9_1446=l9_1444.Surface_UVCoord0;
l9_1439=l9_1446;
l9_1445=l9_1439;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1447=float2(0.0);
l9_1447=l9_1444.Surface_UVCoord1;
l9_1440=l9_1447;
l9_1445=l9_1440;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1448=float2(0.0);
l9_1448=l9_1444.gScreenCoord;
l9_1441=l9_1448;
l9_1445=l9_1441;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1449=float2(0.0);
l9_1449=l9_1444.Surface_UVCoord0;
float2 l9_1450=float2(0.0);
float2 l9_1451=float2(0.0);
float2 l9_1452=float2(0.0);
ssGlobals l9_1453=l9_1444;
float2 l9_1454;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1455=float2(0.0);
float2 l9_1456=float2(0.0);
float2 l9_1457=float2(0.0);
float2 l9_1458=float2(0.0);
float2 l9_1459=float2(0.0);
ssGlobals l9_1460=l9_1453;
float2 l9_1461;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1462=float2(0.0);
l9_1462=l9_1460.Surface_UVCoord0;
l9_1456=l9_1462;
l9_1461=l9_1456;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1463=float2(0.0);
l9_1463=l9_1460.Surface_UVCoord1;
l9_1457=l9_1463;
l9_1461=l9_1457;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1464=float2(0.0);
l9_1464=l9_1460.gScreenCoord;
l9_1458=l9_1464;
l9_1461=l9_1458;
}
else
{
float2 l9_1465=float2(0.0);
l9_1465=l9_1460.Surface_UVCoord0;
l9_1459=l9_1465;
l9_1461=l9_1459;
}
}
}
l9_1455=l9_1461;
float2 l9_1466=float2(0.0);
float2 l9_1467=(*sc_set0.UserUniforms).uv2Scale;
l9_1466=l9_1467;
float2 l9_1468=float2(0.0);
l9_1468=l9_1466;
float2 l9_1469=float2(0.0);
float2 l9_1470=(*sc_set0.UserUniforms).uv2Offset;
l9_1469=l9_1470;
float2 l9_1471=float2(0.0);
l9_1471=l9_1469;
float2 l9_1472=float2(0.0);
l9_1472=(l9_1455*l9_1468)+l9_1471;
float2 l9_1473=float2(0.0);
l9_1473=l9_1472+(l9_1471*(l9_1453.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1451=l9_1473;
l9_1454=l9_1451;
}
else
{
float2 l9_1474=float2(0.0);
float2 l9_1475=float2(0.0);
float2 l9_1476=float2(0.0);
float2 l9_1477=float2(0.0);
float2 l9_1478=float2(0.0);
ssGlobals l9_1479=l9_1453;
float2 l9_1480;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1481=float2(0.0);
l9_1481=l9_1479.Surface_UVCoord0;
l9_1475=l9_1481;
l9_1480=l9_1475;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1482=float2(0.0);
l9_1482=l9_1479.Surface_UVCoord1;
l9_1476=l9_1482;
l9_1480=l9_1476;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1483=float2(0.0);
l9_1483=l9_1479.gScreenCoord;
l9_1477=l9_1483;
l9_1480=l9_1477;
}
else
{
float2 l9_1484=float2(0.0);
l9_1484=l9_1479.Surface_UVCoord0;
l9_1478=l9_1484;
l9_1480=l9_1478;
}
}
}
l9_1474=l9_1480;
float2 l9_1485=float2(0.0);
float2 l9_1486=(*sc_set0.UserUniforms).uv2Scale;
l9_1485=l9_1486;
float2 l9_1487=float2(0.0);
l9_1487=l9_1485;
float2 l9_1488=float2(0.0);
float2 l9_1489=(*sc_set0.UserUniforms).uv2Offset;
l9_1488=l9_1489;
float2 l9_1490=float2(0.0);
l9_1490=l9_1488;
float2 l9_1491=float2(0.0);
l9_1491=(l9_1474*l9_1487)+l9_1490;
l9_1452=l9_1491;
l9_1454=l9_1452;
}
l9_1450=l9_1454;
float l9_1492=0.0;
float l9_1493;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1493=1.001;
}
else
{
l9_1493=0.001;
}
l9_1493-=0.001;
l9_1492=l9_1493;
float l9_1494=0.0;
l9_1494=l9_1492;
float2 l9_1495=float2(0.0);
l9_1495=mix(l9_1449,l9_1450,float2(l9_1494));
float2 l9_1496=float2(0.0);
l9_1496=l9_1495;
float2 l9_1497=float2(0.0);
l9_1497=l9_1496;
l9_1442=l9_1497;
l9_1445=l9_1442;
}
else
{
float2 l9_1498=float2(0.0);
l9_1498=l9_1444.Surface_UVCoord0;
l9_1443=l9_1498;
l9_1445=l9_1443;
}
}
}
}
l9_1438=l9_1445;
float2 l9_1499=float2(0.0);
float2 l9_1500=(*sc_set0.UserUniforms).uv3Scale;
l9_1499=l9_1500;
float2 l9_1501=float2(0.0);
l9_1501=l9_1499;
float2 l9_1502=float2(0.0);
float2 l9_1503=(*sc_set0.UserUniforms).uv3Offset;
l9_1502=l9_1503;
float2 l9_1504=float2(0.0);
l9_1504=l9_1502;
float2 l9_1505=float2(0.0);
l9_1505=(l9_1438*l9_1501)+l9_1504;
l9_1366=l9_1505;
l9_1368=l9_1366;
}
l9_1364=l9_1368;
float l9_1506=0.0;
float l9_1507;
if ((int(Tweak_N11_tmp)!=0))
{
l9_1507=1.001;
}
else
{
l9_1507=0.001;
}
l9_1507-=0.001;
l9_1506=l9_1507;
float l9_1508=0.0;
l9_1508=l9_1506;
float2 l9_1509=float2(0.0);
l9_1509=mix(l9_1363,l9_1364,float2(l9_1508));
float2 l9_1510=float2(0.0);
l9_1510=l9_1509;
float2 l9_1511=float2(0.0);
l9_1511=l9_1510;
l9_1308=l9_1511;
l9_1311=l9_1308;
}
else
{
float2 l9_1512=float2(0.0);
l9_1512=l9_1310.Surface_UVCoord0;
l9_1309=l9_1512;
l9_1311=l9_1309;
}
}
}
}
l9_1304=l9_1311;
float4 l9_1513=float4(0.0);
float2 l9_1514=l9_1304;
int l9_1515;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_1516=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1516=0;
}
else
{
l9_1516=in.varStereoViewID;
}
int l9_1517=l9_1516;
l9_1515=1-l9_1517;
}
else
{
int l9_1518=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1518=0;
}
else
{
l9_1518=in.varStereoViewID;
}
int l9_1519=l9_1518;
l9_1515=l9_1519;
}
int l9_1520=l9_1515;
int l9_1521=normalTexLayout_tmp;
int l9_1522=l9_1520;
float2 l9_1523=l9_1514;
bool l9_1524=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_1525=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_1526=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_1527=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_1528=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_1529=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_1530=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_1531=0.0;
bool l9_1532=l9_1529&&(!l9_1527);
float l9_1533=1.0;
float l9_1534=l9_1523.x;
int l9_1535=l9_1526.x;
if (l9_1535==1)
{
l9_1534=fract(l9_1534);
}
else
{
if (l9_1535==2)
{
float l9_1536=fract(l9_1534);
float l9_1537=l9_1534-l9_1536;
float l9_1538=step(0.25,fract(l9_1537*0.5));
l9_1534=mix(l9_1536,1.0-l9_1536,fast::clamp(l9_1538,0.0,1.0));
}
}
l9_1523.x=l9_1534;
float l9_1539=l9_1523.y;
int l9_1540=l9_1526.y;
if (l9_1540==1)
{
l9_1539=fract(l9_1539);
}
else
{
if (l9_1540==2)
{
float l9_1541=fract(l9_1539);
float l9_1542=l9_1539-l9_1541;
float l9_1543=step(0.25,fract(l9_1542*0.5));
l9_1539=mix(l9_1541,1.0-l9_1541,fast::clamp(l9_1543,0.0,1.0));
}
}
l9_1523.y=l9_1539;
if (l9_1527)
{
bool l9_1544=l9_1529;
bool l9_1545;
if (l9_1544)
{
l9_1545=l9_1526.x==3;
}
else
{
l9_1545=l9_1544;
}
float l9_1546=l9_1523.x;
float l9_1547=l9_1528.x;
float l9_1548=l9_1528.z;
bool l9_1549=l9_1545;
float l9_1550=l9_1533;
float l9_1551=fast::clamp(l9_1546,l9_1547,l9_1548);
float l9_1552=step(abs(l9_1546-l9_1551),9.9999997e-06);
l9_1550*=(l9_1552+((1.0-float(l9_1549))*(1.0-l9_1552)));
l9_1546=l9_1551;
l9_1523.x=l9_1546;
l9_1533=l9_1550;
bool l9_1553=l9_1529;
bool l9_1554;
if (l9_1553)
{
l9_1554=l9_1526.y==3;
}
else
{
l9_1554=l9_1553;
}
float l9_1555=l9_1523.y;
float l9_1556=l9_1528.y;
float l9_1557=l9_1528.w;
bool l9_1558=l9_1554;
float l9_1559=l9_1533;
float l9_1560=fast::clamp(l9_1555,l9_1556,l9_1557);
float l9_1561=step(abs(l9_1555-l9_1560),9.9999997e-06);
l9_1559*=(l9_1561+((1.0-float(l9_1558))*(1.0-l9_1561)));
l9_1555=l9_1560;
l9_1523.y=l9_1555;
l9_1533=l9_1559;
}
float2 l9_1562=l9_1523;
bool l9_1563=l9_1524;
float3x3 l9_1564=l9_1525;
if (l9_1563)
{
l9_1562=float2((l9_1564*float3(l9_1562,1.0)).xy);
}
float2 l9_1565=l9_1562;
l9_1523=l9_1565;
float l9_1566=l9_1523.x;
int l9_1567=l9_1526.x;
bool l9_1568=l9_1532;
float l9_1569=l9_1533;
if ((l9_1567==0)||(l9_1567==3))
{
float l9_1570=l9_1566;
float l9_1571=0.0;
float l9_1572=1.0;
bool l9_1573=l9_1568;
float l9_1574=l9_1569;
float l9_1575=fast::clamp(l9_1570,l9_1571,l9_1572);
float l9_1576=step(abs(l9_1570-l9_1575),9.9999997e-06);
l9_1574*=(l9_1576+((1.0-float(l9_1573))*(1.0-l9_1576)));
l9_1570=l9_1575;
l9_1566=l9_1570;
l9_1569=l9_1574;
}
l9_1523.x=l9_1566;
l9_1533=l9_1569;
float l9_1577=l9_1523.y;
int l9_1578=l9_1526.y;
bool l9_1579=l9_1532;
float l9_1580=l9_1533;
if ((l9_1578==0)||(l9_1578==3))
{
float l9_1581=l9_1577;
float l9_1582=0.0;
float l9_1583=1.0;
bool l9_1584=l9_1579;
float l9_1585=l9_1580;
float l9_1586=fast::clamp(l9_1581,l9_1582,l9_1583);
float l9_1587=step(abs(l9_1581-l9_1586),9.9999997e-06);
l9_1585*=(l9_1587+((1.0-float(l9_1584))*(1.0-l9_1587)));
l9_1581=l9_1586;
l9_1577=l9_1581;
l9_1580=l9_1585;
}
l9_1523.y=l9_1577;
l9_1533=l9_1580;
float2 l9_1588=l9_1523;
int l9_1589=l9_1521;
int l9_1590=l9_1522;
float l9_1591=l9_1531;
float2 l9_1592=l9_1588;
int l9_1593=l9_1589;
int l9_1594=l9_1590;
float3 l9_1595=float3(0.0);
if (l9_1593==0)
{
l9_1595=float3(l9_1592,0.0);
}
else
{
if (l9_1593==1)
{
l9_1595=float3(l9_1592.x,(l9_1592.y*0.5)+(0.5-(float(l9_1594)*0.5)),0.0);
}
else
{
l9_1595=float3(l9_1592,float(l9_1594));
}
}
float3 l9_1596=l9_1595;
float3 l9_1597=l9_1596;
float4 l9_1598=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_1597.xy,bias(l9_1591));
float4 l9_1599=l9_1598;
if (l9_1529)
{
l9_1599=mix(l9_1530,l9_1599,float4(l9_1533));
}
float4 l9_1600=l9_1599;
float4 l9_1601=l9_1600;
float3 l9_1602=(l9_1601.xyz*1.9921875)-float3(1.0);
l9_1601=float4(l9_1602.x,l9_1602.y,l9_1602.z,l9_1601.w);
l9_1513=l9_1601;
float3 l9_1603=float3(0.0);
float3 l9_1604=float3(0.0);
float3 l9_1605=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_1606=param_8;
float3 l9_1607;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_1608=float2(0.0);
float2 l9_1609=float2(0.0);
float2 l9_1610=float2(0.0);
float2 l9_1611=float2(0.0);
float2 l9_1612=float2(0.0);
float2 l9_1613=float2(0.0);
ssGlobals l9_1614=l9_1606;
float2 l9_1615;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_1616=float2(0.0);
l9_1616=l9_1614.Surface_UVCoord0;
l9_1609=l9_1616;
l9_1615=l9_1609;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_1617=float2(0.0);
l9_1617=l9_1614.Surface_UVCoord1;
l9_1610=l9_1617;
l9_1615=l9_1610;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_1618=float2(0.0);
l9_1618=l9_1614.Surface_UVCoord0;
float2 l9_1619=float2(0.0);
float2 l9_1620=float2(0.0);
float2 l9_1621=float2(0.0);
ssGlobals l9_1622=l9_1614;
float2 l9_1623;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1624=float2(0.0);
float2 l9_1625=float2(0.0);
float2 l9_1626=float2(0.0);
float2 l9_1627=float2(0.0);
float2 l9_1628=float2(0.0);
ssGlobals l9_1629=l9_1622;
float2 l9_1630;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1631=float2(0.0);
l9_1631=l9_1629.Surface_UVCoord0;
l9_1625=l9_1631;
l9_1630=l9_1625;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1632=float2(0.0);
l9_1632=l9_1629.Surface_UVCoord1;
l9_1626=l9_1632;
l9_1630=l9_1626;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1633=float2(0.0);
l9_1633=l9_1629.gScreenCoord;
l9_1627=l9_1633;
l9_1630=l9_1627;
}
else
{
float2 l9_1634=float2(0.0);
l9_1634=l9_1629.Surface_UVCoord0;
l9_1628=l9_1634;
l9_1630=l9_1628;
}
}
}
l9_1624=l9_1630;
float2 l9_1635=float2(0.0);
float2 l9_1636=(*sc_set0.UserUniforms).uv2Scale;
l9_1635=l9_1636;
float2 l9_1637=float2(0.0);
l9_1637=l9_1635;
float2 l9_1638=float2(0.0);
float2 l9_1639=(*sc_set0.UserUniforms).uv2Offset;
l9_1638=l9_1639;
float2 l9_1640=float2(0.0);
l9_1640=l9_1638;
float2 l9_1641=float2(0.0);
l9_1641=(l9_1624*l9_1637)+l9_1640;
float2 l9_1642=float2(0.0);
l9_1642=l9_1641+(l9_1640*(l9_1622.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1620=l9_1642;
l9_1623=l9_1620;
}
else
{
float2 l9_1643=float2(0.0);
float2 l9_1644=float2(0.0);
float2 l9_1645=float2(0.0);
float2 l9_1646=float2(0.0);
float2 l9_1647=float2(0.0);
ssGlobals l9_1648=l9_1622;
float2 l9_1649;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1650=float2(0.0);
l9_1650=l9_1648.Surface_UVCoord0;
l9_1644=l9_1650;
l9_1649=l9_1644;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1651=float2(0.0);
l9_1651=l9_1648.Surface_UVCoord1;
l9_1645=l9_1651;
l9_1649=l9_1645;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1652=float2(0.0);
l9_1652=l9_1648.gScreenCoord;
l9_1646=l9_1652;
l9_1649=l9_1646;
}
else
{
float2 l9_1653=float2(0.0);
l9_1653=l9_1648.Surface_UVCoord0;
l9_1647=l9_1653;
l9_1649=l9_1647;
}
}
}
l9_1643=l9_1649;
float2 l9_1654=float2(0.0);
float2 l9_1655=(*sc_set0.UserUniforms).uv2Scale;
l9_1654=l9_1655;
float2 l9_1656=float2(0.0);
l9_1656=l9_1654;
float2 l9_1657=float2(0.0);
float2 l9_1658=(*sc_set0.UserUniforms).uv2Offset;
l9_1657=l9_1658;
float2 l9_1659=float2(0.0);
l9_1659=l9_1657;
float2 l9_1660=float2(0.0);
l9_1660=(l9_1643*l9_1656)+l9_1659;
l9_1621=l9_1660;
l9_1623=l9_1621;
}
l9_1619=l9_1623;
float l9_1661=0.0;
float l9_1662;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1662=1.001;
}
else
{
l9_1662=0.001;
}
l9_1662-=0.001;
l9_1661=l9_1662;
float l9_1663=0.0;
l9_1663=l9_1661;
float2 l9_1664=float2(0.0);
l9_1664=mix(l9_1618,l9_1619,float2(l9_1663));
float2 l9_1665=float2(0.0);
l9_1665=l9_1664;
float2 l9_1666=float2(0.0);
l9_1666=l9_1665;
l9_1611=l9_1666;
l9_1615=l9_1611;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_1667=float2(0.0);
l9_1667=l9_1614.Surface_UVCoord0;
float2 l9_1668=float2(0.0);
float2 l9_1669=float2(0.0);
float2 l9_1670=float2(0.0);
ssGlobals l9_1671=l9_1614;
float2 l9_1672;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1673=float2(0.0);
float2 l9_1674=float2(0.0);
float2 l9_1675=float2(0.0);
float2 l9_1676=float2(0.0);
float2 l9_1677=float2(0.0);
float2 l9_1678=float2(0.0);
ssGlobals l9_1679=l9_1671;
float2 l9_1680;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1681=float2(0.0);
l9_1681=l9_1679.Surface_UVCoord0;
l9_1674=l9_1681;
l9_1680=l9_1674;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1682=float2(0.0);
l9_1682=l9_1679.Surface_UVCoord1;
l9_1675=l9_1682;
l9_1680=l9_1675;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1683=float2(0.0);
l9_1683=l9_1679.gScreenCoord;
l9_1676=l9_1683;
l9_1680=l9_1676;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1684=float2(0.0);
l9_1684=l9_1679.Surface_UVCoord0;
float2 l9_1685=float2(0.0);
float2 l9_1686=float2(0.0);
float2 l9_1687=float2(0.0);
ssGlobals l9_1688=l9_1679;
float2 l9_1689;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1690=float2(0.0);
float2 l9_1691=float2(0.0);
float2 l9_1692=float2(0.0);
float2 l9_1693=float2(0.0);
float2 l9_1694=float2(0.0);
ssGlobals l9_1695=l9_1688;
float2 l9_1696;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1697=float2(0.0);
l9_1697=l9_1695.Surface_UVCoord0;
l9_1691=l9_1697;
l9_1696=l9_1691;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1698=float2(0.0);
l9_1698=l9_1695.Surface_UVCoord1;
l9_1692=l9_1698;
l9_1696=l9_1692;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1699=float2(0.0);
l9_1699=l9_1695.gScreenCoord;
l9_1693=l9_1699;
l9_1696=l9_1693;
}
else
{
float2 l9_1700=float2(0.0);
l9_1700=l9_1695.Surface_UVCoord0;
l9_1694=l9_1700;
l9_1696=l9_1694;
}
}
}
l9_1690=l9_1696;
float2 l9_1701=float2(0.0);
float2 l9_1702=(*sc_set0.UserUniforms).uv2Scale;
l9_1701=l9_1702;
float2 l9_1703=float2(0.0);
l9_1703=l9_1701;
float2 l9_1704=float2(0.0);
float2 l9_1705=(*sc_set0.UserUniforms).uv2Offset;
l9_1704=l9_1705;
float2 l9_1706=float2(0.0);
l9_1706=l9_1704;
float2 l9_1707=float2(0.0);
l9_1707=(l9_1690*l9_1703)+l9_1706;
float2 l9_1708=float2(0.0);
l9_1708=l9_1707+(l9_1706*(l9_1688.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1686=l9_1708;
l9_1689=l9_1686;
}
else
{
float2 l9_1709=float2(0.0);
float2 l9_1710=float2(0.0);
float2 l9_1711=float2(0.0);
float2 l9_1712=float2(0.0);
float2 l9_1713=float2(0.0);
ssGlobals l9_1714=l9_1688;
float2 l9_1715;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1716=float2(0.0);
l9_1716=l9_1714.Surface_UVCoord0;
l9_1710=l9_1716;
l9_1715=l9_1710;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1717=float2(0.0);
l9_1717=l9_1714.Surface_UVCoord1;
l9_1711=l9_1717;
l9_1715=l9_1711;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1718=float2(0.0);
l9_1718=l9_1714.gScreenCoord;
l9_1712=l9_1718;
l9_1715=l9_1712;
}
else
{
float2 l9_1719=float2(0.0);
l9_1719=l9_1714.Surface_UVCoord0;
l9_1713=l9_1719;
l9_1715=l9_1713;
}
}
}
l9_1709=l9_1715;
float2 l9_1720=float2(0.0);
float2 l9_1721=(*sc_set0.UserUniforms).uv2Scale;
l9_1720=l9_1721;
float2 l9_1722=float2(0.0);
l9_1722=l9_1720;
float2 l9_1723=float2(0.0);
float2 l9_1724=(*sc_set0.UserUniforms).uv2Offset;
l9_1723=l9_1724;
float2 l9_1725=float2(0.0);
l9_1725=l9_1723;
float2 l9_1726=float2(0.0);
l9_1726=(l9_1709*l9_1722)+l9_1725;
l9_1687=l9_1726;
l9_1689=l9_1687;
}
l9_1685=l9_1689;
float l9_1727=0.0;
float l9_1728;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1728=1.001;
}
else
{
l9_1728=0.001;
}
l9_1728-=0.001;
l9_1727=l9_1728;
float l9_1729=0.0;
l9_1729=l9_1727;
float2 l9_1730=float2(0.0);
l9_1730=mix(l9_1684,l9_1685,float2(l9_1729));
float2 l9_1731=float2(0.0);
l9_1731=l9_1730;
float2 l9_1732=float2(0.0);
l9_1732=l9_1731;
l9_1677=l9_1732;
l9_1680=l9_1677;
}
else
{
float2 l9_1733=float2(0.0);
l9_1733=l9_1679.Surface_UVCoord0;
l9_1678=l9_1733;
l9_1680=l9_1678;
}
}
}
}
l9_1673=l9_1680;
float2 l9_1734=float2(0.0);
float2 l9_1735=(*sc_set0.UserUniforms).uv3Scale;
l9_1734=l9_1735;
float2 l9_1736=float2(0.0);
l9_1736=l9_1734;
float2 l9_1737=float2(0.0);
float2 l9_1738=(*sc_set0.UserUniforms).uv3Offset;
l9_1737=l9_1738;
float2 l9_1739=float2(0.0);
l9_1739=l9_1737;
float2 l9_1740=float2(0.0);
l9_1740=(l9_1673*l9_1736)+l9_1739;
float2 l9_1741=float2(0.0);
l9_1741=l9_1740+(l9_1739*(l9_1671.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1669=l9_1741;
l9_1672=l9_1669;
}
else
{
float2 l9_1742=float2(0.0);
float2 l9_1743=float2(0.0);
float2 l9_1744=float2(0.0);
float2 l9_1745=float2(0.0);
float2 l9_1746=float2(0.0);
float2 l9_1747=float2(0.0);
ssGlobals l9_1748=l9_1671;
float2 l9_1749;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1750=float2(0.0);
l9_1750=l9_1748.Surface_UVCoord0;
l9_1743=l9_1750;
l9_1749=l9_1743;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1751=float2(0.0);
l9_1751=l9_1748.Surface_UVCoord1;
l9_1744=l9_1751;
l9_1749=l9_1744;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1752=float2(0.0);
l9_1752=l9_1748.gScreenCoord;
l9_1745=l9_1752;
l9_1749=l9_1745;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1753=float2(0.0);
l9_1753=l9_1748.Surface_UVCoord0;
float2 l9_1754=float2(0.0);
float2 l9_1755=float2(0.0);
float2 l9_1756=float2(0.0);
ssGlobals l9_1757=l9_1748;
float2 l9_1758;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1759=float2(0.0);
float2 l9_1760=float2(0.0);
float2 l9_1761=float2(0.0);
float2 l9_1762=float2(0.0);
float2 l9_1763=float2(0.0);
ssGlobals l9_1764=l9_1757;
float2 l9_1765;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1766=float2(0.0);
l9_1766=l9_1764.Surface_UVCoord0;
l9_1760=l9_1766;
l9_1765=l9_1760;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1767=float2(0.0);
l9_1767=l9_1764.Surface_UVCoord1;
l9_1761=l9_1767;
l9_1765=l9_1761;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1768=float2(0.0);
l9_1768=l9_1764.gScreenCoord;
l9_1762=l9_1768;
l9_1765=l9_1762;
}
else
{
float2 l9_1769=float2(0.0);
l9_1769=l9_1764.Surface_UVCoord0;
l9_1763=l9_1769;
l9_1765=l9_1763;
}
}
}
l9_1759=l9_1765;
float2 l9_1770=float2(0.0);
float2 l9_1771=(*sc_set0.UserUniforms).uv2Scale;
l9_1770=l9_1771;
float2 l9_1772=float2(0.0);
l9_1772=l9_1770;
float2 l9_1773=float2(0.0);
float2 l9_1774=(*sc_set0.UserUniforms).uv2Offset;
l9_1773=l9_1774;
float2 l9_1775=float2(0.0);
l9_1775=l9_1773;
float2 l9_1776=float2(0.0);
l9_1776=(l9_1759*l9_1772)+l9_1775;
float2 l9_1777=float2(0.0);
l9_1777=l9_1776+(l9_1775*(l9_1757.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1755=l9_1777;
l9_1758=l9_1755;
}
else
{
float2 l9_1778=float2(0.0);
float2 l9_1779=float2(0.0);
float2 l9_1780=float2(0.0);
float2 l9_1781=float2(0.0);
float2 l9_1782=float2(0.0);
ssGlobals l9_1783=l9_1757;
float2 l9_1784;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1785=float2(0.0);
l9_1785=l9_1783.Surface_UVCoord0;
l9_1779=l9_1785;
l9_1784=l9_1779;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1786=float2(0.0);
l9_1786=l9_1783.Surface_UVCoord1;
l9_1780=l9_1786;
l9_1784=l9_1780;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1787=float2(0.0);
l9_1787=l9_1783.gScreenCoord;
l9_1781=l9_1787;
l9_1784=l9_1781;
}
else
{
float2 l9_1788=float2(0.0);
l9_1788=l9_1783.Surface_UVCoord0;
l9_1782=l9_1788;
l9_1784=l9_1782;
}
}
}
l9_1778=l9_1784;
float2 l9_1789=float2(0.0);
float2 l9_1790=(*sc_set0.UserUniforms).uv2Scale;
l9_1789=l9_1790;
float2 l9_1791=float2(0.0);
l9_1791=l9_1789;
float2 l9_1792=float2(0.0);
float2 l9_1793=(*sc_set0.UserUniforms).uv2Offset;
l9_1792=l9_1793;
float2 l9_1794=float2(0.0);
l9_1794=l9_1792;
float2 l9_1795=float2(0.0);
l9_1795=(l9_1778*l9_1791)+l9_1794;
l9_1756=l9_1795;
l9_1758=l9_1756;
}
l9_1754=l9_1758;
float l9_1796=0.0;
float l9_1797;
if ((int(Tweak_N67_tmp)!=0))
{
l9_1797=1.001;
}
else
{
l9_1797=0.001;
}
l9_1797-=0.001;
l9_1796=l9_1797;
float l9_1798=0.0;
l9_1798=l9_1796;
float2 l9_1799=float2(0.0);
l9_1799=mix(l9_1753,l9_1754,float2(l9_1798));
float2 l9_1800=float2(0.0);
l9_1800=l9_1799;
float2 l9_1801=float2(0.0);
l9_1801=l9_1800;
l9_1746=l9_1801;
l9_1749=l9_1746;
}
else
{
float2 l9_1802=float2(0.0);
l9_1802=l9_1748.Surface_UVCoord0;
l9_1747=l9_1802;
l9_1749=l9_1747;
}
}
}
}
l9_1742=l9_1749;
float2 l9_1803=float2(0.0);
float2 l9_1804=(*sc_set0.UserUniforms).uv3Scale;
l9_1803=l9_1804;
float2 l9_1805=float2(0.0);
l9_1805=l9_1803;
float2 l9_1806=float2(0.0);
float2 l9_1807=(*sc_set0.UserUniforms).uv3Offset;
l9_1806=l9_1807;
float2 l9_1808=float2(0.0);
l9_1808=l9_1806;
float2 l9_1809=float2(0.0);
l9_1809=(l9_1742*l9_1805)+l9_1808;
l9_1670=l9_1809;
l9_1672=l9_1670;
}
l9_1668=l9_1672;
float l9_1810=0.0;
float l9_1811;
if ((int(Tweak_N11_tmp)!=0))
{
l9_1811=1.001;
}
else
{
l9_1811=0.001;
}
l9_1811-=0.001;
l9_1810=l9_1811;
float l9_1812=0.0;
l9_1812=l9_1810;
float2 l9_1813=float2(0.0);
l9_1813=mix(l9_1667,l9_1668,float2(l9_1812));
float2 l9_1814=float2(0.0);
l9_1814=l9_1813;
float2 l9_1815=float2(0.0);
l9_1815=l9_1814;
l9_1612=l9_1815;
l9_1615=l9_1612;
}
else
{
float2 l9_1816=float2(0.0);
l9_1816=l9_1614.Surface_UVCoord0;
l9_1613=l9_1816;
l9_1615=l9_1613;
}
}
}
}
l9_1608=l9_1615;
float4 l9_1817=float4(0.0);
float2 l9_1818=l9_1608;
int l9_1819;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_1820=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1820=0;
}
else
{
l9_1820=in.varStereoViewID;
}
int l9_1821=l9_1820;
l9_1819=1-l9_1821;
}
else
{
int l9_1822=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1822=0;
}
else
{
l9_1822=in.varStereoViewID;
}
int l9_1823=l9_1822;
l9_1819=l9_1823;
}
int l9_1824=l9_1819;
int l9_1825=detailNormalTexLayout_tmp;
int l9_1826=l9_1824;
float2 l9_1827=l9_1818;
bool l9_1828=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_1829=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_1830=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_1831=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_1832=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_1833=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_1834=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_1835=0.0;
bool l9_1836=l9_1833&&(!l9_1831);
float l9_1837=1.0;
float l9_1838=l9_1827.x;
int l9_1839=l9_1830.x;
if (l9_1839==1)
{
l9_1838=fract(l9_1838);
}
else
{
if (l9_1839==2)
{
float l9_1840=fract(l9_1838);
float l9_1841=l9_1838-l9_1840;
float l9_1842=step(0.25,fract(l9_1841*0.5));
l9_1838=mix(l9_1840,1.0-l9_1840,fast::clamp(l9_1842,0.0,1.0));
}
}
l9_1827.x=l9_1838;
float l9_1843=l9_1827.y;
int l9_1844=l9_1830.y;
if (l9_1844==1)
{
l9_1843=fract(l9_1843);
}
else
{
if (l9_1844==2)
{
float l9_1845=fract(l9_1843);
float l9_1846=l9_1843-l9_1845;
float l9_1847=step(0.25,fract(l9_1846*0.5));
l9_1843=mix(l9_1845,1.0-l9_1845,fast::clamp(l9_1847,0.0,1.0));
}
}
l9_1827.y=l9_1843;
if (l9_1831)
{
bool l9_1848=l9_1833;
bool l9_1849;
if (l9_1848)
{
l9_1849=l9_1830.x==3;
}
else
{
l9_1849=l9_1848;
}
float l9_1850=l9_1827.x;
float l9_1851=l9_1832.x;
float l9_1852=l9_1832.z;
bool l9_1853=l9_1849;
float l9_1854=l9_1837;
float l9_1855=fast::clamp(l9_1850,l9_1851,l9_1852);
float l9_1856=step(abs(l9_1850-l9_1855),9.9999997e-06);
l9_1854*=(l9_1856+((1.0-float(l9_1853))*(1.0-l9_1856)));
l9_1850=l9_1855;
l9_1827.x=l9_1850;
l9_1837=l9_1854;
bool l9_1857=l9_1833;
bool l9_1858;
if (l9_1857)
{
l9_1858=l9_1830.y==3;
}
else
{
l9_1858=l9_1857;
}
float l9_1859=l9_1827.y;
float l9_1860=l9_1832.y;
float l9_1861=l9_1832.w;
bool l9_1862=l9_1858;
float l9_1863=l9_1837;
float l9_1864=fast::clamp(l9_1859,l9_1860,l9_1861);
float l9_1865=step(abs(l9_1859-l9_1864),9.9999997e-06);
l9_1863*=(l9_1865+((1.0-float(l9_1862))*(1.0-l9_1865)));
l9_1859=l9_1864;
l9_1827.y=l9_1859;
l9_1837=l9_1863;
}
float2 l9_1866=l9_1827;
bool l9_1867=l9_1828;
float3x3 l9_1868=l9_1829;
if (l9_1867)
{
l9_1866=float2((l9_1868*float3(l9_1866,1.0)).xy);
}
float2 l9_1869=l9_1866;
l9_1827=l9_1869;
float l9_1870=l9_1827.x;
int l9_1871=l9_1830.x;
bool l9_1872=l9_1836;
float l9_1873=l9_1837;
if ((l9_1871==0)||(l9_1871==3))
{
float l9_1874=l9_1870;
float l9_1875=0.0;
float l9_1876=1.0;
bool l9_1877=l9_1872;
float l9_1878=l9_1873;
float l9_1879=fast::clamp(l9_1874,l9_1875,l9_1876);
float l9_1880=step(abs(l9_1874-l9_1879),9.9999997e-06);
l9_1878*=(l9_1880+((1.0-float(l9_1877))*(1.0-l9_1880)));
l9_1874=l9_1879;
l9_1870=l9_1874;
l9_1873=l9_1878;
}
l9_1827.x=l9_1870;
l9_1837=l9_1873;
float l9_1881=l9_1827.y;
int l9_1882=l9_1830.y;
bool l9_1883=l9_1836;
float l9_1884=l9_1837;
if ((l9_1882==0)||(l9_1882==3))
{
float l9_1885=l9_1881;
float l9_1886=0.0;
float l9_1887=1.0;
bool l9_1888=l9_1883;
float l9_1889=l9_1884;
float l9_1890=fast::clamp(l9_1885,l9_1886,l9_1887);
float l9_1891=step(abs(l9_1885-l9_1890),9.9999997e-06);
l9_1889*=(l9_1891+((1.0-float(l9_1888))*(1.0-l9_1891)));
l9_1885=l9_1890;
l9_1881=l9_1885;
l9_1884=l9_1889;
}
l9_1827.y=l9_1881;
l9_1837=l9_1884;
float2 l9_1892=l9_1827;
int l9_1893=l9_1825;
int l9_1894=l9_1826;
float l9_1895=l9_1835;
float2 l9_1896=l9_1892;
int l9_1897=l9_1893;
int l9_1898=l9_1894;
float3 l9_1899=float3(0.0);
if (l9_1897==0)
{
l9_1899=float3(l9_1896,0.0);
}
else
{
if (l9_1897==1)
{
l9_1899=float3(l9_1896.x,(l9_1896.y*0.5)+(0.5-(float(l9_1898)*0.5)),0.0);
}
else
{
l9_1899=float3(l9_1896,float(l9_1898));
}
}
float3 l9_1900=l9_1899;
float3 l9_1901=l9_1900;
float4 l9_1902=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_1901.xy,bias(l9_1895));
float4 l9_1903=l9_1902;
if (l9_1833)
{
l9_1903=mix(l9_1834,l9_1903,float4(l9_1837));
}
float4 l9_1904=l9_1903;
float4 l9_1905=l9_1904;
float3 l9_1906=(l9_1905.xyz*1.9921875)-float3(1.0);
l9_1905=float4(l9_1906.x,l9_1906.y,l9_1906.z,l9_1905.w);
l9_1817=l9_1905;
l9_1604=l9_1817.xyz;
l9_1607=l9_1604;
}
else
{
l9_1607=l9_1605;
}
l9_1603=l9_1607;
float3 l9_1907=float3(0.0);
float3 l9_1908=l9_1513.xyz;
float l9_1909=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_1910=l9_1603;
float l9_1911=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_1912=l9_1908;
float l9_1913=l9_1909;
float3 l9_1914=l9_1910;
float l9_1915=l9_1911;
float3 l9_1916=mix(float3(0.0,0.0,1.0),l9_1912,float3(l9_1913))+float3(0.0,0.0,1.0);
float3 l9_1917=mix(float3(0.0,0.0,1.0),l9_1914,float3(l9_1915))*float3(-1.0,-1.0,1.0);
float3 l9_1918=normalize((l9_1916*dot(l9_1916,l9_1917))-(l9_1917*l9_1916.z));
l9_1910=l9_1918;
float3 l9_1919=l9_1910;
l9_1907=l9_1919;
float3 l9_1920=float3(0.0);
l9_1920=l9_1303*l9_1907;
float3 l9_1921=float3(0.0);
float3 l9_1922=l9_1920;
float l9_1923=dot(l9_1922,l9_1922);
float l9_1924;
if (l9_1923>0.0)
{
l9_1924=1.0/sqrt(l9_1923);
}
else
{
l9_1924=0.0;
}
float l9_1925=l9_1924;
float3 l9_1926=l9_1922*l9_1925;
l9_1921=l9_1926;
param_5=l9_1921;
param_7=param_5;
}
else
{
float3 l9_1927=float3(0.0);
l9_1927=param_8.VertexNormal_WorldSpace;
float3 l9_1928=float3(0.0);
float3 l9_1929=l9_1927;
float l9_1930=dot(l9_1929,l9_1929);
float l9_1931;
if (l9_1930>0.0)
{
l9_1931=1.0/sqrt(l9_1930);
}
else
{
l9_1931=0.0;
}
float l9_1932=l9_1931;
float3 l9_1933=l9_1929*l9_1932;
l9_1928=l9_1933;
param_6=l9_1928;
param_7=param_6;
}
Result_N337=param_7;
float3 Export_N334=float3(0.0);
Export_N334=Result_N337;
float param_9=Output_N2;
float3 param_10=Export_N334;
ssGlobals param_11=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_11.BumpedNormal=param_10;
}
param_9=fast::clamp(param_9,0.0,1.0);
float l9_1934=param_9;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1934<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1935=gl_FragCoord;
float2 l9_1936=floor(mod(l9_1935.xy,float2(4.0)));
float l9_1937=(mod(dot(l9_1936,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1934<l9_1937)
{
discard_fragment();
}
}
float3 l9_1938=param_11.PositionWS;
float3 l9_1939=param_11.BumpedNormal;
float l9_1940=1.0;
float3 l9_1941=l9_1938;
float3 l9_1942=l9_1939;
float l9_1943=l9_1940;
uint l9_1944=0u;
uint3 l9_1945=uint3(round((l9_1941-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_1945.x,l9_1945.y,l9_1945.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_1946=l9_1942;
float l9_1947=dot(abs(l9_1946),float3(1.0));
l9_1946/=float3(l9_1947);
float2 l9_1948=float2(fast::clamp(-l9_1946.z,0.0,1.0));
float2 l9_1949=l9_1946.xy+mix(-l9_1948,l9_1948,step(float2(0.0),l9_1946.xy));
uint l9_1950=as_type<uint>(half2(l9_1949));
uint2 l9_1951=uint2(l9_1950&65535u,l9_1950>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_1951.x,l9_1951.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_1944;
uint l9_1952=uint(fast::clamp(l9_1943,0.0,1.0)*1000.0);
l9_1952 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_1952;
return out;
}
} // RECEIVER MODE SHADER
