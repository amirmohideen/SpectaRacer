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
//sampler sampler glowTextureSmpSC 0:17
//sampler sampler intensityTextureSmpSC 0:18
//sampler sampler sc_ScreenTextureSmpSC 0:23
//texture texture2D glowTexture 0:1:0:17
//texture texture2D intensityTexture 0:2:0:18
//texture texture2D sc_ScreenTexture 0:14:0:23
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:26:4832 {
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
//float4 voxelization_params_0 3824
//float4 voxelization_params_frustum_lrbt 3840
//float4 voxelization_params_frustum_nf 3856
//float3 voxelization_params_camera_pos 3872
//float4x4 sc_ModelMatrixVoxelization 3888
//float correctedIntensity 3952
//float3x3 intensityTextureTransform 4016
//float4 intensityTextureUvMinMax 4064
//float4 intensityTextureBorderColor 4080
//int PreviewEnabled 4244
//float alphaTestThreshold 4252
//float4 glowTextureSize 4256
//float3x3 glowTextureTransform 4304
//float4 glowTextureUvMinMax 4352
//float4 glowTextureBorderColor 4368
//float blurSize 4384
//float2 ratio 4392
//float haze 4400
//float luminance 4404
//float Port_Input1_N060 4416
//float Port_Input1_N045 4424
//float Port_Input1_N003 4440
//float Port_Input1_N086 4444
//float2 Port_Item0_N084 4448
//float2 Port_Item1_N084 4456
//float2 Port_Item2_N084 4464
//float2 Port_Item3_N084 4472
//float2 Port_Item4_N084 4480
//float2 Port_Item5_N084 4488
//float2 Port_Item6_N084 4496
//float2 Port_Item7_N084 4504
//float Port_Input2_N105 4512
//float Port_Input1_N062 4520
//float2 Port_Scale_N059 4528
//float4 Port_RandomSeed_N059 4544
//float Port_LODValue_N063 4560
//float3 Port_Value1_N061 4576
//float3 Port_Default_N061 4592
//float Port_Input1_N029 4616
//float Port_Input1_N014 4624
//float Port_Input1_N006 4640
//float Port_Input1_N020 4644
//float2 Port_Item0_N021 4648
//float2 Port_Item1_N021 4656
//float2 Port_Item2_N021 4664
//float2 Port_Item3_N021 4672
//float2 Port_Item4_N021 4680
//float2 Port_Item5_N021 4688
//float2 Port_Item6_N021 4696
//float2 Port_Item7_N021 4704
//float Port_Input2_N026 4712
//float Port_Input1_N036 4732
//float Port_Input1_N041 4744
//float2 Port_Item0_N043 4752
//float2 Port_Item1_N043 4760
//float2 Port_Item2_N043 4768
//float2 Port_Item3_N043 4776
//float2 Port_Item4_N043 4784
//float2 Port_Item5_N043 4792
//float2 Port_Item6_N043 4800
//float2 Port_Item7_N043 4808
//float Port_Input2_N052 4816
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_glowTexture 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 32 0
//spec_const bool SC_USE_UV_MIN_MAX_glowTexture 33 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 34 0
//spec_const bool SC_USE_UV_TRANSFORM_glowTexture 35 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 36 0
//spec_const bool UseViewSpaceDepthVariant 37 1
//spec_const bool glowTextureHasSwappedViews 38 0
//spec_const bool intensityTextureHasSwappedViews 39 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 40 0
//spec_const bool sc_BlendMode_Add 41 0
//spec_const bool sc_BlendMode_AlphaTest 42 0
//spec_const bool sc_BlendMode_AlphaToCoverage 43 0
//spec_const bool sc_BlendMode_ColoredGlass 44 0
//spec_const bool sc_BlendMode_Custom 45 0
//spec_const bool sc_BlendMode_Max 46 0
//spec_const bool sc_BlendMode_Min 47 0
//spec_const bool sc_BlendMode_MultiplyOriginal 48 0
//spec_const bool sc_BlendMode_Multiply 49 0
//spec_const bool sc_BlendMode_Normal 50 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 51 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 52 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 53 0
//spec_const bool sc_BlendMode_Screen 54 0
//spec_const bool sc_DepthOnly 55 0
//spec_const bool sc_FramebufferFetch 56 0
//spec_const bool sc_MotionVectorsPass 57 0
//spec_const bool sc_OITCompositingPass 58 0
//spec_const bool sc_OITDepthBoundsPass 59 0
//spec_const bool sc_OITDepthGatherPass 60 0
//spec_const bool sc_OutputBounds 61 0
//spec_const bool sc_ProjectiveShadowsCaster 62 0
//spec_const bool sc_ProjectiveShadowsReceiver 63 0
//spec_const bool sc_RenderAlphaToColor 64 0
//spec_const bool sc_ScreenTextureHasSwappedViews 65 0
//spec_const bool sc_TAAEnabled 66 0
//spec_const bool sc_VertexBlendingUseNormals 67 0
//spec_const bool sc_VertexBlending 68 0
//spec_const bool sc_Voxelization 69 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_glowTexture 70 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 71 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_glowTexture 72 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 73 -1
//spec_const int glowTextureLayout 74 0
//spec_const int intensityTextureLayout 75 0
//spec_const int sc_DepthBufferMode 76 0
//spec_const int sc_RenderingSpace 77 -1
//spec_const int sc_ScreenTextureLayout 78 0
//spec_const int sc_ShaderCacheConstant 79 0
//spec_const int sc_SkinBonesCount 80 0
//spec_const int sc_StereoRenderingMode 81 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 82 0
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
constant bool SC_USE_CLAMP_TO_BORDER_glowTexture [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_glowTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_glowTexture) ? SC_USE_CLAMP_TO_BORDER_glowTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_glowTexture [[function_constant(33)]];
constant bool SC_USE_UV_MIN_MAX_glowTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_glowTexture) ? SC_USE_UV_MIN_MAX_glowTexture : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_glowTexture [[function_constant(35)]];
constant bool SC_USE_UV_TRANSFORM_glowTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_glowTexture) ? SC_USE_UV_TRANSFORM_glowTexture : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(36)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool UseViewSpaceDepthVariant [[function_constant(37)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool glowTextureHasSwappedViews [[function_constant(38)]];
constant bool glowTextureHasSwappedViews_tmp = is_function_constant_defined(glowTextureHasSwappedViews) ? glowTextureHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(39)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(40)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(41)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(42)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(43)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(44)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(45)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(46)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(47)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(48)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(49)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(50)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(51)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(52)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(53)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(54)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(55)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(56)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(57)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(58)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(59)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(60)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(61)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(62)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(63)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(64)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(65)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(66)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(67)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(68)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(69)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant int SC_SOFTWARE_WRAP_MODE_U_glowTexture [[function_constant(70)]];
constant int SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_glowTexture) ? SC_SOFTWARE_WRAP_MODE_U_glowTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(71)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_glowTexture [[function_constant(72)]];
constant int SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_glowTexture) ? SC_SOFTWARE_WRAP_MODE_V_glowTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(73)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int glowTextureLayout [[function_constant(74)]];
constant int glowTextureLayout_tmp = is_function_constant_defined(glowTextureLayout) ? glowTextureLayout : 0;
constant int intensityTextureLayout [[function_constant(75)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(76)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(77)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(78)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(79)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(80)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(81)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(82)]];
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
float4 glowTextureSize;
float4 glowTextureDims;
float4 glowTextureView;
float3x3 glowTextureTransform;
float4 glowTextureUvMinMax;
float4 glowTextureBorderColor;
float blurSize;
float2 ratio;
float haze;
float luminance;
float2 Port_Import_N042;
float Port_Input1_N060;
float Port_Import_N044;
float Port_Input1_N045;
float2 Port_Import_N047;
float Port_Input1_N003;
float Port_Input1_N086;
float2 Port_Item0_N084;
float2 Port_Item1_N084;
float2 Port_Item2_N084;
float2 Port_Item3_N084;
float2 Port_Item4_N084;
float2 Port_Item5_N084;
float2 Port_Item6_N084;
float2 Port_Item7_N084;
float Port_Input2_N105;
float Port_Import_N064;
float Port_Input1_N062;
float2 Port_Scale_N059;
float4 Port_RandomSeed_N059;
float Port_LODValue_N063;
float3 Port_Value1_N061;
float3 Port_Default_N061;
float2 Port_Import_N012;
float Port_Input1_N029;
float Port_Import_N013;
float Port_Input1_N014;
float2 Port_Import_N017;
float Port_Input1_N006;
float Port_Input1_N020;
float2 Port_Item0_N021;
float2 Port_Item1_N021;
float2 Port_Item2_N021;
float2 Port_Item3_N021;
float2 Port_Item4_N021;
float2 Port_Item5_N021;
float2 Port_Item6_N021;
float2 Port_Item7_N021;
float Port_Input2_N026;
float2 Port_Import_N033;
float Port_Import_N035;
float Port_Input1_N036;
float2 Port_Import_N038;
float Port_Input1_N041;
float2 Port_Item0_N043;
float2 Port_Item1_N043;
float2 Port_Item2_N043;
float2 Port_Item3_N043;
float2 Port_Item4_N043;
float2 Port_Item5_N043;
float2 Port_Item6_N043;
float2 Port_Item7_N043;
float Port_Input2_N052;
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
texture2d<float> glowTexture [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler glowTextureSmpSC [[id(17)]];
sampler intensityTextureSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
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
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_1=v;
float3 param_2=WorldPosition;
float3 param_3=WorldNormal;
float3 param_4=WorldTangent;
float4 param_5=v.position;
out.varPosAndMotion=float4(param_2.x,param_2.y,param_2.z,out.varPosAndMotion.w);
float3 l9_122=normalize(param_3);
out.varNormalAndMotion=float4(l9_122.x,l9_122.y,l9_122.z,out.varNormalAndMotion.w);
float3 l9_123=normalize(param_4);
out.varTangent=float4(l9_123.x,l9_123.y,l9_123.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_124=param_1.position;
float4 l9_125=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_126=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_126=0;
}
else
{
l9_126=gl_InstanceIndex%2;
}
int l9_127=l9_126;
l9_125=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_127]*l9_124;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=gl_InstanceIndex%2;
}
int l9_129=l9_128;
l9_125=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_129]*l9_124;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_130=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_130=0;
}
else
{
l9_130=gl_InstanceIndex%2;
}
int l9_131=l9_130;
l9_125=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_131]*l9_124;
}
else
{
l9_125=l9_124;
}
}
}
float4 l9_132=l9_125;
out.varViewSpaceDepth=-l9_132.z;
}
float4 l9_133=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_133=param_5;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_134=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_134=0;
}
else
{
l9_134=gl_InstanceIndex%2;
}
int l9_135=l9_134;
l9_133=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_135]*param_1.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_133=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_137]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_133=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_139]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_1.texture0,param_1.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_140=param_1.position;
float4 l9_141=l9_140;
if (sc_RenderingSpace_tmp==1)
{
l9_141=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_140;
}
float4 l9_142=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_141;
float2 l9_143=((l9_142.xy/float2(l9_142.w))*0.5)+float2(0.5);
out.varShadowTex=l9_143;
}
float4 l9_144=l9_133;
if (sc_DepthBufferMode_tmp==1)
{
int l9_145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_145=0;
}
else
{
l9_145=gl_InstanceIndex%2;
}
int l9_146=l9_145;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_146][2].w!=0.0)
{
float l9_147=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_144.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_144.w))*l9_147)-1.0)*l9_144.w;
}
}
float4 l9_148=l9_144;
l9_133=l9_148;
float4 l9_149=l9_133;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_150=l9_149.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_149.w);
l9_149=float4(l9_150.x,l9_150.y,l9_149.z,l9_149.w);
}
float4 l9_151=l9_149;
l9_133=l9_151;
float4 l9_152=l9_133;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_152.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_153=l9_152;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_154=dot(l9_153,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_155=l9_154;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_155;
}
}
float4 l9_156=float4(l9_152.x,-l9_152.y,(l9_152.z*0.5)+(l9_152.w*0.5),l9_152.w);
out.gl_Position=l9_156;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_158=param_1;
sc_Vertex_t l9_159=l9_158;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_160=l9_159;
float3 l9_161=in.blendShape0Pos;
float3 l9_162=in.blendShape0Normal;
float l9_163=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_164=l9_160;
float3 l9_165=l9_161;
float l9_166=l9_163;
float3 l9_167=l9_164.position.xyz+(l9_165*l9_166);
l9_164.position=float4(l9_167.x,l9_167.y,l9_167.z,l9_164.position.w);
l9_160=l9_164;
l9_160.normal+=(l9_162*l9_163);
l9_159=l9_160;
sc_Vertex_t l9_168=l9_159;
float3 l9_169=in.blendShape1Pos;
float3 l9_170=in.blendShape1Normal;
float l9_171=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_172=l9_168;
float3 l9_173=l9_169;
float l9_174=l9_171;
float3 l9_175=l9_172.position.xyz+(l9_173*l9_174);
l9_172.position=float4(l9_175.x,l9_175.y,l9_175.z,l9_172.position.w);
l9_168=l9_172;
l9_168.normal+=(l9_170*l9_171);
l9_159=l9_168;
sc_Vertex_t l9_176=l9_159;
float3 l9_177=in.blendShape2Pos;
float3 l9_178=in.blendShape2Normal;
float l9_179=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_180=l9_176;
float3 l9_181=l9_177;
float l9_182=l9_179;
float3 l9_183=l9_180.position.xyz+(l9_181*l9_182);
l9_180.position=float4(l9_183.x,l9_183.y,l9_183.z,l9_180.position.w);
l9_176=l9_180;
l9_176.normal+=(l9_178*l9_179);
l9_159=l9_176;
}
else
{
sc_Vertex_t l9_184=l9_159;
float3 l9_185=in.blendShape0Pos;
float l9_186=(*sc_set0.UserUniforms).weights0.x;
float3 l9_187=l9_184.position.xyz+(l9_185*l9_186);
l9_184.position=float4(l9_187.x,l9_187.y,l9_187.z,l9_184.position.w);
l9_159=l9_184;
sc_Vertex_t l9_188=l9_159;
float3 l9_189=in.blendShape1Pos;
float l9_190=(*sc_set0.UserUniforms).weights0.y;
float3 l9_191=l9_188.position.xyz+(l9_189*l9_190);
l9_188.position=float4(l9_191.x,l9_191.y,l9_191.z,l9_188.position.w);
l9_159=l9_188;
sc_Vertex_t l9_192=l9_159;
float3 l9_193=in.blendShape2Pos;
float l9_194=(*sc_set0.UserUniforms).weights0.z;
float3 l9_195=l9_192.position.xyz+(l9_193*l9_194);
l9_192.position=float4(l9_195.x,l9_195.y,l9_195.z,l9_192.position.w);
l9_159=l9_192;
sc_Vertex_t l9_196=l9_159;
float3 l9_197=in.blendShape3Pos;
float l9_198=(*sc_set0.UserUniforms).weights0.w;
float3 l9_199=l9_196.position.xyz+(l9_197*l9_198);
l9_196.position=float4(l9_199.x,l9_199.y,l9_199.z,l9_196.position.w);
l9_159=l9_196;
sc_Vertex_t l9_200=l9_159;
float3 l9_201=in.blendShape4Pos;
float l9_202=(*sc_set0.UserUniforms).weights1.x;
float3 l9_203=l9_200.position.xyz+(l9_201*l9_202);
l9_200.position=float4(l9_203.x,l9_203.y,l9_203.z,l9_200.position.w);
l9_159=l9_200;
sc_Vertex_t l9_204=l9_159;
float3 l9_205=in.blendShape5Pos;
float l9_206=(*sc_set0.UserUniforms).weights1.y;
float3 l9_207=l9_204.position.xyz+(l9_205*l9_206);
l9_204.position=float4(l9_207.x,l9_207.y,l9_207.z,l9_204.position.w);
l9_159=l9_204;
}
}
l9_158=l9_159;
sc_Vertex_t l9_208=l9_158;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_209=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_209=float4(1.0,fract(in.boneData.yzw));
l9_209.x-=dot(l9_209.yzw,float3(1.0));
}
float4 l9_210=l9_209;
float4 l9_211=l9_210;
int l9_212=int(in.boneData.x);
int l9_213=int(in.boneData.y);
int l9_214=int(in.boneData.z);
int l9_215=int(in.boneData.w);
int l9_216=l9_212;
float4 l9_217=l9_208.position;
float3 l9_218=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_219=l9_216;
float4 l9_220=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[0];
float4 l9_221=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[1];
float4 l9_222=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[2];
float4 l9_223[3];
l9_223[0]=l9_220;
l9_223[1]=l9_221;
l9_223[2]=l9_222;
l9_218=float3(dot(l9_217,l9_223[0]),dot(l9_217,l9_223[1]),dot(l9_217,l9_223[2]));
}
else
{
l9_218=l9_217.xyz;
}
float3 l9_224=l9_218;
float3 l9_225=l9_224;
float l9_226=l9_211.x;
int l9_227=l9_213;
float4 l9_228=l9_208.position;
float3 l9_229=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_230=l9_227;
float4 l9_231=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[0];
float4 l9_232=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[1];
float4 l9_233=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[2];
float4 l9_234[3];
l9_234[0]=l9_231;
l9_234[1]=l9_232;
l9_234[2]=l9_233;
l9_229=float3(dot(l9_228,l9_234[0]),dot(l9_228,l9_234[1]),dot(l9_228,l9_234[2]));
}
else
{
l9_229=l9_228.xyz;
}
float3 l9_235=l9_229;
float3 l9_236=l9_235;
float l9_237=l9_211.y;
int l9_238=l9_214;
float4 l9_239=l9_208.position;
float3 l9_240=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_241=l9_238;
float4 l9_242=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[0];
float4 l9_243=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[1];
float4 l9_244=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[2];
float4 l9_245[3];
l9_245[0]=l9_242;
l9_245[1]=l9_243;
l9_245[2]=l9_244;
l9_240=float3(dot(l9_239,l9_245[0]),dot(l9_239,l9_245[1]),dot(l9_239,l9_245[2]));
}
else
{
l9_240=l9_239.xyz;
}
float3 l9_246=l9_240;
float3 l9_247=l9_246;
float l9_248=l9_211.z;
int l9_249=l9_215;
float4 l9_250=l9_208.position;
float3 l9_251=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_252=l9_249;
float4 l9_253=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[0];
float4 l9_254=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[1];
float4 l9_255=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[2];
float4 l9_256[3];
l9_256[0]=l9_253;
l9_256[1]=l9_254;
l9_256[2]=l9_255;
l9_251=float3(dot(l9_250,l9_256[0]),dot(l9_250,l9_256[1]),dot(l9_250,l9_256[2]));
}
else
{
l9_251=l9_250.xyz;
}
float3 l9_257=l9_251;
float3 l9_258=(((l9_225*l9_226)+(l9_236*l9_237))+(l9_247*l9_248))+(l9_257*l9_211.w);
l9_208.position=float4(l9_258.x,l9_258.y,l9_258.z,l9_208.position.w);
int l9_259=l9_212;
float3x3 l9_260=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[2].xyz));
float3x3 l9_261=l9_260;
float3x3 l9_262=l9_261;
int l9_263=l9_213;
float3x3 l9_264=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[2].xyz));
float3x3 l9_265=l9_264;
float3x3 l9_266=l9_265;
int l9_267=l9_214;
float3x3 l9_268=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[2].xyz));
float3x3 l9_269=l9_268;
float3x3 l9_270=l9_269;
int l9_271=l9_215;
float3x3 l9_272=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[2].xyz));
float3x3 l9_273=l9_272;
float3x3 l9_274=l9_273;
l9_208.normal=((((l9_262*l9_208.normal)*l9_211.x)+((l9_266*l9_208.normal)*l9_211.y))+((l9_270*l9_208.normal)*l9_211.z))+((l9_274*l9_208.normal)*l9_211.w);
l9_208.tangent=((((l9_262*l9_208.tangent)*l9_211.x)+((l9_266*l9_208.tangent)*l9_211.y))+((l9_270*l9_208.tangent)*l9_211.z))+((l9_274*l9_208.tangent)*l9_211.w);
}
l9_158=l9_208;
float l9_275=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_276=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_277=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_278=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_279=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_280=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_281=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_282=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_283=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_284=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_285=l9_275/l9_276;
int l9_286=gl_InstanceIndex;
int l9_287=l9_286;
l9_158.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_158.position;
float3 l9_288=l9_158.position.xyz;
float3 l9_289=float3(float(l9_287%int(l9_277))*l9_275,float(l9_287/int(l9_277))*l9_275,(float(l9_287)*l9_285)+l9_282);
float3 l9_290=l9_288+l9_289;
float4 l9_291=float4(l9_290-l9_284,1.0);
float l9_292=l9_278;
float l9_293=l9_279;
float l9_294=l9_280;
float l9_295=l9_281;
float l9_296=l9_282;
float l9_297=l9_283;
float4x4 l9_298=float4x4(float4(2.0/(l9_293-l9_292),0.0,0.0,(-(l9_293+l9_292))/(l9_293-l9_292)),float4(0.0,2.0/(l9_295-l9_294),0.0,(-(l9_295+l9_294))/(l9_295-l9_294)),float4(0.0,0.0,(-2.0)/(l9_297-l9_296),(-(l9_297+l9_296))/(l9_297-l9_296)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_299=l9_298;
float4 l9_300=l9_299*l9_291;
l9_300.w=1.0;
out.varScreenPos=l9_300;
float4 l9_301=l9_300*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_301.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_302=l9_301;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_303=dot(l9_302,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_304=l9_303;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_304;
}
}
float4 l9_305=float4(l9_301.x,-l9_301.y,(l9_301.z*0.5)+(l9_301.w*0.5),l9_301.w);
out.gl_Position=l9_305;
param_1=l9_158;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_306=param_1;
sc_Vertex_t l9_307=l9_306;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_308=l9_307;
float3 l9_309=in.blendShape0Pos;
float3 l9_310=in.blendShape0Normal;
float l9_311=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_312=l9_308;
float3 l9_313=l9_309;
float l9_314=l9_311;
float3 l9_315=l9_312.position.xyz+(l9_313*l9_314);
l9_312.position=float4(l9_315.x,l9_315.y,l9_315.z,l9_312.position.w);
l9_308=l9_312;
l9_308.normal+=(l9_310*l9_311);
l9_307=l9_308;
sc_Vertex_t l9_316=l9_307;
float3 l9_317=in.blendShape1Pos;
float3 l9_318=in.blendShape1Normal;
float l9_319=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_320=l9_316;
float3 l9_321=l9_317;
float l9_322=l9_319;
float3 l9_323=l9_320.position.xyz+(l9_321*l9_322);
l9_320.position=float4(l9_323.x,l9_323.y,l9_323.z,l9_320.position.w);
l9_316=l9_320;
l9_316.normal+=(l9_318*l9_319);
l9_307=l9_316;
sc_Vertex_t l9_324=l9_307;
float3 l9_325=in.blendShape2Pos;
float3 l9_326=in.blendShape2Normal;
float l9_327=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_328=l9_324;
float3 l9_329=l9_325;
float l9_330=l9_327;
float3 l9_331=l9_328.position.xyz+(l9_329*l9_330);
l9_328.position=float4(l9_331.x,l9_331.y,l9_331.z,l9_328.position.w);
l9_324=l9_328;
l9_324.normal+=(l9_326*l9_327);
l9_307=l9_324;
}
else
{
sc_Vertex_t l9_332=l9_307;
float3 l9_333=in.blendShape0Pos;
float l9_334=(*sc_set0.UserUniforms).weights0.x;
float3 l9_335=l9_332.position.xyz+(l9_333*l9_334);
l9_332.position=float4(l9_335.x,l9_335.y,l9_335.z,l9_332.position.w);
l9_307=l9_332;
sc_Vertex_t l9_336=l9_307;
float3 l9_337=in.blendShape1Pos;
float l9_338=(*sc_set0.UserUniforms).weights0.y;
float3 l9_339=l9_336.position.xyz+(l9_337*l9_338);
l9_336.position=float4(l9_339.x,l9_339.y,l9_339.z,l9_336.position.w);
l9_307=l9_336;
sc_Vertex_t l9_340=l9_307;
float3 l9_341=in.blendShape2Pos;
float l9_342=(*sc_set0.UserUniforms).weights0.z;
float3 l9_343=l9_340.position.xyz+(l9_341*l9_342);
l9_340.position=float4(l9_343.x,l9_343.y,l9_343.z,l9_340.position.w);
l9_307=l9_340;
sc_Vertex_t l9_344=l9_307;
float3 l9_345=in.blendShape3Pos;
float l9_346=(*sc_set0.UserUniforms).weights0.w;
float3 l9_347=l9_344.position.xyz+(l9_345*l9_346);
l9_344.position=float4(l9_347.x,l9_347.y,l9_347.z,l9_344.position.w);
l9_307=l9_344;
sc_Vertex_t l9_348=l9_307;
float3 l9_349=in.blendShape4Pos;
float l9_350=(*sc_set0.UserUniforms).weights1.x;
float3 l9_351=l9_348.position.xyz+(l9_349*l9_350);
l9_348.position=float4(l9_351.x,l9_351.y,l9_351.z,l9_348.position.w);
l9_307=l9_348;
sc_Vertex_t l9_352=l9_307;
float3 l9_353=in.blendShape5Pos;
float l9_354=(*sc_set0.UserUniforms).weights1.y;
float3 l9_355=l9_352.position.xyz+(l9_353*l9_354);
l9_352.position=float4(l9_355.x,l9_355.y,l9_355.z,l9_352.position.w);
l9_307=l9_352;
}
}
l9_306=l9_307;
sc_Vertex_t l9_356=l9_306;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_357=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_357=float4(1.0,fract(in.boneData.yzw));
l9_357.x-=dot(l9_357.yzw,float3(1.0));
}
float4 l9_358=l9_357;
float4 l9_359=l9_358;
int l9_360=int(in.boneData.x);
int l9_361=int(in.boneData.y);
int l9_362=int(in.boneData.z);
int l9_363=int(in.boneData.w);
int l9_364=l9_360;
float4 l9_365=l9_356.position;
float3 l9_366=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_367=l9_364;
float4 l9_368=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[0];
float4 l9_369=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[1];
float4 l9_370=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[2];
float4 l9_371[3];
l9_371[0]=l9_368;
l9_371[1]=l9_369;
l9_371[2]=l9_370;
l9_366=float3(dot(l9_365,l9_371[0]),dot(l9_365,l9_371[1]),dot(l9_365,l9_371[2]));
}
else
{
l9_366=l9_365.xyz;
}
float3 l9_372=l9_366;
float3 l9_373=l9_372;
float l9_374=l9_359.x;
int l9_375=l9_361;
float4 l9_376=l9_356.position;
float3 l9_377=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_378=l9_375;
float4 l9_379=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[0];
float4 l9_380=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[1];
float4 l9_381=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[2];
float4 l9_382[3];
l9_382[0]=l9_379;
l9_382[1]=l9_380;
l9_382[2]=l9_381;
l9_377=float3(dot(l9_376,l9_382[0]),dot(l9_376,l9_382[1]),dot(l9_376,l9_382[2]));
}
else
{
l9_377=l9_376.xyz;
}
float3 l9_383=l9_377;
float3 l9_384=l9_383;
float l9_385=l9_359.y;
int l9_386=l9_362;
float4 l9_387=l9_356.position;
float3 l9_388=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_389=l9_386;
float4 l9_390=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[0];
float4 l9_391=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[1];
float4 l9_392=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[2];
float4 l9_393[3];
l9_393[0]=l9_390;
l9_393[1]=l9_391;
l9_393[2]=l9_392;
l9_388=float3(dot(l9_387,l9_393[0]),dot(l9_387,l9_393[1]),dot(l9_387,l9_393[2]));
}
else
{
l9_388=l9_387.xyz;
}
float3 l9_394=l9_388;
float3 l9_395=l9_394;
float l9_396=l9_359.z;
int l9_397=l9_363;
float4 l9_398=l9_356.position;
float3 l9_399=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_400=l9_397;
float4 l9_401=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[0];
float4 l9_402=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[1];
float4 l9_403=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[2];
float4 l9_404[3];
l9_404[0]=l9_401;
l9_404[1]=l9_402;
l9_404[2]=l9_403;
l9_399=float3(dot(l9_398,l9_404[0]),dot(l9_398,l9_404[1]),dot(l9_398,l9_404[2]));
}
else
{
l9_399=l9_398.xyz;
}
float3 l9_405=l9_399;
float3 l9_406=(((l9_373*l9_374)+(l9_384*l9_385))+(l9_395*l9_396))+(l9_405*l9_359.w);
l9_356.position=float4(l9_406.x,l9_406.y,l9_406.z,l9_356.position.w);
int l9_407=l9_360;
float3x3 l9_408=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[2].xyz));
float3x3 l9_409=l9_408;
float3x3 l9_410=l9_409;
int l9_411=l9_361;
float3x3 l9_412=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[2].xyz));
float3x3 l9_413=l9_412;
float3x3 l9_414=l9_413;
int l9_415=l9_362;
float3x3 l9_416=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[2].xyz));
float3x3 l9_417=l9_416;
float3x3 l9_418=l9_417;
int l9_419=l9_363;
float3x3 l9_420=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[2].xyz));
float3x3 l9_421=l9_420;
float3x3 l9_422=l9_421;
l9_356.normal=((((l9_410*l9_356.normal)*l9_359.x)+((l9_414*l9_356.normal)*l9_359.y))+((l9_418*l9_356.normal)*l9_359.z))+((l9_422*l9_356.normal)*l9_359.w);
l9_356.tangent=((((l9_410*l9_356.tangent)*l9_359.x)+((l9_414*l9_356.tangent)*l9_359.y))+((l9_418*l9_356.tangent)*l9_359.z))+((l9_422*l9_356.tangent)*l9_359.w);
}
l9_306=l9_356;
float3 l9_423=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_424=((l9_306.position.xy/float2(l9_306.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_424.x,l9_424.y,out.varTex01.z,out.varTex01.w);
l9_306.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_306.position;
float3 l9_425=l9_306.position.xyz-l9_423;
l9_306.position=float4(l9_425.x,l9_425.y,l9_425.z,l9_306.position.w);
out.varPosAndMotion=float4(l9_306.position.xyz.x,l9_306.position.xyz.y,l9_306.position.xyz.z,out.varPosAndMotion.w);
float3 l9_426=normalize(l9_306.normal);
out.varNormalAndMotion=float4(l9_426.x,l9_426.y,l9_426.z,out.varNormalAndMotion.w);
float l9_427=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_428=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_429=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_430=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_431=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_432=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_433=l9_427;
float l9_434=l9_428;
float l9_435=l9_429;
float l9_436=l9_430;
float l9_437=l9_431;
float l9_438=l9_432;
float4x4 l9_439=float4x4(float4(2.0/(l9_434-l9_433),0.0,0.0,(-(l9_434+l9_433))/(l9_434-l9_433)),float4(0.0,2.0/(l9_436-l9_435),0.0,(-(l9_436+l9_435))/(l9_436-l9_435)),float4(0.0,0.0,(-2.0)/(l9_438-l9_437),(-(l9_438+l9_437))/(l9_438-l9_437)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_440=l9_439;
float4 l9_441=float4(0.0);
float3 l9_442=(l9_440*l9_306.position).xyz;
l9_441=float4(l9_442.x,l9_442.y,l9_442.z,l9_441.w);
l9_441.w=1.0;
out.varScreenPos=l9_441;
float4 l9_443=l9_441*1.0;
float4 l9_444=l9_443;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_444.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_445=l9_444;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_446=dot(l9_445,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_447=l9_446;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_447;
}
}
float4 l9_448=float4(l9_444.x,-l9_444.y,(l9_444.z*0.5)+(l9_444.w*0.5),l9_444.w);
out.gl_Position=l9_448;
param_1=l9_306;
}
}
v=param_1;
float3 param_6=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_449=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_6,1.0);
float3 l9_450=param_6;
float3 l9_451=l9_449.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_452=0;
}
else
{
l9_452=gl_InstanceIndex%2;
}
int l9_453=l9_452;
float4 l9_454=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_453]*float4(l9_450,1.0);
float2 l9_455=l9_454.xy/float2(l9_454.w);
l9_454=float4(l9_455.x,l9_455.y,l9_454.z,l9_454.w);
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
float4 l9_458=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_457]*float4(l9_451,1.0);
float2 l9_459=l9_458.xy/float2(l9_458.w);
l9_458=float4(l9_459.x,l9_459.y,l9_458.z,l9_458.w);
float2 l9_460=(l9_454.xy-l9_458.xy)*0.5;
out.varPosAndMotion.w=l9_460.x;
out.varNormalAndMotion.w=l9_460.y;
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
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 gScreenCoord;
float Loop_Index_ID0;
float Loop_Ratio_ID0;
float Loop_Count_ID0;
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
float4 glowTextureSize;
float4 glowTextureDims;
float4 glowTextureView;
float3x3 glowTextureTransform;
float4 glowTextureUvMinMax;
float4 glowTextureBorderColor;
float blurSize;
float2 ratio;
float haze;
float luminance;
float2 Port_Import_N042;
float Port_Input1_N060;
float Port_Import_N044;
float Port_Input1_N045;
float2 Port_Import_N047;
float Port_Input1_N003;
float Port_Input1_N086;
float2 Port_Item0_N084;
float2 Port_Item1_N084;
float2 Port_Item2_N084;
float2 Port_Item3_N084;
float2 Port_Item4_N084;
float2 Port_Item5_N084;
float2 Port_Item6_N084;
float2 Port_Item7_N084;
float Port_Input2_N105;
float Port_Import_N064;
float Port_Input1_N062;
float2 Port_Scale_N059;
float4 Port_RandomSeed_N059;
float Port_LODValue_N063;
float3 Port_Value1_N061;
float3 Port_Default_N061;
float2 Port_Import_N012;
float Port_Input1_N029;
float Port_Import_N013;
float Port_Input1_N014;
float2 Port_Import_N017;
float Port_Input1_N006;
float Port_Input1_N020;
float2 Port_Item0_N021;
float2 Port_Item1_N021;
float2 Port_Item2_N021;
float2 Port_Item3_N021;
float2 Port_Item4_N021;
float2 Port_Item5_N021;
float2 Port_Item6_N021;
float2 Port_Item7_N021;
float Port_Input2_N026;
float2 Port_Import_N033;
float Port_Import_N035;
float Port_Input1_N036;
float2 Port_Import_N038;
float Port_Input1_N041;
float2 Port_Item0_N043;
float2 Port_Item1_N043;
float2 Port_Item2_N043;
float2 Port_Item3_N043;
float2 Port_Item4_N043;
float2 Port_Item5_N043;
float2 Port_Item6_N043;
float2 Port_Item7_N043;
float Port_Input2_N052;
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
texture2d<float> glowTexture [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler glowTextureSmpSC [[id(17)]];
sampler intensityTextureSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
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
Globals.Loop_Index_ID0=0.0;
Globals.Loop_Ratio_ID0=0.0;
Globals.Loop_Count_ID0=0.0;
float2 ScreenCoord_N34=float2(0.0);
ScreenCoord_N34=Globals.gScreenCoord;
float2 Value_N42=float2(0.0);
Value_N42=ScreenCoord_N34;
float Output_N9=0.0;
float param=(*sc_set0.UserUniforms).blurSize;
Output_N9=param;
float Output_N60=0.0;
Output_N60=Output_N9/(*sc_set0.UserUniforms).Port_Input1_N060;
float Value_N44=0.0;
Value_N44=Output_N60;
float Output_N45=0.0;
Output_N45=Value_N44+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 Color_N46=float4(0.0);
int l9_14;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_15=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_15=0;
}
else
{
l9_15=in.varStereoViewID;
}
int l9_16=l9_15;
l9_14=1-l9_16;
}
else
{
int l9_17=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_17=0;
}
else
{
l9_17=in.varStereoViewID;
}
int l9_18=l9_17;
l9_14=l9_18;
}
int l9_19=l9_14;
int param_1=glowTextureLayout_tmp;
int param_2=l9_19;
float2 param_3=Value_N42;
bool param_4=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 param_5=(*sc_set0.UserUniforms).glowTextureTransform;
int2 param_6=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool param_7=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 param_8=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool param_9=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 param_10=(*sc_set0.UserUniforms).glowTextureBorderColor;
float param_11=Output_N45;
bool l9_20=param_9&&(!param_7);
float l9_21=1.0;
float l9_22=param_3.x;
int l9_23=param_6.x;
if (l9_23==1)
{
l9_22=fract(l9_22);
}
else
{
if (l9_23==2)
{
float l9_24=fract(l9_22);
float l9_25=l9_22-l9_24;
float l9_26=step(0.25,fract(l9_25*0.5));
l9_22=mix(l9_24,1.0-l9_24,fast::clamp(l9_26,0.0,1.0));
}
}
param_3.x=l9_22;
float l9_27=param_3.y;
int l9_28=param_6.y;
if (l9_28==1)
{
l9_27=fract(l9_27);
}
else
{
if (l9_28==2)
{
float l9_29=fract(l9_27);
float l9_30=l9_27-l9_29;
float l9_31=step(0.25,fract(l9_30*0.5));
l9_27=mix(l9_29,1.0-l9_29,fast::clamp(l9_31,0.0,1.0));
}
}
param_3.y=l9_27;
if (param_7)
{
bool l9_32=param_9;
bool l9_33;
if (l9_32)
{
l9_33=param_6.x==3;
}
else
{
l9_33=l9_32;
}
float l9_34=param_3.x;
float l9_35=param_8.x;
float l9_36=param_8.z;
bool l9_37=l9_33;
float l9_38=l9_21;
float l9_39=fast::clamp(l9_34,l9_35,l9_36);
float l9_40=step(abs(l9_34-l9_39),9.9999997e-06);
l9_38*=(l9_40+((1.0-float(l9_37))*(1.0-l9_40)));
l9_34=l9_39;
param_3.x=l9_34;
l9_21=l9_38;
bool l9_41=param_9;
bool l9_42;
if (l9_41)
{
l9_42=param_6.y==3;
}
else
{
l9_42=l9_41;
}
float l9_43=param_3.y;
float l9_44=param_8.y;
float l9_45=param_8.w;
bool l9_46=l9_42;
float l9_47=l9_21;
float l9_48=fast::clamp(l9_43,l9_44,l9_45);
float l9_49=step(abs(l9_43-l9_48),9.9999997e-06);
l9_47*=(l9_49+((1.0-float(l9_46))*(1.0-l9_49)));
l9_43=l9_48;
param_3.y=l9_43;
l9_21=l9_47;
}
float2 l9_50=param_3;
bool l9_51=param_4;
float3x3 l9_52=param_5;
if (l9_51)
{
l9_50=float2((l9_52*float3(l9_50,1.0)).xy);
}
float2 l9_53=l9_50;
param_3=l9_53;
float l9_54=param_3.x;
int l9_55=param_6.x;
bool l9_56=l9_20;
float l9_57=l9_21;
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
param_3.x=l9_54;
l9_21=l9_57;
float l9_65=param_3.y;
int l9_66=param_6.y;
bool l9_67=l9_20;
float l9_68=l9_21;
if ((l9_66==0)||(l9_66==3))
{
float l9_69=l9_65;
float l9_70=0.0;
float l9_71=1.0;
bool l9_72=l9_67;
float l9_73=l9_68;
float l9_74=fast::clamp(l9_69,l9_70,l9_71);
float l9_75=step(abs(l9_69-l9_74),9.9999997e-06);
l9_73*=(l9_75+((1.0-float(l9_72))*(1.0-l9_75)));
l9_69=l9_74;
l9_65=l9_69;
l9_68=l9_73;
}
param_3.y=l9_65;
l9_21=l9_68;
float2 l9_76=param_3;
int l9_77=param_1;
int l9_78=param_2;
float l9_79=param_11;
float2 l9_80=l9_76;
int l9_81=l9_77;
int l9_82=l9_78;
float3 l9_83=float3(0.0);
if (l9_81==0)
{
l9_83=float3(l9_80,0.0);
}
else
{
if (l9_81==1)
{
l9_83=float3(l9_80.x,(l9_80.y*0.5)+(0.5-(float(l9_82)*0.5)),0.0);
}
else
{
l9_83=float3(l9_80,float(l9_82));
}
}
float3 l9_84=l9_83;
float3 l9_85=l9_84;
float4 l9_86=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_85.xy,level(l9_79));
float4 l9_87=l9_86;
if (param_9)
{
l9_87=mix(param_10,l9_87,float4(l9_21));
}
float4 l9_88=l9_87;
Color_N46=l9_88;
float3 Output_N68=float3(0.0);
Output_N68=float3(Color_N46.x,Color_N46.y,Color_N46.z);
float3 Output_N104=float3(0.0);
ssGlobals param_13=Globals;
float3 param_12=float3(0.0);
param_13.Loop_Count_ID0=3.0;
float3 l9_89=param_12;
ssGlobals l9_90=param_13;
float3 l9_91=float3(0.0);
l9_90.Loop_Index_ID0=0.0;
l9_90.Loop_Ratio_ID0=0.0;
float2 l9_92=float2(0.0);
float2 l9_93=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_92=l9_93;
float2 l9_94=float2(0.0);
l9_94=l9_90.gScreenCoord;
float2 l9_95=float2(0.0);
l9_95=l9_94;
float2 l9_96=float2(0.0);
float2 l9_97=(*sc_set0.UserUniforms).ratio;
l9_96=l9_97;
float2 l9_98=float2(0.0);
l9_98=l9_92*l9_96;
float2 l9_99=float2(0.0);
l9_99=l9_98;
float l9_100=0.0;
float l9_101=(*sc_set0.UserUniforms).blurSize;
l9_100=l9_101;
float l9_102=0.0;
l9_102=l9_100/(*sc_set0.UserUniforms).Port_Input1_N060;
float l9_103=0.0;
l9_103=l9_102;
float l9_104=0.0;
l9_104=exp2(l9_103);
float l9_105=0.0;
l9_105=l9_90.Loop_Index_ID0;
float l9_106=0.0;
l9_106=l9_105*(*sc_set0.UserUniforms).Port_Input1_N003;
float l9_107=0.0;
l9_107=mod(l9_106,(*sc_set0.UserUniforms).Port_Input1_N086);
float2 l9_108=float2(0.0);
float l9_109=l9_107;
float2 l9_110=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_111=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_112=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_113=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_114=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_115=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_116=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_117=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_118[8];
l9_118[0]=l9_110;
l9_118[1]=l9_111;
l9_118[2]=l9_112;
l9_118[3]=l9_113;
l9_118[4]=l9_114;
l9_118[5]=l9_115;
l9_118[6]=l9_116;
l9_118[7]=l9_117;
int l9_119=int(fast::clamp(l9_109+9.9999997e-05,0.0,7.0));
float2 l9_120=l9_118[l9_119];
l9_108=l9_120;
float2 l9_121=float2(0.0);
l9_121=(l9_99*float2(l9_104))*l9_108;
float2 l9_122=float2(0.0);
l9_122=l9_95+l9_121;
float l9_123=0.0;
l9_123=l9_103+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_124=float4(0.0);
int l9_125;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_126=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_126=0;
}
else
{
l9_126=in.varStereoViewID;
}
int l9_127=l9_126;
l9_125=1-l9_127;
}
else
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=in.varStereoViewID;
}
int l9_129=l9_128;
l9_125=l9_129;
}
int l9_130=l9_125;
int l9_131=glowTextureLayout_tmp;
int l9_132=l9_130;
float2 l9_133=l9_122;
bool l9_134=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_135=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_136=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_137=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_138=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_139=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_140=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_141=l9_123;
bool l9_142=l9_139&&(!l9_137);
float l9_143=1.0;
float l9_144=l9_133.x;
int l9_145=l9_136.x;
if (l9_145==1)
{
l9_144=fract(l9_144);
}
else
{
if (l9_145==2)
{
float l9_146=fract(l9_144);
float l9_147=l9_144-l9_146;
float l9_148=step(0.25,fract(l9_147*0.5));
l9_144=mix(l9_146,1.0-l9_146,fast::clamp(l9_148,0.0,1.0));
}
}
l9_133.x=l9_144;
float l9_149=l9_133.y;
int l9_150=l9_136.y;
if (l9_150==1)
{
l9_149=fract(l9_149);
}
else
{
if (l9_150==2)
{
float l9_151=fract(l9_149);
float l9_152=l9_149-l9_151;
float l9_153=step(0.25,fract(l9_152*0.5));
l9_149=mix(l9_151,1.0-l9_151,fast::clamp(l9_153,0.0,1.0));
}
}
l9_133.y=l9_149;
if (l9_137)
{
bool l9_154=l9_139;
bool l9_155;
if (l9_154)
{
l9_155=l9_136.x==3;
}
else
{
l9_155=l9_154;
}
float l9_156=l9_133.x;
float l9_157=l9_138.x;
float l9_158=l9_138.z;
bool l9_159=l9_155;
float l9_160=l9_143;
float l9_161=fast::clamp(l9_156,l9_157,l9_158);
float l9_162=step(abs(l9_156-l9_161),9.9999997e-06);
l9_160*=(l9_162+((1.0-float(l9_159))*(1.0-l9_162)));
l9_156=l9_161;
l9_133.x=l9_156;
l9_143=l9_160;
bool l9_163=l9_139;
bool l9_164;
if (l9_163)
{
l9_164=l9_136.y==3;
}
else
{
l9_164=l9_163;
}
float l9_165=l9_133.y;
float l9_166=l9_138.y;
float l9_167=l9_138.w;
bool l9_168=l9_164;
float l9_169=l9_143;
float l9_170=fast::clamp(l9_165,l9_166,l9_167);
float l9_171=step(abs(l9_165-l9_170),9.9999997e-06);
l9_169*=(l9_171+((1.0-float(l9_168))*(1.0-l9_171)));
l9_165=l9_170;
l9_133.y=l9_165;
l9_143=l9_169;
}
float2 l9_172=l9_133;
bool l9_173=l9_134;
float3x3 l9_174=l9_135;
if (l9_173)
{
l9_172=float2((l9_174*float3(l9_172,1.0)).xy);
}
float2 l9_175=l9_172;
l9_133=l9_175;
float l9_176=l9_133.x;
int l9_177=l9_136.x;
bool l9_178=l9_142;
float l9_179=l9_143;
if ((l9_177==0)||(l9_177==3))
{
float l9_180=l9_176;
float l9_181=0.0;
float l9_182=1.0;
bool l9_183=l9_178;
float l9_184=l9_179;
float l9_185=fast::clamp(l9_180,l9_181,l9_182);
float l9_186=step(abs(l9_180-l9_185),9.9999997e-06);
l9_184*=(l9_186+((1.0-float(l9_183))*(1.0-l9_186)));
l9_180=l9_185;
l9_176=l9_180;
l9_179=l9_184;
}
l9_133.x=l9_176;
l9_143=l9_179;
float l9_187=l9_133.y;
int l9_188=l9_136.y;
bool l9_189=l9_142;
float l9_190=l9_143;
if ((l9_188==0)||(l9_188==3))
{
float l9_191=l9_187;
float l9_192=0.0;
float l9_193=1.0;
bool l9_194=l9_189;
float l9_195=l9_190;
float l9_196=fast::clamp(l9_191,l9_192,l9_193);
float l9_197=step(abs(l9_191-l9_196),9.9999997e-06);
l9_195*=(l9_197+((1.0-float(l9_194))*(1.0-l9_197)));
l9_191=l9_196;
l9_187=l9_191;
l9_190=l9_195;
}
l9_133.y=l9_187;
l9_143=l9_190;
float2 l9_198=l9_133;
int l9_199=l9_131;
int l9_200=l9_132;
float l9_201=l9_141;
float2 l9_202=l9_198;
int l9_203=l9_199;
int l9_204=l9_200;
float3 l9_205=float3(0.0);
if (l9_203==0)
{
l9_205=float3(l9_202,0.0);
}
else
{
if (l9_203==1)
{
l9_205=float3(l9_202.x,(l9_202.y*0.5)+(0.5-(float(l9_204)*0.5)),0.0);
}
else
{
l9_205=float3(l9_202,float(l9_204));
}
}
float3 l9_206=l9_205;
float3 l9_207=l9_206;
float4 l9_208=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_207.xy,level(l9_201));
float4 l9_209=l9_208;
if (l9_139)
{
l9_209=mix(l9_140,l9_209,float4(l9_143));
}
float4 l9_210=l9_209;
l9_124=l9_210;
float3 l9_211=float3(0.0);
l9_211=float3(l9_124.x,l9_124.y,l9_124.z);
l9_91=l9_211;
l9_89+=l9_91;
param_12=l9_89;
float3 l9_212=param_12;
ssGlobals l9_213=param_13;
float3 l9_214=float3(0.0);
l9_213.Loop_Index_ID0=1.0;
l9_213.Loop_Ratio_ID0=0.5;
float2 l9_215=float2(0.0);
float2 l9_216=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_215=l9_216;
float2 l9_217=float2(0.0);
l9_217=l9_213.gScreenCoord;
float2 l9_218=float2(0.0);
l9_218=l9_217;
float2 l9_219=float2(0.0);
float2 l9_220=(*sc_set0.UserUniforms).ratio;
l9_219=l9_220;
float2 l9_221=float2(0.0);
l9_221=l9_215*l9_219;
float2 l9_222=float2(0.0);
l9_222=l9_221;
float l9_223=0.0;
float l9_224=(*sc_set0.UserUniforms).blurSize;
l9_223=l9_224;
float l9_225=0.0;
l9_225=l9_223/(*sc_set0.UserUniforms).Port_Input1_N060;
float l9_226=0.0;
l9_226=l9_225;
float l9_227=0.0;
l9_227=exp2(l9_226);
float l9_228=0.0;
l9_228=l9_213.Loop_Index_ID0;
float l9_229=0.0;
l9_229=l9_228*(*sc_set0.UserUniforms).Port_Input1_N003;
float l9_230=0.0;
l9_230=mod(l9_229,(*sc_set0.UserUniforms).Port_Input1_N086);
float2 l9_231=float2(0.0);
float l9_232=l9_230;
float2 l9_233=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_234=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_235=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_236=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_237=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_238=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_239=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_240=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_241[8];
l9_241[0]=l9_233;
l9_241[1]=l9_234;
l9_241[2]=l9_235;
l9_241[3]=l9_236;
l9_241[4]=l9_237;
l9_241[5]=l9_238;
l9_241[6]=l9_239;
l9_241[7]=l9_240;
int l9_242=int(fast::clamp(l9_232+9.9999997e-05,0.0,7.0));
float2 l9_243=l9_241[l9_242];
l9_231=l9_243;
float2 l9_244=float2(0.0);
l9_244=(l9_222*float2(l9_227))*l9_231;
float2 l9_245=float2(0.0);
l9_245=l9_218+l9_244;
float l9_246=0.0;
l9_246=l9_226+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_247=float4(0.0);
int l9_248;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_249=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_249=0;
}
else
{
l9_249=in.varStereoViewID;
}
int l9_250=l9_249;
l9_248=1-l9_250;
}
else
{
int l9_251=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_251=0;
}
else
{
l9_251=in.varStereoViewID;
}
int l9_252=l9_251;
l9_248=l9_252;
}
int l9_253=l9_248;
int l9_254=glowTextureLayout_tmp;
int l9_255=l9_253;
float2 l9_256=l9_245;
bool l9_257=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_258=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_259=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_260=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_261=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_262=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_263=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_264=l9_246;
bool l9_265=l9_262&&(!l9_260);
float l9_266=1.0;
float l9_267=l9_256.x;
int l9_268=l9_259.x;
if (l9_268==1)
{
l9_267=fract(l9_267);
}
else
{
if (l9_268==2)
{
float l9_269=fract(l9_267);
float l9_270=l9_267-l9_269;
float l9_271=step(0.25,fract(l9_270*0.5));
l9_267=mix(l9_269,1.0-l9_269,fast::clamp(l9_271,0.0,1.0));
}
}
l9_256.x=l9_267;
float l9_272=l9_256.y;
int l9_273=l9_259.y;
if (l9_273==1)
{
l9_272=fract(l9_272);
}
else
{
if (l9_273==2)
{
float l9_274=fract(l9_272);
float l9_275=l9_272-l9_274;
float l9_276=step(0.25,fract(l9_275*0.5));
l9_272=mix(l9_274,1.0-l9_274,fast::clamp(l9_276,0.0,1.0));
}
}
l9_256.y=l9_272;
if (l9_260)
{
bool l9_277=l9_262;
bool l9_278;
if (l9_277)
{
l9_278=l9_259.x==3;
}
else
{
l9_278=l9_277;
}
float l9_279=l9_256.x;
float l9_280=l9_261.x;
float l9_281=l9_261.z;
bool l9_282=l9_278;
float l9_283=l9_266;
float l9_284=fast::clamp(l9_279,l9_280,l9_281);
float l9_285=step(abs(l9_279-l9_284),9.9999997e-06);
l9_283*=(l9_285+((1.0-float(l9_282))*(1.0-l9_285)));
l9_279=l9_284;
l9_256.x=l9_279;
l9_266=l9_283;
bool l9_286=l9_262;
bool l9_287;
if (l9_286)
{
l9_287=l9_259.y==3;
}
else
{
l9_287=l9_286;
}
float l9_288=l9_256.y;
float l9_289=l9_261.y;
float l9_290=l9_261.w;
bool l9_291=l9_287;
float l9_292=l9_266;
float l9_293=fast::clamp(l9_288,l9_289,l9_290);
float l9_294=step(abs(l9_288-l9_293),9.9999997e-06);
l9_292*=(l9_294+((1.0-float(l9_291))*(1.0-l9_294)));
l9_288=l9_293;
l9_256.y=l9_288;
l9_266=l9_292;
}
float2 l9_295=l9_256;
bool l9_296=l9_257;
float3x3 l9_297=l9_258;
if (l9_296)
{
l9_295=float2((l9_297*float3(l9_295,1.0)).xy);
}
float2 l9_298=l9_295;
l9_256=l9_298;
float l9_299=l9_256.x;
int l9_300=l9_259.x;
bool l9_301=l9_265;
float l9_302=l9_266;
if ((l9_300==0)||(l9_300==3))
{
float l9_303=l9_299;
float l9_304=0.0;
float l9_305=1.0;
bool l9_306=l9_301;
float l9_307=l9_302;
float l9_308=fast::clamp(l9_303,l9_304,l9_305);
float l9_309=step(abs(l9_303-l9_308),9.9999997e-06);
l9_307*=(l9_309+((1.0-float(l9_306))*(1.0-l9_309)));
l9_303=l9_308;
l9_299=l9_303;
l9_302=l9_307;
}
l9_256.x=l9_299;
l9_266=l9_302;
float l9_310=l9_256.y;
int l9_311=l9_259.y;
bool l9_312=l9_265;
float l9_313=l9_266;
if ((l9_311==0)||(l9_311==3))
{
float l9_314=l9_310;
float l9_315=0.0;
float l9_316=1.0;
bool l9_317=l9_312;
float l9_318=l9_313;
float l9_319=fast::clamp(l9_314,l9_315,l9_316);
float l9_320=step(abs(l9_314-l9_319),9.9999997e-06);
l9_318*=(l9_320+((1.0-float(l9_317))*(1.0-l9_320)));
l9_314=l9_319;
l9_310=l9_314;
l9_313=l9_318;
}
l9_256.y=l9_310;
l9_266=l9_313;
float2 l9_321=l9_256;
int l9_322=l9_254;
int l9_323=l9_255;
float l9_324=l9_264;
float2 l9_325=l9_321;
int l9_326=l9_322;
int l9_327=l9_323;
float3 l9_328=float3(0.0);
if (l9_326==0)
{
l9_328=float3(l9_325,0.0);
}
else
{
if (l9_326==1)
{
l9_328=float3(l9_325.x,(l9_325.y*0.5)+(0.5-(float(l9_327)*0.5)),0.0);
}
else
{
l9_328=float3(l9_325,float(l9_327));
}
}
float3 l9_329=l9_328;
float3 l9_330=l9_329;
float4 l9_331=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_330.xy,level(l9_324));
float4 l9_332=l9_331;
if (l9_262)
{
l9_332=mix(l9_263,l9_332,float4(l9_266));
}
float4 l9_333=l9_332;
l9_247=l9_333;
float3 l9_334=float3(0.0);
l9_334=float3(l9_247.x,l9_247.y,l9_247.z);
l9_214=l9_334;
l9_212+=l9_214;
param_12=l9_212;
float3 l9_335=param_12;
ssGlobals l9_336=param_13;
float3 l9_337=float3(0.0);
l9_336.Loop_Index_ID0=2.0;
l9_336.Loop_Ratio_ID0=1.0;
float2 l9_338=float2(0.0);
float2 l9_339=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_338=l9_339;
float2 l9_340=float2(0.0);
l9_340=l9_336.gScreenCoord;
float2 l9_341=float2(0.0);
l9_341=l9_340;
float2 l9_342=float2(0.0);
float2 l9_343=(*sc_set0.UserUniforms).ratio;
l9_342=l9_343;
float2 l9_344=float2(0.0);
l9_344=l9_338*l9_342;
float2 l9_345=float2(0.0);
l9_345=l9_344;
float l9_346=0.0;
float l9_347=(*sc_set0.UserUniforms).blurSize;
l9_346=l9_347;
float l9_348=0.0;
l9_348=l9_346/(*sc_set0.UserUniforms).Port_Input1_N060;
float l9_349=0.0;
l9_349=l9_348;
float l9_350=0.0;
l9_350=exp2(l9_349);
float l9_351=0.0;
l9_351=l9_336.Loop_Index_ID0;
float l9_352=0.0;
l9_352=l9_351*(*sc_set0.UserUniforms).Port_Input1_N003;
float l9_353=0.0;
l9_353=mod(l9_352,(*sc_set0.UserUniforms).Port_Input1_N086);
float2 l9_354=float2(0.0);
float l9_355=l9_353;
float2 l9_356=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_357=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_358=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_359=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_360=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_361=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_362=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_363=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_364[8];
l9_364[0]=l9_356;
l9_364[1]=l9_357;
l9_364[2]=l9_358;
l9_364[3]=l9_359;
l9_364[4]=l9_360;
l9_364[5]=l9_361;
l9_364[6]=l9_362;
l9_364[7]=l9_363;
int l9_365=int(fast::clamp(l9_355+9.9999997e-05,0.0,7.0));
float2 l9_366=l9_364[l9_365];
l9_354=l9_366;
float2 l9_367=float2(0.0);
l9_367=(l9_345*float2(l9_350))*l9_354;
float2 l9_368=float2(0.0);
l9_368=l9_341+l9_367;
float l9_369=0.0;
l9_369=l9_349+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_370=float4(0.0);
int l9_371;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_372=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_372=0;
}
else
{
l9_372=in.varStereoViewID;
}
int l9_373=l9_372;
l9_371=1-l9_373;
}
else
{
int l9_374=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_374=0;
}
else
{
l9_374=in.varStereoViewID;
}
int l9_375=l9_374;
l9_371=l9_375;
}
int l9_376=l9_371;
int l9_377=glowTextureLayout_tmp;
int l9_378=l9_376;
float2 l9_379=l9_368;
bool l9_380=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_381=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_382=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_383=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_384=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_385=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_386=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_387=l9_369;
bool l9_388=l9_385&&(!l9_383);
float l9_389=1.0;
float l9_390=l9_379.x;
int l9_391=l9_382.x;
if (l9_391==1)
{
l9_390=fract(l9_390);
}
else
{
if (l9_391==2)
{
float l9_392=fract(l9_390);
float l9_393=l9_390-l9_392;
float l9_394=step(0.25,fract(l9_393*0.5));
l9_390=mix(l9_392,1.0-l9_392,fast::clamp(l9_394,0.0,1.0));
}
}
l9_379.x=l9_390;
float l9_395=l9_379.y;
int l9_396=l9_382.y;
if (l9_396==1)
{
l9_395=fract(l9_395);
}
else
{
if (l9_396==2)
{
float l9_397=fract(l9_395);
float l9_398=l9_395-l9_397;
float l9_399=step(0.25,fract(l9_398*0.5));
l9_395=mix(l9_397,1.0-l9_397,fast::clamp(l9_399,0.0,1.0));
}
}
l9_379.y=l9_395;
if (l9_383)
{
bool l9_400=l9_385;
bool l9_401;
if (l9_400)
{
l9_401=l9_382.x==3;
}
else
{
l9_401=l9_400;
}
float l9_402=l9_379.x;
float l9_403=l9_384.x;
float l9_404=l9_384.z;
bool l9_405=l9_401;
float l9_406=l9_389;
float l9_407=fast::clamp(l9_402,l9_403,l9_404);
float l9_408=step(abs(l9_402-l9_407),9.9999997e-06);
l9_406*=(l9_408+((1.0-float(l9_405))*(1.0-l9_408)));
l9_402=l9_407;
l9_379.x=l9_402;
l9_389=l9_406;
bool l9_409=l9_385;
bool l9_410;
if (l9_409)
{
l9_410=l9_382.y==3;
}
else
{
l9_410=l9_409;
}
float l9_411=l9_379.y;
float l9_412=l9_384.y;
float l9_413=l9_384.w;
bool l9_414=l9_410;
float l9_415=l9_389;
float l9_416=fast::clamp(l9_411,l9_412,l9_413);
float l9_417=step(abs(l9_411-l9_416),9.9999997e-06);
l9_415*=(l9_417+((1.0-float(l9_414))*(1.0-l9_417)));
l9_411=l9_416;
l9_379.y=l9_411;
l9_389=l9_415;
}
float2 l9_418=l9_379;
bool l9_419=l9_380;
float3x3 l9_420=l9_381;
if (l9_419)
{
l9_418=float2((l9_420*float3(l9_418,1.0)).xy);
}
float2 l9_421=l9_418;
l9_379=l9_421;
float l9_422=l9_379.x;
int l9_423=l9_382.x;
bool l9_424=l9_388;
float l9_425=l9_389;
if ((l9_423==0)||(l9_423==3))
{
float l9_426=l9_422;
float l9_427=0.0;
float l9_428=1.0;
bool l9_429=l9_424;
float l9_430=l9_425;
float l9_431=fast::clamp(l9_426,l9_427,l9_428);
float l9_432=step(abs(l9_426-l9_431),9.9999997e-06);
l9_430*=(l9_432+((1.0-float(l9_429))*(1.0-l9_432)));
l9_426=l9_431;
l9_422=l9_426;
l9_425=l9_430;
}
l9_379.x=l9_422;
l9_389=l9_425;
float l9_433=l9_379.y;
int l9_434=l9_382.y;
bool l9_435=l9_388;
float l9_436=l9_389;
if ((l9_434==0)||(l9_434==3))
{
float l9_437=l9_433;
float l9_438=0.0;
float l9_439=1.0;
bool l9_440=l9_435;
float l9_441=l9_436;
float l9_442=fast::clamp(l9_437,l9_438,l9_439);
float l9_443=step(abs(l9_437-l9_442),9.9999997e-06);
l9_441*=(l9_443+((1.0-float(l9_440))*(1.0-l9_443)));
l9_437=l9_442;
l9_433=l9_437;
l9_436=l9_441;
}
l9_379.y=l9_433;
l9_389=l9_436;
float2 l9_444=l9_379;
int l9_445=l9_377;
int l9_446=l9_378;
float l9_447=l9_387;
float2 l9_448=l9_444;
int l9_449=l9_445;
int l9_450=l9_446;
float3 l9_451=float3(0.0);
if (l9_449==0)
{
l9_451=float3(l9_448,0.0);
}
else
{
if (l9_449==1)
{
l9_451=float3(l9_448.x,(l9_448.y*0.5)+(0.5-(float(l9_450)*0.5)),0.0);
}
else
{
l9_451=float3(l9_448,float(l9_450));
}
}
float3 l9_452=l9_451;
float3 l9_453=l9_452;
float4 l9_454=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_453.xy,level(l9_447));
float4 l9_455=l9_454;
if (l9_385)
{
l9_455=mix(l9_386,l9_455,float4(l9_389));
}
float4 l9_456=l9_455;
l9_370=l9_456;
float3 l9_457=float3(0.0);
l9_457=float3(l9_370.x,l9_370.y,l9_370.z);
l9_337=l9_457;
l9_335+=l9_337;
param_12=l9_335;
param_12/=float3(3.0);
Output_N104=param_12;
float3 Output_N105=float3(0.0);
Output_N105=mix(Output_N68,Output_N104,float3((*sc_set0.UserUniforms).Port_Input2_N105));
float3 Result_N61=float3(0.0);
float param_14=0.0;
float3 param_15=float3(0.0);
float3 param_16=(*sc_set0.UserUniforms).Port_Value1_N061;
float3 param_17=(*sc_set0.UserUniforms).Port_Default_N061;
ssGlobals param_19=Globals;
float l9_458=0.0;
float l9_459=(*sc_set0.UserUniforms).haze;
l9_458=l9_459;
float l9_460=0.0;
l9_460=l9_458;
float l9_461=0.0;
l9_461=float(l9_460==(*sc_set0.UserUniforms).Port_Input1_N062);
param_14=l9_461;
param_14=floor(param_14);
float3 param_18;
if (param_14==0.0)
{
float2 l9_462=float2(0.0);
l9_462=param_19.gScreenCoord;
float2 l9_463=float2(0.0);
l9_463=l9_462;
float2 l9_464=float2(0.0);
float2 l9_465=l9_463;
float4 l9_466=l9_463.xyxy+(*sc_set0.UserUniforms).Port_RandomSeed_N059;
float4 l9_467=float4(81.239487,17.348024,37.349838,59.39484);
float4 l9_468=l9_466;
int l9_469=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_469<3)
{
l9_468.x=fract(dot(l9_468,l9_467));
l9_468.y=fract(dot(l9_468,l9_467));
l9_468.z=fract(dot(l9_468,l9_467));
l9_468.w=fract(dot(l9_468,l9_467));
l9_469++;
continue;
}
else
{
break;
}
}
float4 l9_470=l9_468;
l9_464=l9_465+(((*sc_set0.UserUniforms).Port_Scale_N059*0.0099999998)*((l9_470.zw*2.0)-float2(1.0)));
float4 l9_471=float4(0.0);
int l9_472;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_473=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_473=0;
}
else
{
l9_473=in.varStereoViewID;
}
int l9_474=l9_473;
l9_472=1-l9_474;
}
else
{
int l9_475=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_475=0;
}
else
{
l9_475=in.varStereoViewID;
}
int l9_476=l9_475;
l9_472=l9_476;
}
int l9_477=l9_472;
int l9_478=glowTextureLayout_tmp;
int l9_479=l9_477;
float2 l9_480=l9_464;
bool l9_481=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_482=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_483=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_484=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_485=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_486=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_487=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_488=(*sc_set0.UserUniforms).Port_LODValue_N063;
bool l9_489=l9_486&&(!l9_484);
float l9_490=1.0;
float l9_491=l9_480.x;
int l9_492=l9_483.x;
if (l9_492==1)
{
l9_491=fract(l9_491);
}
else
{
if (l9_492==2)
{
float l9_493=fract(l9_491);
float l9_494=l9_491-l9_493;
float l9_495=step(0.25,fract(l9_494*0.5));
l9_491=mix(l9_493,1.0-l9_493,fast::clamp(l9_495,0.0,1.0));
}
}
l9_480.x=l9_491;
float l9_496=l9_480.y;
int l9_497=l9_483.y;
if (l9_497==1)
{
l9_496=fract(l9_496);
}
else
{
if (l9_497==2)
{
float l9_498=fract(l9_496);
float l9_499=l9_496-l9_498;
float l9_500=step(0.25,fract(l9_499*0.5));
l9_496=mix(l9_498,1.0-l9_498,fast::clamp(l9_500,0.0,1.0));
}
}
l9_480.y=l9_496;
if (l9_484)
{
bool l9_501=l9_486;
bool l9_502;
if (l9_501)
{
l9_502=l9_483.x==3;
}
else
{
l9_502=l9_501;
}
float l9_503=l9_480.x;
float l9_504=l9_485.x;
float l9_505=l9_485.z;
bool l9_506=l9_502;
float l9_507=l9_490;
float l9_508=fast::clamp(l9_503,l9_504,l9_505);
float l9_509=step(abs(l9_503-l9_508),9.9999997e-06);
l9_507*=(l9_509+((1.0-float(l9_506))*(1.0-l9_509)));
l9_503=l9_508;
l9_480.x=l9_503;
l9_490=l9_507;
bool l9_510=l9_486;
bool l9_511;
if (l9_510)
{
l9_511=l9_483.y==3;
}
else
{
l9_511=l9_510;
}
float l9_512=l9_480.y;
float l9_513=l9_485.y;
float l9_514=l9_485.w;
bool l9_515=l9_511;
float l9_516=l9_490;
float l9_517=fast::clamp(l9_512,l9_513,l9_514);
float l9_518=step(abs(l9_512-l9_517),9.9999997e-06);
l9_516*=(l9_518+((1.0-float(l9_515))*(1.0-l9_518)));
l9_512=l9_517;
l9_480.y=l9_512;
l9_490=l9_516;
}
float2 l9_519=l9_480;
bool l9_520=l9_481;
float3x3 l9_521=l9_482;
if (l9_520)
{
l9_519=float2((l9_521*float3(l9_519,1.0)).xy);
}
float2 l9_522=l9_519;
l9_480=l9_522;
float l9_523=l9_480.x;
int l9_524=l9_483.x;
bool l9_525=l9_489;
float l9_526=l9_490;
if ((l9_524==0)||(l9_524==3))
{
float l9_527=l9_523;
float l9_528=0.0;
float l9_529=1.0;
bool l9_530=l9_525;
float l9_531=l9_526;
float l9_532=fast::clamp(l9_527,l9_528,l9_529);
float l9_533=step(abs(l9_527-l9_532),9.9999997e-06);
l9_531*=(l9_533+((1.0-float(l9_530))*(1.0-l9_533)));
l9_527=l9_532;
l9_523=l9_527;
l9_526=l9_531;
}
l9_480.x=l9_523;
l9_490=l9_526;
float l9_534=l9_480.y;
int l9_535=l9_483.y;
bool l9_536=l9_489;
float l9_537=l9_490;
if ((l9_535==0)||(l9_535==3))
{
float l9_538=l9_534;
float l9_539=0.0;
float l9_540=1.0;
bool l9_541=l9_536;
float l9_542=l9_537;
float l9_543=fast::clamp(l9_538,l9_539,l9_540);
float l9_544=step(abs(l9_538-l9_543),9.9999997e-06);
l9_542*=(l9_544+((1.0-float(l9_541))*(1.0-l9_544)));
l9_538=l9_543;
l9_534=l9_538;
l9_537=l9_542;
}
l9_480.y=l9_534;
l9_490=l9_537;
float2 l9_545=l9_480;
int l9_546=l9_478;
int l9_547=l9_479;
float l9_548=l9_488;
float2 l9_549=l9_545;
int l9_550=l9_546;
int l9_551=l9_547;
float3 l9_552=float3(0.0);
if (l9_550==0)
{
l9_552=float3(l9_549,0.0);
}
else
{
if (l9_550==1)
{
l9_552=float3(l9_549.x,(l9_549.y*0.5)+(0.5-(float(l9_551)*0.5)),0.0);
}
else
{
l9_552=float3(l9_549,float(l9_551));
}
}
float3 l9_553=l9_552;
float3 l9_554=l9_553;
float4 l9_555=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_554.xy,level(l9_548));
float4 l9_556=l9_555;
if (l9_486)
{
l9_556=mix(l9_487,l9_556,float4(l9_490));
}
float4 l9_557=l9_556;
l9_471=l9_557;
float3 l9_558=float3(0.0);
l9_558=float3(l9_471.x,l9_471.y,l9_471.z);
float l9_559=0.0;
float l9_560=(*sc_set0.UserUniforms).haze;
l9_559=l9_560;
float l9_561=0.0;
l9_561=l9_559;
float3 l9_562=float3(0.0);
l9_562=l9_558*float3(l9_561);
param_15=l9_562;
param_18=param_15;
}
else
{
if (param_14==1.0)
{
param_18=param_16;
}
else
{
param_18=param_17;
}
}
Result_N61=param_18;
float3 Output_N28=float3(0.0);
Output_N28=Output_N105+Result_N61;
float3 Export_N106=float3(0.0);
Export_N106=Output_N28;
float2 Value_N12=float2(0.0);
Value_N12=ScreenCoord_N34;
float Output_N29=0.0;
Output_N29=Output_N9/(*sc_set0.UserUniforms).Port_Input1_N029;
float Value_N13=0.0;
Value_N13=Output_N29;
float Output_N14=0.0;
Output_N14=Value_N13+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 Color_N16=float4(0.0);
int l9_563;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_564=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_564=0;
}
else
{
l9_564=in.varStereoViewID;
}
int l9_565=l9_564;
l9_563=1-l9_565;
}
else
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
l9_563=l9_567;
}
int l9_568=l9_563;
int param_20=glowTextureLayout_tmp;
int param_21=l9_568;
float2 param_22=Value_N12;
bool param_23=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 param_24=(*sc_set0.UserUniforms).glowTextureTransform;
int2 param_25=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool param_26=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 param_27=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool param_28=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 param_29=(*sc_set0.UserUniforms).glowTextureBorderColor;
float param_30=Output_N14;
bool l9_569=param_28&&(!param_26);
float l9_570=1.0;
float l9_571=param_22.x;
int l9_572=param_25.x;
if (l9_572==1)
{
l9_571=fract(l9_571);
}
else
{
if (l9_572==2)
{
float l9_573=fract(l9_571);
float l9_574=l9_571-l9_573;
float l9_575=step(0.25,fract(l9_574*0.5));
l9_571=mix(l9_573,1.0-l9_573,fast::clamp(l9_575,0.0,1.0));
}
}
param_22.x=l9_571;
float l9_576=param_22.y;
int l9_577=param_25.y;
if (l9_577==1)
{
l9_576=fract(l9_576);
}
else
{
if (l9_577==2)
{
float l9_578=fract(l9_576);
float l9_579=l9_576-l9_578;
float l9_580=step(0.25,fract(l9_579*0.5));
l9_576=mix(l9_578,1.0-l9_578,fast::clamp(l9_580,0.0,1.0));
}
}
param_22.y=l9_576;
if (param_26)
{
bool l9_581=param_28;
bool l9_582;
if (l9_581)
{
l9_582=param_25.x==3;
}
else
{
l9_582=l9_581;
}
float l9_583=param_22.x;
float l9_584=param_27.x;
float l9_585=param_27.z;
bool l9_586=l9_582;
float l9_587=l9_570;
float l9_588=fast::clamp(l9_583,l9_584,l9_585);
float l9_589=step(abs(l9_583-l9_588),9.9999997e-06);
l9_587*=(l9_589+((1.0-float(l9_586))*(1.0-l9_589)));
l9_583=l9_588;
param_22.x=l9_583;
l9_570=l9_587;
bool l9_590=param_28;
bool l9_591;
if (l9_590)
{
l9_591=param_25.y==3;
}
else
{
l9_591=l9_590;
}
float l9_592=param_22.y;
float l9_593=param_27.y;
float l9_594=param_27.w;
bool l9_595=l9_591;
float l9_596=l9_570;
float l9_597=fast::clamp(l9_592,l9_593,l9_594);
float l9_598=step(abs(l9_592-l9_597),9.9999997e-06);
l9_596*=(l9_598+((1.0-float(l9_595))*(1.0-l9_598)));
l9_592=l9_597;
param_22.y=l9_592;
l9_570=l9_596;
}
float2 l9_599=param_22;
bool l9_600=param_23;
float3x3 l9_601=param_24;
if (l9_600)
{
l9_599=float2((l9_601*float3(l9_599,1.0)).xy);
}
float2 l9_602=l9_599;
param_22=l9_602;
float l9_603=param_22.x;
int l9_604=param_25.x;
bool l9_605=l9_569;
float l9_606=l9_570;
if ((l9_604==0)||(l9_604==3))
{
float l9_607=l9_603;
float l9_608=0.0;
float l9_609=1.0;
bool l9_610=l9_605;
float l9_611=l9_606;
float l9_612=fast::clamp(l9_607,l9_608,l9_609);
float l9_613=step(abs(l9_607-l9_612),9.9999997e-06);
l9_611*=(l9_613+((1.0-float(l9_610))*(1.0-l9_613)));
l9_607=l9_612;
l9_603=l9_607;
l9_606=l9_611;
}
param_22.x=l9_603;
l9_570=l9_606;
float l9_614=param_22.y;
int l9_615=param_25.y;
bool l9_616=l9_569;
float l9_617=l9_570;
if ((l9_615==0)||(l9_615==3))
{
float l9_618=l9_614;
float l9_619=0.0;
float l9_620=1.0;
bool l9_621=l9_616;
float l9_622=l9_617;
float l9_623=fast::clamp(l9_618,l9_619,l9_620);
float l9_624=step(abs(l9_618-l9_623),9.9999997e-06);
l9_622*=(l9_624+((1.0-float(l9_621))*(1.0-l9_624)));
l9_618=l9_623;
l9_614=l9_618;
l9_617=l9_622;
}
param_22.y=l9_614;
l9_570=l9_617;
float2 l9_625=param_22;
int l9_626=param_20;
int l9_627=param_21;
float l9_628=param_30;
float2 l9_629=l9_625;
int l9_630=l9_626;
int l9_631=l9_627;
float3 l9_632=float3(0.0);
if (l9_630==0)
{
l9_632=float3(l9_629,0.0);
}
else
{
if (l9_630==1)
{
l9_632=float3(l9_629.x,(l9_629.y*0.5)+(0.5-(float(l9_631)*0.5)),0.0);
}
else
{
l9_632=float3(l9_629,float(l9_631));
}
}
float3 l9_633=l9_632;
float3 l9_634=l9_633;
float4 l9_635=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_634.xy,level(l9_628));
float4 l9_636=l9_635;
if (param_28)
{
l9_636=mix(param_29,l9_636,float4(l9_570));
}
float4 l9_637=l9_636;
Color_N16=l9_637;
float3 Output_N70=float3(0.0);
Output_N70=float3(Color_N16.x,Color_N16.y,Color_N16.z);
float3 Output_N25=float3(0.0);
ssGlobals param_32=Globals;
float3 param_31=float3(0.0);
param_32.Loop_Count_ID0=4.0;
float3 l9_638=param_31;
ssGlobals l9_639=param_32;
float3 l9_640=float3(0.0);
l9_639.Loop_Index_ID0=0.0;
l9_639.Loop_Ratio_ID0=0.0;
float2 l9_641=float2(0.0);
float2 l9_642=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_641=l9_642;
float2 l9_643=float2(0.0);
l9_643=l9_639.gScreenCoord;
float2 l9_644=float2(0.0);
l9_644=l9_643;
float2 l9_645=float2(0.0);
float2 l9_646=(*sc_set0.UserUniforms).ratio;
l9_645=l9_646;
float2 l9_647=float2(0.0);
l9_647=l9_641*l9_645;
float2 l9_648=float2(0.0);
l9_648=l9_647;
float l9_649=0.0;
float l9_650=(*sc_set0.UserUniforms).blurSize;
l9_649=l9_650;
float l9_651=0.0;
l9_651=l9_649/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_652=0.0;
l9_652=l9_651;
float l9_653=0.0;
l9_653=exp2(l9_652);
float l9_654=0.0;
l9_654=l9_639.Loop_Index_ID0;
float l9_655=0.0;
l9_655=l9_654*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_656=0.0;
l9_656=mod(l9_655,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_657=float2(0.0);
float l9_658=l9_656;
float2 l9_659=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_660=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_661=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_662=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_663=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_664=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_665=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_666=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_667[8];
l9_667[0]=l9_659;
l9_667[1]=l9_660;
l9_667[2]=l9_661;
l9_667[3]=l9_662;
l9_667[4]=l9_663;
l9_667[5]=l9_664;
l9_667[6]=l9_665;
l9_667[7]=l9_666;
int l9_668=int(fast::clamp(l9_658+9.9999997e-05,0.0,7.0));
float2 l9_669=l9_667[l9_668];
l9_657=l9_669;
float2 l9_670=float2(0.0);
l9_670=(l9_648*float2(l9_653))*l9_657;
float2 l9_671=float2(0.0);
l9_671=l9_644+l9_670;
float l9_672=0.0;
l9_672=l9_652+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_673=float4(0.0);
int l9_674;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_675=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_675=0;
}
else
{
l9_675=in.varStereoViewID;
}
int l9_676=l9_675;
l9_674=1-l9_676;
}
else
{
int l9_677=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_677=0;
}
else
{
l9_677=in.varStereoViewID;
}
int l9_678=l9_677;
l9_674=l9_678;
}
int l9_679=l9_674;
int l9_680=glowTextureLayout_tmp;
int l9_681=l9_679;
float2 l9_682=l9_671;
bool l9_683=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_684=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_685=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_686=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_687=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_688=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_689=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_690=l9_672;
bool l9_691=l9_688&&(!l9_686);
float l9_692=1.0;
float l9_693=l9_682.x;
int l9_694=l9_685.x;
if (l9_694==1)
{
l9_693=fract(l9_693);
}
else
{
if (l9_694==2)
{
float l9_695=fract(l9_693);
float l9_696=l9_693-l9_695;
float l9_697=step(0.25,fract(l9_696*0.5));
l9_693=mix(l9_695,1.0-l9_695,fast::clamp(l9_697,0.0,1.0));
}
}
l9_682.x=l9_693;
float l9_698=l9_682.y;
int l9_699=l9_685.y;
if (l9_699==1)
{
l9_698=fract(l9_698);
}
else
{
if (l9_699==2)
{
float l9_700=fract(l9_698);
float l9_701=l9_698-l9_700;
float l9_702=step(0.25,fract(l9_701*0.5));
l9_698=mix(l9_700,1.0-l9_700,fast::clamp(l9_702,0.0,1.0));
}
}
l9_682.y=l9_698;
if (l9_686)
{
bool l9_703=l9_688;
bool l9_704;
if (l9_703)
{
l9_704=l9_685.x==3;
}
else
{
l9_704=l9_703;
}
float l9_705=l9_682.x;
float l9_706=l9_687.x;
float l9_707=l9_687.z;
bool l9_708=l9_704;
float l9_709=l9_692;
float l9_710=fast::clamp(l9_705,l9_706,l9_707);
float l9_711=step(abs(l9_705-l9_710),9.9999997e-06);
l9_709*=(l9_711+((1.0-float(l9_708))*(1.0-l9_711)));
l9_705=l9_710;
l9_682.x=l9_705;
l9_692=l9_709;
bool l9_712=l9_688;
bool l9_713;
if (l9_712)
{
l9_713=l9_685.y==3;
}
else
{
l9_713=l9_712;
}
float l9_714=l9_682.y;
float l9_715=l9_687.y;
float l9_716=l9_687.w;
bool l9_717=l9_713;
float l9_718=l9_692;
float l9_719=fast::clamp(l9_714,l9_715,l9_716);
float l9_720=step(abs(l9_714-l9_719),9.9999997e-06);
l9_718*=(l9_720+((1.0-float(l9_717))*(1.0-l9_720)));
l9_714=l9_719;
l9_682.y=l9_714;
l9_692=l9_718;
}
float2 l9_721=l9_682;
bool l9_722=l9_683;
float3x3 l9_723=l9_684;
if (l9_722)
{
l9_721=float2((l9_723*float3(l9_721,1.0)).xy);
}
float2 l9_724=l9_721;
l9_682=l9_724;
float l9_725=l9_682.x;
int l9_726=l9_685.x;
bool l9_727=l9_691;
float l9_728=l9_692;
if ((l9_726==0)||(l9_726==3))
{
float l9_729=l9_725;
float l9_730=0.0;
float l9_731=1.0;
bool l9_732=l9_727;
float l9_733=l9_728;
float l9_734=fast::clamp(l9_729,l9_730,l9_731);
float l9_735=step(abs(l9_729-l9_734),9.9999997e-06);
l9_733*=(l9_735+((1.0-float(l9_732))*(1.0-l9_735)));
l9_729=l9_734;
l9_725=l9_729;
l9_728=l9_733;
}
l9_682.x=l9_725;
l9_692=l9_728;
float l9_736=l9_682.y;
int l9_737=l9_685.y;
bool l9_738=l9_691;
float l9_739=l9_692;
if ((l9_737==0)||(l9_737==3))
{
float l9_740=l9_736;
float l9_741=0.0;
float l9_742=1.0;
bool l9_743=l9_738;
float l9_744=l9_739;
float l9_745=fast::clamp(l9_740,l9_741,l9_742);
float l9_746=step(abs(l9_740-l9_745),9.9999997e-06);
l9_744*=(l9_746+((1.0-float(l9_743))*(1.0-l9_746)));
l9_740=l9_745;
l9_736=l9_740;
l9_739=l9_744;
}
l9_682.y=l9_736;
l9_692=l9_739;
float2 l9_747=l9_682;
int l9_748=l9_680;
int l9_749=l9_681;
float l9_750=l9_690;
float2 l9_751=l9_747;
int l9_752=l9_748;
int l9_753=l9_749;
float3 l9_754=float3(0.0);
if (l9_752==0)
{
l9_754=float3(l9_751,0.0);
}
else
{
if (l9_752==1)
{
l9_754=float3(l9_751.x,(l9_751.y*0.5)+(0.5-(float(l9_753)*0.5)),0.0);
}
else
{
l9_754=float3(l9_751,float(l9_753));
}
}
float3 l9_755=l9_754;
float3 l9_756=l9_755;
float4 l9_757=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_756.xy,level(l9_750));
float4 l9_758=l9_757;
if (l9_688)
{
l9_758=mix(l9_689,l9_758,float4(l9_692));
}
float4 l9_759=l9_758;
l9_673=l9_759;
float3 l9_760=float3(0.0);
l9_760=float3(l9_673.x,l9_673.y,l9_673.z);
l9_640=l9_760;
l9_638+=l9_640;
param_31=l9_638;
float3 l9_761=param_31;
ssGlobals l9_762=param_32;
float3 l9_763=float3(0.0);
l9_762.Loop_Index_ID0=1.0;
l9_762.Loop_Ratio_ID0=0.33333299;
float2 l9_764=float2(0.0);
float2 l9_765=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_764=l9_765;
float2 l9_766=float2(0.0);
l9_766=l9_762.gScreenCoord;
float2 l9_767=float2(0.0);
l9_767=l9_766;
float2 l9_768=float2(0.0);
float2 l9_769=(*sc_set0.UserUniforms).ratio;
l9_768=l9_769;
float2 l9_770=float2(0.0);
l9_770=l9_764*l9_768;
float2 l9_771=float2(0.0);
l9_771=l9_770;
float l9_772=0.0;
float l9_773=(*sc_set0.UserUniforms).blurSize;
l9_772=l9_773;
float l9_774=0.0;
l9_774=l9_772/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_775=0.0;
l9_775=l9_774;
float l9_776=0.0;
l9_776=exp2(l9_775);
float l9_777=0.0;
l9_777=l9_762.Loop_Index_ID0;
float l9_778=0.0;
l9_778=l9_777*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_779=0.0;
l9_779=mod(l9_778,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_780=float2(0.0);
float l9_781=l9_779;
float2 l9_782=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_783=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_784=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_785=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_786=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_787=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_788=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_789=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_790[8];
l9_790[0]=l9_782;
l9_790[1]=l9_783;
l9_790[2]=l9_784;
l9_790[3]=l9_785;
l9_790[4]=l9_786;
l9_790[5]=l9_787;
l9_790[6]=l9_788;
l9_790[7]=l9_789;
int l9_791=int(fast::clamp(l9_781+9.9999997e-05,0.0,7.0));
float2 l9_792=l9_790[l9_791];
l9_780=l9_792;
float2 l9_793=float2(0.0);
l9_793=(l9_771*float2(l9_776))*l9_780;
float2 l9_794=float2(0.0);
l9_794=l9_767+l9_793;
float l9_795=0.0;
l9_795=l9_775+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_796=float4(0.0);
int l9_797;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_798=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_798=0;
}
else
{
l9_798=in.varStereoViewID;
}
int l9_799=l9_798;
l9_797=1-l9_799;
}
else
{
int l9_800=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_800=0;
}
else
{
l9_800=in.varStereoViewID;
}
int l9_801=l9_800;
l9_797=l9_801;
}
int l9_802=l9_797;
int l9_803=glowTextureLayout_tmp;
int l9_804=l9_802;
float2 l9_805=l9_794;
bool l9_806=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_807=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_808=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_809=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_810=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_811=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_812=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_813=l9_795;
bool l9_814=l9_811&&(!l9_809);
float l9_815=1.0;
float l9_816=l9_805.x;
int l9_817=l9_808.x;
if (l9_817==1)
{
l9_816=fract(l9_816);
}
else
{
if (l9_817==2)
{
float l9_818=fract(l9_816);
float l9_819=l9_816-l9_818;
float l9_820=step(0.25,fract(l9_819*0.5));
l9_816=mix(l9_818,1.0-l9_818,fast::clamp(l9_820,0.0,1.0));
}
}
l9_805.x=l9_816;
float l9_821=l9_805.y;
int l9_822=l9_808.y;
if (l9_822==1)
{
l9_821=fract(l9_821);
}
else
{
if (l9_822==2)
{
float l9_823=fract(l9_821);
float l9_824=l9_821-l9_823;
float l9_825=step(0.25,fract(l9_824*0.5));
l9_821=mix(l9_823,1.0-l9_823,fast::clamp(l9_825,0.0,1.0));
}
}
l9_805.y=l9_821;
if (l9_809)
{
bool l9_826=l9_811;
bool l9_827;
if (l9_826)
{
l9_827=l9_808.x==3;
}
else
{
l9_827=l9_826;
}
float l9_828=l9_805.x;
float l9_829=l9_810.x;
float l9_830=l9_810.z;
bool l9_831=l9_827;
float l9_832=l9_815;
float l9_833=fast::clamp(l9_828,l9_829,l9_830);
float l9_834=step(abs(l9_828-l9_833),9.9999997e-06);
l9_832*=(l9_834+((1.0-float(l9_831))*(1.0-l9_834)));
l9_828=l9_833;
l9_805.x=l9_828;
l9_815=l9_832;
bool l9_835=l9_811;
bool l9_836;
if (l9_835)
{
l9_836=l9_808.y==3;
}
else
{
l9_836=l9_835;
}
float l9_837=l9_805.y;
float l9_838=l9_810.y;
float l9_839=l9_810.w;
bool l9_840=l9_836;
float l9_841=l9_815;
float l9_842=fast::clamp(l9_837,l9_838,l9_839);
float l9_843=step(abs(l9_837-l9_842),9.9999997e-06);
l9_841*=(l9_843+((1.0-float(l9_840))*(1.0-l9_843)));
l9_837=l9_842;
l9_805.y=l9_837;
l9_815=l9_841;
}
float2 l9_844=l9_805;
bool l9_845=l9_806;
float3x3 l9_846=l9_807;
if (l9_845)
{
l9_844=float2((l9_846*float3(l9_844,1.0)).xy);
}
float2 l9_847=l9_844;
l9_805=l9_847;
float l9_848=l9_805.x;
int l9_849=l9_808.x;
bool l9_850=l9_814;
float l9_851=l9_815;
if ((l9_849==0)||(l9_849==3))
{
float l9_852=l9_848;
float l9_853=0.0;
float l9_854=1.0;
bool l9_855=l9_850;
float l9_856=l9_851;
float l9_857=fast::clamp(l9_852,l9_853,l9_854);
float l9_858=step(abs(l9_852-l9_857),9.9999997e-06);
l9_856*=(l9_858+((1.0-float(l9_855))*(1.0-l9_858)));
l9_852=l9_857;
l9_848=l9_852;
l9_851=l9_856;
}
l9_805.x=l9_848;
l9_815=l9_851;
float l9_859=l9_805.y;
int l9_860=l9_808.y;
bool l9_861=l9_814;
float l9_862=l9_815;
if ((l9_860==0)||(l9_860==3))
{
float l9_863=l9_859;
float l9_864=0.0;
float l9_865=1.0;
bool l9_866=l9_861;
float l9_867=l9_862;
float l9_868=fast::clamp(l9_863,l9_864,l9_865);
float l9_869=step(abs(l9_863-l9_868),9.9999997e-06);
l9_867*=(l9_869+((1.0-float(l9_866))*(1.0-l9_869)));
l9_863=l9_868;
l9_859=l9_863;
l9_862=l9_867;
}
l9_805.y=l9_859;
l9_815=l9_862;
float2 l9_870=l9_805;
int l9_871=l9_803;
int l9_872=l9_804;
float l9_873=l9_813;
float2 l9_874=l9_870;
int l9_875=l9_871;
int l9_876=l9_872;
float3 l9_877=float3(0.0);
if (l9_875==0)
{
l9_877=float3(l9_874,0.0);
}
else
{
if (l9_875==1)
{
l9_877=float3(l9_874.x,(l9_874.y*0.5)+(0.5-(float(l9_876)*0.5)),0.0);
}
else
{
l9_877=float3(l9_874,float(l9_876));
}
}
float3 l9_878=l9_877;
float3 l9_879=l9_878;
float4 l9_880=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_879.xy,level(l9_873));
float4 l9_881=l9_880;
if (l9_811)
{
l9_881=mix(l9_812,l9_881,float4(l9_815));
}
float4 l9_882=l9_881;
l9_796=l9_882;
float3 l9_883=float3(0.0);
l9_883=float3(l9_796.x,l9_796.y,l9_796.z);
l9_763=l9_883;
l9_761+=l9_763;
param_31=l9_761;
float3 l9_884=param_31;
ssGlobals l9_885=param_32;
float3 l9_886=float3(0.0);
l9_885.Loop_Index_ID0=2.0;
l9_885.Loop_Ratio_ID0=0.66666698;
float2 l9_887=float2(0.0);
float2 l9_888=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_887=l9_888;
float2 l9_889=float2(0.0);
l9_889=l9_885.gScreenCoord;
float2 l9_890=float2(0.0);
l9_890=l9_889;
float2 l9_891=float2(0.0);
float2 l9_892=(*sc_set0.UserUniforms).ratio;
l9_891=l9_892;
float2 l9_893=float2(0.0);
l9_893=l9_887*l9_891;
float2 l9_894=float2(0.0);
l9_894=l9_893;
float l9_895=0.0;
float l9_896=(*sc_set0.UserUniforms).blurSize;
l9_895=l9_896;
float l9_897=0.0;
l9_897=l9_895/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_898=0.0;
l9_898=l9_897;
float l9_899=0.0;
l9_899=exp2(l9_898);
float l9_900=0.0;
l9_900=l9_885.Loop_Index_ID0;
float l9_901=0.0;
l9_901=l9_900*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_902=0.0;
l9_902=mod(l9_901,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_903=float2(0.0);
float l9_904=l9_902;
float2 l9_905=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_906=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_907=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_908=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_909=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_910=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_911=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_912=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_913[8];
l9_913[0]=l9_905;
l9_913[1]=l9_906;
l9_913[2]=l9_907;
l9_913[3]=l9_908;
l9_913[4]=l9_909;
l9_913[5]=l9_910;
l9_913[6]=l9_911;
l9_913[7]=l9_912;
int l9_914=int(fast::clamp(l9_904+9.9999997e-05,0.0,7.0));
float2 l9_915=l9_913[l9_914];
l9_903=l9_915;
float2 l9_916=float2(0.0);
l9_916=(l9_894*float2(l9_899))*l9_903;
float2 l9_917=float2(0.0);
l9_917=l9_890+l9_916;
float l9_918=0.0;
l9_918=l9_898+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_919=float4(0.0);
int l9_920;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_921=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_921=0;
}
else
{
l9_921=in.varStereoViewID;
}
int l9_922=l9_921;
l9_920=1-l9_922;
}
else
{
int l9_923=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_923=0;
}
else
{
l9_923=in.varStereoViewID;
}
int l9_924=l9_923;
l9_920=l9_924;
}
int l9_925=l9_920;
int l9_926=glowTextureLayout_tmp;
int l9_927=l9_925;
float2 l9_928=l9_917;
bool l9_929=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_930=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_931=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_932=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_933=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_934=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_935=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_936=l9_918;
bool l9_937=l9_934&&(!l9_932);
float l9_938=1.0;
float l9_939=l9_928.x;
int l9_940=l9_931.x;
if (l9_940==1)
{
l9_939=fract(l9_939);
}
else
{
if (l9_940==2)
{
float l9_941=fract(l9_939);
float l9_942=l9_939-l9_941;
float l9_943=step(0.25,fract(l9_942*0.5));
l9_939=mix(l9_941,1.0-l9_941,fast::clamp(l9_943,0.0,1.0));
}
}
l9_928.x=l9_939;
float l9_944=l9_928.y;
int l9_945=l9_931.y;
if (l9_945==1)
{
l9_944=fract(l9_944);
}
else
{
if (l9_945==2)
{
float l9_946=fract(l9_944);
float l9_947=l9_944-l9_946;
float l9_948=step(0.25,fract(l9_947*0.5));
l9_944=mix(l9_946,1.0-l9_946,fast::clamp(l9_948,0.0,1.0));
}
}
l9_928.y=l9_944;
if (l9_932)
{
bool l9_949=l9_934;
bool l9_950;
if (l9_949)
{
l9_950=l9_931.x==3;
}
else
{
l9_950=l9_949;
}
float l9_951=l9_928.x;
float l9_952=l9_933.x;
float l9_953=l9_933.z;
bool l9_954=l9_950;
float l9_955=l9_938;
float l9_956=fast::clamp(l9_951,l9_952,l9_953);
float l9_957=step(abs(l9_951-l9_956),9.9999997e-06);
l9_955*=(l9_957+((1.0-float(l9_954))*(1.0-l9_957)));
l9_951=l9_956;
l9_928.x=l9_951;
l9_938=l9_955;
bool l9_958=l9_934;
bool l9_959;
if (l9_958)
{
l9_959=l9_931.y==3;
}
else
{
l9_959=l9_958;
}
float l9_960=l9_928.y;
float l9_961=l9_933.y;
float l9_962=l9_933.w;
bool l9_963=l9_959;
float l9_964=l9_938;
float l9_965=fast::clamp(l9_960,l9_961,l9_962);
float l9_966=step(abs(l9_960-l9_965),9.9999997e-06);
l9_964*=(l9_966+((1.0-float(l9_963))*(1.0-l9_966)));
l9_960=l9_965;
l9_928.y=l9_960;
l9_938=l9_964;
}
float2 l9_967=l9_928;
bool l9_968=l9_929;
float3x3 l9_969=l9_930;
if (l9_968)
{
l9_967=float2((l9_969*float3(l9_967,1.0)).xy);
}
float2 l9_970=l9_967;
l9_928=l9_970;
float l9_971=l9_928.x;
int l9_972=l9_931.x;
bool l9_973=l9_937;
float l9_974=l9_938;
if ((l9_972==0)||(l9_972==3))
{
float l9_975=l9_971;
float l9_976=0.0;
float l9_977=1.0;
bool l9_978=l9_973;
float l9_979=l9_974;
float l9_980=fast::clamp(l9_975,l9_976,l9_977);
float l9_981=step(abs(l9_975-l9_980),9.9999997e-06);
l9_979*=(l9_981+((1.0-float(l9_978))*(1.0-l9_981)));
l9_975=l9_980;
l9_971=l9_975;
l9_974=l9_979;
}
l9_928.x=l9_971;
l9_938=l9_974;
float l9_982=l9_928.y;
int l9_983=l9_931.y;
bool l9_984=l9_937;
float l9_985=l9_938;
if ((l9_983==0)||(l9_983==3))
{
float l9_986=l9_982;
float l9_987=0.0;
float l9_988=1.0;
bool l9_989=l9_984;
float l9_990=l9_985;
float l9_991=fast::clamp(l9_986,l9_987,l9_988);
float l9_992=step(abs(l9_986-l9_991),9.9999997e-06);
l9_990*=(l9_992+((1.0-float(l9_989))*(1.0-l9_992)));
l9_986=l9_991;
l9_982=l9_986;
l9_985=l9_990;
}
l9_928.y=l9_982;
l9_938=l9_985;
float2 l9_993=l9_928;
int l9_994=l9_926;
int l9_995=l9_927;
float l9_996=l9_936;
float2 l9_997=l9_993;
int l9_998=l9_994;
int l9_999=l9_995;
float3 l9_1000=float3(0.0);
if (l9_998==0)
{
l9_1000=float3(l9_997,0.0);
}
else
{
if (l9_998==1)
{
l9_1000=float3(l9_997.x,(l9_997.y*0.5)+(0.5-(float(l9_999)*0.5)),0.0);
}
else
{
l9_1000=float3(l9_997,float(l9_999));
}
}
float3 l9_1001=l9_1000;
float3 l9_1002=l9_1001;
float4 l9_1003=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1002.xy,level(l9_996));
float4 l9_1004=l9_1003;
if (l9_934)
{
l9_1004=mix(l9_935,l9_1004,float4(l9_938));
}
float4 l9_1005=l9_1004;
l9_919=l9_1005;
float3 l9_1006=float3(0.0);
l9_1006=float3(l9_919.x,l9_919.y,l9_919.z);
l9_886=l9_1006;
l9_884+=l9_886;
param_31=l9_884;
float3 l9_1007=param_31;
ssGlobals l9_1008=param_32;
float3 l9_1009=float3(0.0);
l9_1008.Loop_Index_ID0=3.0;
l9_1008.Loop_Ratio_ID0=1.0;
float2 l9_1010=float2(0.0);
float2 l9_1011=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1010=l9_1011;
float2 l9_1012=float2(0.0);
l9_1012=l9_1008.gScreenCoord;
float2 l9_1013=float2(0.0);
l9_1013=l9_1012;
float2 l9_1014=float2(0.0);
float2 l9_1015=(*sc_set0.UserUniforms).ratio;
l9_1014=l9_1015;
float2 l9_1016=float2(0.0);
l9_1016=l9_1010*l9_1014;
float2 l9_1017=float2(0.0);
l9_1017=l9_1016;
float l9_1018=0.0;
float l9_1019=(*sc_set0.UserUniforms).blurSize;
l9_1018=l9_1019;
float l9_1020=0.0;
l9_1020=l9_1018/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_1021=0.0;
l9_1021=l9_1020;
float l9_1022=0.0;
l9_1022=exp2(l9_1021);
float l9_1023=0.0;
l9_1023=l9_1008.Loop_Index_ID0;
float l9_1024=0.0;
l9_1024=l9_1023*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_1025=0.0;
l9_1025=mod(l9_1024,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_1026=float2(0.0);
float l9_1027=l9_1025;
float2 l9_1028=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1029=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1030=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1031=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1032=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1033=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1034=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1035=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1036[8];
l9_1036[0]=l9_1028;
l9_1036[1]=l9_1029;
l9_1036[2]=l9_1030;
l9_1036[3]=l9_1031;
l9_1036[4]=l9_1032;
l9_1036[5]=l9_1033;
l9_1036[6]=l9_1034;
l9_1036[7]=l9_1035;
int l9_1037=int(fast::clamp(l9_1027+9.9999997e-05,0.0,7.0));
float2 l9_1038=l9_1036[l9_1037];
l9_1026=l9_1038;
float2 l9_1039=float2(0.0);
l9_1039=(l9_1017*float2(l9_1022))*l9_1026;
float2 l9_1040=float2(0.0);
l9_1040=l9_1013+l9_1039;
float l9_1041=0.0;
l9_1041=l9_1021+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_1042=float4(0.0);
int l9_1043;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1044=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1044=0;
}
else
{
l9_1044=in.varStereoViewID;
}
int l9_1045=l9_1044;
l9_1043=1-l9_1045;
}
else
{
int l9_1046=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1046=0;
}
else
{
l9_1046=in.varStereoViewID;
}
int l9_1047=l9_1046;
l9_1043=l9_1047;
}
int l9_1048=l9_1043;
int l9_1049=glowTextureLayout_tmp;
int l9_1050=l9_1048;
float2 l9_1051=l9_1040;
bool l9_1052=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1053=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1054=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1055=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1056=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1057=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1058=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1059=l9_1041;
bool l9_1060=l9_1057&&(!l9_1055);
float l9_1061=1.0;
float l9_1062=l9_1051.x;
int l9_1063=l9_1054.x;
if (l9_1063==1)
{
l9_1062=fract(l9_1062);
}
else
{
if (l9_1063==2)
{
float l9_1064=fract(l9_1062);
float l9_1065=l9_1062-l9_1064;
float l9_1066=step(0.25,fract(l9_1065*0.5));
l9_1062=mix(l9_1064,1.0-l9_1064,fast::clamp(l9_1066,0.0,1.0));
}
}
l9_1051.x=l9_1062;
float l9_1067=l9_1051.y;
int l9_1068=l9_1054.y;
if (l9_1068==1)
{
l9_1067=fract(l9_1067);
}
else
{
if (l9_1068==2)
{
float l9_1069=fract(l9_1067);
float l9_1070=l9_1067-l9_1069;
float l9_1071=step(0.25,fract(l9_1070*0.5));
l9_1067=mix(l9_1069,1.0-l9_1069,fast::clamp(l9_1071,0.0,1.0));
}
}
l9_1051.y=l9_1067;
if (l9_1055)
{
bool l9_1072=l9_1057;
bool l9_1073;
if (l9_1072)
{
l9_1073=l9_1054.x==3;
}
else
{
l9_1073=l9_1072;
}
float l9_1074=l9_1051.x;
float l9_1075=l9_1056.x;
float l9_1076=l9_1056.z;
bool l9_1077=l9_1073;
float l9_1078=l9_1061;
float l9_1079=fast::clamp(l9_1074,l9_1075,l9_1076);
float l9_1080=step(abs(l9_1074-l9_1079),9.9999997e-06);
l9_1078*=(l9_1080+((1.0-float(l9_1077))*(1.0-l9_1080)));
l9_1074=l9_1079;
l9_1051.x=l9_1074;
l9_1061=l9_1078;
bool l9_1081=l9_1057;
bool l9_1082;
if (l9_1081)
{
l9_1082=l9_1054.y==3;
}
else
{
l9_1082=l9_1081;
}
float l9_1083=l9_1051.y;
float l9_1084=l9_1056.y;
float l9_1085=l9_1056.w;
bool l9_1086=l9_1082;
float l9_1087=l9_1061;
float l9_1088=fast::clamp(l9_1083,l9_1084,l9_1085);
float l9_1089=step(abs(l9_1083-l9_1088),9.9999997e-06);
l9_1087*=(l9_1089+((1.0-float(l9_1086))*(1.0-l9_1089)));
l9_1083=l9_1088;
l9_1051.y=l9_1083;
l9_1061=l9_1087;
}
float2 l9_1090=l9_1051;
bool l9_1091=l9_1052;
float3x3 l9_1092=l9_1053;
if (l9_1091)
{
l9_1090=float2((l9_1092*float3(l9_1090,1.0)).xy);
}
float2 l9_1093=l9_1090;
l9_1051=l9_1093;
float l9_1094=l9_1051.x;
int l9_1095=l9_1054.x;
bool l9_1096=l9_1060;
float l9_1097=l9_1061;
if ((l9_1095==0)||(l9_1095==3))
{
float l9_1098=l9_1094;
float l9_1099=0.0;
float l9_1100=1.0;
bool l9_1101=l9_1096;
float l9_1102=l9_1097;
float l9_1103=fast::clamp(l9_1098,l9_1099,l9_1100);
float l9_1104=step(abs(l9_1098-l9_1103),9.9999997e-06);
l9_1102*=(l9_1104+((1.0-float(l9_1101))*(1.0-l9_1104)));
l9_1098=l9_1103;
l9_1094=l9_1098;
l9_1097=l9_1102;
}
l9_1051.x=l9_1094;
l9_1061=l9_1097;
float l9_1105=l9_1051.y;
int l9_1106=l9_1054.y;
bool l9_1107=l9_1060;
float l9_1108=l9_1061;
if ((l9_1106==0)||(l9_1106==3))
{
float l9_1109=l9_1105;
float l9_1110=0.0;
float l9_1111=1.0;
bool l9_1112=l9_1107;
float l9_1113=l9_1108;
float l9_1114=fast::clamp(l9_1109,l9_1110,l9_1111);
float l9_1115=step(abs(l9_1109-l9_1114),9.9999997e-06);
l9_1113*=(l9_1115+((1.0-float(l9_1112))*(1.0-l9_1115)));
l9_1109=l9_1114;
l9_1105=l9_1109;
l9_1108=l9_1113;
}
l9_1051.y=l9_1105;
l9_1061=l9_1108;
float2 l9_1116=l9_1051;
int l9_1117=l9_1049;
int l9_1118=l9_1050;
float l9_1119=l9_1059;
float2 l9_1120=l9_1116;
int l9_1121=l9_1117;
int l9_1122=l9_1118;
float3 l9_1123=float3(0.0);
if (l9_1121==0)
{
l9_1123=float3(l9_1120,0.0);
}
else
{
if (l9_1121==1)
{
l9_1123=float3(l9_1120.x,(l9_1120.y*0.5)+(0.5-(float(l9_1122)*0.5)),0.0);
}
else
{
l9_1123=float3(l9_1120,float(l9_1122));
}
}
float3 l9_1124=l9_1123;
float3 l9_1125=l9_1124;
float4 l9_1126=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1125.xy,level(l9_1119));
float4 l9_1127=l9_1126;
if (l9_1057)
{
l9_1127=mix(l9_1058,l9_1127,float4(l9_1061));
}
float4 l9_1128=l9_1127;
l9_1042=l9_1128;
float3 l9_1129=float3(0.0);
l9_1129=float3(l9_1042.x,l9_1042.y,l9_1042.z);
l9_1009=l9_1129;
l9_1007+=l9_1009;
param_31=l9_1007;
param_31/=float3(4.0);
Output_N25=param_31;
float3 Output_N26=float3(0.0);
Output_N26=mix(Output_N70,Output_N25,float3((*sc_set0.UserUniforms).Port_Input2_N026));
float3 Export_N27=float3(0.0);
Export_N27=Output_N26;
float2 Value_N33=float2(0.0);
Value_N33=ScreenCoord_N34;
float Value_N35=0.0;
Value_N35=Output_N9;
float Output_N36=0.0;
Output_N36=Value_N35+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 Color_N37=float4(0.0);
int l9_1130;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1131=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1131=0;
}
else
{
l9_1131=in.varStereoViewID;
}
int l9_1132=l9_1131;
l9_1130=1-l9_1132;
}
else
{
int l9_1133=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1133=0;
}
else
{
l9_1133=in.varStereoViewID;
}
int l9_1134=l9_1133;
l9_1130=l9_1134;
}
int l9_1135=l9_1130;
int param_33=glowTextureLayout_tmp;
int param_34=l9_1135;
float2 param_35=Value_N33;
bool param_36=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 param_37=(*sc_set0.UserUniforms).glowTextureTransform;
int2 param_38=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool param_39=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 param_40=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool param_41=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 param_42=(*sc_set0.UserUniforms).glowTextureBorderColor;
float param_43=Output_N36;
bool l9_1136=param_41&&(!param_39);
float l9_1137=1.0;
float l9_1138=param_35.x;
int l9_1139=param_38.x;
if (l9_1139==1)
{
l9_1138=fract(l9_1138);
}
else
{
if (l9_1139==2)
{
float l9_1140=fract(l9_1138);
float l9_1141=l9_1138-l9_1140;
float l9_1142=step(0.25,fract(l9_1141*0.5));
l9_1138=mix(l9_1140,1.0-l9_1140,fast::clamp(l9_1142,0.0,1.0));
}
}
param_35.x=l9_1138;
float l9_1143=param_35.y;
int l9_1144=param_38.y;
if (l9_1144==1)
{
l9_1143=fract(l9_1143);
}
else
{
if (l9_1144==2)
{
float l9_1145=fract(l9_1143);
float l9_1146=l9_1143-l9_1145;
float l9_1147=step(0.25,fract(l9_1146*0.5));
l9_1143=mix(l9_1145,1.0-l9_1145,fast::clamp(l9_1147,0.0,1.0));
}
}
param_35.y=l9_1143;
if (param_39)
{
bool l9_1148=param_41;
bool l9_1149;
if (l9_1148)
{
l9_1149=param_38.x==3;
}
else
{
l9_1149=l9_1148;
}
float l9_1150=param_35.x;
float l9_1151=param_40.x;
float l9_1152=param_40.z;
bool l9_1153=l9_1149;
float l9_1154=l9_1137;
float l9_1155=fast::clamp(l9_1150,l9_1151,l9_1152);
float l9_1156=step(abs(l9_1150-l9_1155),9.9999997e-06);
l9_1154*=(l9_1156+((1.0-float(l9_1153))*(1.0-l9_1156)));
l9_1150=l9_1155;
param_35.x=l9_1150;
l9_1137=l9_1154;
bool l9_1157=param_41;
bool l9_1158;
if (l9_1157)
{
l9_1158=param_38.y==3;
}
else
{
l9_1158=l9_1157;
}
float l9_1159=param_35.y;
float l9_1160=param_40.y;
float l9_1161=param_40.w;
bool l9_1162=l9_1158;
float l9_1163=l9_1137;
float l9_1164=fast::clamp(l9_1159,l9_1160,l9_1161);
float l9_1165=step(abs(l9_1159-l9_1164),9.9999997e-06);
l9_1163*=(l9_1165+((1.0-float(l9_1162))*(1.0-l9_1165)));
l9_1159=l9_1164;
param_35.y=l9_1159;
l9_1137=l9_1163;
}
float2 l9_1166=param_35;
bool l9_1167=param_36;
float3x3 l9_1168=param_37;
if (l9_1167)
{
l9_1166=float2((l9_1168*float3(l9_1166,1.0)).xy);
}
float2 l9_1169=l9_1166;
param_35=l9_1169;
float l9_1170=param_35.x;
int l9_1171=param_38.x;
bool l9_1172=l9_1136;
float l9_1173=l9_1137;
if ((l9_1171==0)||(l9_1171==3))
{
float l9_1174=l9_1170;
float l9_1175=0.0;
float l9_1176=1.0;
bool l9_1177=l9_1172;
float l9_1178=l9_1173;
float l9_1179=fast::clamp(l9_1174,l9_1175,l9_1176);
float l9_1180=step(abs(l9_1174-l9_1179),9.9999997e-06);
l9_1178*=(l9_1180+((1.0-float(l9_1177))*(1.0-l9_1180)));
l9_1174=l9_1179;
l9_1170=l9_1174;
l9_1173=l9_1178;
}
param_35.x=l9_1170;
l9_1137=l9_1173;
float l9_1181=param_35.y;
int l9_1182=param_38.y;
bool l9_1183=l9_1136;
float l9_1184=l9_1137;
if ((l9_1182==0)||(l9_1182==3))
{
float l9_1185=l9_1181;
float l9_1186=0.0;
float l9_1187=1.0;
bool l9_1188=l9_1183;
float l9_1189=l9_1184;
float l9_1190=fast::clamp(l9_1185,l9_1186,l9_1187);
float l9_1191=step(abs(l9_1185-l9_1190),9.9999997e-06);
l9_1189*=(l9_1191+((1.0-float(l9_1188))*(1.0-l9_1191)));
l9_1185=l9_1190;
l9_1181=l9_1185;
l9_1184=l9_1189;
}
param_35.y=l9_1181;
l9_1137=l9_1184;
float2 l9_1192=param_35;
int l9_1193=param_33;
int l9_1194=param_34;
float l9_1195=param_43;
float2 l9_1196=l9_1192;
int l9_1197=l9_1193;
int l9_1198=l9_1194;
float3 l9_1199=float3(0.0);
if (l9_1197==0)
{
l9_1199=float3(l9_1196,0.0);
}
else
{
if (l9_1197==1)
{
l9_1199=float3(l9_1196.x,(l9_1196.y*0.5)+(0.5-(float(l9_1198)*0.5)),0.0);
}
else
{
l9_1199=float3(l9_1196,float(l9_1198));
}
}
float3 l9_1200=l9_1199;
float3 l9_1201=l9_1200;
float4 l9_1202=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1201.xy,level(l9_1195));
float4 l9_1203=l9_1202;
if (param_41)
{
l9_1203=mix(param_42,l9_1203,float4(l9_1137));
}
float4 l9_1204=l9_1203;
Color_N37=l9_1204;
float3 Output_N74=float3(0.0);
Output_N74=float3(Color_N37.x,Color_N37.y,Color_N37.z);
float3 Output_N51=float3(0.0);
ssGlobals param_45=Globals;
float3 param_44=float3(0.0);
param_45.Loop_Count_ID0=8.0;
float3 l9_1205=param_44;
ssGlobals l9_1206=param_45;
float3 l9_1207=float3(0.0);
l9_1206.Loop_Index_ID0=0.0;
l9_1206.Loop_Ratio_ID0=0.0;
float2 l9_1208=float2(0.0);
float2 l9_1209=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1208=l9_1209;
float2 l9_1210=float2(0.0);
l9_1210=l9_1206.gScreenCoord;
float2 l9_1211=float2(0.0);
l9_1211=l9_1210;
float2 l9_1212=float2(0.0);
float2 l9_1213=(*sc_set0.UserUniforms).ratio;
l9_1212=l9_1213;
float2 l9_1214=float2(0.0);
l9_1214=l9_1208*l9_1212;
float2 l9_1215=float2(0.0);
l9_1215=l9_1214;
float l9_1216=0.0;
float l9_1217=(*sc_set0.UserUniforms).blurSize;
l9_1216=l9_1217;
float l9_1218=0.0;
l9_1218=l9_1216;
float l9_1219=0.0;
l9_1219=exp2(l9_1218);
float l9_1220=0.0;
l9_1220=l9_1206.Loop_Index_ID0;
float l9_1221=0.0;
l9_1221=mod(l9_1220,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1222=float2(0.0);
float l9_1223=l9_1221;
float2 l9_1224=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1225=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1226=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1227=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1228=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1229=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1230=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1231=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1232[8];
l9_1232[0]=l9_1224;
l9_1232[1]=l9_1225;
l9_1232[2]=l9_1226;
l9_1232[3]=l9_1227;
l9_1232[4]=l9_1228;
l9_1232[5]=l9_1229;
l9_1232[6]=l9_1230;
l9_1232[7]=l9_1231;
int l9_1233=int(fast::clamp(l9_1223+9.9999997e-05,0.0,7.0));
float2 l9_1234=l9_1232[l9_1233];
l9_1222=l9_1234;
float2 l9_1235=float2(0.0);
l9_1235=(l9_1215*float2(l9_1219))*l9_1222;
float2 l9_1236=float2(0.0);
l9_1236=l9_1211+l9_1235;
float l9_1237=0.0;
l9_1237=l9_1218+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1238=float4(0.0);
int l9_1239;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1240=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1240=0;
}
else
{
l9_1240=in.varStereoViewID;
}
int l9_1241=l9_1240;
l9_1239=1-l9_1241;
}
else
{
int l9_1242=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1242=0;
}
else
{
l9_1242=in.varStereoViewID;
}
int l9_1243=l9_1242;
l9_1239=l9_1243;
}
int l9_1244=l9_1239;
int l9_1245=glowTextureLayout_tmp;
int l9_1246=l9_1244;
float2 l9_1247=l9_1236;
bool l9_1248=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1249=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1250=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1251=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1252=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1253=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1254=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1255=l9_1237;
bool l9_1256=l9_1253&&(!l9_1251);
float l9_1257=1.0;
float l9_1258=l9_1247.x;
int l9_1259=l9_1250.x;
if (l9_1259==1)
{
l9_1258=fract(l9_1258);
}
else
{
if (l9_1259==2)
{
float l9_1260=fract(l9_1258);
float l9_1261=l9_1258-l9_1260;
float l9_1262=step(0.25,fract(l9_1261*0.5));
l9_1258=mix(l9_1260,1.0-l9_1260,fast::clamp(l9_1262,0.0,1.0));
}
}
l9_1247.x=l9_1258;
float l9_1263=l9_1247.y;
int l9_1264=l9_1250.y;
if (l9_1264==1)
{
l9_1263=fract(l9_1263);
}
else
{
if (l9_1264==2)
{
float l9_1265=fract(l9_1263);
float l9_1266=l9_1263-l9_1265;
float l9_1267=step(0.25,fract(l9_1266*0.5));
l9_1263=mix(l9_1265,1.0-l9_1265,fast::clamp(l9_1267,0.0,1.0));
}
}
l9_1247.y=l9_1263;
if (l9_1251)
{
bool l9_1268=l9_1253;
bool l9_1269;
if (l9_1268)
{
l9_1269=l9_1250.x==3;
}
else
{
l9_1269=l9_1268;
}
float l9_1270=l9_1247.x;
float l9_1271=l9_1252.x;
float l9_1272=l9_1252.z;
bool l9_1273=l9_1269;
float l9_1274=l9_1257;
float l9_1275=fast::clamp(l9_1270,l9_1271,l9_1272);
float l9_1276=step(abs(l9_1270-l9_1275),9.9999997e-06);
l9_1274*=(l9_1276+((1.0-float(l9_1273))*(1.0-l9_1276)));
l9_1270=l9_1275;
l9_1247.x=l9_1270;
l9_1257=l9_1274;
bool l9_1277=l9_1253;
bool l9_1278;
if (l9_1277)
{
l9_1278=l9_1250.y==3;
}
else
{
l9_1278=l9_1277;
}
float l9_1279=l9_1247.y;
float l9_1280=l9_1252.y;
float l9_1281=l9_1252.w;
bool l9_1282=l9_1278;
float l9_1283=l9_1257;
float l9_1284=fast::clamp(l9_1279,l9_1280,l9_1281);
float l9_1285=step(abs(l9_1279-l9_1284),9.9999997e-06);
l9_1283*=(l9_1285+((1.0-float(l9_1282))*(1.0-l9_1285)));
l9_1279=l9_1284;
l9_1247.y=l9_1279;
l9_1257=l9_1283;
}
float2 l9_1286=l9_1247;
bool l9_1287=l9_1248;
float3x3 l9_1288=l9_1249;
if (l9_1287)
{
l9_1286=float2((l9_1288*float3(l9_1286,1.0)).xy);
}
float2 l9_1289=l9_1286;
l9_1247=l9_1289;
float l9_1290=l9_1247.x;
int l9_1291=l9_1250.x;
bool l9_1292=l9_1256;
float l9_1293=l9_1257;
if ((l9_1291==0)||(l9_1291==3))
{
float l9_1294=l9_1290;
float l9_1295=0.0;
float l9_1296=1.0;
bool l9_1297=l9_1292;
float l9_1298=l9_1293;
float l9_1299=fast::clamp(l9_1294,l9_1295,l9_1296);
float l9_1300=step(abs(l9_1294-l9_1299),9.9999997e-06);
l9_1298*=(l9_1300+((1.0-float(l9_1297))*(1.0-l9_1300)));
l9_1294=l9_1299;
l9_1290=l9_1294;
l9_1293=l9_1298;
}
l9_1247.x=l9_1290;
l9_1257=l9_1293;
float l9_1301=l9_1247.y;
int l9_1302=l9_1250.y;
bool l9_1303=l9_1256;
float l9_1304=l9_1257;
if ((l9_1302==0)||(l9_1302==3))
{
float l9_1305=l9_1301;
float l9_1306=0.0;
float l9_1307=1.0;
bool l9_1308=l9_1303;
float l9_1309=l9_1304;
float l9_1310=fast::clamp(l9_1305,l9_1306,l9_1307);
float l9_1311=step(abs(l9_1305-l9_1310),9.9999997e-06);
l9_1309*=(l9_1311+((1.0-float(l9_1308))*(1.0-l9_1311)));
l9_1305=l9_1310;
l9_1301=l9_1305;
l9_1304=l9_1309;
}
l9_1247.y=l9_1301;
l9_1257=l9_1304;
float2 l9_1312=l9_1247;
int l9_1313=l9_1245;
int l9_1314=l9_1246;
float l9_1315=l9_1255;
float2 l9_1316=l9_1312;
int l9_1317=l9_1313;
int l9_1318=l9_1314;
float3 l9_1319=float3(0.0);
if (l9_1317==0)
{
l9_1319=float3(l9_1316,0.0);
}
else
{
if (l9_1317==1)
{
l9_1319=float3(l9_1316.x,(l9_1316.y*0.5)+(0.5-(float(l9_1318)*0.5)),0.0);
}
else
{
l9_1319=float3(l9_1316,float(l9_1318));
}
}
float3 l9_1320=l9_1319;
float3 l9_1321=l9_1320;
float4 l9_1322=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1321.xy,level(l9_1315));
float4 l9_1323=l9_1322;
if (l9_1253)
{
l9_1323=mix(l9_1254,l9_1323,float4(l9_1257));
}
float4 l9_1324=l9_1323;
l9_1238=l9_1324;
float3 l9_1325=float3(0.0);
l9_1325=float3(l9_1238.x,l9_1238.y,l9_1238.z);
l9_1207=l9_1325;
l9_1205+=l9_1207;
param_44=l9_1205;
float3 l9_1326=param_44;
ssGlobals l9_1327=param_45;
float3 l9_1328=float3(0.0);
l9_1327.Loop_Index_ID0=1.0;
l9_1327.Loop_Ratio_ID0=0.142857;
float2 l9_1329=float2(0.0);
float2 l9_1330=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1329=l9_1330;
float2 l9_1331=float2(0.0);
l9_1331=l9_1327.gScreenCoord;
float2 l9_1332=float2(0.0);
l9_1332=l9_1331;
float2 l9_1333=float2(0.0);
float2 l9_1334=(*sc_set0.UserUniforms).ratio;
l9_1333=l9_1334;
float2 l9_1335=float2(0.0);
l9_1335=l9_1329*l9_1333;
float2 l9_1336=float2(0.0);
l9_1336=l9_1335;
float l9_1337=0.0;
float l9_1338=(*sc_set0.UserUniforms).blurSize;
l9_1337=l9_1338;
float l9_1339=0.0;
l9_1339=l9_1337;
float l9_1340=0.0;
l9_1340=exp2(l9_1339);
float l9_1341=0.0;
l9_1341=l9_1327.Loop_Index_ID0;
float l9_1342=0.0;
l9_1342=mod(l9_1341,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1343=float2(0.0);
float l9_1344=l9_1342;
float2 l9_1345=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1346=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1347=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1348=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1349=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1350=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1351=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1352=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1353[8];
l9_1353[0]=l9_1345;
l9_1353[1]=l9_1346;
l9_1353[2]=l9_1347;
l9_1353[3]=l9_1348;
l9_1353[4]=l9_1349;
l9_1353[5]=l9_1350;
l9_1353[6]=l9_1351;
l9_1353[7]=l9_1352;
int l9_1354=int(fast::clamp(l9_1344+9.9999997e-05,0.0,7.0));
float2 l9_1355=l9_1353[l9_1354];
l9_1343=l9_1355;
float2 l9_1356=float2(0.0);
l9_1356=(l9_1336*float2(l9_1340))*l9_1343;
float2 l9_1357=float2(0.0);
l9_1357=l9_1332+l9_1356;
float l9_1358=0.0;
l9_1358=l9_1339+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1359=float4(0.0);
int l9_1360;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1361=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1361=0;
}
else
{
l9_1361=in.varStereoViewID;
}
int l9_1362=l9_1361;
l9_1360=1-l9_1362;
}
else
{
int l9_1363=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1363=0;
}
else
{
l9_1363=in.varStereoViewID;
}
int l9_1364=l9_1363;
l9_1360=l9_1364;
}
int l9_1365=l9_1360;
int l9_1366=glowTextureLayout_tmp;
int l9_1367=l9_1365;
float2 l9_1368=l9_1357;
bool l9_1369=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1370=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1371=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1372=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1373=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1374=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1375=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1376=l9_1358;
bool l9_1377=l9_1374&&(!l9_1372);
float l9_1378=1.0;
float l9_1379=l9_1368.x;
int l9_1380=l9_1371.x;
if (l9_1380==1)
{
l9_1379=fract(l9_1379);
}
else
{
if (l9_1380==2)
{
float l9_1381=fract(l9_1379);
float l9_1382=l9_1379-l9_1381;
float l9_1383=step(0.25,fract(l9_1382*0.5));
l9_1379=mix(l9_1381,1.0-l9_1381,fast::clamp(l9_1383,0.0,1.0));
}
}
l9_1368.x=l9_1379;
float l9_1384=l9_1368.y;
int l9_1385=l9_1371.y;
if (l9_1385==1)
{
l9_1384=fract(l9_1384);
}
else
{
if (l9_1385==2)
{
float l9_1386=fract(l9_1384);
float l9_1387=l9_1384-l9_1386;
float l9_1388=step(0.25,fract(l9_1387*0.5));
l9_1384=mix(l9_1386,1.0-l9_1386,fast::clamp(l9_1388,0.0,1.0));
}
}
l9_1368.y=l9_1384;
if (l9_1372)
{
bool l9_1389=l9_1374;
bool l9_1390;
if (l9_1389)
{
l9_1390=l9_1371.x==3;
}
else
{
l9_1390=l9_1389;
}
float l9_1391=l9_1368.x;
float l9_1392=l9_1373.x;
float l9_1393=l9_1373.z;
bool l9_1394=l9_1390;
float l9_1395=l9_1378;
float l9_1396=fast::clamp(l9_1391,l9_1392,l9_1393);
float l9_1397=step(abs(l9_1391-l9_1396),9.9999997e-06);
l9_1395*=(l9_1397+((1.0-float(l9_1394))*(1.0-l9_1397)));
l9_1391=l9_1396;
l9_1368.x=l9_1391;
l9_1378=l9_1395;
bool l9_1398=l9_1374;
bool l9_1399;
if (l9_1398)
{
l9_1399=l9_1371.y==3;
}
else
{
l9_1399=l9_1398;
}
float l9_1400=l9_1368.y;
float l9_1401=l9_1373.y;
float l9_1402=l9_1373.w;
bool l9_1403=l9_1399;
float l9_1404=l9_1378;
float l9_1405=fast::clamp(l9_1400,l9_1401,l9_1402);
float l9_1406=step(abs(l9_1400-l9_1405),9.9999997e-06);
l9_1404*=(l9_1406+((1.0-float(l9_1403))*(1.0-l9_1406)));
l9_1400=l9_1405;
l9_1368.y=l9_1400;
l9_1378=l9_1404;
}
float2 l9_1407=l9_1368;
bool l9_1408=l9_1369;
float3x3 l9_1409=l9_1370;
if (l9_1408)
{
l9_1407=float2((l9_1409*float3(l9_1407,1.0)).xy);
}
float2 l9_1410=l9_1407;
l9_1368=l9_1410;
float l9_1411=l9_1368.x;
int l9_1412=l9_1371.x;
bool l9_1413=l9_1377;
float l9_1414=l9_1378;
if ((l9_1412==0)||(l9_1412==3))
{
float l9_1415=l9_1411;
float l9_1416=0.0;
float l9_1417=1.0;
bool l9_1418=l9_1413;
float l9_1419=l9_1414;
float l9_1420=fast::clamp(l9_1415,l9_1416,l9_1417);
float l9_1421=step(abs(l9_1415-l9_1420),9.9999997e-06);
l9_1419*=(l9_1421+((1.0-float(l9_1418))*(1.0-l9_1421)));
l9_1415=l9_1420;
l9_1411=l9_1415;
l9_1414=l9_1419;
}
l9_1368.x=l9_1411;
l9_1378=l9_1414;
float l9_1422=l9_1368.y;
int l9_1423=l9_1371.y;
bool l9_1424=l9_1377;
float l9_1425=l9_1378;
if ((l9_1423==0)||(l9_1423==3))
{
float l9_1426=l9_1422;
float l9_1427=0.0;
float l9_1428=1.0;
bool l9_1429=l9_1424;
float l9_1430=l9_1425;
float l9_1431=fast::clamp(l9_1426,l9_1427,l9_1428);
float l9_1432=step(abs(l9_1426-l9_1431),9.9999997e-06);
l9_1430*=(l9_1432+((1.0-float(l9_1429))*(1.0-l9_1432)));
l9_1426=l9_1431;
l9_1422=l9_1426;
l9_1425=l9_1430;
}
l9_1368.y=l9_1422;
l9_1378=l9_1425;
float2 l9_1433=l9_1368;
int l9_1434=l9_1366;
int l9_1435=l9_1367;
float l9_1436=l9_1376;
float2 l9_1437=l9_1433;
int l9_1438=l9_1434;
int l9_1439=l9_1435;
float3 l9_1440=float3(0.0);
if (l9_1438==0)
{
l9_1440=float3(l9_1437,0.0);
}
else
{
if (l9_1438==1)
{
l9_1440=float3(l9_1437.x,(l9_1437.y*0.5)+(0.5-(float(l9_1439)*0.5)),0.0);
}
else
{
l9_1440=float3(l9_1437,float(l9_1439));
}
}
float3 l9_1441=l9_1440;
float3 l9_1442=l9_1441;
float4 l9_1443=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1442.xy,level(l9_1436));
float4 l9_1444=l9_1443;
if (l9_1374)
{
l9_1444=mix(l9_1375,l9_1444,float4(l9_1378));
}
float4 l9_1445=l9_1444;
l9_1359=l9_1445;
float3 l9_1446=float3(0.0);
l9_1446=float3(l9_1359.x,l9_1359.y,l9_1359.z);
l9_1328=l9_1446;
l9_1326+=l9_1328;
param_44=l9_1326;
float3 l9_1447=param_44;
ssGlobals l9_1448=param_45;
float3 l9_1449=float3(0.0);
l9_1448.Loop_Index_ID0=2.0;
l9_1448.Loop_Ratio_ID0=0.285714;
float2 l9_1450=float2(0.0);
float2 l9_1451=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1450=l9_1451;
float2 l9_1452=float2(0.0);
l9_1452=l9_1448.gScreenCoord;
float2 l9_1453=float2(0.0);
l9_1453=l9_1452;
float2 l9_1454=float2(0.0);
float2 l9_1455=(*sc_set0.UserUniforms).ratio;
l9_1454=l9_1455;
float2 l9_1456=float2(0.0);
l9_1456=l9_1450*l9_1454;
float2 l9_1457=float2(0.0);
l9_1457=l9_1456;
float l9_1458=0.0;
float l9_1459=(*sc_set0.UserUniforms).blurSize;
l9_1458=l9_1459;
float l9_1460=0.0;
l9_1460=l9_1458;
float l9_1461=0.0;
l9_1461=exp2(l9_1460);
float l9_1462=0.0;
l9_1462=l9_1448.Loop_Index_ID0;
float l9_1463=0.0;
l9_1463=mod(l9_1462,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1464=float2(0.0);
float l9_1465=l9_1463;
float2 l9_1466=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1467=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1468=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1469=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1470=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1471=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1472=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1473=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1474[8];
l9_1474[0]=l9_1466;
l9_1474[1]=l9_1467;
l9_1474[2]=l9_1468;
l9_1474[3]=l9_1469;
l9_1474[4]=l9_1470;
l9_1474[5]=l9_1471;
l9_1474[6]=l9_1472;
l9_1474[7]=l9_1473;
int l9_1475=int(fast::clamp(l9_1465+9.9999997e-05,0.0,7.0));
float2 l9_1476=l9_1474[l9_1475];
l9_1464=l9_1476;
float2 l9_1477=float2(0.0);
l9_1477=(l9_1457*float2(l9_1461))*l9_1464;
float2 l9_1478=float2(0.0);
l9_1478=l9_1453+l9_1477;
float l9_1479=0.0;
l9_1479=l9_1460+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1480=float4(0.0);
int l9_1481;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1482=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1482=0;
}
else
{
l9_1482=in.varStereoViewID;
}
int l9_1483=l9_1482;
l9_1481=1-l9_1483;
}
else
{
int l9_1484=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1484=0;
}
else
{
l9_1484=in.varStereoViewID;
}
int l9_1485=l9_1484;
l9_1481=l9_1485;
}
int l9_1486=l9_1481;
int l9_1487=glowTextureLayout_tmp;
int l9_1488=l9_1486;
float2 l9_1489=l9_1478;
bool l9_1490=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1491=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1492=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1493=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1494=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1495=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1496=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1497=l9_1479;
bool l9_1498=l9_1495&&(!l9_1493);
float l9_1499=1.0;
float l9_1500=l9_1489.x;
int l9_1501=l9_1492.x;
if (l9_1501==1)
{
l9_1500=fract(l9_1500);
}
else
{
if (l9_1501==2)
{
float l9_1502=fract(l9_1500);
float l9_1503=l9_1500-l9_1502;
float l9_1504=step(0.25,fract(l9_1503*0.5));
l9_1500=mix(l9_1502,1.0-l9_1502,fast::clamp(l9_1504,0.0,1.0));
}
}
l9_1489.x=l9_1500;
float l9_1505=l9_1489.y;
int l9_1506=l9_1492.y;
if (l9_1506==1)
{
l9_1505=fract(l9_1505);
}
else
{
if (l9_1506==2)
{
float l9_1507=fract(l9_1505);
float l9_1508=l9_1505-l9_1507;
float l9_1509=step(0.25,fract(l9_1508*0.5));
l9_1505=mix(l9_1507,1.0-l9_1507,fast::clamp(l9_1509,0.0,1.0));
}
}
l9_1489.y=l9_1505;
if (l9_1493)
{
bool l9_1510=l9_1495;
bool l9_1511;
if (l9_1510)
{
l9_1511=l9_1492.x==3;
}
else
{
l9_1511=l9_1510;
}
float l9_1512=l9_1489.x;
float l9_1513=l9_1494.x;
float l9_1514=l9_1494.z;
bool l9_1515=l9_1511;
float l9_1516=l9_1499;
float l9_1517=fast::clamp(l9_1512,l9_1513,l9_1514);
float l9_1518=step(abs(l9_1512-l9_1517),9.9999997e-06);
l9_1516*=(l9_1518+((1.0-float(l9_1515))*(1.0-l9_1518)));
l9_1512=l9_1517;
l9_1489.x=l9_1512;
l9_1499=l9_1516;
bool l9_1519=l9_1495;
bool l9_1520;
if (l9_1519)
{
l9_1520=l9_1492.y==3;
}
else
{
l9_1520=l9_1519;
}
float l9_1521=l9_1489.y;
float l9_1522=l9_1494.y;
float l9_1523=l9_1494.w;
bool l9_1524=l9_1520;
float l9_1525=l9_1499;
float l9_1526=fast::clamp(l9_1521,l9_1522,l9_1523);
float l9_1527=step(abs(l9_1521-l9_1526),9.9999997e-06);
l9_1525*=(l9_1527+((1.0-float(l9_1524))*(1.0-l9_1527)));
l9_1521=l9_1526;
l9_1489.y=l9_1521;
l9_1499=l9_1525;
}
float2 l9_1528=l9_1489;
bool l9_1529=l9_1490;
float3x3 l9_1530=l9_1491;
if (l9_1529)
{
l9_1528=float2((l9_1530*float3(l9_1528,1.0)).xy);
}
float2 l9_1531=l9_1528;
l9_1489=l9_1531;
float l9_1532=l9_1489.x;
int l9_1533=l9_1492.x;
bool l9_1534=l9_1498;
float l9_1535=l9_1499;
if ((l9_1533==0)||(l9_1533==3))
{
float l9_1536=l9_1532;
float l9_1537=0.0;
float l9_1538=1.0;
bool l9_1539=l9_1534;
float l9_1540=l9_1535;
float l9_1541=fast::clamp(l9_1536,l9_1537,l9_1538);
float l9_1542=step(abs(l9_1536-l9_1541),9.9999997e-06);
l9_1540*=(l9_1542+((1.0-float(l9_1539))*(1.0-l9_1542)));
l9_1536=l9_1541;
l9_1532=l9_1536;
l9_1535=l9_1540;
}
l9_1489.x=l9_1532;
l9_1499=l9_1535;
float l9_1543=l9_1489.y;
int l9_1544=l9_1492.y;
bool l9_1545=l9_1498;
float l9_1546=l9_1499;
if ((l9_1544==0)||(l9_1544==3))
{
float l9_1547=l9_1543;
float l9_1548=0.0;
float l9_1549=1.0;
bool l9_1550=l9_1545;
float l9_1551=l9_1546;
float l9_1552=fast::clamp(l9_1547,l9_1548,l9_1549);
float l9_1553=step(abs(l9_1547-l9_1552),9.9999997e-06);
l9_1551*=(l9_1553+((1.0-float(l9_1550))*(1.0-l9_1553)));
l9_1547=l9_1552;
l9_1543=l9_1547;
l9_1546=l9_1551;
}
l9_1489.y=l9_1543;
l9_1499=l9_1546;
float2 l9_1554=l9_1489;
int l9_1555=l9_1487;
int l9_1556=l9_1488;
float l9_1557=l9_1497;
float2 l9_1558=l9_1554;
int l9_1559=l9_1555;
int l9_1560=l9_1556;
float3 l9_1561=float3(0.0);
if (l9_1559==0)
{
l9_1561=float3(l9_1558,0.0);
}
else
{
if (l9_1559==1)
{
l9_1561=float3(l9_1558.x,(l9_1558.y*0.5)+(0.5-(float(l9_1560)*0.5)),0.0);
}
else
{
l9_1561=float3(l9_1558,float(l9_1560));
}
}
float3 l9_1562=l9_1561;
float3 l9_1563=l9_1562;
float4 l9_1564=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1563.xy,level(l9_1557));
float4 l9_1565=l9_1564;
if (l9_1495)
{
l9_1565=mix(l9_1496,l9_1565,float4(l9_1499));
}
float4 l9_1566=l9_1565;
l9_1480=l9_1566;
float3 l9_1567=float3(0.0);
l9_1567=float3(l9_1480.x,l9_1480.y,l9_1480.z);
l9_1449=l9_1567;
l9_1447+=l9_1449;
param_44=l9_1447;
float3 l9_1568=param_44;
ssGlobals l9_1569=param_45;
float3 l9_1570=float3(0.0);
l9_1569.Loop_Index_ID0=3.0;
l9_1569.Loop_Ratio_ID0=0.42857099;
float2 l9_1571=float2(0.0);
float2 l9_1572=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1571=l9_1572;
float2 l9_1573=float2(0.0);
l9_1573=l9_1569.gScreenCoord;
float2 l9_1574=float2(0.0);
l9_1574=l9_1573;
float2 l9_1575=float2(0.0);
float2 l9_1576=(*sc_set0.UserUniforms).ratio;
l9_1575=l9_1576;
float2 l9_1577=float2(0.0);
l9_1577=l9_1571*l9_1575;
float2 l9_1578=float2(0.0);
l9_1578=l9_1577;
float l9_1579=0.0;
float l9_1580=(*sc_set0.UserUniforms).blurSize;
l9_1579=l9_1580;
float l9_1581=0.0;
l9_1581=l9_1579;
float l9_1582=0.0;
l9_1582=exp2(l9_1581);
float l9_1583=0.0;
l9_1583=l9_1569.Loop_Index_ID0;
float l9_1584=0.0;
l9_1584=mod(l9_1583,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1585=float2(0.0);
float l9_1586=l9_1584;
float2 l9_1587=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1588=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1589=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1590=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1591=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1592=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1593=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1594=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1595[8];
l9_1595[0]=l9_1587;
l9_1595[1]=l9_1588;
l9_1595[2]=l9_1589;
l9_1595[3]=l9_1590;
l9_1595[4]=l9_1591;
l9_1595[5]=l9_1592;
l9_1595[6]=l9_1593;
l9_1595[7]=l9_1594;
int l9_1596=int(fast::clamp(l9_1586+9.9999997e-05,0.0,7.0));
float2 l9_1597=l9_1595[l9_1596];
l9_1585=l9_1597;
float2 l9_1598=float2(0.0);
l9_1598=(l9_1578*float2(l9_1582))*l9_1585;
float2 l9_1599=float2(0.0);
l9_1599=l9_1574+l9_1598;
float l9_1600=0.0;
l9_1600=l9_1581+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1601=float4(0.0);
int l9_1602;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1603=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1603=0;
}
else
{
l9_1603=in.varStereoViewID;
}
int l9_1604=l9_1603;
l9_1602=1-l9_1604;
}
else
{
int l9_1605=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1605=0;
}
else
{
l9_1605=in.varStereoViewID;
}
int l9_1606=l9_1605;
l9_1602=l9_1606;
}
int l9_1607=l9_1602;
int l9_1608=glowTextureLayout_tmp;
int l9_1609=l9_1607;
float2 l9_1610=l9_1599;
bool l9_1611=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1612=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1613=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1614=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1615=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1616=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1617=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1618=l9_1600;
bool l9_1619=l9_1616&&(!l9_1614);
float l9_1620=1.0;
float l9_1621=l9_1610.x;
int l9_1622=l9_1613.x;
if (l9_1622==1)
{
l9_1621=fract(l9_1621);
}
else
{
if (l9_1622==2)
{
float l9_1623=fract(l9_1621);
float l9_1624=l9_1621-l9_1623;
float l9_1625=step(0.25,fract(l9_1624*0.5));
l9_1621=mix(l9_1623,1.0-l9_1623,fast::clamp(l9_1625,0.0,1.0));
}
}
l9_1610.x=l9_1621;
float l9_1626=l9_1610.y;
int l9_1627=l9_1613.y;
if (l9_1627==1)
{
l9_1626=fract(l9_1626);
}
else
{
if (l9_1627==2)
{
float l9_1628=fract(l9_1626);
float l9_1629=l9_1626-l9_1628;
float l9_1630=step(0.25,fract(l9_1629*0.5));
l9_1626=mix(l9_1628,1.0-l9_1628,fast::clamp(l9_1630,0.0,1.0));
}
}
l9_1610.y=l9_1626;
if (l9_1614)
{
bool l9_1631=l9_1616;
bool l9_1632;
if (l9_1631)
{
l9_1632=l9_1613.x==3;
}
else
{
l9_1632=l9_1631;
}
float l9_1633=l9_1610.x;
float l9_1634=l9_1615.x;
float l9_1635=l9_1615.z;
bool l9_1636=l9_1632;
float l9_1637=l9_1620;
float l9_1638=fast::clamp(l9_1633,l9_1634,l9_1635);
float l9_1639=step(abs(l9_1633-l9_1638),9.9999997e-06);
l9_1637*=(l9_1639+((1.0-float(l9_1636))*(1.0-l9_1639)));
l9_1633=l9_1638;
l9_1610.x=l9_1633;
l9_1620=l9_1637;
bool l9_1640=l9_1616;
bool l9_1641;
if (l9_1640)
{
l9_1641=l9_1613.y==3;
}
else
{
l9_1641=l9_1640;
}
float l9_1642=l9_1610.y;
float l9_1643=l9_1615.y;
float l9_1644=l9_1615.w;
bool l9_1645=l9_1641;
float l9_1646=l9_1620;
float l9_1647=fast::clamp(l9_1642,l9_1643,l9_1644);
float l9_1648=step(abs(l9_1642-l9_1647),9.9999997e-06);
l9_1646*=(l9_1648+((1.0-float(l9_1645))*(1.0-l9_1648)));
l9_1642=l9_1647;
l9_1610.y=l9_1642;
l9_1620=l9_1646;
}
float2 l9_1649=l9_1610;
bool l9_1650=l9_1611;
float3x3 l9_1651=l9_1612;
if (l9_1650)
{
l9_1649=float2((l9_1651*float3(l9_1649,1.0)).xy);
}
float2 l9_1652=l9_1649;
l9_1610=l9_1652;
float l9_1653=l9_1610.x;
int l9_1654=l9_1613.x;
bool l9_1655=l9_1619;
float l9_1656=l9_1620;
if ((l9_1654==0)||(l9_1654==3))
{
float l9_1657=l9_1653;
float l9_1658=0.0;
float l9_1659=1.0;
bool l9_1660=l9_1655;
float l9_1661=l9_1656;
float l9_1662=fast::clamp(l9_1657,l9_1658,l9_1659);
float l9_1663=step(abs(l9_1657-l9_1662),9.9999997e-06);
l9_1661*=(l9_1663+((1.0-float(l9_1660))*(1.0-l9_1663)));
l9_1657=l9_1662;
l9_1653=l9_1657;
l9_1656=l9_1661;
}
l9_1610.x=l9_1653;
l9_1620=l9_1656;
float l9_1664=l9_1610.y;
int l9_1665=l9_1613.y;
bool l9_1666=l9_1619;
float l9_1667=l9_1620;
if ((l9_1665==0)||(l9_1665==3))
{
float l9_1668=l9_1664;
float l9_1669=0.0;
float l9_1670=1.0;
bool l9_1671=l9_1666;
float l9_1672=l9_1667;
float l9_1673=fast::clamp(l9_1668,l9_1669,l9_1670);
float l9_1674=step(abs(l9_1668-l9_1673),9.9999997e-06);
l9_1672*=(l9_1674+((1.0-float(l9_1671))*(1.0-l9_1674)));
l9_1668=l9_1673;
l9_1664=l9_1668;
l9_1667=l9_1672;
}
l9_1610.y=l9_1664;
l9_1620=l9_1667;
float2 l9_1675=l9_1610;
int l9_1676=l9_1608;
int l9_1677=l9_1609;
float l9_1678=l9_1618;
float2 l9_1679=l9_1675;
int l9_1680=l9_1676;
int l9_1681=l9_1677;
float3 l9_1682=float3(0.0);
if (l9_1680==0)
{
l9_1682=float3(l9_1679,0.0);
}
else
{
if (l9_1680==1)
{
l9_1682=float3(l9_1679.x,(l9_1679.y*0.5)+(0.5-(float(l9_1681)*0.5)),0.0);
}
else
{
l9_1682=float3(l9_1679,float(l9_1681));
}
}
float3 l9_1683=l9_1682;
float3 l9_1684=l9_1683;
float4 l9_1685=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1684.xy,level(l9_1678));
float4 l9_1686=l9_1685;
if (l9_1616)
{
l9_1686=mix(l9_1617,l9_1686,float4(l9_1620));
}
float4 l9_1687=l9_1686;
l9_1601=l9_1687;
float3 l9_1688=float3(0.0);
l9_1688=float3(l9_1601.x,l9_1601.y,l9_1601.z);
l9_1570=l9_1688;
l9_1568+=l9_1570;
param_44=l9_1568;
float3 l9_1689=param_44;
ssGlobals l9_1690=param_45;
float3 l9_1691=float3(0.0);
l9_1690.Loop_Index_ID0=4.0;
l9_1690.Loop_Ratio_ID0=0.57142901;
float2 l9_1692=float2(0.0);
float2 l9_1693=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1692=l9_1693;
float2 l9_1694=float2(0.0);
l9_1694=l9_1690.gScreenCoord;
float2 l9_1695=float2(0.0);
l9_1695=l9_1694;
float2 l9_1696=float2(0.0);
float2 l9_1697=(*sc_set0.UserUniforms).ratio;
l9_1696=l9_1697;
float2 l9_1698=float2(0.0);
l9_1698=l9_1692*l9_1696;
float2 l9_1699=float2(0.0);
l9_1699=l9_1698;
float l9_1700=0.0;
float l9_1701=(*sc_set0.UserUniforms).blurSize;
l9_1700=l9_1701;
float l9_1702=0.0;
l9_1702=l9_1700;
float l9_1703=0.0;
l9_1703=exp2(l9_1702);
float l9_1704=0.0;
l9_1704=l9_1690.Loop_Index_ID0;
float l9_1705=0.0;
l9_1705=mod(l9_1704,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1706=float2(0.0);
float l9_1707=l9_1705;
float2 l9_1708=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1709=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1710=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1711=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1712=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1713=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1714=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1715=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1716[8];
l9_1716[0]=l9_1708;
l9_1716[1]=l9_1709;
l9_1716[2]=l9_1710;
l9_1716[3]=l9_1711;
l9_1716[4]=l9_1712;
l9_1716[5]=l9_1713;
l9_1716[6]=l9_1714;
l9_1716[7]=l9_1715;
int l9_1717=int(fast::clamp(l9_1707+9.9999997e-05,0.0,7.0));
float2 l9_1718=l9_1716[l9_1717];
l9_1706=l9_1718;
float2 l9_1719=float2(0.0);
l9_1719=(l9_1699*float2(l9_1703))*l9_1706;
float2 l9_1720=float2(0.0);
l9_1720=l9_1695+l9_1719;
float l9_1721=0.0;
l9_1721=l9_1702+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1722=float4(0.0);
int l9_1723;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1724=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1724=0;
}
else
{
l9_1724=in.varStereoViewID;
}
int l9_1725=l9_1724;
l9_1723=1-l9_1725;
}
else
{
int l9_1726=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1726=0;
}
else
{
l9_1726=in.varStereoViewID;
}
int l9_1727=l9_1726;
l9_1723=l9_1727;
}
int l9_1728=l9_1723;
int l9_1729=glowTextureLayout_tmp;
int l9_1730=l9_1728;
float2 l9_1731=l9_1720;
bool l9_1732=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1733=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1734=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1735=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1736=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1737=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1738=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1739=l9_1721;
bool l9_1740=l9_1737&&(!l9_1735);
float l9_1741=1.0;
float l9_1742=l9_1731.x;
int l9_1743=l9_1734.x;
if (l9_1743==1)
{
l9_1742=fract(l9_1742);
}
else
{
if (l9_1743==2)
{
float l9_1744=fract(l9_1742);
float l9_1745=l9_1742-l9_1744;
float l9_1746=step(0.25,fract(l9_1745*0.5));
l9_1742=mix(l9_1744,1.0-l9_1744,fast::clamp(l9_1746,0.0,1.0));
}
}
l9_1731.x=l9_1742;
float l9_1747=l9_1731.y;
int l9_1748=l9_1734.y;
if (l9_1748==1)
{
l9_1747=fract(l9_1747);
}
else
{
if (l9_1748==2)
{
float l9_1749=fract(l9_1747);
float l9_1750=l9_1747-l9_1749;
float l9_1751=step(0.25,fract(l9_1750*0.5));
l9_1747=mix(l9_1749,1.0-l9_1749,fast::clamp(l9_1751,0.0,1.0));
}
}
l9_1731.y=l9_1747;
if (l9_1735)
{
bool l9_1752=l9_1737;
bool l9_1753;
if (l9_1752)
{
l9_1753=l9_1734.x==3;
}
else
{
l9_1753=l9_1752;
}
float l9_1754=l9_1731.x;
float l9_1755=l9_1736.x;
float l9_1756=l9_1736.z;
bool l9_1757=l9_1753;
float l9_1758=l9_1741;
float l9_1759=fast::clamp(l9_1754,l9_1755,l9_1756);
float l9_1760=step(abs(l9_1754-l9_1759),9.9999997e-06);
l9_1758*=(l9_1760+((1.0-float(l9_1757))*(1.0-l9_1760)));
l9_1754=l9_1759;
l9_1731.x=l9_1754;
l9_1741=l9_1758;
bool l9_1761=l9_1737;
bool l9_1762;
if (l9_1761)
{
l9_1762=l9_1734.y==3;
}
else
{
l9_1762=l9_1761;
}
float l9_1763=l9_1731.y;
float l9_1764=l9_1736.y;
float l9_1765=l9_1736.w;
bool l9_1766=l9_1762;
float l9_1767=l9_1741;
float l9_1768=fast::clamp(l9_1763,l9_1764,l9_1765);
float l9_1769=step(abs(l9_1763-l9_1768),9.9999997e-06);
l9_1767*=(l9_1769+((1.0-float(l9_1766))*(1.0-l9_1769)));
l9_1763=l9_1768;
l9_1731.y=l9_1763;
l9_1741=l9_1767;
}
float2 l9_1770=l9_1731;
bool l9_1771=l9_1732;
float3x3 l9_1772=l9_1733;
if (l9_1771)
{
l9_1770=float2((l9_1772*float3(l9_1770,1.0)).xy);
}
float2 l9_1773=l9_1770;
l9_1731=l9_1773;
float l9_1774=l9_1731.x;
int l9_1775=l9_1734.x;
bool l9_1776=l9_1740;
float l9_1777=l9_1741;
if ((l9_1775==0)||(l9_1775==3))
{
float l9_1778=l9_1774;
float l9_1779=0.0;
float l9_1780=1.0;
bool l9_1781=l9_1776;
float l9_1782=l9_1777;
float l9_1783=fast::clamp(l9_1778,l9_1779,l9_1780);
float l9_1784=step(abs(l9_1778-l9_1783),9.9999997e-06);
l9_1782*=(l9_1784+((1.0-float(l9_1781))*(1.0-l9_1784)));
l9_1778=l9_1783;
l9_1774=l9_1778;
l9_1777=l9_1782;
}
l9_1731.x=l9_1774;
l9_1741=l9_1777;
float l9_1785=l9_1731.y;
int l9_1786=l9_1734.y;
bool l9_1787=l9_1740;
float l9_1788=l9_1741;
if ((l9_1786==0)||(l9_1786==3))
{
float l9_1789=l9_1785;
float l9_1790=0.0;
float l9_1791=1.0;
bool l9_1792=l9_1787;
float l9_1793=l9_1788;
float l9_1794=fast::clamp(l9_1789,l9_1790,l9_1791);
float l9_1795=step(abs(l9_1789-l9_1794),9.9999997e-06);
l9_1793*=(l9_1795+((1.0-float(l9_1792))*(1.0-l9_1795)));
l9_1789=l9_1794;
l9_1785=l9_1789;
l9_1788=l9_1793;
}
l9_1731.y=l9_1785;
l9_1741=l9_1788;
float2 l9_1796=l9_1731;
int l9_1797=l9_1729;
int l9_1798=l9_1730;
float l9_1799=l9_1739;
float2 l9_1800=l9_1796;
int l9_1801=l9_1797;
int l9_1802=l9_1798;
float3 l9_1803=float3(0.0);
if (l9_1801==0)
{
l9_1803=float3(l9_1800,0.0);
}
else
{
if (l9_1801==1)
{
l9_1803=float3(l9_1800.x,(l9_1800.y*0.5)+(0.5-(float(l9_1802)*0.5)),0.0);
}
else
{
l9_1803=float3(l9_1800,float(l9_1802));
}
}
float3 l9_1804=l9_1803;
float3 l9_1805=l9_1804;
float4 l9_1806=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1805.xy,level(l9_1799));
float4 l9_1807=l9_1806;
if (l9_1737)
{
l9_1807=mix(l9_1738,l9_1807,float4(l9_1741));
}
float4 l9_1808=l9_1807;
l9_1722=l9_1808;
float3 l9_1809=float3(0.0);
l9_1809=float3(l9_1722.x,l9_1722.y,l9_1722.z);
l9_1691=l9_1809;
l9_1689+=l9_1691;
param_44=l9_1689;
float3 l9_1810=param_44;
ssGlobals l9_1811=param_45;
float3 l9_1812=float3(0.0);
l9_1811.Loop_Index_ID0=5.0;
l9_1811.Loop_Ratio_ID0=0.71428603;
float2 l9_1813=float2(0.0);
float2 l9_1814=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1813=l9_1814;
float2 l9_1815=float2(0.0);
l9_1815=l9_1811.gScreenCoord;
float2 l9_1816=float2(0.0);
l9_1816=l9_1815;
float2 l9_1817=float2(0.0);
float2 l9_1818=(*sc_set0.UserUniforms).ratio;
l9_1817=l9_1818;
float2 l9_1819=float2(0.0);
l9_1819=l9_1813*l9_1817;
float2 l9_1820=float2(0.0);
l9_1820=l9_1819;
float l9_1821=0.0;
float l9_1822=(*sc_set0.UserUniforms).blurSize;
l9_1821=l9_1822;
float l9_1823=0.0;
l9_1823=l9_1821;
float l9_1824=0.0;
l9_1824=exp2(l9_1823);
float l9_1825=0.0;
l9_1825=l9_1811.Loop_Index_ID0;
float l9_1826=0.0;
l9_1826=mod(l9_1825,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1827=float2(0.0);
float l9_1828=l9_1826;
float2 l9_1829=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1830=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1831=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1832=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1833=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1834=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1835=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1836=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1837[8];
l9_1837[0]=l9_1829;
l9_1837[1]=l9_1830;
l9_1837[2]=l9_1831;
l9_1837[3]=l9_1832;
l9_1837[4]=l9_1833;
l9_1837[5]=l9_1834;
l9_1837[6]=l9_1835;
l9_1837[7]=l9_1836;
int l9_1838=int(fast::clamp(l9_1828+9.9999997e-05,0.0,7.0));
float2 l9_1839=l9_1837[l9_1838];
l9_1827=l9_1839;
float2 l9_1840=float2(0.0);
l9_1840=(l9_1820*float2(l9_1824))*l9_1827;
float2 l9_1841=float2(0.0);
l9_1841=l9_1816+l9_1840;
float l9_1842=0.0;
l9_1842=l9_1823+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1843=float4(0.0);
int l9_1844;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1845=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1845=0;
}
else
{
l9_1845=in.varStereoViewID;
}
int l9_1846=l9_1845;
l9_1844=1-l9_1846;
}
else
{
int l9_1847=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1847=0;
}
else
{
l9_1847=in.varStereoViewID;
}
int l9_1848=l9_1847;
l9_1844=l9_1848;
}
int l9_1849=l9_1844;
int l9_1850=glowTextureLayout_tmp;
int l9_1851=l9_1849;
float2 l9_1852=l9_1841;
bool l9_1853=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1854=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1855=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1856=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1857=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1858=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1859=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1860=l9_1842;
bool l9_1861=l9_1858&&(!l9_1856);
float l9_1862=1.0;
float l9_1863=l9_1852.x;
int l9_1864=l9_1855.x;
if (l9_1864==1)
{
l9_1863=fract(l9_1863);
}
else
{
if (l9_1864==2)
{
float l9_1865=fract(l9_1863);
float l9_1866=l9_1863-l9_1865;
float l9_1867=step(0.25,fract(l9_1866*0.5));
l9_1863=mix(l9_1865,1.0-l9_1865,fast::clamp(l9_1867,0.0,1.0));
}
}
l9_1852.x=l9_1863;
float l9_1868=l9_1852.y;
int l9_1869=l9_1855.y;
if (l9_1869==1)
{
l9_1868=fract(l9_1868);
}
else
{
if (l9_1869==2)
{
float l9_1870=fract(l9_1868);
float l9_1871=l9_1868-l9_1870;
float l9_1872=step(0.25,fract(l9_1871*0.5));
l9_1868=mix(l9_1870,1.0-l9_1870,fast::clamp(l9_1872,0.0,1.0));
}
}
l9_1852.y=l9_1868;
if (l9_1856)
{
bool l9_1873=l9_1858;
bool l9_1874;
if (l9_1873)
{
l9_1874=l9_1855.x==3;
}
else
{
l9_1874=l9_1873;
}
float l9_1875=l9_1852.x;
float l9_1876=l9_1857.x;
float l9_1877=l9_1857.z;
bool l9_1878=l9_1874;
float l9_1879=l9_1862;
float l9_1880=fast::clamp(l9_1875,l9_1876,l9_1877);
float l9_1881=step(abs(l9_1875-l9_1880),9.9999997e-06);
l9_1879*=(l9_1881+((1.0-float(l9_1878))*(1.0-l9_1881)));
l9_1875=l9_1880;
l9_1852.x=l9_1875;
l9_1862=l9_1879;
bool l9_1882=l9_1858;
bool l9_1883;
if (l9_1882)
{
l9_1883=l9_1855.y==3;
}
else
{
l9_1883=l9_1882;
}
float l9_1884=l9_1852.y;
float l9_1885=l9_1857.y;
float l9_1886=l9_1857.w;
bool l9_1887=l9_1883;
float l9_1888=l9_1862;
float l9_1889=fast::clamp(l9_1884,l9_1885,l9_1886);
float l9_1890=step(abs(l9_1884-l9_1889),9.9999997e-06);
l9_1888*=(l9_1890+((1.0-float(l9_1887))*(1.0-l9_1890)));
l9_1884=l9_1889;
l9_1852.y=l9_1884;
l9_1862=l9_1888;
}
float2 l9_1891=l9_1852;
bool l9_1892=l9_1853;
float3x3 l9_1893=l9_1854;
if (l9_1892)
{
l9_1891=float2((l9_1893*float3(l9_1891,1.0)).xy);
}
float2 l9_1894=l9_1891;
l9_1852=l9_1894;
float l9_1895=l9_1852.x;
int l9_1896=l9_1855.x;
bool l9_1897=l9_1861;
float l9_1898=l9_1862;
if ((l9_1896==0)||(l9_1896==3))
{
float l9_1899=l9_1895;
float l9_1900=0.0;
float l9_1901=1.0;
bool l9_1902=l9_1897;
float l9_1903=l9_1898;
float l9_1904=fast::clamp(l9_1899,l9_1900,l9_1901);
float l9_1905=step(abs(l9_1899-l9_1904),9.9999997e-06);
l9_1903*=(l9_1905+((1.0-float(l9_1902))*(1.0-l9_1905)));
l9_1899=l9_1904;
l9_1895=l9_1899;
l9_1898=l9_1903;
}
l9_1852.x=l9_1895;
l9_1862=l9_1898;
float l9_1906=l9_1852.y;
int l9_1907=l9_1855.y;
bool l9_1908=l9_1861;
float l9_1909=l9_1862;
if ((l9_1907==0)||(l9_1907==3))
{
float l9_1910=l9_1906;
float l9_1911=0.0;
float l9_1912=1.0;
bool l9_1913=l9_1908;
float l9_1914=l9_1909;
float l9_1915=fast::clamp(l9_1910,l9_1911,l9_1912);
float l9_1916=step(abs(l9_1910-l9_1915),9.9999997e-06);
l9_1914*=(l9_1916+((1.0-float(l9_1913))*(1.0-l9_1916)));
l9_1910=l9_1915;
l9_1906=l9_1910;
l9_1909=l9_1914;
}
l9_1852.y=l9_1906;
l9_1862=l9_1909;
float2 l9_1917=l9_1852;
int l9_1918=l9_1850;
int l9_1919=l9_1851;
float l9_1920=l9_1860;
float2 l9_1921=l9_1917;
int l9_1922=l9_1918;
int l9_1923=l9_1919;
float3 l9_1924=float3(0.0);
if (l9_1922==0)
{
l9_1924=float3(l9_1921,0.0);
}
else
{
if (l9_1922==1)
{
l9_1924=float3(l9_1921.x,(l9_1921.y*0.5)+(0.5-(float(l9_1923)*0.5)),0.0);
}
else
{
l9_1924=float3(l9_1921,float(l9_1923));
}
}
float3 l9_1925=l9_1924;
float3 l9_1926=l9_1925;
float4 l9_1927=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1926.xy,level(l9_1920));
float4 l9_1928=l9_1927;
if (l9_1858)
{
l9_1928=mix(l9_1859,l9_1928,float4(l9_1862));
}
float4 l9_1929=l9_1928;
l9_1843=l9_1929;
float3 l9_1930=float3(0.0);
l9_1930=float3(l9_1843.x,l9_1843.y,l9_1843.z);
l9_1812=l9_1930;
l9_1810+=l9_1812;
param_44=l9_1810;
float3 l9_1931=param_44;
ssGlobals l9_1932=param_45;
float3 l9_1933=float3(0.0);
l9_1932.Loop_Index_ID0=6.0;
l9_1932.Loop_Ratio_ID0=0.85714298;
float2 l9_1934=float2(0.0);
float2 l9_1935=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1934=l9_1935;
float2 l9_1936=float2(0.0);
l9_1936=l9_1932.gScreenCoord;
float2 l9_1937=float2(0.0);
l9_1937=l9_1936;
float2 l9_1938=float2(0.0);
float2 l9_1939=(*sc_set0.UserUniforms).ratio;
l9_1938=l9_1939;
float2 l9_1940=float2(0.0);
l9_1940=l9_1934*l9_1938;
float2 l9_1941=float2(0.0);
l9_1941=l9_1940;
float l9_1942=0.0;
float l9_1943=(*sc_set0.UserUniforms).blurSize;
l9_1942=l9_1943;
float l9_1944=0.0;
l9_1944=l9_1942;
float l9_1945=0.0;
l9_1945=exp2(l9_1944);
float l9_1946=0.0;
l9_1946=l9_1932.Loop_Index_ID0;
float l9_1947=0.0;
l9_1947=mod(l9_1946,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1948=float2(0.0);
float l9_1949=l9_1947;
float2 l9_1950=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1951=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1952=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1953=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1954=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1955=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1956=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1957=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1958[8];
l9_1958[0]=l9_1950;
l9_1958[1]=l9_1951;
l9_1958[2]=l9_1952;
l9_1958[3]=l9_1953;
l9_1958[4]=l9_1954;
l9_1958[5]=l9_1955;
l9_1958[6]=l9_1956;
l9_1958[7]=l9_1957;
int l9_1959=int(fast::clamp(l9_1949+9.9999997e-05,0.0,7.0));
float2 l9_1960=l9_1958[l9_1959];
l9_1948=l9_1960;
float2 l9_1961=float2(0.0);
l9_1961=(l9_1941*float2(l9_1945))*l9_1948;
float2 l9_1962=float2(0.0);
l9_1962=l9_1937+l9_1961;
float l9_1963=0.0;
l9_1963=l9_1944+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1964=float4(0.0);
int l9_1965;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1966=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1966=0;
}
else
{
l9_1966=in.varStereoViewID;
}
int l9_1967=l9_1966;
l9_1965=1-l9_1967;
}
else
{
int l9_1968=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1968=0;
}
else
{
l9_1968=in.varStereoViewID;
}
int l9_1969=l9_1968;
l9_1965=l9_1969;
}
int l9_1970=l9_1965;
int l9_1971=glowTextureLayout_tmp;
int l9_1972=l9_1970;
float2 l9_1973=l9_1962;
bool l9_1974=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1975=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1976=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1977=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1978=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1979=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1980=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1981=l9_1963;
bool l9_1982=l9_1979&&(!l9_1977);
float l9_1983=1.0;
float l9_1984=l9_1973.x;
int l9_1985=l9_1976.x;
if (l9_1985==1)
{
l9_1984=fract(l9_1984);
}
else
{
if (l9_1985==2)
{
float l9_1986=fract(l9_1984);
float l9_1987=l9_1984-l9_1986;
float l9_1988=step(0.25,fract(l9_1987*0.5));
l9_1984=mix(l9_1986,1.0-l9_1986,fast::clamp(l9_1988,0.0,1.0));
}
}
l9_1973.x=l9_1984;
float l9_1989=l9_1973.y;
int l9_1990=l9_1976.y;
if (l9_1990==1)
{
l9_1989=fract(l9_1989);
}
else
{
if (l9_1990==2)
{
float l9_1991=fract(l9_1989);
float l9_1992=l9_1989-l9_1991;
float l9_1993=step(0.25,fract(l9_1992*0.5));
l9_1989=mix(l9_1991,1.0-l9_1991,fast::clamp(l9_1993,0.0,1.0));
}
}
l9_1973.y=l9_1989;
if (l9_1977)
{
bool l9_1994=l9_1979;
bool l9_1995;
if (l9_1994)
{
l9_1995=l9_1976.x==3;
}
else
{
l9_1995=l9_1994;
}
float l9_1996=l9_1973.x;
float l9_1997=l9_1978.x;
float l9_1998=l9_1978.z;
bool l9_1999=l9_1995;
float l9_2000=l9_1983;
float l9_2001=fast::clamp(l9_1996,l9_1997,l9_1998);
float l9_2002=step(abs(l9_1996-l9_2001),9.9999997e-06);
l9_2000*=(l9_2002+((1.0-float(l9_1999))*(1.0-l9_2002)));
l9_1996=l9_2001;
l9_1973.x=l9_1996;
l9_1983=l9_2000;
bool l9_2003=l9_1979;
bool l9_2004;
if (l9_2003)
{
l9_2004=l9_1976.y==3;
}
else
{
l9_2004=l9_2003;
}
float l9_2005=l9_1973.y;
float l9_2006=l9_1978.y;
float l9_2007=l9_1978.w;
bool l9_2008=l9_2004;
float l9_2009=l9_1983;
float l9_2010=fast::clamp(l9_2005,l9_2006,l9_2007);
float l9_2011=step(abs(l9_2005-l9_2010),9.9999997e-06);
l9_2009*=(l9_2011+((1.0-float(l9_2008))*(1.0-l9_2011)));
l9_2005=l9_2010;
l9_1973.y=l9_2005;
l9_1983=l9_2009;
}
float2 l9_2012=l9_1973;
bool l9_2013=l9_1974;
float3x3 l9_2014=l9_1975;
if (l9_2013)
{
l9_2012=float2((l9_2014*float3(l9_2012,1.0)).xy);
}
float2 l9_2015=l9_2012;
l9_1973=l9_2015;
float l9_2016=l9_1973.x;
int l9_2017=l9_1976.x;
bool l9_2018=l9_1982;
float l9_2019=l9_1983;
if ((l9_2017==0)||(l9_2017==3))
{
float l9_2020=l9_2016;
float l9_2021=0.0;
float l9_2022=1.0;
bool l9_2023=l9_2018;
float l9_2024=l9_2019;
float l9_2025=fast::clamp(l9_2020,l9_2021,l9_2022);
float l9_2026=step(abs(l9_2020-l9_2025),9.9999997e-06);
l9_2024*=(l9_2026+((1.0-float(l9_2023))*(1.0-l9_2026)));
l9_2020=l9_2025;
l9_2016=l9_2020;
l9_2019=l9_2024;
}
l9_1973.x=l9_2016;
l9_1983=l9_2019;
float l9_2027=l9_1973.y;
int l9_2028=l9_1976.y;
bool l9_2029=l9_1982;
float l9_2030=l9_1983;
if ((l9_2028==0)||(l9_2028==3))
{
float l9_2031=l9_2027;
float l9_2032=0.0;
float l9_2033=1.0;
bool l9_2034=l9_2029;
float l9_2035=l9_2030;
float l9_2036=fast::clamp(l9_2031,l9_2032,l9_2033);
float l9_2037=step(abs(l9_2031-l9_2036),9.9999997e-06);
l9_2035*=(l9_2037+((1.0-float(l9_2034))*(1.0-l9_2037)));
l9_2031=l9_2036;
l9_2027=l9_2031;
l9_2030=l9_2035;
}
l9_1973.y=l9_2027;
l9_1983=l9_2030;
float2 l9_2038=l9_1973;
int l9_2039=l9_1971;
int l9_2040=l9_1972;
float l9_2041=l9_1981;
float2 l9_2042=l9_2038;
int l9_2043=l9_2039;
int l9_2044=l9_2040;
float3 l9_2045=float3(0.0);
if (l9_2043==0)
{
l9_2045=float3(l9_2042,0.0);
}
else
{
if (l9_2043==1)
{
l9_2045=float3(l9_2042.x,(l9_2042.y*0.5)+(0.5-(float(l9_2044)*0.5)),0.0);
}
else
{
l9_2045=float3(l9_2042,float(l9_2044));
}
}
float3 l9_2046=l9_2045;
float3 l9_2047=l9_2046;
float4 l9_2048=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_2047.xy,level(l9_2041));
float4 l9_2049=l9_2048;
if (l9_1979)
{
l9_2049=mix(l9_1980,l9_2049,float4(l9_1983));
}
float4 l9_2050=l9_2049;
l9_1964=l9_2050;
float3 l9_2051=float3(0.0);
l9_2051=float3(l9_1964.x,l9_1964.y,l9_1964.z);
l9_1933=l9_2051;
l9_1931+=l9_1933;
param_44=l9_1931;
float3 l9_2052=param_44;
ssGlobals l9_2053=param_45;
float3 l9_2054=float3(0.0);
l9_2053.Loop_Index_ID0=7.0;
l9_2053.Loop_Ratio_ID0=1.0;
float2 l9_2055=float2(0.0);
float2 l9_2056=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_2055=l9_2056;
float2 l9_2057=float2(0.0);
l9_2057=l9_2053.gScreenCoord;
float2 l9_2058=float2(0.0);
l9_2058=l9_2057;
float2 l9_2059=float2(0.0);
float2 l9_2060=(*sc_set0.UserUniforms).ratio;
l9_2059=l9_2060;
float2 l9_2061=float2(0.0);
l9_2061=l9_2055*l9_2059;
float2 l9_2062=float2(0.0);
l9_2062=l9_2061;
float l9_2063=0.0;
float l9_2064=(*sc_set0.UserUniforms).blurSize;
l9_2063=l9_2064;
float l9_2065=0.0;
l9_2065=l9_2063;
float l9_2066=0.0;
l9_2066=exp2(l9_2065);
float l9_2067=0.0;
l9_2067=l9_2053.Loop_Index_ID0;
float l9_2068=0.0;
l9_2068=mod(l9_2067,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_2069=float2(0.0);
float l9_2070=l9_2068;
float2 l9_2071=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_2072=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_2073=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_2074=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_2075=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_2076=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_2077=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_2078=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_2079[8];
l9_2079[0]=l9_2071;
l9_2079[1]=l9_2072;
l9_2079[2]=l9_2073;
l9_2079[3]=l9_2074;
l9_2079[4]=l9_2075;
l9_2079[5]=l9_2076;
l9_2079[6]=l9_2077;
l9_2079[7]=l9_2078;
int l9_2080=int(fast::clamp(l9_2070+9.9999997e-05,0.0,7.0));
float2 l9_2081=l9_2079[l9_2080];
l9_2069=l9_2081;
float2 l9_2082=float2(0.0);
l9_2082=(l9_2062*float2(l9_2066))*l9_2069;
float2 l9_2083=float2(0.0);
l9_2083=l9_2058+l9_2082;
float l9_2084=0.0;
l9_2084=l9_2065+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_2085=float4(0.0);
int l9_2086;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_2087=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2087=0;
}
else
{
l9_2087=in.varStereoViewID;
}
int l9_2088=l9_2087;
l9_2086=1-l9_2088;
}
else
{
int l9_2089=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2089=0;
}
else
{
l9_2089=in.varStereoViewID;
}
int l9_2090=l9_2089;
l9_2086=l9_2090;
}
int l9_2091=l9_2086;
int l9_2092=glowTextureLayout_tmp;
int l9_2093=l9_2091;
float2 l9_2094=l9_2083;
bool l9_2095=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_2096=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_2097=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_2098=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_2099=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_2100=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_2101=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_2102=l9_2084;
bool l9_2103=l9_2100&&(!l9_2098);
float l9_2104=1.0;
float l9_2105=l9_2094.x;
int l9_2106=l9_2097.x;
if (l9_2106==1)
{
l9_2105=fract(l9_2105);
}
else
{
if (l9_2106==2)
{
float l9_2107=fract(l9_2105);
float l9_2108=l9_2105-l9_2107;
float l9_2109=step(0.25,fract(l9_2108*0.5));
l9_2105=mix(l9_2107,1.0-l9_2107,fast::clamp(l9_2109,0.0,1.0));
}
}
l9_2094.x=l9_2105;
float l9_2110=l9_2094.y;
int l9_2111=l9_2097.y;
if (l9_2111==1)
{
l9_2110=fract(l9_2110);
}
else
{
if (l9_2111==2)
{
float l9_2112=fract(l9_2110);
float l9_2113=l9_2110-l9_2112;
float l9_2114=step(0.25,fract(l9_2113*0.5));
l9_2110=mix(l9_2112,1.0-l9_2112,fast::clamp(l9_2114,0.0,1.0));
}
}
l9_2094.y=l9_2110;
if (l9_2098)
{
bool l9_2115=l9_2100;
bool l9_2116;
if (l9_2115)
{
l9_2116=l9_2097.x==3;
}
else
{
l9_2116=l9_2115;
}
float l9_2117=l9_2094.x;
float l9_2118=l9_2099.x;
float l9_2119=l9_2099.z;
bool l9_2120=l9_2116;
float l9_2121=l9_2104;
float l9_2122=fast::clamp(l9_2117,l9_2118,l9_2119);
float l9_2123=step(abs(l9_2117-l9_2122),9.9999997e-06);
l9_2121*=(l9_2123+((1.0-float(l9_2120))*(1.0-l9_2123)));
l9_2117=l9_2122;
l9_2094.x=l9_2117;
l9_2104=l9_2121;
bool l9_2124=l9_2100;
bool l9_2125;
if (l9_2124)
{
l9_2125=l9_2097.y==3;
}
else
{
l9_2125=l9_2124;
}
float l9_2126=l9_2094.y;
float l9_2127=l9_2099.y;
float l9_2128=l9_2099.w;
bool l9_2129=l9_2125;
float l9_2130=l9_2104;
float l9_2131=fast::clamp(l9_2126,l9_2127,l9_2128);
float l9_2132=step(abs(l9_2126-l9_2131),9.9999997e-06);
l9_2130*=(l9_2132+((1.0-float(l9_2129))*(1.0-l9_2132)));
l9_2126=l9_2131;
l9_2094.y=l9_2126;
l9_2104=l9_2130;
}
float2 l9_2133=l9_2094;
bool l9_2134=l9_2095;
float3x3 l9_2135=l9_2096;
if (l9_2134)
{
l9_2133=float2((l9_2135*float3(l9_2133,1.0)).xy);
}
float2 l9_2136=l9_2133;
l9_2094=l9_2136;
float l9_2137=l9_2094.x;
int l9_2138=l9_2097.x;
bool l9_2139=l9_2103;
float l9_2140=l9_2104;
if ((l9_2138==0)||(l9_2138==3))
{
float l9_2141=l9_2137;
float l9_2142=0.0;
float l9_2143=1.0;
bool l9_2144=l9_2139;
float l9_2145=l9_2140;
float l9_2146=fast::clamp(l9_2141,l9_2142,l9_2143);
float l9_2147=step(abs(l9_2141-l9_2146),9.9999997e-06);
l9_2145*=(l9_2147+((1.0-float(l9_2144))*(1.0-l9_2147)));
l9_2141=l9_2146;
l9_2137=l9_2141;
l9_2140=l9_2145;
}
l9_2094.x=l9_2137;
l9_2104=l9_2140;
float l9_2148=l9_2094.y;
int l9_2149=l9_2097.y;
bool l9_2150=l9_2103;
float l9_2151=l9_2104;
if ((l9_2149==0)||(l9_2149==3))
{
float l9_2152=l9_2148;
float l9_2153=0.0;
float l9_2154=1.0;
bool l9_2155=l9_2150;
float l9_2156=l9_2151;
float l9_2157=fast::clamp(l9_2152,l9_2153,l9_2154);
float l9_2158=step(abs(l9_2152-l9_2157),9.9999997e-06);
l9_2156*=(l9_2158+((1.0-float(l9_2155))*(1.0-l9_2158)));
l9_2152=l9_2157;
l9_2148=l9_2152;
l9_2151=l9_2156;
}
l9_2094.y=l9_2148;
l9_2104=l9_2151;
float2 l9_2159=l9_2094;
int l9_2160=l9_2092;
int l9_2161=l9_2093;
float l9_2162=l9_2102;
float2 l9_2163=l9_2159;
int l9_2164=l9_2160;
int l9_2165=l9_2161;
float3 l9_2166=float3(0.0);
if (l9_2164==0)
{
l9_2166=float3(l9_2163,0.0);
}
else
{
if (l9_2164==1)
{
l9_2166=float3(l9_2163.x,(l9_2163.y*0.5)+(0.5-(float(l9_2165)*0.5)),0.0);
}
else
{
l9_2166=float3(l9_2163,float(l9_2165));
}
}
float3 l9_2167=l9_2166;
float3 l9_2168=l9_2167;
float4 l9_2169=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_2168.xy,level(l9_2162));
float4 l9_2170=l9_2169;
if (l9_2100)
{
l9_2170=mix(l9_2101,l9_2170,float4(l9_2104));
}
float4 l9_2171=l9_2170;
l9_2085=l9_2171;
float3 l9_2172=float3(0.0);
l9_2172=float3(l9_2085.x,l9_2085.y,l9_2085.z);
l9_2054=l9_2172;
l9_2052+=l9_2054;
param_44=l9_2052;
param_44/=float3(8.0);
Output_N51=param_44;
float3 Output_N52=float3(0.0);
Output_N52=mix(Output_N74,Output_N51,float3((*sc_set0.UserUniforms).Port_Input2_N052));
float3 Export_N53=float3(0.0);
Export_N53=Output_N52;
float3 Output_N30=float3(0.0);
Output_N30=(Export_N106+Export_N27)+Export_N53;
float Output_N58=0.0;
float param_46=(*sc_set0.UserUniforms).luminance;
Output_N58=param_46;
float3 Output_N11=float3(0.0);
Output_N11=Output_N30*float3(Output_N58);
float4 Output_N75=float4(0.0);
Output_N75=float4(Output_N11.x,Output_N11.y,Output_N11.z,1.0);
FinalColor=Output_N75;
float param_47=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_47<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_2173=gl_FragCoord;
float2 l9_2174=floor(mod(l9_2173.xy,float2(4.0)));
float l9_2175=(mod(dot(l9_2174,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_47<l9_2175)
{
discard_fragment();
}
}
float4 param_48=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_2176=param_48;
float4 l9_2177=l9_2176;
float l9_2178=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2178=l9_2177.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_2178=fast::clamp(l9_2177.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2178=fast::clamp(dot(l9_2177.xyz,float3(l9_2177.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_2178=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_2178=(1.0-dot(l9_2177.xyz,float3(0.33333001)))*l9_2177.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2178=(1.0-fast::clamp(dot(l9_2177.xyz,float3(1.0)),0.0,1.0))*l9_2177.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_2178=fast::clamp(dot(l9_2177.xyz,float3(1.0)),0.0,1.0)*l9_2177.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_2178=fast::clamp(dot(l9_2177.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2178=fast::clamp(dot(l9_2177.xyz,float3(1.0)),0.0,1.0)*l9_2177.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_2178=dot(l9_2177.xyz,float3(0.33333001))*l9_2177.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_2178=1.0-fast::clamp(dot(l9_2177.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_2178=fast::clamp(dot(l9_2177.xyz,float3(1.0)),0.0,1.0);
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
float l9_2179=l9_2178;
float l9_2180=l9_2179;
float l9_2181=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_2180;
float3 l9_2182=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_2176.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_2183=float4(l9_2182.x,l9_2182.y,l9_2182.z,l9_2181);
param_48=l9_2183;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_48=float4(param_48.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_2184=param_48;
float4 l9_2185=float4(0.0);
float4 l9_2186=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_2187=out.sc_FragData0;
l9_2186=l9_2187;
}
else
{
float4 l9_2188=gl_FragCoord;
float2 l9_2189=l9_2188.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2190=l9_2189;
float2 l9_2191=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_2192=1;
int l9_2193=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2193=0;
}
else
{
l9_2193=in.varStereoViewID;
}
int l9_2194=l9_2193;
int l9_2195=l9_2194;
float3 l9_2196=float3(l9_2190,0.0);
int l9_2197=l9_2192;
int l9_2198=l9_2195;
if (l9_2197==1)
{
l9_2196.y=((2.0*l9_2196.y)+float(l9_2198))-1.0;
}
float2 l9_2199=l9_2196.xy;
l9_2191=l9_2199;
}
else
{
l9_2191=l9_2190;
}
float2 l9_2200=l9_2191;
float2 l9_2201=l9_2200;
float2 l9_2202=l9_2201;
float2 l9_2203=l9_2202;
float l9_2204=0.0;
int l9_2205;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_2206=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2206=0;
}
else
{
l9_2206=in.varStereoViewID;
}
int l9_2207=l9_2206;
l9_2205=1-l9_2207;
}
else
{
int l9_2208=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2208=0;
}
else
{
l9_2208=in.varStereoViewID;
}
int l9_2209=l9_2208;
l9_2205=l9_2209;
}
int l9_2210=l9_2205;
float2 l9_2211=l9_2203;
int l9_2212=sc_ScreenTextureLayout_tmp;
int l9_2213=l9_2210;
float l9_2214=l9_2204;
float2 l9_2215=l9_2211;
int l9_2216=l9_2212;
int l9_2217=l9_2213;
float3 l9_2218=float3(0.0);
if (l9_2216==0)
{
l9_2218=float3(l9_2215,0.0);
}
else
{
if (l9_2216==1)
{
l9_2218=float3(l9_2215.x,(l9_2215.y*0.5)+(0.5-(float(l9_2217)*0.5)),0.0);
}
else
{
l9_2218=float3(l9_2215,float(l9_2217));
}
}
float3 l9_2219=l9_2218;
float3 l9_2220=l9_2219;
float4 l9_2221=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_2220.xy,bias(l9_2214));
float4 l9_2222=l9_2221;
float4 l9_2223=l9_2222;
l9_2186=l9_2223;
}
float4 l9_2224=l9_2186;
float3 l9_2225=l9_2224.xyz;
float3 l9_2226=l9_2225;
float3 l9_2227=l9_2184.xyz;
float3 l9_2228=definedBlend(l9_2226,l9_2227,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_2185=float4(l9_2228.x,l9_2228.y,l9_2228.z,l9_2185.w);
float3 l9_2229=mix(l9_2225,l9_2185.xyz,float3(l9_2184.w));
l9_2185=float4(l9_2229.x,l9_2229.y,l9_2229.z,l9_2185.w);
l9_2185.w=1.0;
float4 l9_2230=l9_2185;
param_48=l9_2230;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_2231=float4(in.varScreenPos.xyz,1.0);
param_48=l9_2231;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_2232=gl_FragCoord;
float l9_2233=fast::clamp(abs(l9_2232.z),0.0,1.0);
float4 l9_2234=float4(l9_2233,1.0-l9_2233,1.0,1.0);
param_48=l9_2234;
}
else
{
float4 l9_2235=param_48;
float4 l9_2236=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2236=float4(mix(float3(1.0),l9_2235.xyz,float3(l9_2235.w)),l9_2235.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_2237=l9_2235.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2237=fast::clamp(l9_2237,0.0,1.0);
}
l9_2236=float4(l9_2235.xyz*l9_2237,l9_2237);
}
else
{
l9_2236=l9_2235;
}
}
float4 l9_2238=l9_2236;
param_48=l9_2238;
}
}
}
}
}
float4 l9_2239=param_48;
FinalColor=l9_2239;
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
float4 l9_2240=float4(0.0);
l9_2240=float4(0.0);
float4 l9_2241=l9_2240;
float4 Cost=l9_2241;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_49=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_49,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_50=FinalColor;
float4 l9_2242=param_50;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_2242.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_2242;
return out;
}
} // FRAGMENT SHADER
