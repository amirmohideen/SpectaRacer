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
// SCC_BACKEND_SHADER_FLAG_DISABLE_FRUSTUM_CULLING
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
//sampler sampler colorRampSmpSC 0:21
//sampler sampler intensityTextureSmpSC 0:22
//sampler sampler noiseTexSmpSC 0:23
//sampler sampler sc_EnvmapDiffuseSmpSC 0:24
//sampler sampler sc_EnvmapSpecularSmpSC 0:25
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:27
//sampler sampler sc_RayTracingReflectionsSmpSC 0:28
//sampler sampler sc_RayTracingShadowsSmpSC 0:29
//sampler sampler sc_SSAOTextureSmpSC 0:30
//sampler sampler sc_ScreenTextureSmpSC 0:31
//sampler sampler sc_ShadowTextureSmpSC 0:32
//texture texture2D colorRamp 0:1:0:21
//texture texture2D intensityTexture 0:2:0:22
//texture texture2D noiseTex 0:3:0:23
//texture texture2D sc_EnvmapDiffuse 0:4:0:24
//texture texture2D sc_EnvmapSpecular 0:5:0:25
//texture texture2D sc_RayTracingGlobalIllumination 0:14:0:27
//texture texture2D sc_RayTracingReflections 0:15:0:28
//texture texture2D sc_RayTracingShadows 0:16:0:29
//texture texture2D sc_SSAOTexture 0:17:0:30
//texture texture2D sc_ScreenTexture 0:18:0:31
//texture texture2D sc_ShadowTexture 0:19:0:32
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:34:5200 {
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
//float4 voxelization_params_0 4064
//float4 voxelization_params_frustum_lrbt 4080
//float4 voxelization_params_frustum_nf 4096
//float3 voxelization_params_camera_pos 4112
//float4x4 sc_ModelMatrixVoxelization 4128
//float correctedIntensity 4192
//float3x3 intensityTextureTransform 4256
//float4 intensityTextureUvMinMax 4304
//float4 intensityTextureBorderColor 4320
//int PreviewEnabled 4484
//float alphaTestThreshold 4492
//float Tweak_N128 4496
//float3x3 noiseTexTransform 4560
//float4 noiseTexUvMinMax 4608
//float4 noiseTexBorderColor 4624
//float displace 4640
//float3x3 colorRampTransform 4704
//float4 colorRampUvMinMax 4752
//float4 colorRampBorderColor 4768
//float colorrampExponent 4784
//float metallic 4788
//float roughness 4792
//float Port_Input1_N208 4816
//float3 Port_Import_N206 4832
//float Port_Import_N209 4848
//float Port_Input1_N055 4944
//float3 Port_Import_N056 4960
//float Port_RangeMinA_N075 4976
//float Port_RangeMaxA_N075 4980
//float Port_RangeMinB_N075 4984
//float Port_RangeMaxB_N075 4988
//float Port_RangeMinA_N087 4992
//float Port_RangeMaxA_N087 4996
//float Port_RangeMinB_N087 5000
//float Port_RangeMaxB_N087 5004
//float Port_RangeMinA_N089 5008
//float Port_RangeMaxA_N089 5012
//float Port_RangeMinB_N089 5016
//float Port_RangeMaxB_N089 5020
//float Port_Input1_N028 5028
//float Port_Input2_N028 5032
//float Port_Value2_N164 5040
//float Port_Opacity_N026 5044
//float4 Port_Input0_N126 5056
//float Port_Input1_N003 5072
//float Port_Input2_N003 5076
//float Port_Value2_N165 5080
//float Port_Import_N116 5104
//float4 Port_Input1_N118 5120
//float Port_Import_N119 5136
//float Port_Import_N121 5140
//float Port_Input1_N035 5152
//float Port_Input1_N036 5156
//float Port_RangeMinA_N037 5164
//float Port_RangeMaxA_N037 5168
//float Port_RangeMinB_N037 5172
//float Port_RangeMaxB_N037 5176
//float3 Port_AO_N026 5184
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_colorRamp 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_noiseTex 33 0
//spec_const bool SC_USE_UV_MIN_MAX_colorRamp 34 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 35 0
//spec_const bool SC_USE_UV_MIN_MAX_noiseTex 36 0
//spec_const bool SC_USE_UV_TRANSFORM_colorRamp 37 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 38 0
//spec_const bool SC_USE_UV_TRANSFORM_noiseTex 39 0
//spec_const bool UseViewSpaceDepthVariant 40 1
//spec_const bool colorRampHasSwappedViews 41 0
//spec_const bool intensityTextureHasSwappedViews 42 0
//spec_const bool noiseTexHasSwappedViews 43 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 44 0
//spec_const bool sc_BlendMode_Add 45 0
//spec_const bool sc_BlendMode_AlphaTest 46 0
//spec_const bool sc_BlendMode_AlphaToCoverage 47 0
//spec_const bool sc_BlendMode_ColoredGlass 48 0
//spec_const bool sc_BlendMode_Custom 49 0
//spec_const bool sc_BlendMode_Max 50 0
//spec_const bool sc_BlendMode_Min 51 0
//spec_const bool sc_BlendMode_MultiplyOriginal 52 0
//spec_const bool sc_BlendMode_Multiply 53 0
//spec_const bool sc_BlendMode_Normal 54 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 55 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 56 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 57 0
//spec_const bool sc_BlendMode_Screen 58 0
//spec_const bool sc_DepthOnly 59 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 60 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 61 0
//spec_const bool sc_FramebufferFetch 62 0
//spec_const bool sc_HasDiffuseEnvmap 63 0
//spec_const bool sc_IsEditor 64 0
//spec_const bool sc_LightEstimation 65 0
//spec_const bool sc_MotionVectorsPass 66 0
//spec_const bool sc_OITCompositingPass 67 0
//spec_const bool sc_OITDepthBoundsPass 68 0
//spec_const bool sc_OITDepthGatherPass 69 0
//spec_const bool sc_OutputBounds 70 0
//spec_const bool sc_ProjectiveShadowsCaster 71 0
//spec_const bool sc_ProjectiveShadowsReceiver 72 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 73 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 74 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 75 0
//spec_const bool sc_RenderAlphaToColor 76 0
//spec_const bool sc_SSAOEnabled 77 0
//spec_const bool sc_ScreenTextureHasSwappedViews 78 0
//spec_const bool sc_TAAEnabled 79 0
//spec_const bool sc_VertexBlendingUseNormals 80 0
//spec_const bool sc_VertexBlending 81 0
//spec_const bool sc_Voxelization 82 0
//spec_const int SC_DEVICE_CLASS 83 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_colorRamp 84 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 85 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_noiseTex 86 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_colorRamp 87 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 88 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_noiseTex 89 -1
//spec_const int colorRampLayout 90 0
//spec_const int intensityTextureLayout 91 0
//spec_const int noiseTexLayout 92 0
//spec_const int sc_AmbientLightMode0 93 0
//spec_const int sc_AmbientLightMode1 94 0
//spec_const int sc_AmbientLightMode2 95 0
//spec_const int sc_AmbientLightMode_Constant 96 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 97 0
//spec_const int sc_AmbientLightMode_FromCamera 98 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 99 0
//spec_const int sc_AmbientLightsCount 100 0
//spec_const int sc_DepthBufferMode 101 0
//spec_const int sc_DirectionalLightsCount 102 0
//spec_const int sc_EnvLightMode 103 0
//spec_const int sc_EnvmapDiffuseLayout 104 0
//spec_const int sc_EnvmapSpecularLayout 105 0
//spec_const int sc_LightEstimationSGCount 106 0
//spec_const int sc_PointLightsCount 107 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 108 0
//spec_const int sc_RayTracingReflectionsLayout 109 0
//spec_const int sc_RayTracingShadowsLayout 110 0
//spec_const int sc_RenderingSpace 111 -1
//spec_const int sc_ScreenTextureLayout 112 0
//spec_const int sc_ShaderCacheConstant 113 0
//spec_const int sc_SkinBonesCount 114 0
//spec_const int sc_StereoRenderingMode 115 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 116 0
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
constant bool SC_USE_CLAMP_TO_BORDER_colorRamp [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_colorRamp_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_colorRamp) ? SC_USE_CLAMP_TO_BORDER_colorRamp : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_noiseTex [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_noiseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_noiseTex) ? SC_USE_CLAMP_TO_BORDER_noiseTex : false;
constant bool SC_USE_UV_MIN_MAX_colorRamp [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_colorRamp_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_colorRamp) ? SC_USE_UV_MIN_MAX_colorRamp : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(35)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_noiseTex [[function_constant(36)]];
constant bool SC_USE_UV_MIN_MAX_noiseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_noiseTex) ? SC_USE_UV_MIN_MAX_noiseTex : false;
constant bool SC_USE_UV_TRANSFORM_colorRamp [[function_constant(37)]];
constant bool SC_USE_UV_TRANSFORM_colorRamp_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_colorRamp) ? SC_USE_UV_TRANSFORM_colorRamp : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(38)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_noiseTex [[function_constant(39)]];
constant bool SC_USE_UV_TRANSFORM_noiseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_noiseTex) ? SC_USE_UV_TRANSFORM_noiseTex : false;
constant bool UseViewSpaceDepthVariant [[function_constant(40)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool colorRampHasSwappedViews [[function_constant(41)]];
constant bool colorRampHasSwappedViews_tmp = is_function_constant_defined(colorRampHasSwappedViews) ? colorRampHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(42)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool noiseTexHasSwappedViews [[function_constant(43)]];
constant bool noiseTexHasSwappedViews_tmp = is_function_constant_defined(noiseTexHasSwappedViews) ? noiseTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(44)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(45)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(46)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(47)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(48)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(49)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(50)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(51)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(52)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(53)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(54)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(55)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(56)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(57)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(58)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(59)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(60)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(61)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(62)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(63)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(64)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(65)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(66)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(67)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(68)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(69)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(70)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(71)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(72)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(73)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(74)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(75)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(76)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(77)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(78)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(79)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(80)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(81)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(82)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant int SC_DEVICE_CLASS [[function_constant(83)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_colorRamp [[function_constant(84)]];
constant int SC_SOFTWARE_WRAP_MODE_U_colorRamp_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_colorRamp) ? SC_SOFTWARE_WRAP_MODE_U_colorRamp : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(85)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_noiseTex [[function_constant(86)]];
constant int SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_noiseTex) ? SC_SOFTWARE_WRAP_MODE_U_noiseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_colorRamp [[function_constant(87)]];
constant int SC_SOFTWARE_WRAP_MODE_V_colorRamp_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_colorRamp) ? SC_SOFTWARE_WRAP_MODE_V_colorRamp : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(88)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_noiseTex [[function_constant(89)]];
constant int SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_noiseTex) ? SC_SOFTWARE_WRAP_MODE_V_noiseTex : -1;
constant int colorRampLayout [[function_constant(90)]];
constant int colorRampLayout_tmp = is_function_constant_defined(colorRampLayout) ? colorRampLayout : 0;
constant int intensityTextureLayout [[function_constant(91)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int noiseTexLayout [[function_constant(92)]];
constant int noiseTexLayout_tmp = is_function_constant_defined(noiseTexLayout) ? noiseTexLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(93)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(94)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(95)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(96)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(97)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(98)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(99)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(100)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(101)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(102)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(103)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(104)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(105)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(106)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(107)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(108)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(109)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(110)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(111)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(112)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(113)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(114)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(115)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(116)]];
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
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 VertexNormal_WorldSpace;
float3 SurfacePosition_ObjectSpace;
float3 VertexNormal_ObjectSpace;
float2 gTriplanarCoords;
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
float Tweak_N128;
float4 noiseTexSize;
float4 noiseTexDims;
float4 noiseTexView;
float3x3 noiseTexTransform;
float4 noiseTexUvMinMax;
float4 noiseTexBorderColor;
float displace;
float4 colorRampSize;
float4 colorRampDims;
float4 colorRampView;
float3x3 colorRampTransform;
float4 colorRampUvMinMax;
float4 colorRampBorderColor;
float colorrampExponent;
float metallic;
float roughness;
float3 Port_Import_N207;
float Port_Input1_N208;
float3 Port_Import_N206;
float Port_Import_N209;
float3 Port_Position_N210;
float3 Port_Normal_N210;
float Port_Import_N080;
float Port_Import_N077;
float3 Port_Import_N082;
float3 Port_Import_N054;
float Port_Input1_N055;
float3 Port_Import_N056;
float Port_RangeMinA_N075;
float Port_RangeMaxA_N075;
float Port_RangeMinB_N075;
float Port_RangeMaxB_N075;
float Port_RangeMinA_N087;
float Port_RangeMaxA_N087;
float Port_RangeMinB_N087;
float Port_RangeMaxB_N087;
float Port_RangeMinA_N089;
float Port_RangeMaxA_N089;
float Port_RangeMinB_N089;
float Port_RangeMaxB_N089;
float Port_Import_N007;
float Port_Input1_N028;
float Port_Input2_N028;
float Port_Import_N143;
float Port_Value2_N164;
float Port_Opacity_N026;
float4 Port_Input0_N126;
float Port_Input1_N003;
float Port_Input2_N003;
float Port_Value2_N165;
float4 Port_Import_N115;
float Port_Import_N116;
float4 Port_Input1_N118;
float Port_Import_N119;
float Port_Import_N121;
float Port_Import_N027;
float Port_Import_N013;
float Port_Input1_N035;
float Port_Input1_N036;
float Port_Import_N023;
float Port_RangeMinA_N037;
float Port_RangeMaxA_N037;
float Port_RangeMinB_N037;
float Port_RangeMaxB_N037;
float3 Port_AO_N026;
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
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> colorRamp [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> noiseTex [[id(3)]];
texture2d<float> sc_EnvmapDiffuse [[id(4)]];
texture2d<float> sc_EnvmapSpecular [[id(5)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(14)]];
texture2d<float> sc_RayTracingReflections [[id(15)]];
texture2d<float> sc_RayTracingShadows [[id(16)]];
texture2d<float> sc_SSAOTexture [[id(17)]];
texture2d<float> sc_ScreenTexture [[id(18)]];
texture2d<float> sc_ShadowTexture [[id(19)]];
sampler colorRampSmpSC [[id(21)]];
sampler intensityTextureSmpSC [[id(22)]];
sampler noiseTexSmpSC [[id(23)]];
sampler sc_EnvmapDiffuseSmpSC [[id(24)]];
sampler sc_EnvmapSpecularSmpSC [[id(25)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(27)]];
sampler sc_RayTracingReflectionsSmpSC [[id(28)]];
sampler sc_RayTracingShadowsSmpSC [[id(29)]];
sampler sc_SSAOTextureSmpSC [[id(30)]];
sampler sc_ScreenTextureSmpSC [[id(31)]];
sampler sc_ShadowTextureSmpSC [[id(32)]];
constant userUniformsObj* UserUniforms [[id(34)]];
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
float4 Interpolator0 [[user(locn13)]];
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
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_0;
l9_0.position=in.position;
l9_0.normal=in.normal;
l9_0.tangent=in.tangent.xyz;
l9_0.texture0=in.texture0;
l9_0.texture1=in.texture1;
sc_Vertex_t l9_1=l9_0;
sc_Vertex_t param=l9_1;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_2=param;
param=l9_2;
}
sc_Vertex_t l9_3=param;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_4=l9_3;
float3 l9_5=in.blendShape0Pos;
float3 l9_6=in.blendShape0Normal;
float l9_7=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_8=l9_4;
float3 l9_9=l9_5;
float l9_10=l9_7;
float3 l9_11=l9_8.position.xyz+(l9_9*l9_10);
l9_8.position=float4(l9_11.x,l9_11.y,l9_11.z,l9_8.position.w);
l9_4=l9_8;
l9_4.normal+=(l9_6*l9_7);
l9_3=l9_4;
sc_Vertex_t l9_12=l9_3;
float3 l9_13=in.blendShape1Pos;
float3 l9_14=in.blendShape1Normal;
float l9_15=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_16=l9_12;
float3 l9_17=l9_13;
float l9_18=l9_15;
float3 l9_19=l9_16.position.xyz+(l9_17*l9_18);
l9_16.position=float4(l9_19.x,l9_19.y,l9_19.z,l9_16.position.w);
l9_12=l9_16;
l9_12.normal+=(l9_14*l9_15);
l9_3=l9_12;
sc_Vertex_t l9_20=l9_3;
float3 l9_21=in.blendShape2Pos;
float3 l9_22=in.blendShape2Normal;
float l9_23=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_24=l9_20;
float3 l9_25=l9_21;
float l9_26=l9_23;
float3 l9_27=l9_24.position.xyz+(l9_25*l9_26);
l9_24.position=float4(l9_27.x,l9_27.y,l9_27.z,l9_24.position.w);
l9_20=l9_24;
l9_20.normal+=(l9_22*l9_23);
l9_3=l9_20;
}
else
{
sc_Vertex_t l9_28=l9_3;
float3 l9_29=in.blendShape0Pos;
float l9_30=(*sc_set0.UserUniforms).weights0.x;
float3 l9_31=l9_28.position.xyz+(l9_29*l9_30);
l9_28.position=float4(l9_31.x,l9_31.y,l9_31.z,l9_28.position.w);
l9_3=l9_28;
sc_Vertex_t l9_32=l9_3;
float3 l9_33=in.blendShape1Pos;
float l9_34=(*sc_set0.UserUniforms).weights0.y;
float3 l9_35=l9_32.position.xyz+(l9_33*l9_34);
l9_32.position=float4(l9_35.x,l9_35.y,l9_35.z,l9_32.position.w);
l9_3=l9_32;
sc_Vertex_t l9_36=l9_3;
float3 l9_37=in.blendShape2Pos;
float l9_38=(*sc_set0.UserUniforms).weights0.z;
float3 l9_39=l9_36.position.xyz+(l9_37*l9_38);
l9_36.position=float4(l9_39.x,l9_39.y,l9_39.z,l9_36.position.w);
l9_3=l9_36;
sc_Vertex_t l9_40=l9_3;
float3 l9_41=in.blendShape3Pos;
float l9_42=(*sc_set0.UserUniforms).weights0.w;
float3 l9_43=l9_40.position.xyz+(l9_41*l9_42);
l9_40.position=float4(l9_43.x,l9_43.y,l9_43.z,l9_40.position.w);
l9_3=l9_40;
sc_Vertex_t l9_44=l9_3;
float3 l9_45=in.blendShape4Pos;
float l9_46=(*sc_set0.UserUniforms).weights1.x;
float3 l9_47=l9_44.position.xyz+(l9_45*l9_46);
l9_44.position=float4(l9_47.x,l9_47.y,l9_47.z,l9_44.position.w);
l9_3=l9_44;
sc_Vertex_t l9_48=l9_3;
float3 l9_49=in.blendShape5Pos;
float l9_50=(*sc_set0.UserUniforms).weights1.y;
float3 l9_51=l9_48.position.xyz+(l9_49*l9_50);
l9_48.position=float4(l9_51.x,l9_51.y,l9_51.z,l9_48.position.w);
l9_3=l9_48;
}
}
param=l9_3;
sc_Vertex_t l9_52=param;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_53=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_53=float4(1.0,fract(in.boneData.yzw));
l9_53.x-=dot(l9_53.yzw,float3(1.0));
}
float4 l9_54=l9_53;
float4 l9_55=l9_54;
int l9_56=int(in.boneData.x);
int l9_57=int(in.boneData.y);
int l9_58=int(in.boneData.z);
int l9_59=int(in.boneData.w);
int l9_60=l9_56;
float4 l9_61=l9_52.position;
float3 l9_62=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_63=l9_60;
float4 l9_64=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[0];
float4 l9_65=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[1];
float4 l9_66=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[2];
float4 l9_67[3];
l9_67[0]=l9_64;
l9_67[1]=l9_65;
l9_67[2]=l9_66;
l9_62=float3(dot(l9_61,l9_67[0]),dot(l9_61,l9_67[1]),dot(l9_61,l9_67[2]));
}
else
{
l9_62=l9_61.xyz;
}
float3 l9_68=l9_62;
float3 l9_69=l9_68;
float l9_70=l9_55.x;
int l9_71=l9_57;
float4 l9_72=l9_52.position;
float3 l9_73=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_74=l9_71;
float4 l9_75=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[0];
float4 l9_76=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[1];
float4 l9_77=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[2];
float4 l9_78[3];
l9_78[0]=l9_75;
l9_78[1]=l9_76;
l9_78[2]=l9_77;
l9_73=float3(dot(l9_72,l9_78[0]),dot(l9_72,l9_78[1]),dot(l9_72,l9_78[2]));
}
else
{
l9_73=l9_72.xyz;
}
float3 l9_79=l9_73;
float3 l9_80=l9_79;
float l9_81=l9_55.y;
int l9_82=l9_58;
float4 l9_83=l9_52.position;
float3 l9_84=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_85=l9_82;
float4 l9_86=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[0];
float4 l9_87=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[1];
float4 l9_88=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[2];
float4 l9_89[3];
l9_89[0]=l9_86;
l9_89[1]=l9_87;
l9_89[2]=l9_88;
l9_84=float3(dot(l9_83,l9_89[0]),dot(l9_83,l9_89[1]),dot(l9_83,l9_89[2]));
}
else
{
l9_84=l9_83.xyz;
}
float3 l9_90=l9_84;
float3 l9_91=l9_90;
float l9_92=l9_55.z;
int l9_93=l9_59;
float4 l9_94=l9_52.position;
float3 l9_95=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_96=l9_93;
float4 l9_97=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[0];
float4 l9_98=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[1];
float4 l9_99=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[2];
float4 l9_100[3];
l9_100[0]=l9_97;
l9_100[1]=l9_98;
l9_100[2]=l9_99;
l9_95=float3(dot(l9_94,l9_100[0]),dot(l9_94,l9_100[1]),dot(l9_94,l9_100[2]));
}
else
{
l9_95=l9_94.xyz;
}
float3 l9_101=l9_95;
float3 l9_102=(((l9_69*l9_70)+(l9_80*l9_81))+(l9_91*l9_92))+(l9_101*l9_55.w);
l9_52.position=float4(l9_102.x,l9_102.y,l9_102.z,l9_52.position.w);
int l9_103=l9_56;
float3x3 l9_104=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[2].xyz));
float3x3 l9_105=l9_104;
float3x3 l9_106=l9_105;
int l9_107=l9_57;
float3x3 l9_108=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[2].xyz));
float3x3 l9_109=l9_108;
float3x3 l9_110=l9_109;
int l9_111=l9_58;
float3x3 l9_112=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[2].xyz));
float3x3 l9_113=l9_112;
float3x3 l9_114=l9_113;
int l9_115=l9_59;
float3x3 l9_116=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[2].xyz));
float3x3 l9_117=l9_116;
float3x3 l9_118=l9_117;
l9_52.normal=((((l9_106*l9_52.normal)*l9_55.x)+((l9_110*l9_52.normal)*l9_55.y))+((l9_114*l9_52.normal)*l9_55.z))+((l9_118*l9_52.normal)*l9_55.w);
l9_52.tangent=((((l9_106*l9_52.tangent)*l9_55.x)+((l9_110*l9_52.tangent)*l9_55.y))+((l9_114*l9_52.tangent)*l9_55.z))+((l9_118*l9_52.tangent)*l9_55.w);
}
param=l9_52;
if (sc_RenderingSpace_tmp==3)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPosAndMotion=float4(param.position.xyz.x,param.position.xyz.y,param.position.xyz.z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
float3 l9_119=((*sc_set0.UserUniforms).sc_ModelMatrix*param.position).xyz;
out.varPosAndMotion=float4(l9_119.x,l9_119.y,l9_119.z,out.varPosAndMotion.w);
float3 l9_120=(*sc_set0.UserUniforms).sc_NormalMatrix*param.normal;
out.varNormalAndMotion=float4(l9_120.x,l9_120.y,l9_120.z,out.varNormalAndMotion.w);
float3 l9_121=(*sc_set0.UserUniforms).sc_NormalMatrix*param.tangent;
out.varTangent=float4(l9_121.x,l9_121.y,l9_121.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param.texture0.x=1.0-param.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param;
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.VertexNormal_WorldSpace=out.varNormalAndMotion.xyz;
Globals.SurfacePosition_ObjectSpace=((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(out.varPosAndMotion.xyz,1.0)).xyz;
Globals.VertexNormal_ObjectSpace=normalize(((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(Globals.VertexNormal_WorldSpace,0.0)).xyz);
Globals.gTriplanarCoords=float2(0.0);
Globals.SurfacePosition_WorldSpace=out.varPosAndMotion.xyz;
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
float3 Normal_N73=float3(0.0);
Normal_N73=Globals.VertexNormal_WorldSpace;
float3 Output_N100=float3(0.0);
float3 param_1=Normal_N73;
float l9_122=dot(param_1,param_1);
float l9_123;
if (l9_122>0.0)
{
l9_123=1.0/sqrt(l9_122);
}
else
{
l9_123=0.0;
}
float l9_124=l9_123;
float3 param_2=param_1*l9_124;
Output_N100=param_2;
float4 Output_N210=float4(0.0);
float4 param_3=float4(0.0);
float3 param_4=float3(1.0);
float3 param_5=float3(0.0);
float param_6=1.0;
ssGlobals param_8=Globals;
float l9_125=0.0;
float l9_126=(*sc_set0.UserUniforms).Tweak_N128;
l9_125=l9_126;
float3 l9_127=float3(0.0);
l9_127=float3(l9_125);
float3 l9_128=float3(0.0);
l9_128=l9_127*float3((*sc_set0.UserUniforms).Port_Input1_N208);
param_4=l9_128;
float3 l9_129=float3(0.0);
l9_129=(*sc_set0.UserUniforms).Port_Import_N206;
param_5=l9_129;
float l9_130=0.0;
l9_130=(*sc_set0.UserUniforms).Port_Import_N209;
param_6=l9_130;
float3 l9_131=param_8.SurfacePosition_ObjectSpace;
float3 l9_132=param_8.VertexNormal_ObjectSpace;
l9_131+=param_5;
l9_131*=param_4;
l9_132=abs(l9_132);
float l9_133=l9_132.x;
float l9_134=l9_132.y;
bool l9_135=l9_133>l9_134;
bool l9_136;
if (l9_135)
{
l9_136=l9_132.x>l9_132.z;
}
else
{
l9_136=l9_135;
}
int3 l9_137;
if (l9_136)
{
l9_137=int3(0,1,2);
}
else
{
bool3 l9_138=bool3(l9_132.y>l9_132.z);
l9_137=int3(l9_138.x ? int3(1,2,0).x : int3(2,0,1).x,l9_138.y ? int3(1,2,0).y : int3(2,0,1).y,l9_138.z ? int3(1,2,0).z : int3(2,0,1).z);
}
int3 l9_139=l9_137;
float l9_140=l9_132.x;
float l9_141=l9_132.y;
bool l9_142=l9_140<l9_141;
bool l9_143;
if (l9_142)
{
l9_143=l9_132.x<l9_132.z;
}
else
{
l9_143=l9_142;
}
int3 l9_144;
if (l9_143)
{
l9_144=int3(0,1,2);
}
else
{
bool3 l9_145=bool3(l9_132.y<l9_132.z);
l9_144=int3(l9_145.x ? int3(1,2,0).x : int3(2,0,1).x,l9_145.y ? int3(1,2,0).y : int3(2,0,1).y,l9_145.z ? int3(1,2,0).z : int3(2,0,1).z);
}
int3 l9_146=l9_144;
int3 l9_147=(int3(3)-l9_146)-l9_139;
param_8.gTriplanarCoords=float2(l9_131[l9_139.y],l9_131[l9_139.z]);
float2 l9_148=float2(0.0);
l9_148=param_8.gTriplanarCoords;
float4 l9_149=float4(0.0);
int l9_150;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_151=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_151=0;
}
else
{
l9_151=gl_InstanceIndex%2;
}
int l9_152=l9_151;
l9_150=1-l9_152;
}
else
{
int l9_153=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_153=0;
}
else
{
l9_153=gl_InstanceIndex%2;
}
int l9_154=l9_153;
l9_150=l9_154;
}
int l9_155=l9_150;
int l9_156=noiseTexLayout_tmp;
int l9_157=l9_155;
float2 l9_158=l9_148;
bool l9_159=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 l9_160=(*sc_set0.UserUniforms).noiseTexTransform;
int2 l9_161=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool l9_162=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 l9_163=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool l9_164=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 l9_165=(*sc_set0.UserUniforms).noiseTexBorderColor;
float l9_166=0.0;
bool l9_167=l9_164&&(!l9_162);
float l9_168=1.0;
float l9_169=l9_158.x;
int l9_170=l9_161.x;
if (l9_170==1)
{
l9_169=fract(l9_169);
}
else
{
if (l9_170==2)
{
float l9_171=fract(l9_169);
float l9_172=l9_169-l9_171;
float l9_173=step(0.25,fract(l9_172*0.5));
l9_169=mix(l9_171,1.0-l9_171,fast::clamp(l9_173,0.0,1.0));
}
}
l9_158.x=l9_169;
float l9_174=l9_158.y;
int l9_175=l9_161.y;
if (l9_175==1)
{
l9_174=fract(l9_174);
}
else
{
if (l9_175==2)
{
float l9_176=fract(l9_174);
float l9_177=l9_174-l9_176;
float l9_178=step(0.25,fract(l9_177*0.5));
l9_174=mix(l9_176,1.0-l9_176,fast::clamp(l9_178,0.0,1.0));
}
}
l9_158.y=l9_174;
if (l9_162)
{
bool l9_179=l9_164;
bool l9_180;
if (l9_179)
{
l9_180=l9_161.x==3;
}
else
{
l9_180=l9_179;
}
float l9_181=l9_158.x;
float l9_182=l9_163.x;
float l9_183=l9_163.z;
bool l9_184=l9_180;
float l9_185=l9_168;
float l9_186=fast::clamp(l9_181,l9_182,l9_183);
float l9_187=step(abs(l9_181-l9_186),9.9999997e-06);
l9_185*=(l9_187+((1.0-float(l9_184))*(1.0-l9_187)));
l9_181=l9_186;
l9_158.x=l9_181;
l9_168=l9_185;
bool l9_188=l9_164;
bool l9_189;
if (l9_188)
{
l9_189=l9_161.y==3;
}
else
{
l9_189=l9_188;
}
float l9_190=l9_158.y;
float l9_191=l9_163.y;
float l9_192=l9_163.w;
bool l9_193=l9_189;
float l9_194=l9_168;
float l9_195=fast::clamp(l9_190,l9_191,l9_192);
float l9_196=step(abs(l9_190-l9_195),9.9999997e-06);
l9_194*=(l9_196+((1.0-float(l9_193))*(1.0-l9_196)));
l9_190=l9_195;
l9_158.y=l9_190;
l9_168=l9_194;
}
float2 l9_197=l9_158;
bool l9_198=l9_159;
float3x3 l9_199=l9_160;
if (l9_198)
{
l9_197=float2((l9_199*float3(l9_197,1.0)).xy);
}
float2 l9_200=l9_197;
l9_158=l9_200;
float l9_201=l9_158.x;
int l9_202=l9_161.x;
bool l9_203=l9_167;
float l9_204=l9_168;
if ((l9_202==0)||(l9_202==3))
{
float l9_205=l9_201;
float l9_206=0.0;
float l9_207=1.0;
bool l9_208=l9_203;
float l9_209=l9_204;
float l9_210=fast::clamp(l9_205,l9_206,l9_207);
float l9_211=step(abs(l9_205-l9_210),9.9999997e-06);
l9_209*=(l9_211+((1.0-float(l9_208))*(1.0-l9_211)));
l9_205=l9_210;
l9_201=l9_205;
l9_204=l9_209;
}
l9_158.x=l9_201;
l9_168=l9_204;
float l9_212=l9_158.y;
int l9_213=l9_161.y;
bool l9_214=l9_167;
float l9_215=l9_168;
if ((l9_213==0)||(l9_213==3))
{
float l9_216=l9_212;
float l9_217=0.0;
float l9_218=1.0;
bool l9_219=l9_214;
float l9_220=l9_215;
float l9_221=fast::clamp(l9_216,l9_217,l9_218);
float l9_222=step(abs(l9_216-l9_221),9.9999997e-06);
l9_220*=(l9_222+((1.0-float(l9_219))*(1.0-l9_222)));
l9_216=l9_221;
l9_212=l9_216;
l9_215=l9_220;
}
l9_158.y=l9_212;
l9_168=l9_215;
float2 l9_223=l9_158;
int l9_224=l9_156;
int l9_225=l9_157;
float l9_226=l9_166;
float2 l9_227=l9_223;
int l9_228=l9_224;
int l9_229=l9_225;
float3 l9_230=float3(0.0);
if (l9_228==0)
{
l9_230=float3(l9_227,0.0);
}
else
{
if (l9_228==1)
{
l9_230=float3(l9_227.x,(l9_227.y*0.5)+(0.5-(float(l9_229)*0.5)),0.0);
}
else
{
l9_230=float3(l9_227,float(l9_229));
}
}
float3 l9_231=l9_230;
float3 l9_232=l9_231;
float4 l9_233=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_232.xy,level(l9_226));
float4 l9_234=l9_233;
if (l9_164)
{
l9_234=mix(l9_165,l9_234,float4(l9_168));
}
float4 l9_235=l9_234;
l9_149=l9_235;
param_3=l9_149;
float4 l9_236=param_3;
param_8.gTriplanarCoords=float2(l9_131[l9_147.y],l9_131[l9_147.z]);
float2 l9_237=float2(0.0);
l9_237=param_8.gTriplanarCoords;
float4 l9_238=float4(0.0);
int l9_239;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_240=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_240=0;
}
else
{
l9_240=gl_InstanceIndex%2;
}
int l9_241=l9_240;
l9_239=1-l9_241;
}
else
{
int l9_242=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_242=0;
}
else
{
l9_242=gl_InstanceIndex%2;
}
int l9_243=l9_242;
l9_239=l9_243;
}
int l9_244=l9_239;
int l9_245=noiseTexLayout_tmp;
int l9_246=l9_244;
float2 l9_247=l9_237;
bool l9_248=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 l9_249=(*sc_set0.UserUniforms).noiseTexTransform;
int2 l9_250=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool l9_251=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 l9_252=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool l9_253=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 l9_254=(*sc_set0.UserUniforms).noiseTexBorderColor;
float l9_255=0.0;
bool l9_256=l9_253&&(!l9_251);
float l9_257=1.0;
float l9_258=l9_247.x;
int l9_259=l9_250.x;
if (l9_259==1)
{
l9_258=fract(l9_258);
}
else
{
if (l9_259==2)
{
float l9_260=fract(l9_258);
float l9_261=l9_258-l9_260;
float l9_262=step(0.25,fract(l9_261*0.5));
l9_258=mix(l9_260,1.0-l9_260,fast::clamp(l9_262,0.0,1.0));
}
}
l9_247.x=l9_258;
float l9_263=l9_247.y;
int l9_264=l9_250.y;
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
l9_247.y=l9_263;
if (l9_251)
{
bool l9_268=l9_253;
bool l9_269;
if (l9_268)
{
l9_269=l9_250.x==3;
}
else
{
l9_269=l9_268;
}
float l9_270=l9_247.x;
float l9_271=l9_252.x;
float l9_272=l9_252.z;
bool l9_273=l9_269;
float l9_274=l9_257;
float l9_275=fast::clamp(l9_270,l9_271,l9_272);
float l9_276=step(abs(l9_270-l9_275),9.9999997e-06);
l9_274*=(l9_276+((1.0-float(l9_273))*(1.0-l9_276)));
l9_270=l9_275;
l9_247.x=l9_270;
l9_257=l9_274;
bool l9_277=l9_253;
bool l9_278;
if (l9_277)
{
l9_278=l9_250.y==3;
}
else
{
l9_278=l9_277;
}
float l9_279=l9_247.y;
float l9_280=l9_252.y;
float l9_281=l9_252.w;
bool l9_282=l9_278;
float l9_283=l9_257;
float l9_284=fast::clamp(l9_279,l9_280,l9_281);
float l9_285=step(abs(l9_279-l9_284),9.9999997e-06);
l9_283*=(l9_285+((1.0-float(l9_282))*(1.0-l9_285)));
l9_279=l9_284;
l9_247.y=l9_279;
l9_257=l9_283;
}
float2 l9_286=l9_247;
bool l9_287=l9_248;
float3x3 l9_288=l9_249;
if (l9_287)
{
l9_286=float2((l9_288*float3(l9_286,1.0)).xy);
}
float2 l9_289=l9_286;
l9_247=l9_289;
float l9_290=l9_247.x;
int l9_291=l9_250.x;
bool l9_292=l9_256;
float l9_293=l9_257;
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
l9_247.x=l9_290;
l9_257=l9_293;
float l9_301=l9_247.y;
int l9_302=l9_250.y;
bool l9_303=l9_256;
float l9_304=l9_257;
if ((l9_302==0)||(l9_302==3))
{
float l9_305=l9_301;
float l9_306=0.0;
float l9_307=1.0;
bool l9_308=l9_303;
float l9_309=l9_304;
float l9_310=fast::clamp(l9_305,l9_306,l9_307);
float l9_311=step(abs(l9_305-l9_310),9.9999997e-06);
l9_309*=(l9_311+((1.0-float(l9_308))*(1.0-l9_311)));
l9_305=l9_310;
l9_301=l9_305;
l9_304=l9_309;
}
l9_247.y=l9_301;
l9_257=l9_304;
float2 l9_312=l9_247;
int l9_313=l9_245;
int l9_314=l9_246;
float l9_315=l9_255;
float2 l9_316=l9_312;
int l9_317=l9_313;
int l9_318=l9_314;
float3 l9_319=float3(0.0);
if (l9_317==0)
{
l9_319=float3(l9_316,0.0);
}
else
{
if (l9_317==1)
{
l9_319=float3(l9_316.x,(l9_316.y*0.5)+(0.5-(float(l9_318)*0.5)),0.0);
}
else
{
l9_319=float3(l9_316,float(l9_318));
}
}
float3 l9_320=l9_319;
float3 l9_321=l9_320;
float4 l9_322=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_321.xy,level(l9_315));
float4 l9_323=l9_322;
if (l9_253)
{
l9_323=mix(l9_254,l9_323,float4(l9_257));
}
float4 l9_324=l9_323;
l9_238=l9_324;
param_3=l9_238;
float4 l9_325=param_3;
float2 l9_326=float2(l9_132[l9_139.x],l9_132[l9_147.x]);
l9_326=pow(l9_326,float2(1.0/(1.0-(param_6*0.99000001))));
float4 param_7=((l9_236*l9_326.x)+(l9_325*l9_326.y))/float4(l9_326.x+l9_326.y);
Output_N210=param_7;
float4 Export_N211=float4(0.0);
Export_N211=Output_N210;
float Output_N50=0.0;
Output_N50=Export_N211.w;
float Value_N80=0.0;
Value_N80=Output_N50;
float Output_N72=0.0;
Output_N72=Value_N80;
float3 Output_N74=float3(0.0);
Output_N74=Output_N100*float3(Output_N72);
float Output_N60=0.0;
float param_9=(*sc_set0.UserUniforms).displace;
Output_N60=param_9;
float Value_N77=0.0;
Value_N77=Output_N60;
float3 Output_N76=float3(0.0);
Output_N76=Output_N74*float3(Value_N77);
float3 Position_N8=float3(0.0);
Position_N8=Globals.SurfacePosition_WorldSpace;
float3 Value_N82=float3(0.0);
Value_N82=Position_N8;
float3 Output_N78=float3(0.0);
Output_N78=Output_N76+Value_N82;
float3 Export_N81=float3(0.0);
Export_N81=Output_N78;
WorldPosition=Export_N81;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_10=v;
float3 param_11=WorldPosition;
float3 param_12=WorldNormal;
float3 param_13=WorldTangent;
float4 param_14=v.position;
out.varPosAndMotion=float4(param_11.x,param_11.y,param_11.z,out.varPosAndMotion.w);
float3 l9_327=normalize(param_12);
out.varNormalAndMotion=float4(l9_327.x,l9_327.y,l9_327.z,out.varNormalAndMotion.w);
float3 l9_328=normalize(param_13);
out.varTangent=float4(l9_328.x,l9_328.y,l9_328.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_329=param_10.position;
float4 l9_330=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_331=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_331=0;
}
else
{
l9_331=gl_InstanceIndex%2;
}
int l9_332=l9_331;
l9_330=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_332]*l9_329;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_333=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_333=0;
}
else
{
l9_333=gl_InstanceIndex%2;
}
int l9_334=l9_333;
l9_330=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_334]*l9_329;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_335=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_335=0;
}
else
{
l9_335=gl_InstanceIndex%2;
}
int l9_336=l9_335;
l9_330=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_336]*l9_329;
}
else
{
l9_330=l9_329;
}
}
}
float4 l9_337=l9_330;
out.varViewSpaceDepth=-l9_337.z;
}
float4 l9_338=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_338=param_14;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_339=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_339=0;
}
else
{
l9_339=gl_InstanceIndex%2;
}
int l9_340=l9_339;
l9_338=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_340]*param_10.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_341=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_341=0;
}
else
{
l9_341=gl_InstanceIndex%2;
}
int l9_342=l9_341;
l9_338=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_342]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_343=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_343=0;
}
else
{
l9_343=gl_InstanceIndex%2;
}
int l9_344=l9_343;
l9_338=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_344]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_10.texture0,param_10.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_345=param_10.position;
float4 l9_346=l9_345;
if (sc_RenderingSpace_tmp==1)
{
l9_346=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_345;
}
float4 l9_347=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_346;
float2 l9_348=((l9_347.xy/float2(l9_347.w))*0.5)+float2(0.5);
out.varShadowTex=l9_348;
}
float4 l9_349=l9_338;
if (sc_DepthBufferMode_tmp==1)
{
int l9_350=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_350=0;
}
else
{
l9_350=gl_InstanceIndex%2;
}
int l9_351=l9_350;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_351][2].w!=0.0)
{
float l9_352=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_349.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_349.w))*l9_352)-1.0)*l9_349.w;
}
}
float4 l9_353=l9_349;
l9_338=l9_353;
float4 l9_354=l9_338;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_355=l9_354.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_354.w);
l9_354=float4(l9_355.x,l9_355.y,l9_354.z,l9_354.w);
}
float4 l9_356=l9_354;
l9_338=l9_356;
float4 l9_357=l9_338;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_357.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_358=l9_357;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_359=dot(l9_358,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_360=l9_359;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_360;
}
}
float4 l9_361=float4(l9_357.x,-l9_357.y,(l9_357.z*0.5)+(l9_357.w*0.5),l9_357.w);
out.gl_Position=l9_361;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_363=param_10;
sc_Vertex_t l9_364=l9_363;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_365=l9_364;
float3 l9_366=in.blendShape0Pos;
float3 l9_367=in.blendShape0Normal;
float l9_368=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_369=l9_365;
float3 l9_370=l9_366;
float l9_371=l9_368;
float3 l9_372=l9_369.position.xyz+(l9_370*l9_371);
l9_369.position=float4(l9_372.x,l9_372.y,l9_372.z,l9_369.position.w);
l9_365=l9_369;
l9_365.normal+=(l9_367*l9_368);
l9_364=l9_365;
sc_Vertex_t l9_373=l9_364;
float3 l9_374=in.blendShape1Pos;
float3 l9_375=in.blendShape1Normal;
float l9_376=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_377=l9_373;
float3 l9_378=l9_374;
float l9_379=l9_376;
float3 l9_380=l9_377.position.xyz+(l9_378*l9_379);
l9_377.position=float4(l9_380.x,l9_380.y,l9_380.z,l9_377.position.w);
l9_373=l9_377;
l9_373.normal+=(l9_375*l9_376);
l9_364=l9_373;
sc_Vertex_t l9_381=l9_364;
float3 l9_382=in.blendShape2Pos;
float3 l9_383=in.blendShape2Normal;
float l9_384=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_385=l9_381;
float3 l9_386=l9_382;
float l9_387=l9_384;
float3 l9_388=l9_385.position.xyz+(l9_386*l9_387);
l9_385.position=float4(l9_388.x,l9_388.y,l9_388.z,l9_385.position.w);
l9_381=l9_385;
l9_381.normal+=(l9_383*l9_384);
l9_364=l9_381;
}
else
{
sc_Vertex_t l9_389=l9_364;
float3 l9_390=in.blendShape0Pos;
float l9_391=(*sc_set0.UserUniforms).weights0.x;
float3 l9_392=l9_389.position.xyz+(l9_390*l9_391);
l9_389.position=float4(l9_392.x,l9_392.y,l9_392.z,l9_389.position.w);
l9_364=l9_389;
sc_Vertex_t l9_393=l9_364;
float3 l9_394=in.blendShape1Pos;
float l9_395=(*sc_set0.UserUniforms).weights0.y;
float3 l9_396=l9_393.position.xyz+(l9_394*l9_395);
l9_393.position=float4(l9_396.x,l9_396.y,l9_396.z,l9_393.position.w);
l9_364=l9_393;
sc_Vertex_t l9_397=l9_364;
float3 l9_398=in.blendShape2Pos;
float l9_399=(*sc_set0.UserUniforms).weights0.z;
float3 l9_400=l9_397.position.xyz+(l9_398*l9_399);
l9_397.position=float4(l9_400.x,l9_400.y,l9_400.z,l9_397.position.w);
l9_364=l9_397;
sc_Vertex_t l9_401=l9_364;
float3 l9_402=in.blendShape3Pos;
float l9_403=(*sc_set0.UserUniforms).weights0.w;
float3 l9_404=l9_401.position.xyz+(l9_402*l9_403);
l9_401.position=float4(l9_404.x,l9_404.y,l9_404.z,l9_401.position.w);
l9_364=l9_401;
sc_Vertex_t l9_405=l9_364;
float3 l9_406=in.blendShape4Pos;
float l9_407=(*sc_set0.UserUniforms).weights1.x;
float3 l9_408=l9_405.position.xyz+(l9_406*l9_407);
l9_405.position=float4(l9_408.x,l9_408.y,l9_408.z,l9_405.position.w);
l9_364=l9_405;
sc_Vertex_t l9_409=l9_364;
float3 l9_410=in.blendShape5Pos;
float l9_411=(*sc_set0.UserUniforms).weights1.y;
float3 l9_412=l9_409.position.xyz+(l9_410*l9_411);
l9_409.position=float4(l9_412.x,l9_412.y,l9_412.z,l9_409.position.w);
l9_364=l9_409;
}
}
l9_363=l9_364;
sc_Vertex_t l9_413=l9_363;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_414=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_414=float4(1.0,fract(in.boneData.yzw));
l9_414.x-=dot(l9_414.yzw,float3(1.0));
}
float4 l9_415=l9_414;
float4 l9_416=l9_415;
int l9_417=int(in.boneData.x);
int l9_418=int(in.boneData.y);
int l9_419=int(in.boneData.z);
int l9_420=int(in.boneData.w);
int l9_421=l9_417;
float4 l9_422=l9_413.position;
float3 l9_423=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_424=l9_421;
float4 l9_425=(*sc_set0.sc_BonesUBO).sc_Bones[l9_424].boneMatrix[0];
float4 l9_426=(*sc_set0.sc_BonesUBO).sc_Bones[l9_424].boneMatrix[1];
float4 l9_427=(*sc_set0.sc_BonesUBO).sc_Bones[l9_424].boneMatrix[2];
float4 l9_428[3];
l9_428[0]=l9_425;
l9_428[1]=l9_426;
l9_428[2]=l9_427;
l9_423=float3(dot(l9_422,l9_428[0]),dot(l9_422,l9_428[1]),dot(l9_422,l9_428[2]));
}
else
{
l9_423=l9_422.xyz;
}
float3 l9_429=l9_423;
float3 l9_430=l9_429;
float l9_431=l9_416.x;
int l9_432=l9_418;
float4 l9_433=l9_413.position;
float3 l9_434=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_435=l9_432;
float4 l9_436=(*sc_set0.sc_BonesUBO).sc_Bones[l9_435].boneMatrix[0];
float4 l9_437=(*sc_set0.sc_BonesUBO).sc_Bones[l9_435].boneMatrix[1];
float4 l9_438=(*sc_set0.sc_BonesUBO).sc_Bones[l9_435].boneMatrix[2];
float4 l9_439[3];
l9_439[0]=l9_436;
l9_439[1]=l9_437;
l9_439[2]=l9_438;
l9_434=float3(dot(l9_433,l9_439[0]),dot(l9_433,l9_439[1]),dot(l9_433,l9_439[2]));
}
else
{
l9_434=l9_433.xyz;
}
float3 l9_440=l9_434;
float3 l9_441=l9_440;
float l9_442=l9_416.y;
int l9_443=l9_419;
float4 l9_444=l9_413.position;
float3 l9_445=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_446=l9_443;
float4 l9_447=(*sc_set0.sc_BonesUBO).sc_Bones[l9_446].boneMatrix[0];
float4 l9_448=(*sc_set0.sc_BonesUBO).sc_Bones[l9_446].boneMatrix[1];
float4 l9_449=(*sc_set0.sc_BonesUBO).sc_Bones[l9_446].boneMatrix[2];
float4 l9_450[3];
l9_450[0]=l9_447;
l9_450[1]=l9_448;
l9_450[2]=l9_449;
l9_445=float3(dot(l9_444,l9_450[0]),dot(l9_444,l9_450[1]),dot(l9_444,l9_450[2]));
}
else
{
l9_445=l9_444.xyz;
}
float3 l9_451=l9_445;
float3 l9_452=l9_451;
float l9_453=l9_416.z;
int l9_454=l9_420;
float4 l9_455=l9_413.position;
float3 l9_456=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_457=l9_454;
float4 l9_458=(*sc_set0.sc_BonesUBO).sc_Bones[l9_457].boneMatrix[0];
float4 l9_459=(*sc_set0.sc_BonesUBO).sc_Bones[l9_457].boneMatrix[1];
float4 l9_460=(*sc_set0.sc_BonesUBO).sc_Bones[l9_457].boneMatrix[2];
float4 l9_461[3];
l9_461[0]=l9_458;
l9_461[1]=l9_459;
l9_461[2]=l9_460;
l9_456=float3(dot(l9_455,l9_461[0]),dot(l9_455,l9_461[1]),dot(l9_455,l9_461[2]));
}
else
{
l9_456=l9_455.xyz;
}
float3 l9_462=l9_456;
float3 l9_463=(((l9_430*l9_431)+(l9_441*l9_442))+(l9_452*l9_453))+(l9_462*l9_416.w);
l9_413.position=float4(l9_463.x,l9_463.y,l9_463.z,l9_413.position.w);
int l9_464=l9_417;
float3x3 l9_465=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_464].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_464].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_464].normalMatrix[2].xyz));
float3x3 l9_466=l9_465;
float3x3 l9_467=l9_466;
int l9_468=l9_418;
float3x3 l9_469=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_468].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_468].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_468].normalMatrix[2].xyz));
float3x3 l9_470=l9_469;
float3x3 l9_471=l9_470;
int l9_472=l9_419;
float3x3 l9_473=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_472].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_472].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_472].normalMatrix[2].xyz));
float3x3 l9_474=l9_473;
float3x3 l9_475=l9_474;
int l9_476=l9_420;
float3x3 l9_477=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_476].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_476].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_476].normalMatrix[2].xyz));
float3x3 l9_478=l9_477;
float3x3 l9_479=l9_478;
l9_413.normal=((((l9_467*l9_413.normal)*l9_416.x)+((l9_471*l9_413.normal)*l9_416.y))+((l9_475*l9_413.normal)*l9_416.z))+((l9_479*l9_413.normal)*l9_416.w);
l9_413.tangent=((((l9_467*l9_413.tangent)*l9_416.x)+((l9_471*l9_413.tangent)*l9_416.y))+((l9_475*l9_413.tangent)*l9_416.z))+((l9_479*l9_413.tangent)*l9_416.w);
}
l9_363=l9_413;
float l9_480=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_481=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_482=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_483=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_484=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_485=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_486=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_487=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_488=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_489=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_490=l9_480/l9_481;
int l9_491=gl_InstanceIndex;
int l9_492=l9_491;
l9_363.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_363.position;
float3 l9_493=l9_363.position.xyz;
float3 l9_494=float3(float(l9_492%int(l9_482))*l9_480,float(l9_492/int(l9_482))*l9_480,(float(l9_492)*l9_490)+l9_487);
float3 l9_495=l9_493+l9_494;
float4 l9_496=float4(l9_495-l9_489,1.0);
float l9_497=l9_483;
float l9_498=l9_484;
float l9_499=l9_485;
float l9_500=l9_486;
float l9_501=l9_487;
float l9_502=l9_488;
float4x4 l9_503=float4x4(float4(2.0/(l9_498-l9_497),0.0,0.0,(-(l9_498+l9_497))/(l9_498-l9_497)),float4(0.0,2.0/(l9_500-l9_499),0.0,(-(l9_500+l9_499))/(l9_500-l9_499)),float4(0.0,0.0,(-2.0)/(l9_502-l9_501),(-(l9_502+l9_501))/(l9_502-l9_501)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_504=l9_503;
float4 l9_505=l9_504*l9_496;
l9_505.w=1.0;
out.varScreenPos=l9_505;
float4 l9_506=l9_505*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_506.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_507=l9_506;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_508=dot(l9_507,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_509=l9_508;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_509;
}
}
float4 l9_510=float4(l9_506.x,-l9_506.y,(l9_506.z*0.5)+(l9_506.w*0.5),l9_506.w);
out.gl_Position=l9_510;
param_10=l9_363;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_511=param_10;
sc_Vertex_t l9_512=l9_511;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_513=l9_512;
float3 l9_514=in.blendShape0Pos;
float3 l9_515=in.blendShape0Normal;
float l9_516=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_517=l9_513;
float3 l9_518=l9_514;
float l9_519=l9_516;
float3 l9_520=l9_517.position.xyz+(l9_518*l9_519);
l9_517.position=float4(l9_520.x,l9_520.y,l9_520.z,l9_517.position.w);
l9_513=l9_517;
l9_513.normal+=(l9_515*l9_516);
l9_512=l9_513;
sc_Vertex_t l9_521=l9_512;
float3 l9_522=in.blendShape1Pos;
float3 l9_523=in.blendShape1Normal;
float l9_524=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_525=l9_521;
float3 l9_526=l9_522;
float l9_527=l9_524;
float3 l9_528=l9_525.position.xyz+(l9_526*l9_527);
l9_525.position=float4(l9_528.x,l9_528.y,l9_528.z,l9_525.position.w);
l9_521=l9_525;
l9_521.normal+=(l9_523*l9_524);
l9_512=l9_521;
sc_Vertex_t l9_529=l9_512;
float3 l9_530=in.blendShape2Pos;
float3 l9_531=in.blendShape2Normal;
float l9_532=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_533=l9_529;
float3 l9_534=l9_530;
float l9_535=l9_532;
float3 l9_536=l9_533.position.xyz+(l9_534*l9_535);
l9_533.position=float4(l9_536.x,l9_536.y,l9_536.z,l9_533.position.w);
l9_529=l9_533;
l9_529.normal+=(l9_531*l9_532);
l9_512=l9_529;
}
else
{
sc_Vertex_t l9_537=l9_512;
float3 l9_538=in.blendShape0Pos;
float l9_539=(*sc_set0.UserUniforms).weights0.x;
float3 l9_540=l9_537.position.xyz+(l9_538*l9_539);
l9_537.position=float4(l9_540.x,l9_540.y,l9_540.z,l9_537.position.w);
l9_512=l9_537;
sc_Vertex_t l9_541=l9_512;
float3 l9_542=in.blendShape1Pos;
float l9_543=(*sc_set0.UserUniforms).weights0.y;
float3 l9_544=l9_541.position.xyz+(l9_542*l9_543);
l9_541.position=float4(l9_544.x,l9_544.y,l9_544.z,l9_541.position.w);
l9_512=l9_541;
sc_Vertex_t l9_545=l9_512;
float3 l9_546=in.blendShape2Pos;
float l9_547=(*sc_set0.UserUniforms).weights0.z;
float3 l9_548=l9_545.position.xyz+(l9_546*l9_547);
l9_545.position=float4(l9_548.x,l9_548.y,l9_548.z,l9_545.position.w);
l9_512=l9_545;
sc_Vertex_t l9_549=l9_512;
float3 l9_550=in.blendShape3Pos;
float l9_551=(*sc_set0.UserUniforms).weights0.w;
float3 l9_552=l9_549.position.xyz+(l9_550*l9_551);
l9_549.position=float4(l9_552.x,l9_552.y,l9_552.z,l9_549.position.w);
l9_512=l9_549;
sc_Vertex_t l9_553=l9_512;
float3 l9_554=in.blendShape4Pos;
float l9_555=(*sc_set0.UserUniforms).weights1.x;
float3 l9_556=l9_553.position.xyz+(l9_554*l9_555);
l9_553.position=float4(l9_556.x,l9_556.y,l9_556.z,l9_553.position.w);
l9_512=l9_553;
sc_Vertex_t l9_557=l9_512;
float3 l9_558=in.blendShape5Pos;
float l9_559=(*sc_set0.UserUniforms).weights1.y;
float3 l9_560=l9_557.position.xyz+(l9_558*l9_559);
l9_557.position=float4(l9_560.x,l9_560.y,l9_560.z,l9_557.position.w);
l9_512=l9_557;
}
}
l9_511=l9_512;
sc_Vertex_t l9_561=l9_511;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_562=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_562=float4(1.0,fract(in.boneData.yzw));
l9_562.x-=dot(l9_562.yzw,float3(1.0));
}
float4 l9_563=l9_562;
float4 l9_564=l9_563;
int l9_565=int(in.boneData.x);
int l9_566=int(in.boneData.y);
int l9_567=int(in.boneData.z);
int l9_568=int(in.boneData.w);
int l9_569=l9_565;
float4 l9_570=l9_561.position;
float3 l9_571=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_572=l9_569;
float4 l9_573=(*sc_set0.sc_BonesUBO).sc_Bones[l9_572].boneMatrix[0];
float4 l9_574=(*sc_set0.sc_BonesUBO).sc_Bones[l9_572].boneMatrix[1];
float4 l9_575=(*sc_set0.sc_BonesUBO).sc_Bones[l9_572].boneMatrix[2];
float4 l9_576[3];
l9_576[0]=l9_573;
l9_576[1]=l9_574;
l9_576[2]=l9_575;
l9_571=float3(dot(l9_570,l9_576[0]),dot(l9_570,l9_576[1]),dot(l9_570,l9_576[2]));
}
else
{
l9_571=l9_570.xyz;
}
float3 l9_577=l9_571;
float3 l9_578=l9_577;
float l9_579=l9_564.x;
int l9_580=l9_566;
float4 l9_581=l9_561.position;
float3 l9_582=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_583=l9_580;
float4 l9_584=(*sc_set0.sc_BonesUBO).sc_Bones[l9_583].boneMatrix[0];
float4 l9_585=(*sc_set0.sc_BonesUBO).sc_Bones[l9_583].boneMatrix[1];
float4 l9_586=(*sc_set0.sc_BonesUBO).sc_Bones[l9_583].boneMatrix[2];
float4 l9_587[3];
l9_587[0]=l9_584;
l9_587[1]=l9_585;
l9_587[2]=l9_586;
l9_582=float3(dot(l9_581,l9_587[0]),dot(l9_581,l9_587[1]),dot(l9_581,l9_587[2]));
}
else
{
l9_582=l9_581.xyz;
}
float3 l9_588=l9_582;
float3 l9_589=l9_588;
float l9_590=l9_564.y;
int l9_591=l9_567;
float4 l9_592=l9_561.position;
float3 l9_593=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_594=l9_591;
float4 l9_595=(*sc_set0.sc_BonesUBO).sc_Bones[l9_594].boneMatrix[0];
float4 l9_596=(*sc_set0.sc_BonesUBO).sc_Bones[l9_594].boneMatrix[1];
float4 l9_597=(*sc_set0.sc_BonesUBO).sc_Bones[l9_594].boneMatrix[2];
float4 l9_598[3];
l9_598[0]=l9_595;
l9_598[1]=l9_596;
l9_598[2]=l9_597;
l9_593=float3(dot(l9_592,l9_598[0]),dot(l9_592,l9_598[1]),dot(l9_592,l9_598[2]));
}
else
{
l9_593=l9_592.xyz;
}
float3 l9_599=l9_593;
float3 l9_600=l9_599;
float l9_601=l9_564.z;
int l9_602=l9_568;
float4 l9_603=l9_561.position;
float3 l9_604=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_605=l9_602;
float4 l9_606=(*sc_set0.sc_BonesUBO).sc_Bones[l9_605].boneMatrix[0];
float4 l9_607=(*sc_set0.sc_BonesUBO).sc_Bones[l9_605].boneMatrix[1];
float4 l9_608=(*sc_set0.sc_BonesUBO).sc_Bones[l9_605].boneMatrix[2];
float4 l9_609[3];
l9_609[0]=l9_606;
l9_609[1]=l9_607;
l9_609[2]=l9_608;
l9_604=float3(dot(l9_603,l9_609[0]),dot(l9_603,l9_609[1]),dot(l9_603,l9_609[2]));
}
else
{
l9_604=l9_603.xyz;
}
float3 l9_610=l9_604;
float3 l9_611=(((l9_578*l9_579)+(l9_589*l9_590))+(l9_600*l9_601))+(l9_610*l9_564.w);
l9_561.position=float4(l9_611.x,l9_611.y,l9_611.z,l9_561.position.w);
int l9_612=l9_565;
float3x3 l9_613=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_612].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_612].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_612].normalMatrix[2].xyz));
float3x3 l9_614=l9_613;
float3x3 l9_615=l9_614;
int l9_616=l9_566;
float3x3 l9_617=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_616].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_616].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_616].normalMatrix[2].xyz));
float3x3 l9_618=l9_617;
float3x3 l9_619=l9_618;
int l9_620=l9_567;
float3x3 l9_621=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_620].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_620].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_620].normalMatrix[2].xyz));
float3x3 l9_622=l9_621;
float3x3 l9_623=l9_622;
int l9_624=l9_568;
float3x3 l9_625=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_624].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_624].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_624].normalMatrix[2].xyz));
float3x3 l9_626=l9_625;
float3x3 l9_627=l9_626;
l9_561.normal=((((l9_615*l9_561.normal)*l9_564.x)+((l9_619*l9_561.normal)*l9_564.y))+((l9_623*l9_561.normal)*l9_564.z))+((l9_627*l9_561.normal)*l9_564.w);
l9_561.tangent=((((l9_615*l9_561.tangent)*l9_564.x)+((l9_619*l9_561.tangent)*l9_564.y))+((l9_623*l9_561.tangent)*l9_564.z))+((l9_627*l9_561.tangent)*l9_564.w);
}
l9_511=l9_561;
float3 l9_628=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_629=((l9_511.position.xy/float2(l9_511.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_629.x,l9_629.y,out.varTex01.z,out.varTex01.w);
l9_511.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_511.position;
float3 l9_630=l9_511.position.xyz-l9_628;
l9_511.position=float4(l9_630.x,l9_630.y,l9_630.z,l9_511.position.w);
out.varPosAndMotion=float4(l9_511.position.xyz.x,l9_511.position.xyz.y,l9_511.position.xyz.z,out.varPosAndMotion.w);
float3 l9_631=normalize(l9_511.normal);
out.varNormalAndMotion=float4(l9_631.x,l9_631.y,l9_631.z,out.varNormalAndMotion.w);
float l9_632=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_633=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_634=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_635=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_636=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_637=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_638=l9_632;
float l9_639=l9_633;
float l9_640=l9_634;
float l9_641=l9_635;
float l9_642=l9_636;
float l9_643=l9_637;
float4x4 l9_644=float4x4(float4(2.0/(l9_639-l9_638),0.0,0.0,(-(l9_639+l9_638))/(l9_639-l9_638)),float4(0.0,2.0/(l9_641-l9_640),0.0,(-(l9_641+l9_640))/(l9_641-l9_640)),float4(0.0,0.0,(-2.0)/(l9_643-l9_642),(-(l9_643+l9_642))/(l9_643-l9_642)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_645=l9_644;
float4 l9_646=float4(0.0);
float3 l9_647=(l9_645*l9_511.position).xyz;
l9_646=float4(l9_647.x,l9_647.y,l9_647.z,l9_646.w);
l9_646.w=1.0;
out.varScreenPos=l9_646;
float4 l9_648=l9_646*1.0;
float4 l9_649=l9_648;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_649.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_650=l9_649;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_651=dot(l9_650,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_652=l9_651;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_652;
}
}
float4 l9_653=float4(l9_649.x,-l9_649.y,(l9_649.z*0.5)+(l9_649.w*0.5),l9_649.w);
out.gl_Position=l9_653;
param_10=l9_511;
}
}
v=param_10;
ssGlobals param_15=Globals;
float3 l9_654=float3(0.0);
float3 l9_655=float3(0.0);
l9_655=param_15.SurfacePosition_ObjectSpace;
l9_654=l9_655;
out.Interpolator0.x=l9_654.x;
out.Interpolator0.y=l9_654.y;
out.Interpolator0.z=l9_654.z;
float3 param_16=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_656=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_16,1.0);
float3 l9_657=param_16;
float3 l9_658=l9_656.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_659=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_659=0;
}
else
{
l9_659=gl_InstanceIndex%2;
}
int l9_660=l9_659;
float4 l9_661=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_660]*float4(l9_657,1.0);
float2 l9_662=l9_661.xy/float2(l9_661.w);
l9_661=float4(l9_662.x,l9_662.y,l9_661.z,l9_661.w);
int l9_663=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_663=0;
}
else
{
l9_663=gl_InstanceIndex%2;
}
int l9_664=l9_663;
float4 l9_665=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_664]*float4(l9_658,1.0);
float2 l9_666=l9_665.xy/float2(l9_665.w);
l9_665=float4(l9_666.x,l9_666.y,l9_665.z,l9_665.w);
float2 l9_667=(l9_661.xy-l9_665.xy)*0.5;
out.varPosAndMotion.w=l9_667.x;
out.varNormalAndMotion.w=l9_667.y;
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
float3 VertexNormal_WorldSpace;
float3 VertexNormal_ObjectSpace;
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
float Tweak_N128;
float4 noiseTexSize;
float4 noiseTexDims;
float4 noiseTexView;
float3x3 noiseTexTransform;
float4 noiseTexUvMinMax;
float4 noiseTexBorderColor;
float displace;
float4 colorRampSize;
float4 colorRampDims;
float4 colorRampView;
float3x3 colorRampTransform;
float4 colorRampUvMinMax;
float4 colorRampBorderColor;
float colorrampExponent;
float metallic;
float roughness;
float3 Port_Import_N207;
float Port_Input1_N208;
float3 Port_Import_N206;
float Port_Import_N209;
float3 Port_Position_N210;
float3 Port_Normal_N210;
float Port_Import_N080;
float Port_Import_N077;
float3 Port_Import_N082;
float3 Port_Import_N054;
float Port_Input1_N055;
float3 Port_Import_N056;
float Port_RangeMinA_N075;
float Port_RangeMaxA_N075;
float Port_RangeMinB_N075;
float Port_RangeMaxB_N075;
float Port_RangeMinA_N087;
float Port_RangeMaxA_N087;
float Port_RangeMinB_N087;
float Port_RangeMaxB_N087;
float Port_RangeMinA_N089;
float Port_RangeMaxA_N089;
float Port_RangeMinB_N089;
float Port_RangeMaxB_N089;
float Port_Import_N007;
float Port_Input1_N028;
float Port_Input2_N028;
float Port_Import_N143;
float Port_Value2_N164;
float Port_Opacity_N026;
float4 Port_Input0_N126;
float Port_Input1_N003;
float Port_Input2_N003;
float Port_Value2_N165;
float4 Port_Import_N115;
float Port_Import_N116;
float4 Port_Input1_N118;
float Port_Import_N119;
float Port_Import_N121;
float Port_Import_N027;
float Port_Import_N013;
float Port_Input1_N035;
float Port_Input1_N036;
float Port_Import_N023;
float Port_RangeMinA_N037;
float Port_RangeMaxA_N037;
float Port_RangeMinB_N037;
float Port_RangeMaxB_N037;
float3 Port_AO_N026;
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
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> colorRamp [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> noiseTex [[id(3)]];
texture2d<float> sc_EnvmapDiffuse [[id(4)]];
texture2d<float> sc_EnvmapSpecular [[id(5)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(14)]];
texture2d<float> sc_RayTracingReflections [[id(15)]];
texture2d<float> sc_RayTracingShadows [[id(16)]];
texture2d<float> sc_SSAOTexture [[id(17)]];
texture2d<float> sc_ScreenTexture [[id(18)]];
texture2d<float> sc_ShadowTexture [[id(19)]];
sampler colorRampSmpSC [[id(21)]];
sampler intensityTextureSmpSC [[id(22)]];
sampler noiseTexSmpSC [[id(23)]];
sampler sc_EnvmapDiffuseSmpSC [[id(24)]];
sampler sc_EnvmapSpecularSmpSC [[id(25)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(27)]];
sampler sc_RayTracingReflectionsSmpSC [[id(28)]];
sampler sc_RayTracingShadowsSmpSC [[id(29)]];
sampler sc_SSAOTextureSmpSC [[id(30)]];
sampler sc_ScreenTextureSmpSC [[id(31)]];
sampler sc_ShadowTextureSmpSC [[id(32)]];
constant userUniformsObj* UserUniforms [[id(34)]];
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
float4 Interpolator0 [[user(locn13)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
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
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V)
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
float3 getSpecularDominantDir(thread const float3& N,thread const float3& R,thread const float& roughness)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float lerpFactor=(roughness*roughness)*roughness;
return normalize(mix(R,N,float3(lerpFactor)));
}
else
{
return R;
}
}
float3 envBRDFApprox(thread const SurfaceProperties& surfaceProperties,thread const float& NdotV)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float param=surfaceProperties.roughness;
float param_1=NdotV;
float4 l9_0=(float4(-1.0,-0.0275,-0.57200003,0.022)*param)+float4(1.0,0.0425,1.04,-0.039999999);
float l9_1=(fast::min(l9_0.x*l9_0.x,exp2((-9.2799997)*param_1))*l9_0.x)+l9_0.y;
float2 l9_2=(float2(-1.04,1.04)*l9_1)+l9_0.zw;
float2 l9_3=l9_2;
float2 AB=l9_3;
return fast::max((surfaceProperties.specColor*AB.x)+float3(AB.y),float3(0.0));
}
else
{
float3 fresnelMax=fast::max(float3(1.0-surfaceProperties.roughness),surfaceProperties.specColor);
float param_2=NdotV;
float3 param_3=surfaceProperties.specColor;
float3 param_4=fresnelMax;
float l9_4=1.0-param_2;
float l9_5=l9_4*l9_4;
float l9_6=(l9_5*l9_5)*l9_4;
float3 l9_7=param_3+((param_4-param_3)*l9_6);
return l9_7;
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
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPosAndMotion.xyz);
Globals.PositionWS=in.varPosAndMotion.xyz;
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexNormal_ObjectSpace=normalize(((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(Globals.VertexNormal_WorldSpace,0.0)).xyz);
float3 Normal_N66=float3(0.0);
Normal_N66=Globals.VertexNormal_ObjectSpace;
float3 Output_N166=float3(0.0);
float3 param=Normal_N66;
float l9_0=dot(param,param);
float l9_1;
if (l9_0>0.0)
{
l9_1=1.0/sqrt(l9_0);
}
else
{
l9_1=0.0;
}
float l9_2=l9_1;
float3 param_1=param*l9_2;
Output_N166=param_1;
float2 Output_N86=float2(0.0);
Output_N86=float2(Output_N166.z,Output_N166.y);
float3 Output_N169=float3(0.0);
float3 param_2;
param_2.x=in.Interpolator0.x;
param_2.y=in.Interpolator0.y;
param_2.z=in.Interpolator0.z;
Output_N169=param_2;
float Output_N128=0.0;
float param_3=(*sc_set0.UserUniforms).Tweak_N128;
Output_N128=param_3;
float3 Value_N54=float3(0.0);
Value_N54=float3(Output_N128);
float3 Output_N55=float3(0.0);
Output_N55=Value_N54*float3((*sc_set0.UserUniforms).Port_Input1_N055);
float3 Output_N58=float3(0.0);
Output_N58=Output_N169*Output_N55;
float3 Value_N56=float3(0.0);
Value_N56=(*sc_set0.UserUniforms).Port_Import_N056;
float3 Output_N63=float3(0.0);
Output_N63=Output_N58+Value_N56;
float2 Output_N53=float2(0.0);
Output_N53=float2(Output_N63.z,Output_N63.y);
float4 Color_N11=float4(0.0);
int l9_3;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=in.varStereoViewID;
}
int l9_5=l9_4;
l9_3=1-l9_5;
}
else
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=in.varStereoViewID;
}
int l9_7=l9_6;
l9_3=l9_7;
}
int l9_8=l9_3;
int param_4=noiseTexLayout_tmp;
int param_5=l9_8;
float2 param_6=Output_N53;
bool param_7=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 param_8=(*sc_set0.UserUniforms).noiseTexTransform;
int2 param_9=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool param_10=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 param_11=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool param_12=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 param_13=(*sc_set0.UserUniforms).noiseTexBorderColor;
float param_14=0.0;
bool l9_9=param_12&&(!param_10);
float l9_10=1.0;
float l9_11=param_6.x;
int l9_12=param_9.x;
if (l9_12==1)
{
l9_11=fract(l9_11);
}
else
{
if (l9_12==2)
{
float l9_13=fract(l9_11);
float l9_14=l9_11-l9_13;
float l9_15=step(0.25,fract(l9_14*0.5));
l9_11=mix(l9_13,1.0-l9_13,fast::clamp(l9_15,0.0,1.0));
}
}
param_6.x=l9_11;
float l9_16=param_6.y;
int l9_17=param_9.y;
if (l9_17==1)
{
l9_16=fract(l9_16);
}
else
{
if (l9_17==2)
{
float l9_18=fract(l9_16);
float l9_19=l9_16-l9_18;
float l9_20=step(0.25,fract(l9_19*0.5));
l9_16=mix(l9_18,1.0-l9_18,fast::clamp(l9_20,0.0,1.0));
}
}
param_6.y=l9_16;
if (param_10)
{
bool l9_21=param_12;
bool l9_22;
if (l9_21)
{
l9_22=param_9.x==3;
}
else
{
l9_22=l9_21;
}
float l9_23=param_6.x;
float l9_24=param_11.x;
float l9_25=param_11.z;
bool l9_26=l9_22;
float l9_27=l9_10;
float l9_28=fast::clamp(l9_23,l9_24,l9_25);
float l9_29=step(abs(l9_23-l9_28),9.9999997e-06);
l9_27*=(l9_29+((1.0-float(l9_26))*(1.0-l9_29)));
l9_23=l9_28;
param_6.x=l9_23;
l9_10=l9_27;
bool l9_30=param_12;
bool l9_31;
if (l9_30)
{
l9_31=param_9.y==3;
}
else
{
l9_31=l9_30;
}
float l9_32=param_6.y;
float l9_33=param_11.y;
float l9_34=param_11.w;
bool l9_35=l9_31;
float l9_36=l9_10;
float l9_37=fast::clamp(l9_32,l9_33,l9_34);
float l9_38=step(abs(l9_32-l9_37),9.9999997e-06);
l9_36*=(l9_38+((1.0-float(l9_35))*(1.0-l9_38)));
l9_32=l9_37;
param_6.y=l9_32;
l9_10=l9_36;
}
float2 l9_39=param_6;
bool l9_40=param_7;
float3x3 l9_41=param_8;
if (l9_40)
{
l9_39=float2((l9_41*float3(l9_39,1.0)).xy);
}
float2 l9_42=l9_39;
param_6=l9_42;
float l9_43=param_6.x;
int l9_44=param_9.x;
bool l9_45=l9_9;
float l9_46=l9_10;
if ((l9_44==0)||(l9_44==3))
{
float l9_47=l9_43;
float l9_48=0.0;
float l9_49=1.0;
bool l9_50=l9_45;
float l9_51=l9_46;
float l9_52=fast::clamp(l9_47,l9_48,l9_49);
float l9_53=step(abs(l9_47-l9_52),9.9999997e-06);
l9_51*=(l9_53+((1.0-float(l9_50))*(1.0-l9_53)));
l9_47=l9_52;
l9_43=l9_47;
l9_46=l9_51;
}
param_6.x=l9_43;
l9_10=l9_46;
float l9_54=param_6.y;
int l9_55=param_9.y;
bool l9_56=l9_9;
float l9_57=l9_10;
if ((l9_55==0)||(l9_55==3))
{
float l9_58=l9_54;
float l9_59=0.0;
float l9_60=1.0;
bool l9_61=l9_56;
float l9_62=l9_57;
float l9_63=fast::clamp(l9_58,l9_59,l9_60);
float l9_64=step(abs(l9_58-l9_63),9.9999997e-06);
l9_62*=(l9_64+((1.0-float(l9_61))*(1.0-l9_64)));
l9_58=l9_63;
l9_54=l9_58;
l9_57=l9_62;
}
param_6.y=l9_54;
l9_10=l9_57;
float2 l9_65=param_6;
int l9_66=param_4;
int l9_67=param_5;
float l9_68=param_14;
float2 l9_69=l9_65;
int l9_70=l9_66;
int l9_71=l9_67;
float3 l9_72=float3(0.0);
if (l9_70==0)
{
l9_72=float3(l9_69,0.0);
}
else
{
if (l9_70==1)
{
l9_72=float3(l9_69.x,(l9_69.y*0.5)+(0.5-(float(l9_71)*0.5)),0.0);
}
else
{
l9_72=float3(l9_69,float(l9_71));
}
}
float3 l9_73=l9_72;
float3 l9_74=l9_73;
float4 l9_75=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_74.xy,bias(l9_68));
float4 l9_76=l9_75;
if (param_12)
{
l9_76=mix(param_13,l9_76,float4(l9_10));
}
float4 l9_77=l9_76;
Color_N11=l9_77;
float4 ValueOut_N75=float4(0.0);
ValueOut_N75=(((Color_N11-float4((*sc_set0.UserUniforms).Port_RangeMinA_N075))/float4(((*sc_set0.UserUniforms).Port_RangeMaxA_N075-(*sc_set0.UserUniforms).Port_RangeMinA_N075)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N075-(*sc_set0.UserUniforms).Port_RangeMinB_N075))+float4((*sc_set0.UserUniforms).Port_RangeMinB_N075);
float2 Output_N93=float2(0.0);
Output_N93=float2(ValueOut_N75.x,ValueOut_N75.y);
float2 Output_N94=float2(0.0);
Output_N94=Output_N86+Output_N93;
float Value1_N92=0.0;
float Value2_N92=0.0;
float Value3_N92=0.0;
float3 param_15=Output_N166;
float param_16=param_15.x;
float param_17=param_15.y;
float param_18=param_15.z;
Value1_N92=param_16;
Value2_N92=param_17;
Value3_N92=param_18;
float3 Value_N90=float3(0.0);
Value_N90=float3(Output_N94.x,Output_N94.y,Value_N90.z);
Value_N90.z=Value1_N92;
float3 Output_N173=float3(0.0);
Output_N173=float3(Value_N90.z,Value_N90.x,Value_N90.y);
float3 Output_N67=float3(0.0);
Output_N67=abs(Output_N166);
float Value1_N68=0.0;
float Value2_N68=0.0;
float Value3_N68=0.0;
float3 param_19=Output_N67;
float param_20=param_19.x;
float param_21=param_19.y;
float param_22=param_19.z;
Value1_N68=param_20;
Value2_N68=param_21;
Value3_N68=param_22;
float Output_N69=0.0;
Output_N69=(Value1_N68+Value2_N68)+Value3_N68;
float3 Output_N71=float3(0.0);
Output_N71=Output_N67/float3(Output_N69);
float Value1_N83=0.0;
float Value2_N83=0.0;
float Value3_N83=0.0;
float3 param_23=Output_N71;
float param_24=param_23.x;
float param_25=param_23.y;
float param_26=param_23.z;
Value1_N83=param_24;
Value2_N83=param_25;
Value3_N83=param_26;
float3 Output_N151=float3(0.0);
Output_N151=Output_N173*float3(Value1_N83);
float2 Output_N95=float2(0.0);
Output_N95=float2(Output_N166.x,Output_N166.z);
float2 Output_N64=float2(0.0);
Output_N64=float2(Output_N63.x,Output_N63.z);
float4 Color_N85=float4(0.0);
int l9_78;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_79=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_79=0;
}
else
{
l9_79=in.varStereoViewID;
}
int l9_80=l9_79;
l9_78=1-l9_80;
}
else
{
int l9_81=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_81=0;
}
else
{
l9_81=in.varStereoViewID;
}
int l9_82=l9_81;
l9_78=l9_82;
}
int l9_83=l9_78;
int param_27=noiseTexLayout_tmp;
int param_28=l9_83;
float2 param_29=Output_N64;
bool param_30=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 param_31=(*sc_set0.UserUniforms).noiseTexTransform;
int2 param_32=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool param_33=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 param_34=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool param_35=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 param_36=(*sc_set0.UserUniforms).noiseTexBorderColor;
float param_37=0.0;
bool l9_84=param_35&&(!param_33);
float l9_85=1.0;
float l9_86=param_29.x;
int l9_87=param_32.x;
if (l9_87==1)
{
l9_86=fract(l9_86);
}
else
{
if (l9_87==2)
{
float l9_88=fract(l9_86);
float l9_89=l9_86-l9_88;
float l9_90=step(0.25,fract(l9_89*0.5));
l9_86=mix(l9_88,1.0-l9_88,fast::clamp(l9_90,0.0,1.0));
}
}
param_29.x=l9_86;
float l9_91=param_29.y;
int l9_92=param_32.y;
if (l9_92==1)
{
l9_91=fract(l9_91);
}
else
{
if (l9_92==2)
{
float l9_93=fract(l9_91);
float l9_94=l9_91-l9_93;
float l9_95=step(0.25,fract(l9_94*0.5));
l9_91=mix(l9_93,1.0-l9_93,fast::clamp(l9_95,0.0,1.0));
}
}
param_29.y=l9_91;
if (param_33)
{
bool l9_96=param_35;
bool l9_97;
if (l9_96)
{
l9_97=param_32.x==3;
}
else
{
l9_97=l9_96;
}
float l9_98=param_29.x;
float l9_99=param_34.x;
float l9_100=param_34.z;
bool l9_101=l9_97;
float l9_102=l9_85;
float l9_103=fast::clamp(l9_98,l9_99,l9_100);
float l9_104=step(abs(l9_98-l9_103),9.9999997e-06);
l9_102*=(l9_104+((1.0-float(l9_101))*(1.0-l9_104)));
l9_98=l9_103;
param_29.x=l9_98;
l9_85=l9_102;
bool l9_105=param_35;
bool l9_106;
if (l9_105)
{
l9_106=param_32.y==3;
}
else
{
l9_106=l9_105;
}
float l9_107=param_29.y;
float l9_108=param_34.y;
float l9_109=param_34.w;
bool l9_110=l9_106;
float l9_111=l9_85;
float l9_112=fast::clamp(l9_107,l9_108,l9_109);
float l9_113=step(abs(l9_107-l9_112),9.9999997e-06);
l9_111*=(l9_113+((1.0-float(l9_110))*(1.0-l9_113)));
l9_107=l9_112;
param_29.y=l9_107;
l9_85=l9_111;
}
float2 l9_114=param_29;
bool l9_115=param_30;
float3x3 l9_116=param_31;
if (l9_115)
{
l9_114=float2((l9_116*float3(l9_114,1.0)).xy);
}
float2 l9_117=l9_114;
param_29=l9_117;
float l9_118=param_29.x;
int l9_119=param_32.x;
bool l9_120=l9_84;
float l9_121=l9_85;
if ((l9_119==0)||(l9_119==3))
{
float l9_122=l9_118;
float l9_123=0.0;
float l9_124=1.0;
bool l9_125=l9_120;
float l9_126=l9_121;
float l9_127=fast::clamp(l9_122,l9_123,l9_124);
float l9_128=step(abs(l9_122-l9_127),9.9999997e-06);
l9_126*=(l9_128+((1.0-float(l9_125))*(1.0-l9_128)));
l9_122=l9_127;
l9_118=l9_122;
l9_121=l9_126;
}
param_29.x=l9_118;
l9_85=l9_121;
float l9_129=param_29.y;
int l9_130=param_32.y;
bool l9_131=l9_84;
float l9_132=l9_85;
if ((l9_130==0)||(l9_130==3))
{
float l9_133=l9_129;
float l9_134=0.0;
float l9_135=1.0;
bool l9_136=l9_131;
float l9_137=l9_132;
float l9_138=fast::clamp(l9_133,l9_134,l9_135);
float l9_139=step(abs(l9_133-l9_138),9.9999997e-06);
l9_137*=(l9_139+((1.0-float(l9_136))*(1.0-l9_139)));
l9_133=l9_138;
l9_129=l9_133;
l9_132=l9_137;
}
param_29.y=l9_129;
l9_85=l9_132;
float2 l9_140=param_29;
int l9_141=param_27;
int l9_142=param_28;
float l9_143=param_37;
float2 l9_144=l9_140;
int l9_145=l9_141;
int l9_146=l9_142;
float3 l9_147=float3(0.0);
if (l9_145==0)
{
l9_147=float3(l9_144,0.0);
}
else
{
if (l9_145==1)
{
l9_147=float3(l9_144.x,(l9_144.y*0.5)+(0.5-(float(l9_146)*0.5)),0.0);
}
else
{
l9_147=float3(l9_144,float(l9_146));
}
}
float3 l9_148=l9_147;
float3 l9_149=l9_148;
float4 l9_150=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_149.xy,bias(l9_143));
float4 l9_151=l9_150;
if (param_35)
{
l9_151=mix(param_36,l9_151,float4(l9_85));
}
float4 l9_152=l9_151;
Color_N85=l9_152;
float4 ValueOut_N87=float4(0.0);
ValueOut_N87=(((Color_N85-float4((*sc_set0.UserUniforms).Port_RangeMinA_N087))/float4(((*sc_set0.UserUniforms).Port_RangeMaxA_N087-(*sc_set0.UserUniforms).Port_RangeMinA_N087)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N087-(*sc_set0.UserUniforms).Port_RangeMinB_N087))+float4((*sc_set0.UserUniforms).Port_RangeMinB_N087);
float2 Output_N96=float2(0.0);
Output_N96=float2(ValueOut_N87.x,ValueOut_N87.y);
float2 Output_N97=float2(0.0);
Output_N97=Output_N95+Output_N96;
float3 Value_N98=float3(0.0);
Value_N98=float3(Output_N97.x,Output_N97.y,Value_N98.z);
Value_N98.z=Value2_N92;
float3 Output_N174=float3(0.0);
Output_N174=float3(Value_N98.x,Value_N98.z,Value_N98.y);
float3 Output_N152=float3(0.0);
Output_N152=Output_N174*float3(Value2_N83);
float2 Output_N135=float2(0.0);
Output_N135=float2(Output_N166.x,Output_N166.y);
float2 Output_N65=float2(0.0);
Output_N65=float2(Output_N63.x,Output_N63.y);
float4 Color_N88=float4(0.0);
int l9_153;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_154=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_154=0;
}
else
{
l9_154=in.varStereoViewID;
}
int l9_155=l9_154;
l9_153=1-l9_155;
}
else
{
int l9_156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_156=0;
}
else
{
l9_156=in.varStereoViewID;
}
int l9_157=l9_156;
l9_153=l9_157;
}
int l9_158=l9_153;
int param_38=noiseTexLayout_tmp;
int param_39=l9_158;
float2 param_40=Output_N65;
bool param_41=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 param_42=(*sc_set0.UserUniforms).noiseTexTransform;
int2 param_43=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool param_44=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 param_45=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool param_46=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 param_47=(*sc_set0.UserUniforms).noiseTexBorderColor;
float param_48=0.0;
bool l9_159=param_46&&(!param_44);
float l9_160=1.0;
float l9_161=param_40.x;
int l9_162=param_43.x;
if (l9_162==1)
{
l9_161=fract(l9_161);
}
else
{
if (l9_162==2)
{
float l9_163=fract(l9_161);
float l9_164=l9_161-l9_163;
float l9_165=step(0.25,fract(l9_164*0.5));
l9_161=mix(l9_163,1.0-l9_163,fast::clamp(l9_165,0.0,1.0));
}
}
param_40.x=l9_161;
float l9_166=param_40.y;
int l9_167=param_43.y;
if (l9_167==1)
{
l9_166=fract(l9_166);
}
else
{
if (l9_167==2)
{
float l9_168=fract(l9_166);
float l9_169=l9_166-l9_168;
float l9_170=step(0.25,fract(l9_169*0.5));
l9_166=mix(l9_168,1.0-l9_168,fast::clamp(l9_170,0.0,1.0));
}
}
param_40.y=l9_166;
if (param_44)
{
bool l9_171=param_46;
bool l9_172;
if (l9_171)
{
l9_172=param_43.x==3;
}
else
{
l9_172=l9_171;
}
float l9_173=param_40.x;
float l9_174=param_45.x;
float l9_175=param_45.z;
bool l9_176=l9_172;
float l9_177=l9_160;
float l9_178=fast::clamp(l9_173,l9_174,l9_175);
float l9_179=step(abs(l9_173-l9_178),9.9999997e-06);
l9_177*=(l9_179+((1.0-float(l9_176))*(1.0-l9_179)));
l9_173=l9_178;
param_40.x=l9_173;
l9_160=l9_177;
bool l9_180=param_46;
bool l9_181;
if (l9_180)
{
l9_181=param_43.y==3;
}
else
{
l9_181=l9_180;
}
float l9_182=param_40.y;
float l9_183=param_45.y;
float l9_184=param_45.w;
bool l9_185=l9_181;
float l9_186=l9_160;
float l9_187=fast::clamp(l9_182,l9_183,l9_184);
float l9_188=step(abs(l9_182-l9_187),9.9999997e-06);
l9_186*=(l9_188+((1.0-float(l9_185))*(1.0-l9_188)));
l9_182=l9_187;
param_40.y=l9_182;
l9_160=l9_186;
}
float2 l9_189=param_40;
bool l9_190=param_41;
float3x3 l9_191=param_42;
if (l9_190)
{
l9_189=float2((l9_191*float3(l9_189,1.0)).xy);
}
float2 l9_192=l9_189;
param_40=l9_192;
float l9_193=param_40.x;
int l9_194=param_43.x;
bool l9_195=l9_159;
float l9_196=l9_160;
if ((l9_194==0)||(l9_194==3))
{
float l9_197=l9_193;
float l9_198=0.0;
float l9_199=1.0;
bool l9_200=l9_195;
float l9_201=l9_196;
float l9_202=fast::clamp(l9_197,l9_198,l9_199);
float l9_203=step(abs(l9_197-l9_202),9.9999997e-06);
l9_201*=(l9_203+((1.0-float(l9_200))*(1.0-l9_203)));
l9_197=l9_202;
l9_193=l9_197;
l9_196=l9_201;
}
param_40.x=l9_193;
l9_160=l9_196;
float l9_204=param_40.y;
int l9_205=param_43.y;
bool l9_206=l9_159;
float l9_207=l9_160;
if ((l9_205==0)||(l9_205==3))
{
float l9_208=l9_204;
float l9_209=0.0;
float l9_210=1.0;
bool l9_211=l9_206;
float l9_212=l9_207;
float l9_213=fast::clamp(l9_208,l9_209,l9_210);
float l9_214=step(abs(l9_208-l9_213),9.9999997e-06);
l9_212*=(l9_214+((1.0-float(l9_211))*(1.0-l9_214)));
l9_208=l9_213;
l9_204=l9_208;
l9_207=l9_212;
}
param_40.y=l9_204;
l9_160=l9_207;
float2 l9_215=param_40;
int l9_216=param_38;
int l9_217=param_39;
float l9_218=param_48;
float2 l9_219=l9_215;
int l9_220=l9_216;
int l9_221=l9_217;
float3 l9_222=float3(0.0);
if (l9_220==0)
{
l9_222=float3(l9_219,0.0);
}
else
{
if (l9_220==1)
{
l9_222=float3(l9_219.x,(l9_219.y*0.5)+(0.5-(float(l9_221)*0.5)),0.0);
}
else
{
l9_222=float3(l9_219,float(l9_221));
}
}
float3 l9_223=l9_222;
float3 l9_224=l9_223;
float4 l9_225=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_224.xy,bias(l9_218));
float4 l9_226=l9_225;
if (param_46)
{
l9_226=mix(param_47,l9_226,float4(l9_160));
}
float4 l9_227=l9_226;
Color_N88=l9_227;
float4 ValueOut_N89=float4(0.0);
ValueOut_N89=(((Color_N88-float4((*sc_set0.UserUniforms).Port_RangeMinA_N089))/float4(((*sc_set0.UserUniforms).Port_RangeMaxA_N089-(*sc_set0.UserUniforms).Port_RangeMinA_N089)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N089-(*sc_set0.UserUniforms).Port_RangeMinB_N089))+float4((*sc_set0.UserUniforms).Port_RangeMinB_N089);
float2 Output_N148=float2(0.0);
Output_N148=float2(ValueOut_N89.x,ValueOut_N89.y);
float2 Output_N149=float2(0.0);
Output_N149=Output_N135+Output_N148;
float3 Value_N150=float3(0.0);
Value_N150=float3(Output_N149.x,Output_N149.y,Value_N150.z);
Value_N150.z=Value3_N92;
float3 Output_N153=float3(0.0);
Output_N153=Value_N150*float3(Value3_N83);
float3 Output_N154=float3(0.0);
Output_N154=(Output_N151+Output_N152)+Output_N153;
float3 Output_N155=float3(0.0);
float3 param_49=Output_N154;
float l9_228=dot(param_49,param_49);
float l9_229;
if (l9_228>0.0)
{
l9_229=1.0/sqrt(l9_228);
}
else
{
l9_229=0.0;
}
float l9_230=l9_229;
float3 param_50=param_49*l9_230;
Output_N155=param_50;
float3 VectorOut_N163=float3(0.0);
VectorOut_N163=((*sc_set0.UserUniforms).sc_ModelMatrix*float4(Output_N155,0.0)).xyz;
float4 Output_N157=float4(0.0);
Output_N157=Color_N11*float4(Value1_N83);
float4 Output_N158=float4(0.0);
Output_N158=Color_N85*float4(Value2_N83);
float4 Output_N159=float4(0.0);
Output_N159=Color_N88*float4(Value3_N83);
float4 Output_N160=float4(0.0);
Output_N160=(Output_N157+Output_N158)+Output_N159;
float Output_N161=0.0;
Output_N161=Output_N160.w;
float4 Value_N156=float4(0.0);
Value_N156=float4(VectorOut_N163.x,VectorOut_N163.y,VectorOut_N163.z,Value_N156.w);
Value_N156.w=Output_N161;
float4 Export_N61=float4(0.0);
Export_N61=Value_N156;
float3 Value1_N0=float3(0.0);
float Value2_N0=0.0;
float4 param_51=Export_N61;
float3 param_52=param_51.xyz;
float param_53=param_51.w;
Value1_N0=param_52;
Value2_N0=param_53;
float Value_N7=0.0;
Value_N7=Value2_N0;
float Output_N28=0.0;
Output_N28=fast::clamp(Value_N7,(*sc_set0.UserUniforms).Port_Input1_N028,(*sc_set0.UserUniforms).Port_Input2_N028);
float Output_N12=0.0;
Output_N12=1.0-Output_N28;
float Output_N42=0.0;
float param_54=(*sc_set0.UserUniforms).colorrampExponent;
Output_N42=param_54;
float Value_N143=0.0;
Value_N143=Output_N42;
float Output_N18=0.0;
float l9_231;
if (Output_N12<=0.0)
{
l9_231=0.0;
}
else
{
l9_231=pow(Output_N12,Value_N143);
}
Output_N18=l9_231;
float2 Value_N164=float2(0.0);
Value_N164.x=Output_N18;
Value_N164.y=(*sc_set0.UserUniforms).Port_Value2_N164;
float4 Color_N16=float4(0.0);
int l9_232;
if ((int(colorRampHasSwappedViews_tmp)!=0))
{
int l9_233=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_233=0;
}
else
{
l9_233=in.varStereoViewID;
}
int l9_234=l9_233;
l9_232=1-l9_234;
}
else
{
int l9_235=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_235=0;
}
else
{
l9_235=in.varStereoViewID;
}
int l9_236=l9_235;
l9_232=l9_236;
}
int l9_237=l9_232;
int param_55=colorRampLayout_tmp;
int param_56=l9_237;
float2 param_57=Value_N164;
bool param_58=(int(SC_USE_UV_TRANSFORM_colorRamp_tmp)!=0);
float3x3 param_59=(*sc_set0.UserUniforms).colorRampTransform;
int2 param_60=int2(SC_SOFTWARE_WRAP_MODE_U_colorRamp_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRamp_tmp);
bool param_61=(int(SC_USE_UV_MIN_MAX_colorRamp_tmp)!=0);
float4 param_62=(*sc_set0.UserUniforms).colorRampUvMinMax;
bool param_63=(int(SC_USE_CLAMP_TO_BORDER_colorRamp_tmp)!=0);
float4 param_64=(*sc_set0.UserUniforms).colorRampBorderColor;
float param_65=0.0;
bool l9_238=param_63&&(!param_61);
float l9_239=1.0;
float l9_240=param_57.x;
int l9_241=param_60.x;
if (l9_241==1)
{
l9_240=fract(l9_240);
}
else
{
if (l9_241==2)
{
float l9_242=fract(l9_240);
float l9_243=l9_240-l9_242;
float l9_244=step(0.25,fract(l9_243*0.5));
l9_240=mix(l9_242,1.0-l9_242,fast::clamp(l9_244,0.0,1.0));
}
}
param_57.x=l9_240;
float l9_245=param_57.y;
int l9_246=param_60.y;
if (l9_246==1)
{
l9_245=fract(l9_245);
}
else
{
if (l9_246==2)
{
float l9_247=fract(l9_245);
float l9_248=l9_245-l9_247;
float l9_249=step(0.25,fract(l9_248*0.5));
l9_245=mix(l9_247,1.0-l9_247,fast::clamp(l9_249,0.0,1.0));
}
}
param_57.y=l9_245;
if (param_61)
{
bool l9_250=param_63;
bool l9_251;
if (l9_250)
{
l9_251=param_60.x==3;
}
else
{
l9_251=l9_250;
}
float l9_252=param_57.x;
float l9_253=param_62.x;
float l9_254=param_62.z;
bool l9_255=l9_251;
float l9_256=l9_239;
float l9_257=fast::clamp(l9_252,l9_253,l9_254);
float l9_258=step(abs(l9_252-l9_257),9.9999997e-06);
l9_256*=(l9_258+((1.0-float(l9_255))*(1.0-l9_258)));
l9_252=l9_257;
param_57.x=l9_252;
l9_239=l9_256;
bool l9_259=param_63;
bool l9_260;
if (l9_259)
{
l9_260=param_60.y==3;
}
else
{
l9_260=l9_259;
}
float l9_261=param_57.y;
float l9_262=param_62.y;
float l9_263=param_62.w;
bool l9_264=l9_260;
float l9_265=l9_239;
float l9_266=fast::clamp(l9_261,l9_262,l9_263);
float l9_267=step(abs(l9_261-l9_266),9.9999997e-06);
l9_265*=(l9_267+((1.0-float(l9_264))*(1.0-l9_267)));
l9_261=l9_266;
param_57.y=l9_261;
l9_239=l9_265;
}
float2 l9_268=param_57;
bool l9_269=param_58;
float3x3 l9_270=param_59;
if (l9_269)
{
l9_268=float2((l9_270*float3(l9_268,1.0)).xy);
}
float2 l9_271=l9_268;
param_57=l9_271;
float l9_272=param_57.x;
int l9_273=param_60.x;
bool l9_274=l9_238;
float l9_275=l9_239;
if ((l9_273==0)||(l9_273==3))
{
float l9_276=l9_272;
float l9_277=0.0;
float l9_278=1.0;
bool l9_279=l9_274;
float l9_280=l9_275;
float l9_281=fast::clamp(l9_276,l9_277,l9_278);
float l9_282=step(abs(l9_276-l9_281),9.9999997e-06);
l9_280*=(l9_282+((1.0-float(l9_279))*(1.0-l9_282)));
l9_276=l9_281;
l9_272=l9_276;
l9_275=l9_280;
}
param_57.x=l9_272;
l9_239=l9_275;
float l9_283=param_57.y;
int l9_284=param_60.y;
bool l9_285=l9_238;
float l9_286=l9_239;
if ((l9_284==0)||(l9_284==3))
{
float l9_287=l9_283;
float l9_288=0.0;
float l9_289=1.0;
bool l9_290=l9_285;
float l9_291=l9_286;
float l9_292=fast::clamp(l9_287,l9_288,l9_289);
float l9_293=step(abs(l9_287-l9_292),9.9999997e-06);
l9_291*=(l9_293+((1.0-float(l9_290))*(1.0-l9_293)));
l9_287=l9_292;
l9_283=l9_287;
l9_286=l9_291;
}
param_57.y=l9_283;
l9_239=l9_286;
float2 l9_294=param_57;
int l9_295=param_55;
int l9_296=param_56;
float l9_297=param_65;
float2 l9_298=l9_294;
int l9_299=l9_295;
int l9_300=l9_296;
float3 l9_301=float3(0.0);
if (l9_299==0)
{
l9_301=float3(l9_298,0.0);
}
else
{
if (l9_299==1)
{
l9_301=float3(l9_298.x,(l9_298.y*0.5)+(0.5-(float(l9_300)*0.5)),0.0);
}
else
{
l9_301=float3(l9_298,float(l9_300));
}
}
float3 l9_302=l9_301;
float3 l9_303=l9_302;
float4 l9_304=sc_set0.colorRamp.sample(sc_set0.colorRampSmpSC,l9_303.xy,bias(l9_297));
float4 l9_305=l9_304;
if (param_63)
{
l9_305=mix(param_64,l9_305,float4(l9_239));
}
float4 l9_306=l9_305;
Color_N16=l9_306;
float4 Export_N9=float4(0.0);
Export_N9=Color_N16;
float Output_N17=0.0;
Output_N17=Output_N18*Output_N18;
float Output_N3=0.0;
Output_N3=fast::clamp(Output_N17,(*sc_set0.UserUniforms).Port_Input1_N003,(*sc_set0.UserUniforms).Port_Input2_N003);
float2 Value_N165=float2(0.0);
Value_N165.x=Output_N3;
Value_N165.y=(*sc_set0.UserUniforms).Port_Value2_N165;
float4 Color_N125=float4(0.0);
int l9_307;
if ((int(colorRampHasSwappedViews_tmp)!=0))
{
int l9_308=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_308=0;
}
else
{
l9_308=in.varStereoViewID;
}
int l9_309=l9_308;
l9_307=1-l9_309;
}
else
{
int l9_310=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_310=0;
}
else
{
l9_310=in.varStereoViewID;
}
int l9_311=l9_310;
l9_307=l9_311;
}
int l9_312=l9_307;
int param_66=colorRampLayout_tmp;
int param_67=l9_312;
float2 param_68=Value_N165;
bool param_69=(int(SC_USE_UV_TRANSFORM_colorRamp_tmp)!=0);
float3x3 param_70=(*sc_set0.UserUniforms).colorRampTransform;
int2 param_71=int2(SC_SOFTWARE_WRAP_MODE_U_colorRamp_tmp,SC_SOFTWARE_WRAP_MODE_V_colorRamp_tmp);
bool param_72=(int(SC_USE_UV_MIN_MAX_colorRamp_tmp)!=0);
float4 param_73=(*sc_set0.UserUniforms).colorRampUvMinMax;
bool param_74=(int(SC_USE_CLAMP_TO_BORDER_colorRamp_tmp)!=0);
float4 param_75=(*sc_set0.UserUniforms).colorRampBorderColor;
float param_76=0.0;
bool l9_313=param_74&&(!param_72);
float l9_314=1.0;
float l9_315=param_68.x;
int l9_316=param_71.x;
if (l9_316==1)
{
l9_315=fract(l9_315);
}
else
{
if (l9_316==2)
{
float l9_317=fract(l9_315);
float l9_318=l9_315-l9_317;
float l9_319=step(0.25,fract(l9_318*0.5));
l9_315=mix(l9_317,1.0-l9_317,fast::clamp(l9_319,0.0,1.0));
}
}
param_68.x=l9_315;
float l9_320=param_68.y;
int l9_321=param_71.y;
if (l9_321==1)
{
l9_320=fract(l9_320);
}
else
{
if (l9_321==2)
{
float l9_322=fract(l9_320);
float l9_323=l9_320-l9_322;
float l9_324=step(0.25,fract(l9_323*0.5));
l9_320=mix(l9_322,1.0-l9_322,fast::clamp(l9_324,0.0,1.0));
}
}
param_68.y=l9_320;
if (param_72)
{
bool l9_325=param_74;
bool l9_326;
if (l9_325)
{
l9_326=param_71.x==3;
}
else
{
l9_326=l9_325;
}
float l9_327=param_68.x;
float l9_328=param_73.x;
float l9_329=param_73.z;
bool l9_330=l9_326;
float l9_331=l9_314;
float l9_332=fast::clamp(l9_327,l9_328,l9_329);
float l9_333=step(abs(l9_327-l9_332),9.9999997e-06);
l9_331*=(l9_333+((1.0-float(l9_330))*(1.0-l9_333)));
l9_327=l9_332;
param_68.x=l9_327;
l9_314=l9_331;
bool l9_334=param_74;
bool l9_335;
if (l9_334)
{
l9_335=param_71.y==3;
}
else
{
l9_335=l9_334;
}
float l9_336=param_68.y;
float l9_337=param_73.y;
float l9_338=param_73.w;
bool l9_339=l9_335;
float l9_340=l9_314;
float l9_341=fast::clamp(l9_336,l9_337,l9_338);
float l9_342=step(abs(l9_336-l9_341),9.9999997e-06);
l9_340*=(l9_342+((1.0-float(l9_339))*(1.0-l9_342)));
l9_336=l9_341;
param_68.y=l9_336;
l9_314=l9_340;
}
float2 l9_343=param_68;
bool l9_344=param_69;
float3x3 l9_345=param_70;
if (l9_344)
{
l9_343=float2((l9_345*float3(l9_343,1.0)).xy);
}
float2 l9_346=l9_343;
param_68=l9_346;
float l9_347=param_68.x;
int l9_348=param_71.x;
bool l9_349=l9_313;
float l9_350=l9_314;
if ((l9_348==0)||(l9_348==3))
{
float l9_351=l9_347;
float l9_352=0.0;
float l9_353=1.0;
bool l9_354=l9_349;
float l9_355=l9_350;
float l9_356=fast::clamp(l9_351,l9_352,l9_353);
float l9_357=step(abs(l9_351-l9_356),9.9999997e-06);
l9_355*=(l9_357+((1.0-float(l9_354))*(1.0-l9_357)));
l9_351=l9_356;
l9_347=l9_351;
l9_350=l9_355;
}
param_68.x=l9_347;
l9_314=l9_350;
float l9_358=param_68.y;
int l9_359=param_71.y;
bool l9_360=l9_313;
float l9_361=l9_314;
if ((l9_359==0)||(l9_359==3))
{
float l9_362=l9_358;
float l9_363=0.0;
float l9_364=1.0;
bool l9_365=l9_360;
float l9_366=l9_361;
float l9_367=fast::clamp(l9_362,l9_363,l9_364);
float l9_368=step(abs(l9_362-l9_367),9.9999997e-06);
l9_366*=(l9_368+((1.0-float(l9_365))*(1.0-l9_368)));
l9_362=l9_367;
l9_358=l9_362;
l9_361=l9_366;
}
param_68.y=l9_358;
l9_314=l9_361;
float2 l9_369=param_68;
int l9_370=param_66;
int l9_371=param_67;
float l9_372=param_76;
float2 l9_373=l9_369;
int l9_374=l9_370;
int l9_375=l9_371;
float3 l9_376=float3(0.0);
if (l9_374==0)
{
l9_376=float3(l9_373,0.0);
}
else
{
if (l9_374==1)
{
l9_376=float3(l9_373.x,(l9_373.y*0.5)+(0.5-(float(l9_375)*0.5)),0.0);
}
else
{
l9_376=float3(l9_373,float(l9_375));
}
}
float3 l9_377=l9_376;
float3 l9_378=l9_377;
float4 l9_379=sc_set0.colorRamp.sample(sc_set0.colorRampSmpSC,l9_378.xy,bias(l9_372));
float4 l9_380=l9_379;
if (param_74)
{
l9_380=mix(param_75,l9_380,float4(l9_314));
}
float4 l9_381=l9_380;
Color_N125=l9_381;
float4 Value_N115=float4(0.0);
Value_N115=Color_N125;
float Value_N116=0.0;
Value_N116=fast::clamp((*sc_set0.UserUniforms).Port_Import_N116,0.0,5.0);
float4 Output_N117=float4(0.0);
Output_N117=Value_N115*float4(Value_N116);
float Output_N118=0.0;
Output_N118=dot(Output_N117,(*sc_set0.UserUniforms).Port_Input1_N118);
float Value_N119=0.0;
Value_N119=fast::clamp((*sc_set0.UserUniforms).Port_Import_N119,0.0,2.0);
float4 Output_N120=float4(0.0);
Output_N120=mix(float4(Output_N118),Output_N117,float4(Value_N119));
float Value_N121=0.0;
Value_N121=fast::clamp((*sc_set0.UserUniforms).Port_Import_N121,0.0,2.0);
float4 Output_N126=float4(0.0);
Output_N126=mix((*sc_set0.UserUniforms).Port_Input0_N126,Output_N120,float4(Value_N121));
float4 Export_N127=float4(0.0);
Export_N127=Output_N126;
float4 Export_N10=float4(0.0);
Export_N10=Export_N127;
float Output_N24=0.0;
float param_77=(*sc_set0.UserUniforms).metallic;
Output_N24=param_77;
float Value_N27=0.0;
Value_N27=Output_N24;
float Export_N57=0.0;
Export_N57=Value_N27;
float Output_N25=0.0;
float param_78=(*sc_set0.UserUniforms).roughness;
Output_N25=param_78;
float Value_N13=0.0;
Value_N13=Output_N25;
float Output_N35=0.0;
Output_N35=Value_N13+(*sc_set0.UserUniforms).Port_Input1_N035;
float Output_N36=0.0;
Output_N36=fast::min(Output_N35,(*sc_set0.UserUniforms).Port_Input1_N036);
float Value_N23=0.0;
Value_N23=Value2_N0;
float ValueOut_N37=0.0;
float param_79=Value_N23;
float param_81=(*sc_set0.UserUniforms).Port_RangeMinA_N037;
float param_82=(*sc_set0.UserUniforms).Port_RangeMaxA_N037;
float param_83=(*sc_set0.UserUniforms).Port_RangeMinB_N037;
float param_84=(*sc_set0.UserUniforms).Port_RangeMaxB_N037;
float param_80=(((param_79-param_81)/((param_82-param_81)+1e-06))*(param_84-param_83))+param_83;
float l9_382;
if (param_84>param_83)
{
l9_382=fast::clamp(param_80,param_83,param_84);
}
else
{
l9_382=fast::clamp(param_80,param_84,param_83);
}
param_80=l9_382;
ValueOut_N37=param_80;
float Output_N39=0.0;
Output_N39=mix(Value_N13,Output_N36,ValueOut_N37);
float Export_N59=0.0;
Export_N59=Output_N39;
float Output_N40=0.0;
Output_N40=1.0-Value_N23;
float Output_N49=0.0;
Output_N49=Output_N40*Output_N40;
float Export_N107=0.0;
Export_N107=Output_N49;
float4 Output_N26=float4(0.0);
float3 param_85=Export_N9.xyz;
float param_86=(*sc_set0.UserUniforms).Port_Opacity_N026;
float3 param_87=Value1_N0;
float3 param_88=Export_N10.xyz;
float param_89=Export_N57;
float param_90=Export_N59;
float3 param_91=(*sc_set0.UserUniforms).Port_AO_N026;
float3 param_92=float3(Export_N107);
ssGlobals param_94=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_94.BumpedNormal=param_87;
}
float l9_383=param_86;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_383<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_384=gl_FragCoord;
float2 l9_385=floor(mod(l9_384.xy,float2(4.0)));
float l9_386=(mod(dot(l9_385,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_383<l9_386)
{
discard_fragment();
}
}
param_85=fast::max(param_85,float3(0.0));
float4 param_93;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_93=float4(param_85,param_86);
}
else
{
param_88=fast::max(param_88,float3(0.0));
param_89=fast::clamp(param_89,0.0,1.0);
param_90=fast::clamp(param_90,0.0,1.0);
param_92=fast::clamp(param_92,float3(0.0),float3(1.0));
float3 l9_387=param_85;
float l9_388=param_86;
float3 l9_389=param_94.BumpedNormal;
float3 l9_390=param_94.PositionWS;
float3 l9_391=param_94.ViewDirWS;
float3 l9_392=param_88;
float l9_393=param_89;
float l9_394=param_90;
float3 l9_395=param_91;
float3 l9_396=param_92;
SurfaceProperties l9_397;
l9_397.albedo=float3(0.0);
l9_397.opacity=1.0;
l9_397.normal=float3(0.0);
l9_397.positionWS=float3(0.0);
l9_397.viewDirWS=float3(0.0);
l9_397.metallic=0.0;
l9_397.roughness=0.0;
l9_397.emissive=float3(0.0);
l9_397.ao=float3(1.0);
l9_397.specularAo=float3(1.0);
l9_397.bakedShadows=float3(1.0);
SurfaceProperties l9_398=l9_397;
SurfaceProperties l9_399=l9_398;
l9_399.opacity=l9_388;
float3 l9_400=l9_387;
float3 l9_401;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_401=float3(pow(l9_400.x,2.2),pow(l9_400.y,2.2),pow(l9_400.z,2.2));
}
else
{
l9_401=l9_400*l9_400;
}
float3 l9_402=l9_401;
l9_399.albedo=l9_402;
l9_399.normal=normalize(l9_389);
l9_399.positionWS=l9_390;
l9_399.viewDirWS=l9_391;
float3 l9_403=l9_392;
float3 l9_404;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_404=float3(pow(l9_403.x,2.2),pow(l9_403.y,2.2),pow(l9_403.z,2.2));
}
else
{
l9_404=l9_403*l9_403;
}
float3 l9_405=l9_404;
l9_399.emissive=l9_405;
l9_399.metallic=l9_393;
l9_399.roughness=l9_394;
l9_399.ao=l9_395;
l9_399.specularAo=l9_396;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 l9_406=l9_399.positionWS;
l9_399.ao=evaluateSSAO(l9_406,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC);
}
SurfaceProperties l9_407=l9_399;
SurfaceProperties l9_408=l9_407;
float3 l9_409=mix(float3(0.039999999),l9_408.albedo*l9_408.metallic,float3(l9_408.metallic));
float3 l9_410=mix(l9_408.albedo*(1.0-l9_408.metallic),float3(0.0),float3(l9_408.metallic));
l9_407.albedo=l9_410;
l9_407.specColor=l9_409;
SurfaceProperties l9_411=l9_407;
l9_399=l9_411;
SurfaceProperties l9_412=l9_399;
LightingComponents l9_413;
l9_413.directDiffuse=float3(0.0);
l9_413.directSpecular=float3(0.0);
l9_413.indirectDiffuse=float3(1.0);
l9_413.indirectSpecular=float3(0.0);
l9_413.emitted=float3(0.0);
l9_413.transmitted=float3(0.0);
LightingComponents l9_414=l9_413;
LightingComponents l9_415=l9_414;
float3 l9_416=l9_412.viewDirWS;
int l9_417=0;
float4 l9_418=float4(l9_412.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_419;
LightProperties l9_420;
int l9_421=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_421<sc_DirectionalLightsCount_tmp)
{
l9_419.direction=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_421].direction;
l9_419.color=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_421].color;
l9_420.direction=l9_419.direction;
l9_420.color=l9_419.color.xyz;
l9_420.attenuation=l9_419.color.w;
l9_420.attenuation*=l9_418[(l9_417<3) ? l9_417 : 3];
l9_417++;
LightingComponents l9_422=l9_415;
LightProperties l9_423=l9_420;
SurfaceProperties l9_424=l9_412;
float3 l9_425=l9_416;
SurfaceProperties l9_426=l9_424;
float3 l9_427=l9_423.direction;
float l9_428=dot(l9_426.normal,l9_427);
float l9_429=fast::clamp(l9_428,0.0,1.0);
float3 l9_430=float3(l9_429);
l9_422.directDiffuse+=((l9_430*l9_423.color)*l9_423.attenuation);
SurfaceProperties l9_431=l9_424;
float3 l9_432=l9_423.direction;
float3 l9_433=l9_425;
l9_422.directSpecular+=((calculateDirectSpecular(l9_431,l9_432,l9_433)*l9_423.color)*l9_423.attenuation);
LightingComponents l9_434=l9_422;
l9_415=l9_434;
l9_421++;
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
sc_PointLight_t_1 l9_435;
LightProperties l9_436;
int l9_437=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_437<sc_PointLightsCount_tmp)
{
l9_435.falloffEnabled=(*sc_set0.UserUniforms).sc_PointLights[l9_437].falloffEnabled!=0;
l9_435.falloffEndDistance=(*sc_set0.UserUniforms).sc_PointLights[l9_437].falloffEndDistance;
l9_435.negRcpFalloffEndDistance4=(*sc_set0.UserUniforms).sc_PointLights[l9_437].negRcpFalloffEndDistance4;
l9_435.angleScale=(*sc_set0.UserUniforms).sc_PointLights[l9_437].angleScale;
l9_435.angleOffset=(*sc_set0.UserUniforms).sc_PointLights[l9_437].angleOffset;
l9_435.direction=(*sc_set0.UserUniforms).sc_PointLights[l9_437].direction;
l9_435.position=(*sc_set0.UserUniforms).sc_PointLights[l9_437].position;
l9_435.color=(*sc_set0.UserUniforms).sc_PointLights[l9_437].color;
float3 l9_438=l9_435.position-l9_412.positionWS;
l9_436.direction=normalize(l9_438);
l9_436.color=l9_435.color.xyz;
l9_436.attenuation=l9_435.color.w;
l9_436.attenuation*=l9_418[(l9_417<3) ? l9_417 : 3];
float3 l9_439=l9_436.direction;
float3 l9_440=l9_435.direction;
float l9_441=l9_435.angleScale;
float l9_442=l9_435.angleOffset;
float l9_443=dot(l9_439,l9_440);
float l9_444=fast::clamp((l9_443*l9_441)+l9_442,0.0,1.0);
float l9_445=l9_444*l9_444;
l9_436.attenuation*=l9_445;
if (l9_435.falloffEnabled)
{
float l9_446=length(l9_438);
float l9_447=l9_435.falloffEndDistance;
l9_436.attenuation*=computeDistanceAttenuation(l9_446,l9_447);
}
l9_417++;
LightingComponents l9_448=l9_415;
LightProperties l9_449=l9_436;
SurfaceProperties l9_450=l9_412;
float3 l9_451=l9_416;
SurfaceProperties l9_452=l9_450;
float3 l9_453=l9_449.direction;
float l9_454=dot(l9_452.normal,l9_453);
float l9_455=fast::clamp(l9_454,0.0,1.0);
float3 l9_456=float3(l9_455);
l9_448.directDiffuse+=((l9_456*l9_449.color)*l9_449.attenuation);
SurfaceProperties l9_457=l9_450;
float3 l9_458=l9_449.direction;
float3 l9_459=l9_451;
l9_448.directSpecular+=((calculateDirectSpecular(l9_457,l9_458,l9_459)*l9_449.color)*l9_449.attenuation);
LightingComponents l9_460=l9_448;
l9_415=l9_460;
l9_437++;
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
float3 l9_461=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_462=abs(in.varShadowTex-float2(0.5));
float l9_463=fast::max(l9_462.x,l9_462.y);
float l9_464=step(l9_463,0.5);
float4 l9_465=sc_set0.sc_ShadowTexture.sample(sc_set0.sc_ShadowTextureSmpSC,in.varShadowTex)*l9_464;
float3 l9_466=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_465.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float l9_467=l9_465.w*(*sc_set0.UserUniforms).sc_ShadowDensity;
l9_461=mix(float3(1.0),l9_466,float3(l9_467));
}
else
{
l9_461=float3(1.0);
}
float3 l9_468=l9_461;
float3 l9_469=l9_468;
l9_415.directDiffuse*=l9_469;
l9_415.directSpecular*=l9_469;
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_470=gl_FragCoord;
float2 l9_471=l9_470.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_472=l9_471;
float2 l9_473=l9_472;
float l9_474=0.0;
int l9_475;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_476=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_476=0;
}
else
{
l9_476=in.varStereoViewID;
}
int l9_477=l9_476;
l9_475=1-l9_477;
}
else
{
int l9_478=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_478=0;
}
else
{
l9_478=in.varStereoViewID;
}
int l9_479=l9_478;
l9_475=l9_479;
}
int l9_480=l9_475;
float2 l9_481=l9_473;
int l9_482=sc_RayTracingShadowsLayout_tmp;
int l9_483=l9_480;
float l9_484=l9_474;
float2 l9_485=l9_481;
int l9_486=l9_482;
int l9_487=l9_483;
float3 l9_488=float3(0.0);
if (l9_486==0)
{
l9_488=float3(l9_485,0.0);
}
else
{
if (l9_486==1)
{
l9_488=float3(l9_485.x,(l9_485.y*0.5)+(0.5-(float(l9_487)*0.5)),0.0);
}
else
{
l9_488=float3(l9_485,float(l9_487));
}
}
float3 l9_489=l9_488;
float3 l9_490=l9_489;
float4 l9_491=sc_set0.sc_RayTracingShadows.sample(sc_set0.sc_RayTracingShadowsSmpSC,l9_490.xy,bias(l9_484));
float4 l9_492=l9_491;
float4 l9_493=l9_492;
float l9_494=l9_493.x;
float l9_495=1.0-l9_494;
l9_415.directDiffuse*=l9_495;
l9_415.directSpecular*=l9_495;
}
SurfaceProperties l9_496=l9_412;
float3 l9_497=l9_496.normal;
float3 l9_498=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_499=l9_497;
float3 l9_500=l9_499;
float l9_501=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_502=float2(0.0);
float l9_503=l9_500.x;
float l9_504=-l9_500.z;
float l9_505=(l9_503<0.0) ? (-1.0) : 1.0;
float l9_506=l9_505*acos(fast::clamp(l9_504/length(float2(l9_503,l9_504)),-1.0,1.0));
l9_502.x=l9_506-1.5707964;
l9_502.y=acos(l9_500.y);
l9_502/=float2(6.2831855,3.1415927);
l9_502.y=1.0-l9_502.y;
l9_502.x+=(l9_501/360.0);
l9_502.x=fract((l9_502.x+floor(l9_502.x))+1.0);
float2 l9_507=l9_502;
float2 l9_508=l9_507;
float4 l9_509=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_510=l9_508;
float2 l9_511=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_512=5.0;
l9_508=calcSeamlessPanoramicUvsForSampling(l9_510,l9_511,l9_512);
}
float2 l9_513=l9_508;
float l9_514=13.0;
int l9_515;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_516=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_516=0;
}
else
{
l9_516=in.varStereoViewID;
}
int l9_517=l9_516;
l9_515=1-l9_517;
}
else
{
int l9_518=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_518=0;
}
else
{
l9_518=in.varStereoViewID;
}
int l9_519=l9_518;
l9_515=l9_519;
}
int l9_520=l9_515;
float2 l9_521=l9_513;
int l9_522=sc_EnvmapSpecularLayout_tmp;
int l9_523=l9_520;
float l9_524=l9_514;
float2 l9_525=l9_521;
int l9_526=l9_522;
int l9_527=l9_523;
float3 l9_528=float3(0.0);
if (l9_526==0)
{
l9_528=float3(l9_525,0.0);
}
else
{
if (l9_526==1)
{
l9_528=float3(l9_525.x,(l9_525.y*0.5)+(0.5-(float(l9_527)*0.5)),0.0);
}
else
{
l9_528=float3(l9_525,float(l9_527));
}
}
float3 l9_529=l9_528;
float3 l9_530=l9_529;
float4 l9_531=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_530.xy,bias(l9_524));
float4 l9_532=l9_531;
l9_509=l9_532;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_533=l9_508;
float2 l9_534=(*sc_set0.UserUniforms).sc_EnvmapDiffuseSize.xy;
float l9_535=0.0;
l9_508=calcSeamlessPanoramicUvsForSampling(l9_533,l9_534,l9_535);
float2 l9_536=l9_508;
float l9_537=-13.0;
int l9_538;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_539=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_539=0;
}
else
{
l9_539=in.varStereoViewID;
}
int l9_540=l9_539;
l9_538=1-l9_540;
}
else
{
int l9_541=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_541=0;
}
else
{
l9_541=in.varStereoViewID;
}
int l9_542=l9_541;
l9_538=l9_542;
}
int l9_543=l9_538;
float2 l9_544=l9_536;
int l9_545=sc_EnvmapDiffuseLayout_tmp;
int l9_546=l9_543;
float l9_547=l9_537;
float2 l9_548=l9_544;
int l9_549=l9_545;
int l9_550=l9_546;
float3 l9_551=float3(0.0);
if (l9_549==0)
{
l9_551=float3(l9_548,0.0);
}
else
{
if (l9_549==1)
{
l9_551=float3(l9_548.x,(l9_548.y*0.5)+(0.5-(float(l9_550)*0.5)),0.0);
}
else
{
l9_551=float3(l9_548,float(l9_550));
}
}
float3 l9_552=l9_551;
float3 l9_553=l9_552;
float4 l9_554=sc_set0.sc_EnvmapDiffuse.sample(sc_set0.sc_EnvmapDiffuseSmpSC,l9_553.xy,bias(l9_547));
float4 l9_555=l9_554;
l9_509=l9_555;
}
else
{
float2 l9_556=l9_508;
float l9_557=13.0;
int l9_558;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_559=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_559=0;
}
else
{
l9_559=in.varStereoViewID;
}
int l9_560=l9_559;
l9_558=1-l9_560;
}
else
{
int l9_561=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_561=0;
}
else
{
l9_561=in.varStereoViewID;
}
int l9_562=l9_561;
l9_558=l9_562;
}
int l9_563=l9_558;
float2 l9_564=l9_556;
int l9_565=sc_EnvmapSpecularLayout_tmp;
int l9_566=l9_563;
float l9_567=l9_557;
float2 l9_568=l9_564;
int l9_569=l9_565;
int l9_570=l9_566;
float3 l9_571=float3(0.0);
if (l9_569==0)
{
l9_571=float3(l9_568,0.0);
}
else
{
if (l9_569==1)
{
l9_571=float3(l9_568.x,(l9_568.y*0.5)+(0.5-(float(l9_570)*0.5)),0.0);
}
else
{
l9_571=float3(l9_568,float(l9_570));
}
}
float3 l9_572=l9_571;
float3 l9_573=l9_572;
float4 l9_574=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_573.xy,bias(l9_567));
float4 l9_575=l9_574;
l9_509=l9_575;
}
}
float4 l9_576=l9_509;
float3 l9_577=l9_576.xyz*(1.0/l9_576.w);
float3 l9_578=l9_577*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_498=l9_578;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_579=(*sc_set0.UserUniforms).sc_Sh[0];
float3 l9_580=(*sc_set0.UserUniforms).sc_Sh[1];
float3 l9_581=(*sc_set0.UserUniforms).sc_Sh[2];
float3 l9_582=(*sc_set0.UserUniforms).sc_Sh[3];
float3 l9_583=(*sc_set0.UserUniforms).sc_Sh[4];
float3 l9_584=(*sc_set0.UserUniforms).sc_Sh[5];
float3 l9_585=(*sc_set0.UserUniforms).sc_Sh[6];
float3 l9_586=(*sc_set0.UserUniforms).sc_Sh[7];
float3 l9_587=(*sc_set0.UserUniforms).sc_Sh[8];
float3 l9_588=-l9_497;
float l9_589=0.0;
l9_589=l9_588.x;
float l9_590=l9_588.y;
float l9_591=l9_588.z;
float l9_592=l9_589*l9_589;
float l9_593=l9_590*l9_590;
float l9_594=l9_591*l9_591;
float l9_595=l9_589*l9_590;
float l9_596=l9_590*l9_591;
float l9_597=l9_589*l9_591;
float3 l9_598=((((((l9_587*0.42904299)*(l9_592-l9_593))+((l9_585*0.74312502)*l9_594))+(l9_579*0.88622701))-(l9_585*0.24770799))+((((l9_583*l9_595)+(l9_586*l9_597))+(l9_584*l9_596))*0.85808599))+((((l9_582*l9_589)+(l9_580*l9_590))+(l9_581*l9_591))*1.0233279);
l9_498=l9_598*(*sc_set0.UserUniforms).sc_ShIntensity;
}
}
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_599=gl_FragCoord;
float2 l9_600=l9_599.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_601=l9_600;
float2 l9_602=l9_601;
float l9_603=0.0;
int l9_604;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_605=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_605=0;
}
else
{
l9_605=in.varStereoViewID;
}
int l9_606=l9_605;
l9_604=1-l9_606;
}
else
{
int l9_607=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_607=0;
}
else
{
l9_607=in.varStereoViewID;
}
int l9_608=l9_607;
l9_604=l9_608;
}
int l9_609=l9_604;
float2 l9_610=l9_602;
int l9_611=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_612=l9_609;
float l9_613=l9_603;
float2 l9_614=l9_610;
int l9_615=l9_611;
int l9_616=l9_612;
float3 l9_617=float3(0.0);
if (l9_615==0)
{
l9_617=float3(l9_614,0.0);
}
else
{
if (l9_615==1)
{
l9_617=float3(l9_614.x,(l9_614.y*0.5)+(0.5-(float(l9_616)*0.5)),0.0);
}
else
{
l9_617=float3(l9_614,float(l9_616));
}
}
float3 l9_618=l9_617;
float3 l9_619=l9_618;
float4 l9_620=sc_set0.sc_RayTracingGlobalIllumination.sample(sc_set0.sc_RayTracingGlobalIlluminationSmpSC,l9_619.xy,bias(l9_613));
float4 l9_621=l9_620;
float4 l9_622=l9_621;
float4 l9_623=l9_622;
l9_498=mix(l9_498,l9_623.xyz,float3(l9_623.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_498+=((*sc_set0.UserUniforms).sc_AmbientLights[0].color*(*sc_set0.UserUniforms).sc_AmbientLights[0].intensity);
}
else
{
l9_498.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_498+=((*sc_set0.UserUniforms).sc_AmbientLights[1].color*(*sc_set0.UserUniforms).sc_AmbientLights[1].intensity);
}
else
{
l9_498.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_498+=((*sc_set0.UserUniforms).sc_AmbientLights[2].color*(*sc_set0.UserUniforms).sc_AmbientLights[2].intensity);
}
else
{
l9_498.x+=(1e-06*(*sc_set0.UserUniforms).sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_624=l9_497;
float3 l9_625=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_626;
float l9_627;
int l9_628=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_628<sc_LightEstimationSGCount_tmp)
{
l9_626.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_628].color;
l9_626.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_628].sharpness;
l9_626.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_628].axis;
float3 l9_629=l9_624;
float l9_630=dot(l9_626.axis,l9_629);
float l9_631=l9_626.sharpness;
float l9_632=0.36000001;
float l9_633=1.0/(4.0*l9_632);
float l9_634=exp(-l9_631);
float l9_635=l9_634*l9_634;
float l9_636=1.0/l9_631;
float l9_637=(1.0+(2.0*l9_635))-l9_636;
float l9_638=((l9_634-l9_635)*l9_636)-l9_635;
float l9_639=sqrt(1.0-l9_637);
float l9_640=l9_632*l9_630;
float l9_641=l9_633*l9_639;
float l9_642=l9_640+l9_641;
float l9_643=l9_630;
float l9_644=fast::clamp(l9_643,0.0,1.0);
float l9_645=l9_644;
if (step(abs(l9_640),l9_641)>0.5)
{
l9_627=(l9_642*l9_642)/l9_639;
}
else
{
l9_627=l9_645;
}
l9_645=l9_627;
float l9_646=(l9_637*l9_645)+l9_638;
sc_SphericalGaussianLight_t l9_647=l9_626;
float3 l9_648=(l9_647.color/float3(l9_647.sharpness))*6.2831855;
float3 l9_649=(l9_648*l9_646)/float3(3.1415927);
l9_625+=l9_649;
l9_628++;
continue;
}
else
{
break;
}
}
float3 l9_650=l9_625;
l9_498+=l9_650;
}
float3 l9_651=l9_498;
float3 l9_652=l9_651;
l9_415.indirectDiffuse=l9_652;
SurfaceProperties l9_653=l9_412;
float3 l9_654=l9_416;
float3 l9_655=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_656=l9_653;
float3 l9_657=l9_654;
float3 l9_658=l9_656.normal;
float3 l9_659=reflect(-l9_657,l9_658);
float3 l9_660=l9_658;
float3 l9_661=l9_659;
float l9_662=l9_656.roughness;
l9_659=getSpecularDominantDir(l9_660,l9_661,l9_662);
float l9_663=l9_656.roughness;
float l9_664=pow(l9_663,0.66666669);
float l9_665=fast::clamp(l9_664,0.0,1.0);
float l9_666=l9_665*5.0;
float l9_667=l9_666;
float l9_668=l9_667;
float3 l9_669=l9_659;
float l9_670=l9_668;
float3 l9_671=l9_669;
float l9_672=l9_670;
float4 l9_673=float4(0.0);
float3 l9_674=l9_671;
float l9_675=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_676=float2(0.0);
float l9_677=l9_674.x;
float l9_678=-l9_674.z;
float l9_679=(l9_677<0.0) ? (-1.0) : 1.0;
float l9_680=l9_679*acos(fast::clamp(l9_678/length(float2(l9_677,l9_678)),-1.0,1.0));
l9_676.x=l9_680-1.5707964;
l9_676.y=acos(l9_674.y);
l9_676/=float2(6.2831855,3.1415927);
l9_676.y=1.0-l9_676.y;
l9_676.x+=(l9_675/360.0);
l9_676.x=fract((l9_676.x+floor(l9_676.x))+1.0);
float2 l9_681=l9_676;
float2 l9_682=l9_681;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_683=floor(l9_672);
float l9_684=ceil(l9_672);
float l9_685=l9_672-l9_683;
float2 l9_686=l9_682;
float2 l9_687=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_688=l9_683;
float2 l9_689=calcSeamlessPanoramicUvsForSampling(l9_686,l9_687,l9_688);
float2 l9_690=l9_689;
float l9_691=l9_683;
float2 l9_692=l9_690;
float l9_693=l9_691;
int l9_694;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_695=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_695=0;
}
else
{
l9_695=in.varStereoViewID;
}
int l9_696=l9_695;
l9_694=1-l9_696;
}
else
{
int l9_697=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_697=0;
}
else
{
l9_697=in.varStereoViewID;
}
int l9_698=l9_697;
l9_694=l9_698;
}
int l9_699=l9_694;
float2 l9_700=l9_692;
int l9_701=sc_EnvmapSpecularLayout_tmp;
int l9_702=l9_699;
float l9_703=l9_693;
float2 l9_704=l9_700;
int l9_705=l9_701;
int l9_706=l9_702;
float3 l9_707=float3(0.0);
if (l9_705==0)
{
l9_707=float3(l9_704,0.0);
}
else
{
if (l9_705==1)
{
l9_707=float3(l9_704.x,(l9_704.y*0.5)+(0.5-(float(l9_706)*0.5)),0.0);
}
else
{
l9_707=float3(l9_704,float(l9_706));
}
}
float3 l9_708=l9_707;
float3 l9_709=l9_708;
float4 l9_710=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_709.xy,level(l9_703));
float4 l9_711=l9_710;
float4 l9_712=l9_711;
float4 l9_713=l9_712;
float2 l9_714=l9_682;
float2 l9_715=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_716=l9_684;
float2 l9_717=calcSeamlessPanoramicUvsForSampling(l9_714,l9_715,l9_716);
float2 l9_718=l9_717;
float l9_719=l9_684;
float2 l9_720=l9_718;
float l9_721=l9_719;
int l9_722;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_723=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_723=0;
}
else
{
l9_723=in.varStereoViewID;
}
int l9_724=l9_723;
l9_722=1-l9_724;
}
else
{
int l9_725=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_725=0;
}
else
{
l9_725=in.varStereoViewID;
}
int l9_726=l9_725;
l9_722=l9_726;
}
int l9_727=l9_722;
float2 l9_728=l9_720;
int l9_729=sc_EnvmapSpecularLayout_tmp;
int l9_730=l9_727;
float l9_731=l9_721;
float2 l9_732=l9_728;
int l9_733=l9_729;
int l9_734=l9_730;
float3 l9_735=float3(0.0);
if (l9_733==0)
{
l9_735=float3(l9_732,0.0);
}
else
{
if (l9_733==1)
{
l9_735=float3(l9_732.x,(l9_732.y*0.5)+(0.5-(float(l9_734)*0.5)),0.0);
}
else
{
l9_735=float3(l9_732,float(l9_734));
}
}
float3 l9_736=l9_735;
float3 l9_737=l9_736;
float4 l9_738=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_737.xy,level(l9_731));
float4 l9_739=l9_738;
float4 l9_740=l9_739;
float4 l9_741=l9_740;
l9_673=mix(l9_713,l9_741,float4(l9_685));
}
else
{
float2 l9_742=l9_682;
float l9_743=l9_672;
float2 l9_744=l9_742;
float l9_745=l9_743;
int l9_746;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_747=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_747=0;
}
else
{
l9_747=in.varStereoViewID;
}
int l9_748=l9_747;
l9_746=1-l9_748;
}
else
{
int l9_749=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_749=0;
}
else
{
l9_749=in.varStereoViewID;
}
int l9_750=l9_749;
l9_746=l9_750;
}
int l9_751=l9_746;
float2 l9_752=l9_744;
int l9_753=sc_EnvmapSpecularLayout_tmp;
int l9_754=l9_751;
float l9_755=l9_745;
float2 l9_756=l9_752;
int l9_757=l9_753;
int l9_758=l9_754;
float3 l9_759=float3(0.0);
if (l9_757==0)
{
l9_759=float3(l9_756,0.0);
}
else
{
if (l9_757==1)
{
l9_759=float3(l9_756.x,(l9_756.y*0.5)+(0.5-(float(l9_758)*0.5)),0.0);
}
else
{
l9_759=float3(l9_756,float(l9_758));
}
}
float3 l9_760=l9_759;
float3 l9_761=l9_760;
float4 l9_762=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_761.xy,level(l9_755));
float4 l9_763=l9_762;
float4 l9_764=l9_763;
l9_673=l9_764;
}
float4 l9_765=l9_673;
float3 l9_766=l9_765.xyz*(1.0/l9_765.w);
float3 l9_767=l9_766;
float3 l9_768=l9_767*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_768+=float3(1e-06);
float3 l9_769=l9_768;
float3 l9_770=l9_769;
if (((*sc_set0.UserUniforms).sc_RayTracingReceiverEffectsMask&1)!=0)
{
float4 l9_771=gl_FragCoord;
float2 l9_772=l9_771.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_773=l9_772;
float2 l9_774=l9_773;
float l9_775=0.0;
int l9_776;
if ((int(sc_RayTracingReflectionsHasSwappedViews_tmp)!=0))
{
int l9_777=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_777=0;
}
else
{
l9_777=in.varStereoViewID;
}
int l9_778=l9_777;
l9_776=1-l9_778;
}
else
{
int l9_779=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_779=0;
}
else
{
l9_779=in.varStereoViewID;
}
int l9_780=l9_779;
l9_776=l9_780;
}
int l9_781=l9_776;
float2 l9_782=l9_774;
int l9_783=sc_RayTracingReflectionsLayout_tmp;
int l9_784=l9_781;
float l9_785=l9_775;
float2 l9_786=l9_782;
int l9_787=l9_783;
int l9_788=l9_784;
float3 l9_789=float3(0.0);
if (l9_787==0)
{
l9_789=float3(l9_786,0.0);
}
else
{
if (l9_787==1)
{
l9_789=float3(l9_786.x,(l9_786.y*0.5)+(0.5-(float(l9_788)*0.5)),0.0);
}
else
{
l9_789=float3(l9_786,float(l9_788));
}
}
float3 l9_790=l9_789;
float3 l9_791=l9_790;
float4 l9_792=sc_set0.sc_RayTracingReflections.sample(sc_set0.sc_RayTracingReflectionsSmpSC,l9_791.xy,bias(l9_785));
float4 l9_793=l9_792;
float4 l9_794=l9_793;
float4 l9_795=l9_794;
l9_770=mix(l9_770,l9_795.xyz,float3(l9_795.w));
}
float l9_796=abs(dot(l9_658,l9_657));
SurfaceProperties l9_797=l9_656;
float l9_798=l9_796;
float3 l9_799=l9_770*envBRDFApprox(l9_797,l9_798);
l9_655+=l9_799;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_800=l9_653;
float3 l9_801=l9_654;
float l9_802=fast::clamp(l9_800.roughness*l9_800.roughness,0.0099999998,1.0);
float3 l9_803=(*sc_set0.UserUniforms).sc_LightEstimationData.ambientLight*l9_800.specColor;
sc_SphericalGaussianLight_t l9_804;
sc_SphericalGaussianLight_t l9_805;
sc_SphericalGaussianLight_t l9_806;
int l9_807=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_807<sc_LightEstimationSGCount_tmp)
{
l9_804.color=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_807].color;
l9_804.sharpness=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_807].sharpness;
l9_804.axis=(*sc_set0.UserUniforms).sc_LightEstimationData.sg[l9_807].axis;
float3 l9_808=l9_800.normal;
float l9_809=l9_802;
float3 l9_810=l9_801;
float3 l9_811=l9_800.specColor;
float3 l9_812=l9_808;
float l9_813=l9_809;
l9_805.axis=l9_812;
float l9_814=l9_813*l9_813;
l9_805.sharpness=2.0/l9_814;
l9_805.color=float3(1.0/(3.1415927*l9_814));
sc_SphericalGaussianLight_t l9_815=l9_805;
sc_SphericalGaussianLight_t l9_816=l9_815;
sc_SphericalGaussianLight_t l9_817=l9_816;
float3 l9_818=l9_810;
l9_806.axis=reflect(-l9_818,l9_817.axis);
l9_806.color=l9_817.color;
l9_806.sharpness=l9_817.sharpness;
l9_806.sharpness/=(4.0*fast::max(dot(l9_817.axis,l9_818),9.9999997e-05));
sc_SphericalGaussianLight_t l9_819=l9_806;
sc_SphericalGaussianLight_t l9_820=l9_819;
sc_SphericalGaussianLight_t l9_821=l9_820;
sc_SphericalGaussianLight_t l9_822=l9_804;
float l9_823=length((l9_821.axis*l9_821.sharpness)+(l9_822.axis*l9_822.sharpness));
float3 l9_824=(l9_821.color*exp((l9_823-l9_821.sharpness)-l9_822.sharpness))*l9_822.color;
float l9_825=1.0-exp((-2.0)*l9_823);
float3 l9_826=((l9_824*6.2831855)*l9_825)/float3(l9_823);
float3 l9_827=l9_826;
float3 l9_828=l9_820.axis;
float l9_829=l9_809*l9_809;
float l9_830=dot(l9_808,l9_828);
float l9_831=fast::clamp(l9_830,0.0,1.0);
float l9_832=l9_831;
float l9_833=dot(l9_808,l9_810);
float l9_834=fast::clamp(l9_833,0.0,1.0);
float l9_835=l9_834;
float3 l9_836=normalize(l9_820.axis+l9_810);
float l9_837=l9_829;
float l9_838=l9_832;
float l9_839=1.0/(l9_838+sqrt(l9_837+(((1.0-l9_837)*l9_838)*l9_838)));
float l9_840=l9_829;
float l9_841=l9_835;
float l9_842=1.0/(l9_841+sqrt(l9_840+(((1.0-l9_840)*l9_841)*l9_841)));
l9_827*=(l9_839*l9_842);
float l9_843=dot(l9_828,l9_836);
float l9_844=fast::clamp(l9_843,0.0,1.0);
float l9_845=pow(1.0-l9_844,5.0);
l9_827*=(l9_811+((float3(1.0)-l9_811)*l9_845));
l9_827*=l9_832;
float3 l9_846=l9_827;
l9_803+=l9_846;
l9_807++;
continue;
}
else
{
break;
}
}
float3 l9_847=l9_803;
l9_655+=l9_847;
}
float3 l9_848=l9_655;
l9_415.indirectSpecular=l9_848;
LightingComponents l9_849=l9_415;
LightingComponents l9_850=l9_849;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_850.directDiffuse=float3(0.0);
l9_850.indirectDiffuse=float3(0.0);
float4 l9_851=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_852=out.sc_FragData0;
l9_851=l9_852;
}
else
{
float4 l9_853=gl_FragCoord;
float2 l9_854=l9_853.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_855=l9_854;
float2 l9_856=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_857=1;
int l9_858=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_858=0;
}
else
{
l9_858=in.varStereoViewID;
}
int l9_859=l9_858;
int l9_860=l9_859;
float3 l9_861=float3(l9_855,0.0);
int l9_862=l9_857;
int l9_863=l9_860;
if (l9_862==1)
{
l9_861.y=((2.0*l9_861.y)+float(l9_863))-1.0;
}
float2 l9_864=l9_861.xy;
l9_856=l9_864;
}
else
{
l9_856=l9_855;
}
float2 l9_865=l9_856;
float2 l9_866=l9_865;
float2 l9_867=l9_866;
float2 l9_868=l9_867;
float l9_869=0.0;
int l9_870;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_871=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_871=0;
}
else
{
l9_871=in.varStereoViewID;
}
int l9_872=l9_871;
l9_870=1-l9_872;
}
else
{
int l9_873=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_873=0;
}
else
{
l9_873=in.varStereoViewID;
}
int l9_874=l9_873;
l9_870=l9_874;
}
int l9_875=l9_870;
float2 l9_876=l9_868;
int l9_877=sc_ScreenTextureLayout_tmp;
int l9_878=l9_875;
float l9_879=l9_869;
float2 l9_880=l9_876;
int l9_881=l9_877;
int l9_882=l9_878;
float3 l9_883=float3(0.0);
if (l9_881==0)
{
l9_883=float3(l9_880,0.0);
}
else
{
if (l9_881==1)
{
l9_883=float3(l9_880.x,(l9_880.y*0.5)+(0.5-(float(l9_882)*0.5)),0.0);
}
else
{
l9_883=float3(l9_880,float(l9_882));
}
}
float3 l9_884=l9_883;
float3 l9_885=l9_884;
float4 l9_886=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_885.xy,bias(l9_879));
float4 l9_887=l9_886;
float4 l9_888=l9_887;
l9_851=l9_888;
}
float4 l9_889=l9_851;
float3 l9_890=l9_889.xyz;
float3 l9_891;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_891=float3(pow(l9_890.x,2.2),pow(l9_890.y,2.2),pow(l9_890.z,2.2));
}
else
{
l9_891=l9_890*l9_890;
}
float3 l9_892=l9_891;
float3 l9_893=l9_892;
l9_850.transmitted=l9_893*mix(float3(1.0),l9_399.albedo,float3(l9_399.opacity));
l9_399.opacity=1.0;
}
bool l9_894=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_894=true;
}
SurfaceProperties l9_895=l9_399;
LightingComponents l9_896=l9_850;
bool l9_897=l9_894;
float3 l9_898=l9_895.albedo*(l9_896.directDiffuse+(l9_896.indirectDiffuse*l9_895.ao));
float3 l9_899=l9_896.directSpecular+(l9_896.indirectSpecular*l9_895.specularAo);
float3 l9_900=l9_895.emissive;
float3 l9_901=l9_896.transmitted;
if (l9_897)
{
float l9_902=l9_895.opacity;
l9_898*=srgbToLinear(l9_902);
}
float3 l9_903=((l9_898+l9_899)+l9_900)+l9_901;
float3 l9_904=l9_903;
float4 l9_905=float4(l9_904,l9_399.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
l9_905.x+=((l9_399.ao.x*l9_399.specularAo.x)*9.9999997e-06);
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 l9_906=l9_905.xyz;
float l9_907=1.8;
float l9_908=1.4;
float l9_909=0.5;
float l9_910=1.5;
float3 l9_911=(l9_906*((l9_906*l9_907)+float3(l9_908)))/((l9_906*((l9_906*l9_907)+float3(l9_909)))+float3(l9_910));
l9_905=float4(l9_911.x,l9_911.y,l9_911.z,l9_905.w);
}
float3 l9_912=l9_905.xyz;
float l9_913=l9_912.x;
float l9_914=l9_912.y;
float l9_915=l9_912.z;
float3 l9_916=float3(linearToSrgb(l9_913),linearToSrgb(l9_914),linearToSrgb(l9_915));
l9_905=float4(l9_916.x,l9_916.y,l9_916.z,l9_905.w);
float4 l9_917=l9_905;
param_93=l9_917;
}
param_93=fast::max(param_93,float4(0.0));
Output_N26=param_93;
FinalColor=Output_N26;
float4 param_95=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_918=param_95;
float4 l9_919=l9_918;
float l9_920=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_920=l9_919.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_920=fast::clamp(l9_919.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_920=fast::clamp(dot(l9_919.xyz,float3(l9_919.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_920=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_920=(1.0-dot(l9_919.xyz,float3(0.33333001)))*l9_919.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_920=(1.0-fast::clamp(dot(l9_919.xyz,float3(1.0)),0.0,1.0))*l9_919.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_920=fast::clamp(dot(l9_919.xyz,float3(1.0)),0.0,1.0)*l9_919.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_920=fast::clamp(dot(l9_919.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_920=fast::clamp(dot(l9_919.xyz,float3(1.0)),0.0,1.0)*l9_919.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_920=dot(l9_919.xyz,float3(0.33333001))*l9_919.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_920=1.0-fast::clamp(dot(l9_919.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_920=fast::clamp(dot(l9_919.xyz,float3(1.0)),0.0,1.0);
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
float l9_921=l9_920;
float l9_922=l9_921;
float l9_923=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_922;
float3 l9_924=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_918.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_925=float4(l9_924.x,l9_924.y,l9_924.z,l9_923);
param_95=l9_925;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_95=float4(param_95.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_926=param_95;
float4 l9_927=float4(0.0);
float4 l9_928=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_929=out.sc_FragData0;
l9_928=l9_929;
}
else
{
float4 l9_930=gl_FragCoord;
float2 l9_931=l9_930.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_932=l9_931;
float2 l9_933=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_934=1;
int l9_935=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_935=0;
}
else
{
l9_935=in.varStereoViewID;
}
int l9_936=l9_935;
int l9_937=l9_936;
float3 l9_938=float3(l9_932,0.0);
int l9_939=l9_934;
int l9_940=l9_937;
if (l9_939==1)
{
l9_938.y=((2.0*l9_938.y)+float(l9_940))-1.0;
}
float2 l9_941=l9_938.xy;
l9_933=l9_941;
}
else
{
l9_933=l9_932;
}
float2 l9_942=l9_933;
float2 l9_943=l9_942;
float2 l9_944=l9_943;
float2 l9_945=l9_944;
float l9_946=0.0;
int l9_947;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_948=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_948=0;
}
else
{
l9_948=in.varStereoViewID;
}
int l9_949=l9_948;
l9_947=1-l9_949;
}
else
{
int l9_950=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_950=0;
}
else
{
l9_950=in.varStereoViewID;
}
int l9_951=l9_950;
l9_947=l9_951;
}
int l9_952=l9_947;
float2 l9_953=l9_945;
int l9_954=sc_ScreenTextureLayout_tmp;
int l9_955=l9_952;
float l9_956=l9_946;
float2 l9_957=l9_953;
int l9_958=l9_954;
int l9_959=l9_955;
float3 l9_960=float3(0.0);
if (l9_958==0)
{
l9_960=float3(l9_957,0.0);
}
else
{
if (l9_958==1)
{
l9_960=float3(l9_957.x,(l9_957.y*0.5)+(0.5-(float(l9_959)*0.5)),0.0);
}
else
{
l9_960=float3(l9_957,float(l9_959));
}
}
float3 l9_961=l9_960;
float3 l9_962=l9_961;
float4 l9_963=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_962.xy,bias(l9_956));
float4 l9_964=l9_963;
float4 l9_965=l9_964;
l9_928=l9_965;
}
float4 l9_966=l9_928;
float3 l9_967=l9_966.xyz;
float3 l9_968=l9_967;
float3 l9_969=l9_926.xyz;
float3 l9_970=definedBlend(l9_968,l9_969,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_927=float4(l9_970.x,l9_970.y,l9_970.z,l9_927.w);
float3 l9_971=mix(l9_967,l9_927.xyz,float3(l9_926.w));
l9_927=float4(l9_971.x,l9_971.y,l9_971.z,l9_927.w);
l9_927.w=1.0;
float4 l9_972=l9_927;
param_95=l9_972;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_973=float4(in.varScreenPos.xyz,1.0);
param_95=l9_973;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_974=gl_FragCoord;
float l9_975=fast::clamp(abs(l9_974.z),0.0,1.0);
float4 l9_976=float4(l9_975,1.0-l9_975,1.0,1.0);
param_95=l9_976;
}
else
{
float4 l9_977=param_95;
float4 l9_978=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_978=float4(mix(float3(1.0),l9_977.xyz,float3(l9_977.w)),l9_977.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_979=l9_977.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_979=fast::clamp(l9_979,0.0,1.0);
}
l9_978=float4(l9_977.xyz*l9_979,l9_979);
}
else
{
l9_978=l9_977;
}
}
float4 l9_980=l9_978;
param_95=l9_980;
}
}
}
}
}
float4 l9_981=param_95;
FinalColor=l9_981;
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
float4 l9_982=float4(0.0);
l9_982=float4(0.0);
float4 l9_983=l9_982;
float4 Cost=l9_983;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_96=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_96,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_97=FinalColor;
float4 l9_984=param_97;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_984.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_984;
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
float3 VertexNormal_WorldSpace;
float3 VertexNormal_ObjectSpace;
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
float Tweak_N128;
float4 noiseTexSize;
float4 noiseTexDims;
float4 noiseTexView;
float3x3 noiseTexTransform;
float4 noiseTexUvMinMax;
float4 noiseTexBorderColor;
float displace;
float4 colorRampSize;
float4 colorRampDims;
float4 colorRampView;
float3x3 colorRampTransform;
float4 colorRampUvMinMax;
float4 colorRampBorderColor;
float colorrampExponent;
float metallic;
float roughness;
float3 Port_Import_N207;
float Port_Input1_N208;
float3 Port_Import_N206;
float Port_Import_N209;
float3 Port_Position_N210;
float3 Port_Normal_N210;
float Port_Import_N080;
float Port_Import_N077;
float3 Port_Import_N082;
float3 Port_Import_N054;
float Port_Input1_N055;
float3 Port_Import_N056;
float Port_RangeMinA_N075;
float Port_RangeMaxA_N075;
float Port_RangeMinB_N075;
float Port_RangeMaxB_N075;
float Port_RangeMinA_N087;
float Port_RangeMaxA_N087;
float Port_RangeMinB_N087;
float Port_RangeMaxB_N087;
float Port_RangeMinA_N089;
float Port_RangeMaxA_N089;
float Port_RangeMinB_N089;
float Port_RangeMaxB_N089;
float Port_Import_N007;
float Port_Input1_N028;
float Port_Input2_N028;
float Port_Import_N143;
float Port_Value2_N164;
float Port_Opacity_N026;
float4 Port_Input0_N126;
float Port_Input1_N003;
float Port_Input2_N003;
float Port_Value2_N165;
float4 Port_Import_N115;
float Port_Import_N116;
float4 Port_Input1_N118;
float Port_Import_N119;
float Port_Import_N121;
float Port_Import_N027;
float Port_Import_N013;
float Port_Input1_N035;
float Port_Input1_N036;
float Port_Import_N023;
float Port_RangeMinA_N037;
float Port_RangeMaxA_N037;
float Port_RangeMinB_N037;
float Port_RangeMaxB_N037;
float3 Port_AO_N026;
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
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> colorRamp [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> noiseTex [[id(3)]];
texture2d<float> sc_EnvmapDiffuse [[id(4)]];
texture2d<float> sc_EnvmapSpecular [[id(5)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(14)]];
texture2d<float> sc_RayTracingReflections [[id(15)]];
texture2d<float> sc_RayTracingShadows [[id(16)]];
texture2d<float> sc_SSAOTexture [[id(17)]];
texture2d<float> sc_ScreenTexture [[id(18)]];
texture2d<float> sc_ShadowTexture [[id(19)]];
sampler colorRampSmpSC [[id(21)]];
sampler intensityTextureSmpSC [[id(22)]];
sampler noiseTexSmpSC [[id(23)]];
sampler sc_EnvmapDiffuseSmpSC [[id(24)]];
sampler sc_EnvmapSpecularSmpSC [[id(25)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(27)]];
sampler sc_RayTracingReflectionsSmpSC [[id(28)]];
sampler sc_RayTracingShadowsSmpSC [[id(29)]];
sampler sc_SSAOTextureSmpSC [[id(30)]];
sampler sc_ScreenTextureSmpSC [[id(31)]];
sampler sc_ShadowTextureSmpSC [[id(32)]];
constant userUniformsObj* UserUniforms [[id(34)]];
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
float4 Interpolator0 [[user(locn13)]];
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
Globals.VertexNormal_WorldSpace=normalize(in.varNormalAndMotion.xyz);
Globals.VertexNormal_ObjectSpace=normalize(((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(Globals.VertexNormal_WorldSpace,0.0)).xyz);
float3 Normal_N66=float3(0.0);
Normal_N66=Globals.VertexNormal_ObjectSpace;
float3 Output_N166=float3(0.0);
float3 param=Normal_N66;
float l9_0=dot(param,param);
float l9_1;
if (l9_0>0.0)
{
l9_1=1.0/sqrt(l9_0);
}
else
{
l9_1=0.0;
}
float l9_2=l9_1;
float3 param_1=param*l9_2;
Output_N166=param_1;
float2 Output_N86=float2(0.0);
Output_N86=float2(Output_N166.z,Output_N166.y);
float3 Output_N169=float3(0.0);
float3 param_2;
param_2.x=in.Interpolator0.x;
param_2.y=in.Interpolator0.y;
param_2.z=in.Interpolator0.z;
Output_N169=param_2;
float Output_N128=0.0;
float param_3=(*sc_set0.UserUniforms).Tweak_N128;
Output_N128=param_3;
float3 Value_N54=float3(0.0);
Value_N54=float3(Output_N128);
float3 Output_N55=float3(0.0);
Output_N55=Value_N54*float3((*sc_set0.UserUniforms).Port_Input1_N055);
float3 Output_N58=float3(0.0);
Output_N58=Output_N169*Output_N55;
float3 Value_N56=float3(0.0);
Value_N56=(*sc_set0.UserUniforms).Port_Import_N056;
float3 Output_N63=float3(0.0);
Output_N63=Output_N58+Value_N56;
float2 Output_N53=float2(0.0);
Output_N53=float2(Output_N63.z,Output_N63.y);
float4 Color_N11=float4(0.0);
int l9_3;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=in.varStereoViewID;
}
int l9_5=l9_4;
l9_3=1-l9_5;
}
else
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=in.varStereoViewID;
}
int l9_7=l9_6;
l9_3=l9_7;
}
int l9_8=l9_3;
int param_4=noiseTexLayout_tmp;
int param_5=l9_8;
float2 param_6=Output_N53;
bool param_7=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 param_8=(*sc_set0.UserUniforms).noiseTexTransform;
int2 param_9=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool param_10=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 param_11=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool param_12=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 param_13=(*sc_set0.UserUniforms).noiseTexBorderColor;
float param_14=0.0;
bool l9_9=param_12&&(!param_10);
float l9_10=1.0;
float l9_11=param_6.x;
int l9_12=param_9.x;
if (l9_12==1)
{
l9_11=fract(l9_11);
}
else
{
if (l9_12==2)
{
float l9_13=fract(l9_11);
float l9_14=l9_11-l9_13;
float l9_15=step(0.25,fract(l9_14*0.5));
l9_11=mix(l9_13,1.0-l9_13,fast::clamp(l9_15,0.0,1.0));
}
}
param_6.x=l9_11;
float l9_16=param_6.y;
int l9_17=param_9.y;
if (l9_17==1)
{
l9_16=fract(l9_16);
}
else
{
if (l9_17==2)
{
float l9_18=fract(l9_16);
float l9_19=l9_16-l9_18;
float l9_20=step(0.25,fract(l9_19*0.5));
l9_16=mix(l9_18,1.0-l9_18,fast::clamp(l9_20,0.0,1.0));
}
}
param_6.y=l9_16;
if (param_10)
{
bool l9_21=param_12;
bool l9_22;
if (l9_21)
{
l9_22=param_9.x==3;
}
else
{
l9_22=l9_21;
}
float l9_23=param_6.x;
float l9_24=param_11.x;
float l9_25=param_11.z;
bool l9_26=l9_22;
float l9_27=l9_10;
float l9_28=fast::clamp(l9_23,l9_24,l9_25);
float l9_29=step(abs(l9_23-l9_28),9.9999997e-06);
l9_27*=(l9_29+((1.0-float(l9_26))*(1.0-l9_29)));
l9_23=l9_28;
param_6.x=l9_23;
l9_10=l9_27;
bool l9_30=param_12;
bool l9_31;
if (l9_30)
{
l9_31=param_9.y==3;
}
else
{
l9_31=l9_30;
}
float l9_32=param_6.y;
float l9_33=param_11.y;
float l9_34=param_11.w;
bool l9_35=l9_31;
float l9_36=l9_10;
float l9_37=fast::clamp(l9_32,l9_33,l9_34);
float l9_38=step(abs(l9_32-l9_37),9.9999997e-06);
l9_36*=(l9_38+((1.0-float(l9_35))*(1.0-l9_38)));
l9_32=l9_37;
param_6.y=l9_32;
l9_10=l9_36;
}
float2 l9_39=param_6;
bool l9_40=param_7;
float3x3 l9_41=param_8;
if (l9_40)
{
l9_39=float2((l9_41*float3(l9_39,1.0)).xy);
}
float2 l9_42=l9_39;
param_6=l9_42;
float l9_43=param_6.x;
int l9_44=param_9.x;
bool l9_45=l9_9;
float l9_46=l9_10;
if ((l9_44==0)||(l9_44==3))
{
float l9_47=l9_43;
float l9_48=0.0;
float l9_49=1.0;
bool l9_50=l9_45;
float l9_51=l9_46;
float l9_52=fast::clamp(l9_47,l9_48,l9_49);
float l9_53=step(abs(l9_47-l9_52),9.9999997e-06);
l9_51*=(l9_53+((1.0-float(l9_50))*(1.0-l9_53)));
l9_47=l9_52;
l9_43=l9_47;
l9_46=l9_51;
}
param_6.x=l9_43;
l9_10=l9_46;
float l9_54=param_6.y;
int l9_55=param_9.y;
bool l9_56=l9_9;
float l9_57=l9_10;
if ((l9_55==0)||(l9_55==3))
{
float l9_58=l9_54;
float l9_59=0.0;
float l9_60=1.0;
bool l9_61=l9_56;
float l9_62=l9_57;
float l9_63=fast::clamp(l9_58,l9_59,l9_60);
float l9_64=step(abs(l9_58-l9_63),9.9999997e-06);
l9_62*=(l9_64+((1.0-float(l9_61))*(1.0-l9_64)));
l9_58=l9_63;
l9_54=l9_58;
l9_57=l9_62;
}
param_6.y=l9_54;
l9_10=l9_57;
float2 l9_65=param_6;
int l9_66=param_4;
int l9_67=param_5;
float l9_68=param_14;
float2 l9_69=l9_65;
int l9_70=l9_66;
int l9_71=l9_67;
float3 l9_72=float3(0.0);
if (l9_70==0)
{
l9_72=float3(l9_69,0.0);
}
else
{
if (l9_70==1)
{
l9_72=float3(l9_69.x,(l9_69.y*0.5)+(0.5-(float(l9_71)*0.5)),0.0);
}
else
{
l9_72=float3(l9_69,float(l9_71));
}
}
float3 l9_73=l9_72;
float3 l9_74=l9_73;
float4 l9_75=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_74.xy,bias(l9_68));
float4 l9_76=l9_75;
if (param_12)
{
l9_76=mix(param_13,l9_76,float4(l9_10));
}
float4 l9_77=l9_76;
Color_N11=l9_77;
float4 ValueOut_N75=float4(0.0);
ValueOut_N75=(((Color_N11-float4((*sc_set0.UserUniforms).Port_RangeMinA_N075))/float4(((*sc_set0.UserUniforms).Port_RangeMaxA_N075-(*sc_set0.UserUniforms).Port_RangeMinA_N075)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N075-(*sc_set0.UserUniforms).Port_RangeMinB_N075))+float4((*sc_set0.UserUniforms).Port_RangeMinB_N075);
float2 Output_N93=float2(0.0);
Output_N93=float2(ValueOut_N75.x,ValueOut_N75.y);
float2 Output_N94=float2(0.0);
Output_N94=Output_N86+Output_N93;
float Value1_N92=0.0;
float Value2_N92=0.0;
float Value3_N92=0.0;
float3 param_15=Output_N166;
float param_16=param_15.x;
float param_17=param_15.y;
float param_18=param_15.z;
Value1_N92=param_16;
Value2_N92=param_17;
Value3_N92=param_18;
float3 Value_N90=float3(0.0);
Value_N90=float3(Output_N94.x,Output_N94.y,Value_N90.z);
Value_N90.z=Value1_N92;
float3 Output_N173=float3(0.0);
Output_N173=float3(Value_N90.z,Value_N90.x,Value_N90.y);
float3 Output_N67=float3(0.0);
Output_N67=abs(Output_N166);
float Value1_N68=0.0;
float Value2_N68=0.0;
float Value3_N68=0.0;
float3 param_19=Output_N67;
float param_20=param_19.x;
float param_21=param_19.y;
float param_22=param_19.z;
Value1_N68=param_20;
Value2_N68=param_21;
Value3_N68=param_22;
float Output_N69=0.0;
Output_N69=(Value1_N68+Value2_N68)+Value3_N68;
float3 Output_N71=float3(0.0);
Output_N71=Output_N67/float3(Output_N69);
float Value1_N83=0.0;
float Value2_N83=0.0;
float Value3_N83=0.0;
float3 param_23=Output_N71;
float param_24=param_23.x;
float param_25=param_23.y;
float param_26=param_23.z;
Value1_N83=param_24;
Value2_N83=param_25;
Value3_N83=param_26;
float3 Output_N151=float3(0.0);
Output_N151=Output_N173*float3(Value1_N83);
float2 Output_N95=float2(0.0);
Output_N95=float2(Output_N166.x,Output_N166.z);
float2 Output_N64=float2(0.0);
Output_N64=float2(Output_N63.x,Output_N63.z);
float4 Color_N85=float4(0.0);
int l9_78;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_79=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_79=0;
}
else
{
l9_79=in.varStereoViewID;
}
int l9_80=l9_79;
l9_78=1-l9_80;
}
else
{
int l9_81=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_81=0;
}
else
{
l9_81=in.varStereoViewID;
}
int l9_82=l9_81;
l9_78=l9_82;
}
int l9_83=l9_78;
int param_27=noiseTexLayout_tmp;
int param_28=l9_83;
float2 param_29=Output_N64;
bool param_30=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 param_31=(*sc_set0.UserUniforms).noiseTexTransform;
int2 param_32=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool param_33=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 param_34=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool param_35=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 param_36=(*sc_set0.UserUniforms).noiseTexBorderColor;
float param_37=0.0;
bool l9_84=param_35&&(!param_33);
float l9_85=1.0;
float l9_86=param_29.x;
int l9_87=param_32.x;
if (l9_87==1)
{
l9_86=fract(l9_86);
}
else
{
if (l9_87==2)
{
float l9_88=fract(l9_86);
float l9_89=l9_86-l9_88;
float l9_90=step(0.25,fract(l9_89*0.5));
l9_86=mix(l9_88,1.0-l9_88,fast::clamp(l9_90,0.0,1.0));
}
}
param_29.x=l9_86;
float l9_91=param_29.y;
int l9_92=param_32.y;
if (l9_92==1)
{
l9_91=fract(l9_91);
}
else
{
if (l9_92==2)
{
float l9_93=fract(l9_91);
float l9_94=l9_91-l9_93;
float l9_95=step(0.25,fract(l9_94*0.5));
l9_91=mix(l9_93,1.0-l9_93,fast::clamp(l9_95,0.0,1.0));
}
}
param_29.y=l9_91;
if (param_33)
{
bool l9_96=param_35;
bool l9_97;
if (l9_96)
{
l9_97=param_32.x==3;
}
else
{
l9_97=l9_96;
}
float l9_98=param_29.x;
float l9_99=param_34.x;
float l9_100=param_34.z;
bool l9_101=l9_97;
float l9_102=l9_85;
float l9_103=fast::clamp(l9_98,l9_99,l9_100);
float l9_104=step(abs(l9_98-l9_103),9.9999997e-06);
l9_102*=(l9_104+((1.0-float(l9_101))*(1.0-l9_104)));
l9_98=l9_103;
param_29.x=l9_98;
l9_85=l9_102;
bool l9_105=param_35;
bool l9_106;
if (l9_105)
{
l9_106=param_32.y==3;
}
else
{
l9_106=l9_105;
}
float l9_107=param_29.y;
float l9_108=param_34.y;
float l9_109=param_34.w;
bool l9_110=l9_106;
float l9_111=l9_85;
float l9_112=fast::clamp(l9_107,l9_108,l9_109);
float l9_113=step(abs(l9_107-l9_112),9.9999997e-06);
l9_111*=(l9_113+((1.0-float(l9_110))*(1.0-l9_113)));
l9_107=l9_112;
param_29.y=l9_107;
l9_85=l9_111;
}
float2 l9_114=param_29;
bool l9_115=param_30;
float3x3 l9_116=param_31;
if (l9_115)
{
l9_114=float2((l9_116*float3(l9_114,1.0)).xy);
}
float2 l9_117=l9_114;
param_29=l9_117;
float l9_118=param_29.x;
int l9_119=param_32.x;
bool l9_120=l9_84;
float l9_121=l9_85;
if ((l9_119==0)||(l9_119==3))
{
float l9_122=l9_118;
float l9_123=0.0;
float l9_124=1.0;
bool l9_125=l9_120;
float l9_126=l9_121;
float l9_127=fast::clamp(l9_122,l9_123,l9_124);
float l9_128=step(abs(l9_122-l9_127),9.9999997e-06);
l9_126*=(l9_128+((1.0-float(l9_125))*(1.0-l9_128)));
l9_122=l9_127;
l9_118=l9_122;
l9_121=l9_126;
}
param_29.x=l9_118;
l9_85=l9_121;
float l9_129=param_29.y;
int l9_130=param_32.y;
bool l9_131=l9_84;
float l9_132=l9_85;
if ((l9_130==0)||(l9_130==3))
{
float l9_133=l9_129;
float l9_134=0.0;
float l9_135=1.0;
bool l9_136=l9_131;
float l9_137=l9_132;
float l9_138=fast::clamp(l9_133,l9_134,l9_135);
float l9_139=step(abs(l9_133-l9_138),9.9999997e-06);
l9_137*=(l9_139+((1.0-float(l9_136))*(1.0-l9_139)));
l9_133=l9_138;
l9_129=l9_133;
l9_132=l9_137;
}
param_29.y=l9_129;
l9_85=l9_132;
float2 l9_140=param_29;
int l9_141=param_27;
int l9_142=param_28;
float l9_143=param_37;
float2 l9_144=l9_140;
int l9_145=l9_141;
int l9_146=l9_142;
float3 l9_147=float3(0.0);
if (l9_145==0)
{
l9_147=float3(l9_144,0.0);
}
else
{
if (l9_145==1)
{
l9_147=float3(l9_144.x,(l9_144.y*0.5)+(0.5-(float(l9_146)*0.5)),0.0);
}
else
{
l9_147=float3(l9_144,float(l9_146));
}
}
float3 l9_148=l9_147;
float3 l9_149=l9_148;
float4 l9_150=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_149.xy,bias(l9_143));
float4 l9_151=l9_150;
if (param_35)
{
l9_151=mix(param_36,l9_151,float4(l9_85));
}
float4 l9_152=l9_151;
Color_N85=l9_152;
float4 ValueOut_N87=float4(0.0);
ValueOut_N87=(((Color_N85-float4((*sc_set0.UserUniforms).Port_RangeMinA_N087))/float4(((*sc_set0.UserUniforms).Port_RangeMaxA_N087-(*sc_set0.UserUniforms).Port_RangeMinA_N087)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N087-(*sc_set0.UserUniforms).Port_RangeMinB_N087))+float4((*sc_set0.UserUniforms).Port_RangeMinB_N087);
float2 Output_N96=float2(0.0);
Output_N96=float2(ValueOut_N87.x,ValueOut_N87.y);
float2 Output_N97=float2(0.0);
Output_N97=Output_N95+Output_N96;
float3 Value_N98=float3(0.0);
Value_N98=float3(Output_N97.x,Output_N97.y,Value_N98.z);
Value_N98.z=Value2_N92;
float3 Output_N174=float3(0.0);
Output_N174=float3(Value_N98.x,Value_N98.z,Value_N98.y);
float3 Output_N152=float3(0.0);
Output_N152=Output_N174*float3(Value2_N83);
float2 Output_N135=float2(0.0);
Output_N135=float2(Output_N166.x,Output_N166.y);
float2 Output_N65=float2(0.0);
Output_N65=float2(Output_N63.x,Output_N63.y);
float4 Color_N88=float4(0.0);
int l9_153;
if ((int(noiseTexHasSwappedViews_tmp)!=0))
{
int l9_154=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_154=0;
}
else
{
l9_154=in.varStereoViewID;
}
int l9_155=l9_154;
l9_153=1-l9_155;
}
else
{
int l9_156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_156=0;
}
else
{
l9_156=in.varStereoViewID;
}
int l9_157=l9_156;
l9_153=l9_157;
}
int l9_158=l9_153;
int param_38=noiseTexLayout_tmp;
int param_39=l9_158;
float2 param_40=Output_N65;
bool param_41=(int(SC_USE_UV_TRANSFORM_noiseTex_tmp)!=0);
float3x3 param_42=(*sc_set0.UserUniforms).noiseTexTransform;
int2 param_43=int2(SC_SOFTWARE_WRAP_MODE_U_noiseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_noiseTex_tmp);
bool param_44=(int(SC_USE_UV_MIN_MAX_noiseTex_tmp)!=0);
float4 param_45=(*sc_set0.UserUniforms).noiseTexUvMinMax;
bool param_46=(int(SC_USE_CLAMP_TO_BORDER_noiseTex_tmp)!=0);
float4 param_47=(*sc_set0.UserUniforms).noiseTexBorderColor;
float param_48=0.0;
bool l9_159=param_46&&(!param_44);
float l9_160=1.0;
float l9_161=param_40.x;
int l9_162=param_43.x;
if (l9_162==1)
{
l9_161=fract(l9_161);
}
else
{
if (l9_162==2)
{
float l9_163=fract(l9_161);
float l9_164=l9_161-l9_163;
float l9_165=step(0.25,fract(l9_164*0.5));
l9_161=mix(l9_163,1.0-l9_163,fast::clamp(l9_165,0.0,1.0));
}
}
param_40.x=l9_161;
float l9_166=param_40.y;
int l9_167=param_43.y;
if (l9_167==1)
{
l9_166=fract(l9_166);
}
else
{
if (l9_167==2)
{
float l9_168=fract(l9_166);
float l9_169=l9_166-l9_168;
float l9_170=step(0.25,fract(l9_169*0.5));
l9_166=mix(l9_168,1.0-l9_168,fast::clamp(l9_170,0.0,1.0));
}
}
param_40.y=l9_166;
if (param_44)
{
bool l9_171=param_46;
bool l9_172;
if (l9_171)
{
l9_172=param_43.x==3;
}
else
{
l9_172=l9_171;
}
float l9_173=param_40.x;
float l9_174=param_45.x;
float l9_175=param_45.z;
bool l9_176=l9_172;
float l9_177=l9_160;
float l9_178=fast::clamp(l9_173,l9_174,l9_175);
float l9_179=step(abs(l9_173-l9_178),9.9999997e-06);
l9_177*=(l9_179+((1.0-float(l9_176))*(1.0-l9_179)));
l9_173=l9_178;
param_40.x=l9_173;
l9_160=l9_177;
bool l9_180=param_46;
bool l9_181;
if (l9_180)
{
l9_181=param_43.y==3;
}
else
{
l9_181=l9_180;
}
float l9_182=param_40.y;
float l9_183=param_45.y;
float l9_184=param_45.w;
bool l9_185=l9_181;
float l9_186=l9_160;
float l9_187=fast::clamp(l9_182,l9_183,l9_184);
float l9_188=step(abs(l9_182-l9_187),9.9999997e-06);
l9_186*=(l9_188+((1.0-float(l9_185))*(1.0-l9_188)));
l9_182=l9_187;
param_40.y=l9_182;
l9_160=l9_186;
}
float2 l9_189=param_40;
bool l9_190=param_41;
float3x3 l9_191=param_42;
if (l9_190)
{
l9_189=float2((l9_191*float3(l9_189,1.0)).xy);
}
float2 l9_192=l9_189;
param_40=l9_192;
float l9_193=param_40.x;
int l9_194=param_43.x;
bool l9_195=l9_159;
float l9_196=l9_160;
if ((l9_194==0)||(l9_194==3))
{
float l9_197=l9_193;
float l9_198=0.0;
float l9_199=1.0;
bool l9_200=l9_195;
float l9_201=l9_196;
float l9_202=fast::clamp(l9_197,l9_198,l9_199);
float l9_203=step(abs(l9_197-l9_202),9.9999997e-06);
l9_201*=(l9_203+((1.0-float(l9_200))*(1.0-l9_203)));
l9_197=l9_202;
l9_193=l9_197;
l9_196=l9_201;
}
param_40.x=l9_193;
l9_160=l9_196;
float l9_204=param_40.y;
int l9_205=param_43.y;
bool l9_206=l9_159;
float l9_207=l9_160;
if ((l9_205==0)||(l9_205==3))
{
float l9_208=l9_204;
float l9_209=0.0;
float l9_210=1.0;
bool l9_211=l9_206;
float l9_212=l9_207;
float l9_213=fast::clamp(l9_208,l9_209,l9_210);
float l9_214=step(abs(l9_208-l9_213),9.9999997e-06);
l9_212*=(l9_214+((1.0-float(l9_211))*(1.0-l9_214)));
l9_208=l9_213;
l9_204=l9_208;
l9_207=l9_212;
}
param_40.y=l9_204;
l9_160=l9_207;
float2 l9_215=param_40;
int l9_216=param_38;
int l9_217=param_39;
float l9_218=param_48;
float2 l9_219=l9_215;
int l9_220=l9_216;
int l9_221=l9_217;
float3 l9_222=float3(0.0);
if (l9_220==0)
{
l9_222=float3(l9_219,0.0);
}
else
{
if (l9_220==1)
{
l9_222=float3(l9_219.x,(l9_219.y*0.5)+(0.5-(float(l9_221)*0.5)),0.0);
}
else
{
l9_222=float3(l9_219,float(l9_221));
}
}
float3 l9_223=l9_222;
float3 l9_224=l9_223;
float4 l9_225=sc_set0.noiseTex.sample(sc_set0.noiseTexSmpSC,l9_224.xy,bias(l9_218));
float4 l9_226=l9_225;
if (param_46)
{
l9_226=mix(param_47,l9_226,float4(l9_160));
}
float4 l9_227=l9_226;
Color_N88=l9_227;
float4 ValueOut_N89=float4(0.0);
ValueOut_N89=(((Color_N88-float4((*sc_set0.UserUniforms).Port_RangeMinA_N089))/float4(((*sc_set0.UserUniforms).Port_RangeMaxA_N089-(*sc_set0.UserUniforms).Port_RangeMinA_N089)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N089-(*sc_set0.UserUniforms).Port_RangeMinB_N089))+float4((*sc_set0.UserUniforms).Port_RangeMinB_N089);
float2 Output_N148=float2(0.0);
Output_N148=float2(ValueOut_N89.x,ValueOut_N89.y);
float2 Output_N149=float2(0.0);
Output_N149=Output_N135+Output_N148;
float3 Value_N150=float3(0.0);
Value_N150=float3(Output_N149.x,Output_N149.y,Value_N150.z);
Value_N150.z=Value3_N92;
float3 Output_N153=float3(0.0);
Output_N153=Value_N150*float3(Value3_N83);
float3 Output_N154=float3(0.0);
Output_N154=(Output_N151+Output_N152)+Output_N153;
float3 Output_N155=float3(0.0);
float3 param_49=Output_N154;
float l9_228=dot(param_49,param_49);
float l9_229;
if (l9_228>0.0)
{
l9_229=1.0/sqrt(l9_228);
}
else
{
l9_229=0.0;
}
float l9_230=l9_229;
float3 param_50=param_49*l9_230;
Output_N155=param_50;
float3 VectorOut_N163=float3(0.0);
VectorOut_N163=((*sc_set0.UserUniforms).sc_ModelMatrix*float4(Output_N155,0.0)).xyz;
float4 Output_N157=float4(0.0);
Output_N157=Color_N11*float4(Value1_N83);
float4 Output_N158=float4(0.0);
Output_N158=Color_N85*float4(Value2_N83);
float4 Output_N159=float4(0.0);
Output_N159=Color_N88*float4(Value3_N83);
float4 Output_N160=float4(0.0);
Output_N160=(Output_N157+Output_N158)+Output_N159;
float Output_N161=0.0;
Output_N161=Output_N160.w;
float4 Value_N156=float4(0.0);
Value_N156=float4(VectorOut_N163.x,VectorOut_N163.y,VectorOut_N163.z,Value_N156.w);
Value_N156.w=Output_N161;
float4 Export_N61=float4(0.0);
Export_N61=Value_N156;
float3 Value1_N0=float3(0.0);
float Value2_N0=0.0;
float4 param_51=Export_N61;
float3 param_52=param_51.xyz;
float param_53=param_51.w;
Value1_N0=param_52;
Value2_N0=param_53;
float Output_N25=0.0;
float param_54=(*sc_set0.UserUniforms).roughness;
Output_N25=param_54;
float Value_N13=0.0;
Value_N13=Output_N25;
float Output_N35=0.0;
Output_N35=Value_N13+(*sc_set0.UserUniforms).Port_Input1_N035;
float Output_N36=0.0;
Output_N36=fast::min(Output_N35,(*sc_set0.UserUniforms).Port_Input1_N036);
float Value_N23=0.0;
Value_N23=Value2_N0;
float ValueOut_N37=0.0;
float param_55=Value_N23;
float param_57=(*sc_set0.UserUniforms).Port_RangeMinA_N037;
float param_58=(*sc_set0.UserUniforms).Port_RangeMaxA_N037;
float param_59=(*sc_set0.UserUniforms).Port_RangeMinB_N037;
float param_60=(*sc_set0.UserUniforms).Port_RangeMaxB_N037;
float param_56=(((param_55-param_57)/((param_58-param_57)+1e-06))*(param_60-param_59))+param_59;
float l9_231;
if (param_60>param_59)
{
l9_231=fast::clamp(param_56,param_59,param_60);
}
else
{
l9_231=fast::clamp(param_56,param_60,param_59);
}
param_56=l9_231;
ValueOut_N37=param_56;
float Output_N39=0.0;
Output_N39=mix(Value_N13,Output_N36,ValueOut_N37);
float Export_N59=0.0;
Export_N59=Output_N39;
float param_61=(*sc_set0.UserUniforms).Port_Opacity_N026;
float3 param_62=Value1_N0;
float param_63=Export_N59;
ssGlobals param_64=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_64.BumpedNormal=param_62;
}
float l9_232=param_61;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_232<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_233=gl_FragCoord;
float2 l9_234=floor(mod(l9_233.xy,float2(4.0)));
float l9_235=(mod(dot(l9_234,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_232<l9_235)
{
discard_fragment();
}
}
float3 l9_236=param_64.PositionWS;
float3 l9_237=param_64.BumpedNormal;
float l9_238=param_63;
float3 l9_239=l9_236;
float3 l9_240=l9_237;
float l9_241=l9_238;
uint l9_242=0u;
uint3 l9_243=uint3(round((l9_239-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_243.x,l9_243.y,l9_243.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_244=l9_240;
float l9_245=dot(abs(l9_244),float3(1.0));
l9_244/=float3(l9_245);
float2 l9_246=float2(fast::clamp(-l9_244.z,0.0,1.0));
float2 l9_247=l9_244.xy+mix(-l9_246,l9_246,step(float2(0.0),l9_244.xy));
uint l9_248=as_type<uint>(half2(l9_247));
uint2 l9_249=uint2(l9_248&65535u,l9_248>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_249.x,l9_249.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_242;
uint l9_250=uint(fast::clamp(l9_241,0.0,1.0)*1000.0);
l9_250 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_250;
return out;
}
} // RECEIVER MODE SHADER
