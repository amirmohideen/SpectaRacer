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
//sampler sampler Tweak_N52SmpSC 0:20
//sampler sampler Tweak_N80SmpSC 0:21
//sampler sampler Tweak_N9SmpSC 0:22
//sampler sampler intensityTextureSmpSC 0:23
//sampler sampler prev_frameSmpSC 0:24
//sampler sampler sc_ScreenTextureSmpSC 0:29
//texture texture2D Tweak_N52 0:1:0:20
//texture texture3D Tweak_N80 0:2:0:21
//texture texture3D Tweak_N9 0:3:0:22
//texture texture2D intensityTexture 0:4:0:23
//texture texture2D prev_frame 0:5:0:24
//texture texture2D sc_ScreenTexture 0:17:0:29
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:32:4928 {
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
//float3x3 prev_frameTransform 4304
//float4 prev_frameUvMinMax 4352
//float4 prev_frameBorderColor 4368
//float2 noisePivotPos 4408
//float2 Tweak_N60 4416
//float2 Tweak_N71 4424
//float Tweak_N6 4432
//float2 Tweak_N25 4440
//float Tweak_N11 4448
//float Tweak_N126 4452
//float2 radialPivotPos 4456
//float2 Tweak_N50 4464
//float Tweak_N119 4472
//float2 Tweak_N48 4480
//float Tweak_N114 4488
//float Tweak_N29 4492
//float Tweak_N32 4496
//float3x3 Tweak_N52Transform 4560
//float4 Tweak_N52UvMinMax 4608
//float4 Tweak_N52BorderColor 4624
//float4 Tweak_N58 4640
//float4 Tweak_N73 4656
//float2 Tweak_N27 4696
//float Tweak_N26 4704
//float Tweak_N12 4708
//float Tweak_N41 4712
//float Tweak_N38 4716
//float Port_Input1_N137 4720
//float2 Port_Center_N046 4728
//float2 Port_Input1_N083 4736
//float2 Port_Scale_N086 4752
//float2 Port_Center_N086 4760
//float Port_Input1_N087 4768
//float Port_Input1_N093 4772
//float Port_Input1_N098 4776
//float Port_Input1_N100 4780
//float Port_Input1_N023 4784
//float Port_RangeMinA_N117 4788
//float Port_RangeMaxA_N117 4792
//float Port_RangeMinB_N117 4796
//float Port_RangeMaxB_N117 4800
//float Port_Input1_N127 4804
//float Port_Input1_N120 4808
//float2 Port_Input2_N115 4816
//float Port_Input1_N123 4824
//float Port_Input1_N045 4828
//float3 Port_Value1_N033 4832
//float Port_Input1_N021 4848
//float Port_Input0_N013 4852
//float Port_Input1_N030 4856
//float Port_Input2_N030 4860
//float Port_Input0_N040 4864
//float Port_Input1_N044 4868
//float Port_Input2_N044 4872
//float Port_Input2_N129 4876
//float Port_Input2_N131 4880
//float4 Port_Default_N051 4896
//float Port_Multiplier_N139 4912
//float Port_Input1_N140 4916
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_Tweak_N52 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_prev_frame 33 0
//spec_const bool SC_USE_UV_MIN_MAX_Tweak_N52 34 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 35 0
//spec_const bool SC_USE_UV_MIN_MAX_prev_frame 36 0
//spec_const bool SC_USE_UV_TRANSFORM_Tweak_N52 37 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 38 0
//spec_const bool SC_USE_UV_TRANSFORM_prev_frame 39 0
//spec_const bool Tweak_N113 40 0
//spec_const bool Tweak_N128 41 0
//spec_const bool Tweak_N52HasSwappedViews 42 0
//spec_const bool Tweak_N66 43 0
//spec_const bool UseViewSpaceDepthVariant 44 1
//spec_const bool intensityTextureHasSwappedViews 45 0
//spec_const bool prev_frameHasSwappedViews 46 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 47 0
//spec_const bool sc_BlendMode_Add 48 0
//spec_const bool sc_BlendMode_AlphaTest 49 0
//spec_const bool sc_BlendMode_AlphaToCoverage 50 0
//spec_const bool sc_BlendMode_ColoredGlass 51 0
//spec_const bool sc_BlendMode_Custom 52 0
//spec_const bool sc_BlendMode_Max 53 0
//spec_const bool sc_BlendMode_Min 54 0
//spec_const bool sc_BlendMode_MultiplyOriginal 55 0
//spec_const bool sc_BlendMode_Multiply 56 0
//spec_const bool sc_BlendMode_Normal 57 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 58 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 59 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 60 0
//spec_const bool sc_BlendMode_Screen 61 0
//spec_const bool sc_DepthOnly 62 0
//spec_const bool sc_FramebufferFetch 63 0
//spec_const bool sc_MotionVectorsPass 64 0
//spec_const bool sc_OITCompositingPass 65 0
//spec_const bool sc_OITDepthBoundsPass 66 0
//spec_const bool sc_OITDepthGatherPass 67 0
//spec_const bool sc_OutputBounds 68 0
//spec_const bool sc_ProjectiveShadowsCaster 69 0
//spec_const bool sc_ProjectiveShadowsReceiver 70 0
//spec_const bool sc_RenderAlphaToColor 71 0
//spec_const bool sc_ScreenTextureHasSwappedViews 72 0
//spec_const bool sc_TAAEnabled 73 0
//spec_const bool sc_VertexBlendingUseNormals 74 0
//spec_const bool sc_VertexBlending 75 0
//spec_const bool sc_Voxelization 76 0
//spec_const int NODE_3_DROPLIST_ITEM 77 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_Tweak_N52 78 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 79 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_prev_frame 80 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_Tweak_N52 81 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 82 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_prev_frame 83 -1
//spec_const int Tweak_N52Layout 84 0
//spec_const int intensityTextureLayout 85 0
//spec_const int prev_frameLayout 86 0
//spec_const int sc_DepthBufferMode 87 0
//spec_const int sc_RenderingSpace 88 -1
//spec_const int sc_ScreenTextureLayout 89 0
//spec_const int sc_ShaderCacheConstant 90 0
//spec_const int sc_SkinBonesCount 91 0
//spec_const int sc_StereoRenderingMode 92 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 93 0
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
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N52 [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_Tweak_N52) ? SC_USE_CLAMP_TO_BORDER_Tweak_N52 : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_prev_frame [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_prev_frame_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_prev_frame) ? SC_USE_CLAMP_TO_BORDER_prev_frame : false;
constant bool SC_USE_UV_MIN_MAX_Tweak_N52 [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_Tweak_N52_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_Tweak_N52) ? SC_USE_UV_MIN_MAX_Tweak_N52 : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(35)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_prev_frame [[function_constant(36)]];
constant bool SC_USE_UV_MIN_MAX_prev_frame_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_prev_frame) ? SC_USE_UV_MIN_MAX_prev_frame : false;
constant bool SC_USE_UV_TRANSFORM_Tweak_N52 [[function_constant(37)]];
constant bool SC_USE_UV_TRANSFORM_Tweak_N52_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_Tweak_N52) ? SC_USE_UV_TRANSFORM_Tweak_N52 : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(38)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_prev_frame [[function_constant(39)]];
constant bool SC_USE_UV_TRANSFORM_prev_frame_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_prev_frame) ? SC_USE_UV_TRANSFORM_prev_frame : false;
constant bool Tweak_N113 [[function_constant(40)]];
constant bool Tweak_N113_tmp = is_function_constant_defined(Tweak_N113) ? Tweak_N113 : false;
constant bool Tweak_N128 [[function_constant(41)]];
constant bool Tweak_N128_tmp = is_function_constant_defined(Tweak_N128) ? Tweak_N128 : false;
constant bool Tweak_N52HasSwappedViews [[function_constant(42)]];
constant bool Tweak_N52HasSwappedViews_tmp = is_function_constant_defined(Tweak_N52HasSwappedViews) ? Tweak_N52HasSwappedViews : false;
constant bool Tweak_N66 [[function_constant(43)]];
constant bool Tweak_N66_tmp = is_function_constant_defined(Tweak_N66) ? Tweak_N66 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(44)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool intensityTextureHasSwappedViews [[function_constant(45)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool prev_frameHasSwappedViews [[function_constant(46)]];
constant bool prev_frameHasSwappedViews_tmp = is_function_constant_defined(prev_frameHasSwappedViews) ? prev_frameHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(47)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(48)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(49)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(50)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(51)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(52)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(53)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(54)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(55)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(56)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(57)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(58)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(59)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(60)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(61)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(62)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(63)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(64)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(65)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(66)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(67)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(68)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(69)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(70)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(71)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(72)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(73)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(74)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(75)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(76)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant int NODE_3_DROPLIST_ITEM [[function_constant(77)]];
constant int NODE_3_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_3_DROPLIST_ITEM) ? NODE_3_DROPLIST_ITEM : 0;
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N52 [[function_constant(78)]];
constant int SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52) ? SC_SOFTWARE_WRAP_MODE_U_Tweak_N52 : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(79)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_prev_frame [[function_constant(80)]];
constant int SC_SOFTWARE_WRAP_MODE_U_prev_frame_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_prev_frame) ? SC_SOFTWARE_WRAP_MODE_U_prev_frame : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N52 [[function_constant(81)]];
constant int SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_Tweak_N52) ? SC_SOFTWARE_WRAP_MODE_V_Tweak_N52 : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(82)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_prev_frame [[function_constant(83)]];
constant int SC_SOFTWARE_WRAP_MODE_V_prev_frame_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_prev_frame) ? SC_SOFTWARE_WRAP_MODE_V_prev_frame : -1;
constant int Tweak_N52Layout [[function_constant(84)]];
constant int Tweak_N52Layout_tmp = is_function_constant_defined(Tweak_N52Layout) ? Tweak_N52Layout : 0;
constant int intensityTextureLayout [[function_constant(85)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int prev_frameLayout [[function_constant(86)]];
constant int prev_frameLayout_tmp = is_function_constant_defined(prev_frameLayout) ? prev_frameLayout : 0;
constant int sc_DepthBufferMode [[function_constant(87)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(88)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(89)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(90)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(91)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(92)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(93)]];
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
float4 prev_frameSize;
float4 prev_frameDims;
float4 prev_frameView;
float3x3 prev_frameTransform;
float4 prev_frameUvMinMax;
float4 prev_frameBorderColor;
float4 Tweak_N80Size;
float2 Tweak_N80Depth;
float2 noisePivotPos;
float2 Tweak_N60;
float2 Tweak_N71;
float Tweak_N6;
float2 Tweak_N25;
float Tweak_N11;
float Tweak_N126;
float2 radialPivotPos;
float2 Tweak_N50;
float Tweak_N119;
float2 Tweak_N48;
float Tweak_N114;
float Tweak_N29;
float Tweak_N32;
float4 Tweak_N52Size;
float4 Tweak_N52Dims;
float4 Tweak_N52View;
float3x3 Tweak_N52Transform;
float4 Tweak_N52UvMinMax;
float4 Tweak_N52BorderColor;
float4 Tweak_N58;
float4 Tweak_N73;
float4 Tweak_N9Size;
float2 Tweak_N9Depth;
float2 Tweak_N27;
float Tweak_N26;
float Tweak_N12;
float Tweak_N41;
float Tweak_N38;
float Port_Input1_N137;
float2 Port_Center_N046;
float2 Port_Input1_N083;
float2 Port_Import_N118;
float2 Port_Scale_N086;
float2 Port_Center_N086;
float Port_Input1_N087;
float Port_Input1_N093;
float Port_Input1_N098;
float Port_Input1_N100;
float Port_Input1_N023;
float Port_RangeMinA_N117;
float Port_RangeMaxA_N117;
float Port_RangeMinB_N117;
float Port_RangeMaxB_N117;
float Port_Input1_N127;
float Port_Input1_N120;
float2 Port_Input2_N115;
float Port_Input1_N123;
float Port_Input1_N045;
float3 Port_Value1_N033;
float Port_Input1_N021;
float Port_Input0_N013;
float Port_Input1_N030;
float Port_Input2_N030;
float Port_Input0_N040;
float Port_Input1_N044;
float Port_Input2_N044;
float Port_Input2_N129;
float Port_Input2_N131;
float4 Port_Default_N051;
float Port_Multiplier_N139;
float Port_Input1_N140;
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
texture2d<float> Tweak_N52 [[id(1)]];
texture3d<float> Tweak_N80 [[id(2)]];
texture3d<float> Tweak_N9 [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> prev_frame [[id(5)]];
texture2d<float> sc_ScreenTexture [[id(17)]];
sampler Tweak_N52SmpSC [[id(20)]];
sampler Tweak_N80SmpSC [[id(21)]];
sampler Tweak_N9SmpSC [[id(22)]];
sampler intensityTextureSmpSC [[id(23)]];
sampler prev_frameSmpSC [[id(24)]];
sampler sc_ScreenTextureSmpSC [[id(29)]];
constant userUniformsObj* UserUniforms [[id(32)]];
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
float2 Surface_UVCoord0;
float2 gScreenCoord;
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
float4 prev_frameSize;
float4 prev_frameDims;
float4 prev_frameView;
float3x3 prev_frameTransform;
float4 prev_frameUvMinMax;
float4 prev_frameBorderColor;
float4 Tweak_N80Size;
float2 Tweak_N80Depth;
float2 noisePivotPos;
float2 Tweak_N60;
float2 Tweak_N71;
float Tweak_N6;
float2 Tweak_N25;
float Tweak_N11;
float Tweak_N126;
float2 radialPivotPos;
float2 Tweak_N50;
float Tweak_N119;
float2 Tweak_N48;
float Tweak_N114;
float Tweak_N29;
float Tweak_N32;
float4 Tweak_N52Size;
float4 Tweak_N52Dims;
float4 Tweak_N52View;
float3x3 Tweak_N52Transform;
float4 Tweak_N52UvMinMax;
float4 Tweak_N52BorderColor;
float4 Tweak_N58;
float4 Tweak_N73;
float4 Tweak_N9Size;
float2 Tweak_N9Depth;
float2 Tweak_N27;
float Tweak_N26;
float Tweak_N12;
float Tweak_N41;
float Tweak_N38;
float Port_Input1_N137;
float2 Port_Center_N046;
float2 Port_Input1_N083;
float2 Port_Import_N118;
float2 Port_Scale_N086;
float2 Port_Center_N086;
float Port_Input1_N087;
float Port_Input1_N093;
float Port_Input1_N098;
float Port_Input1_N100;
float Port_Input1_N023;
float Port_RangeMinA_N117;
float Port_RangeMaxA_N117;
float Port_RangeMinB_N117;
float Port_RangeMaxB_N117;
float Port_Input1_N127;
float Port_Input1_N120;
float2 Port_Input2_N115;
float Port_Input1_N123;
float Port_Input1_N045;
float3 Port_Value1_N033;
float Port_Input1_N021;
float Port_Input0_N013;
float Port_Input1_N030;
float Port_Input2_N030;
float Port_Input0_N040;
float Port_Input1_N044;
float Port_Input2_N044;
float Port_Input2_N129;
float Port_Input2_N131;
float4 Port_Default_N051;
float Port_Multiplier_N139;
float Port_Input1_N140;
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
texture2d<float> Tweak_N52 [[id(1)]];
texture3d<float> Tweak_N80 [[id(2)]];
texture3d<float> Tweak_N9 [[id(3)]];
texture2d<float> intensityTexture [[id(4)]];
texture2d<float> prev_frame [[id(5)]];
texture2d<float> sc_ScreenTexture [[id(17)]];
sampler Tweak_N52SmpSC [[id(20)]];
sampler Tweak_N80SmpSC [[id(21)]];
sampler Tweak_N9SmpSC [[id(22)]];
sampler intensityTextureSmpSC [[id(23)]];
sampler prev_frameSmpSC [[id(24)]];
sampler sc_ScreenTextureSmpSC [[id(29)]];
constant userUniformsObj* UserUniforms [[id(32)]];
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
float4 FinalColor=float4(0.0,0.0,0.0,1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.Surface_UVCoord0=in.varTex01.xy;
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
float4 Result_N51=float4(0.0);
float4 param=float4(0.0);
float4 param_1=float4(0.0);
float4 param_2=float4(0.0);
float4 param_3=(*sc_set0.UserUniforms).Port_Default_N051;
ssGlobals param_5=Globals;
float4 param_4;
if (NODE_3_DROPLIST_ITEM_tmp==0)
{
float2 l9_14=float2(0.0);
l9_14=param_5.Surface_UVCoord0;
float2 l9_15=float2(0.0);
float2 l9_16=float2(1.0);
float2 l9_17=float2(0.0);
ssGlobals l9_18=param_5;
float2 l9_19;
if ((int(Tweak_N66_tmp)!=0))
{
float2 l9_20=float2(0.0);
l9_20=l9_18.gScreenCoord;
float2 l9_21=float2(0.0);
float l9_22=1.0;
float2 l9_23=float2(1.0);
float2 l9_24=float2(0.0);
float l9_25=0.0;
l9_25=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_26=0.0;
l9_26=float(l9_25>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_22=l9_26;
float2 l9_27;
if ((l9_22*1.0)!=0.0)
{
float l9_28=0.0;
l9_28=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_29=float2(0.0);
l9_29=float2(1.0,l9_28);
l9_23=l9_29;
l9_27=l9_23;
}
else
{
float l9_30=0.0;
l9_30=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_31=float2(0.0);
l9_31=float2(l9_30,1.0);
l9_24=l9_31;
l9_27=l9_24;
}
l9_21=l9_27;
float2 l9_32=float2(0.0);
l9_32=((l9_20-(*sc_set0.UserUniforms).Port_Center_N046)*l9_21)+(*sc_set0.UserUniforms).Port_Center_N046;
float2 l9_33=float2(0.0);
float2 l9_34=(*sc_set0.UserUniforms).noisePivotPos;
l9_33=l9_34;
float2 l9_35=float2(0.0);
float2 l9_36=(*sc_set0.UserUniforms).Tweak_N60;
l9_35=l9_36;
float2 l9_37=float2(0.0);
l9_37=l9_33+l9_35;
float2 l9_38=float2(0.0);
l9_38=l9_37-(*sc_set0.UserUniforms).Port_Input1_N083;
float2 l9_39=float2(0.0);
l9_39=l9_32-l9_38;
float2 l9_40=float2(0.0);
l9_40=l9_39;
float2 l9_41=float2(0.0);
l9_41=((l9_40-(*sc_set0.UserUniforms).Port_Center_N086)*(*sc_set0.UserUniforms).Port_Scale_N086)+(*sc_set0.UserUniforms).Port_Center_N086;
float2 l9_42=float2(0.0);
l9_42=l9_41-float2((*sc_set0.UserUniforms).Port_Input1_N087);
float2 l9_43=float2(0.0);
l9_43=l9_42*l9_42;
float l9_44=0.0;
l9_44=l9_43.x;
float l9_45=0.0;
l9_45=l9_43.y;
float l9_46=0.0;
l9_46=l9_44+l9_45;
float l9_47=0.0;
float l9_48;
if (l9_46<=0.0)
{
l9_48=0.0;
}
else
{
l9_48=sqrt(l9_46);
}
l9_47=l9_48;
float2 l9_49=float2(0.0);
l9_49=l9_41-float2((*sc_set0.UserUniforms).Port_Input1_N093);
float l9_50=0.0;
l9_50=l9_49.x;
float l9_51=0.0;
l9_51=l9_49.y;
float l9_52=0.0;
l9_52=atan2(l9_51,l9_50);
float l9_53=0.0;
l9_53=3.1415927;
float l9_54=0.0;
l9_54=l9_53*(*sc_set0.UserUniforms).Port_Input1_N098;
float l9_55=0.0;
l9_55=l9_52/l9_54;
float l9_56=0.0;
l9_56=l9_55+(*sc_set0.UserUniforms).Port_Input1_N100;
float2 l9_57=float2(0.0);
l9_57.x=l9_47;
l9_57.y=l9_56;
float2 l9_58=float2(0.0);
l9_58=l9_57;
float l9_59=0.0;
float l9_60=0.0;
float2 l9_61=l9_58;
float l9_62=l9_61.x;
float l9_63=l9_61.y;
l9_59=l9_62;
l9_60=l9_63;
float l9_64=0.0;
float l9_65;
if (l9_59<=0.0)
{
l9_65=0.0;
}
else
{
l9_65=pow(l9_59,(*sc_set0.UserUniforms).Port_Input1_N023);
}
l9_64=l9_65;
float2 l9_66=float2(0.0);
l9_66.x=l9_64;
l9_66.y=l9_60;
l9_16=l9_66;
l9_19=l9_16;
}
else
{
float2 l9_67=float2(0.0);
l9_67=l9_18.gScreenCoord;
float2 l9_68=float2(0.0);
float l9_69=1.0;
float2 l9_70=float2(1.0);
float2 l9_71=float2(0.0);
float l9_72=0.0;
l9_72=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_73=0.0;
l9_73=float(l9_72>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_69=l9_73;
float2 l9_74;
if ((l9_69*1.0)!=0.0)
{
float l9_75=0.0;
l9_75=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_76=float2(0.0);
l9_76=float2(1.0,l9_75);
l9_70=l9_76;
l9_74=l9_70;
}
else
{
float l9_77=0.0;
l9_77=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_78=float2(0.0);
l9_78=float2(l9_77,1.0);
l9_71=l9_78;
l9_74=l9_71;
}
l9_68=l9_74;
float2 l9_79=float2(0.0);
l9_79=((l9_67-(*sc_set0.UserUniforms).Port_Center_N046)*l9_68)+(*sc_set0.UserUniforms).Port_Center_N046;
l9_17=l9_79;
l9_19=l9_17;
}
l9_15=l9_19;
float2 l9_80=float2(0.0);
float2 l9_81=(*sc_set0.UserUniforms).Tweak_N71;
l9_80=l9_81;
float l9_82=0.0;
float l9_83=(*sc_set0.UserUniforms).Tweak_N6;
l9_82=l9_83;
float2 l9_84=float2(0.0);
l9_84=l9_15+(l9_80*(param_5.gTimeElapsed*l9_82));
float2 l9_85=float2(0.0);
float2 l9_86=(*sc_set0.UserUniforms).Tweak_N25;
l9_85=l9_86;
float2 l9_87=float2(0.0);
l9_87=l9_84*l9_85;
float l9_88=0.0;
float l9_89=(*sc_set0.UserUniforms).Tweak_N11;
l9_88=l9_89;
float l9_90=0.0;
l9_90=param_5.gTimeElapsed*l9_88;
float3 l9_91=float3(0.0);
l9_91=float3(l9_87.x,l9_87.y,l9_91.z);
l9_91.z=l9_90;
float4 l9_92=float4(0.0);
float3 l9_93=l9_91;
bool l9_94=false;
float l9_95=0.0;
float4 l9_96;
if (l9_94)
{
l9_96=sc_set0.Tweak_N80.sample(sc_set0.Tweak_N80SmpSC,l9_93,level(l9_95));
}
else
{
l9_96=sc_set0.Tweak_N80.sample(sc_set0.Tweak_N80SmpSC,l9_93,bias(l9_95));
}
float4 l9_97=l9_96;
l9_92=l9_97;
float2 l9_98=float2(0.0);
l9_98=float2(l9_92.x,l9_92.y);
float2 l9_99=float2(0.0);
l9_99=(((l9_98-float2((*sc_set0.UserUniforms).Port_RangeMinA_N117))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N117-(*sc_set0.UserUniforms).Port_RangeMinA_N117)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N117-(*sc_set0.UserUniforms).Port_RangeMinB_N117))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N117);
float l9_100=0.0;
float l9_101=(*sc_set0.UserUniforms).Tweak_N126;
l9_100=l9_101;
float l9_102=0.0;
l9_102=l9_100*(*sc_set0.UserUniforms).Port_Input1_N127;
float2 l9_103=float2(0.0);
l9_103=l9_99*float2(l9_102);
float2 l9_104=float2(0.0);
l9_104=param_5.gScreenCoord;
float2 l9_105=float2(0.0);
float l9_106=1.0;
float2 l9_107=float2(1.0);
float2 l9_108=float2(0.0);
float l9_109=0.0;
l9_109=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_110=0.0;
l9_110=float(l9_109>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_106=l9_110;
float2 l9_111;
if ((l9_106*1.0)!=0.0)
{
float l9_112=0.0;
l9_112=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_113=float2(0.0);
l9_113=float2(1.0,l9_112);
l9_107=l9_113;
l9_111=l9_107;
}
else
{
float l9_114=0.0;
l9_114=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_115=float2(0.0);
l9_115=float2(l9_114,1.0);
l9_108=l9_115;
l9_111=l9_108;
}
l9_105=l9_111;
float2 l9_116=float2(0.0);
l9_116=((l9_104-(*sc_set0.UserUniforms).Port_Center_N046)*l9_105)+(*sc_set0.UserUniforms).Port_Center_N046;
float2 l9_117=float2(0.0);
float2 l9_118=(*sc_set0.UserUniforms).radialPivotPos;
l9_117=l9_118;
float2 l9_119=float2(0.0);
float2 l9_120=(*sc_set0.UserUniforms).Tweak_N50;
l9_119=l9_120;
float2 l9_121=float2(0.0);
l9_121=l9_117+l9_119;
float2 l9_122=float2(0.0);
l9_122=l9_116-l9_121;
float2 l9_123=float2(0.0);
float2 l9_124=l9_122;
float l9_125=dot(l9_124,l9_124);
float l9_126;
if (l9_125>0.0)
{
l9_126=1.0/sqrt(l9_125);
}
else
{
l9_126=0.0;
}
float l9_127=l9_126;
float2 l9_128=l9_124*l9_127;
l9_123=l9_128;
float l9_129=0.0;
float l9_130=(*sc_set0.UserUniforms).Tweak_N119;
l9_129=l9_130;
float l9_131=0.0;
l9_131=l9_129*(*sc_set0.UserUniforms).Port_Input1_N120;
float2 l9_132=float2(0.0);
l9_132=(l9_123*float2(l9_131))*(*sc_set0.UserUniforms).Port_Input2_N115;
float2 l9_133=float2(0.0);
float2 l9_134=(*sc_set0.UserUniforms).Tweak_N48;
l9_133=l9_134;
float l9_135=0.0;
float l9_136=(*sc_set0.UserUniforms).Tweak_N114;
l9_135=l9_136;
float l9_137=0.0;
l9_137=l9_135*(*sc_set0.UserUniforms).Port_Input1_N123;
float2 l9_138=float2(0.0);
l9_138=l9_133*float2(l9_137);
float2 l9_139=float2(0.0);
l9_139=(l9_103+l9_132)+l9_138;
float2 l9_140=float2(0.0);
l9_140=l9_14-l9_139;
float4 l9_141=float4(0.0);
int l9_142;
if ((int(prev_frameHasSwappedViews_tmp)!=0))
{
int l9_143=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_143=0;
}
else
{
l9_143=in.varStereoViewID;
}
int l9_144=l9_143;
l9_142=1-l9_144;
}
else
{
int l9_145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_145=0;
}
else
{
l9_145=in.varStereoViewID;
}
int l9_146=l9_145;
l9_142=l9_146;
}
int l9_147=l9_142;
int l9_148=prev_frameLayout_tmp;
int l9_149=l9_147;
float2 l9_150=l9_140;
bool l9_151=(int(SC_USE_UV_TRANSFORM_prev_frame_tmp)!=0);
float3x3 l9_152=(*sc_set0.UserUniforms).prev_frameTransform;
int2 l9_153=int2(SC_SOFTWARE_WRAP_MODE_U_prev_frame_tmp,SC_SOFTWARE_WRAP_MODE_V_prev_frame_tmp);
bool l9_154=(int(SC_USE_UV_MIN_MAX_prev_frame_tmp)!=0);
float4 l9_155=(*sc_set0.UserUniforms).prev_frameUvMinMax;
bool l9_156=(int(SC_USE_CLAMP_TO_BORDER_prev_frame_tmp)!=0);
float4 l9_157=(*sc_set0.UserUniforms).prev_frameBorderColor;
float l9_158=0.0;
bool l9_159=l9_156&&(!l9_154);
float l9_160=1.0;
float l9_161=l9_150.x;
int l9_162=l9_153.x;
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
l9_150.x=l9_161;
float l9_166=l9_150.y;
int l9_167=l9_153.y;
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
l9_150.y=l9_166;
if (l9_154)
{
bool l9_171=l9_156;
bool l9_172;
if (l9_171)
{
l9_172=l9_153.x==3;
}
else
{
l9_172=l9_171;
}
float l9_173=l9_150.x;
float l9_174=l9_155.x;
float l9_175=l9_155.z;
bool l9_176=l9_172;
float l9_177=l9_160;
float l9_178=fast::clamp(l9_173,l9_174,l9_175);
float l9_179=step(abs(l9_173-l9_178),9.9999997e-06);
l9_177*=(l9_179+((1.0-float(l9_176))*(1.0-l9_179)));
l9_173=l9_178;
l9_150.x=l9_173;
l9_160=l9_177;
bool l9_180=l9_156;
bool l9_181;
if (l9_180)
{
l9_181=l9_153.y==3;
}
else
{
l9_181=l9_180;
}
float l9_182=l9_150.y;
float l9_183=l9_155.y;
float l9_184=l9_155.w;
bool l9_185=l9_181;
float l9_186=l9_160;
float l9_187=fast::clamp(l9_182,l9_183,l9_184);
float l9_188=step(abs(l9_182-l9_187),9.9999997e-06);
l9_186*=(l9_188+((1.0-float(l9_185))*(1.0-l9_188)));
l9_182=l9_187;
l9_150.y=l9_182;
l9_160=l9_186;
}
float2 l9_189=l9_150;
bool l9_190=l9_151;
float3x3 l9_191=l9_152;
if (l9_190)
{
l9_189=float2((l9_191*float3(l9_189,1.0)).xy);
}
float2 l9_192=l9_189;
l9_150=l9_192;
float l9_193=l9_150.x;
int l9_194=l9_153.x;
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
l9_150.x=l9_193;
l9_160=l9_196;
float l9_204=l9_150.y;
int l9_205=l9_153.y;
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
l9_150.y=l9_204;
l9_160=l9_207;
float2 l9_215=l9_150;
int l9_216=l9_148;
int l9_217=l9_149;
float l9_218=l9_158;
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
float4 l9_225=sc_set0.prev_frame.sample(sc_set0.prev_frameSmpSC,l9_224.xy,bias(l9_218));
float4 l9_226=l9_225;
if (l9_156)
{
l9_226=mix(l9_157,l9_226,float4(l9_160));
}
float4 l9_227=l9_226;
l9_141=l9_227;
float l9_228=0.0;
float l9_229=(*sc_set0.UserUniforms).Tweak_N29;
l9_228=l9_229;
float l9_230=0.0;
l9_230=l9_228*(*sc_set0.UserUniforms).Port_Input1_N045;
float l9_231=0.0;
l9_231=l9_230+1.0;
float4 l9_232=float4(0.0);
l9_232=float4(1.0,1.0,1.0,l9_231);
float4 l9_233=float4(0.0);
float l9_234;
if (l9_141.x<=0.0)
{
l9_234=0.0;
}
else
{
l9_234=pow(l9_141.x,l9_232.x);
}
float l9_235=l9_234;
float l9_236;
if (l9_141.y<=0.0)
{
l9_236=0.0;
}
else
{
l9_236=pow(l9_141.y,l9_232.y);
}
float l9_237=l9_236;
float l9_238;
if (l9_141.z<=0.0)
{
l9_238=0.0;
}
else
{
l9_238=pow(l9_141.z,l9_232.z);
}
float l9_239=l9_238;
float l9_240;
if (l9_141.w<=0.0)
{
l9_240=0.0;
}
else
{
l9_240=pow(l9_141.w,l9_232.w);
}
l9_233=float4(l9_235,l9_237,l9_239,l9_240);
float l9_241=0.0;
float l9_242=(*sc_set0.UserUniforms).Tweak_N32;
l9_241=l9_242;
float l9_243=0.0;
l9_243=l9_241*(*sc_set0.UserUniforms).Port_Input1_N021;
float l9_244=0.0;
l9_244=1.0-l9_243;
float4 l9_245=float4(0.0);
l9_245=float4((*sc_set0.UserUniforms).Port_Value1_N033.x,(*sc_set0.UserUniforms).Port_Value1_N033.y,(*sc_set0.UserUniforms).Port_Value1_N033.z,l9_245.w);
l9_245.w=l9_244;
float4 l9_246=float4(0.0);
l9_246=l9_233*l9_245;
float2 l9_247=float2(0.0);
l9_247=param_5.gScreenCoord;
float4 l9_248=float4(0.0);
int l9_249;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_250=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_250=0;
}
else
{
l9_250=in.varStereoViewID;
}
int l9_251=l9_250;
l9_249=1-l9_251;
}
else
{
int l9_252=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_252=0;
}
else
{
l9_252=in.varStereoViewID;
}
int l9_253=l9_252;
l9_249=l9_253;
}
int l9_254=l9_249;
int l9_255=Tweak_N52Layout_tmp;
int l9_256=l9_254;
float2 l9_257=l9_247;
bool l9_258=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_259=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_260=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_261=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_262=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_263=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_264=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_265=0.0;
bool l9_266=l9_263&&(!l9_261);
float l9_267=1.0;
float l9_268=l9_257.x;
int l9_269=l9_260.x;
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
l9_257.x=l9_268;
float l9_273=l9_257.y;
int l9_274=l9_260.y;
if (l9_274==1)
{
l9_273=fract(l9_273);
}
else
{
if (l9_274==2)
{
float l9_275=fract(l9_273);
float l9_276=l9_273-l9_275;
float l9_277=step(0.25,fract(l9_276*0.5));
l9_273=mix(l9_275,1.0-l9_275,fast::clamp(l9_277,0.0,1.0));
}
}
l9_257.y=l9_273;
if (l9_261)
{
bool l9_278=l9_263;
bool l9_279;
if (l9_278)
{
l9_279=l9_260.x==3;
}
else
{
l9_279=l9_278;
}
float l9_280=l9_257.x;
float l9_281=l9_262.x;
float l9_282=l9_262.z;
bool l9_283=l9_279;
float l9_284=l9_267;
float l9_285=fast::clamp(l9_280,l9_281,l9_282);
float l9_286=step(abs(l9_280-l9_285),9.9999997e-06);
l9_284*=(l9_286+((1.0-float(l9_283))*(1.0-l9_286)));
l9_280=l9_285;
l9_257.x=l9_280;
l9_267=l9_284;
bool l9_287=l9_263;
bool l9_288;
if (l9_287)
{
l9_288=l9_260.y==3;
}
else
{
l9_288=l9_287;
}
float l9_289=l9_257.y;
float l9_290=l9_262.y;
float l9_291=l9_262.w;
bool l9_292=l9_288;
float l9_293=l9_267;
float l9_294=fast::clamp(l9_289,l9_290,l9_291);
float l9_295=step(abs(l9_289-l9_294),9.9999997e-06);
l9_293*=(l9_295+((1.0-float(l9_292))*(1.0-l9_295)));
l9_289=l9_294;
l9_257.y=l9_289;
l9_267=l9_293;
}
float2 l9_296=l9_257;
bool l9_297=l9_258;
float3x3 l9_298=l9_259;
if (l9_297)
{
l9_296=float2((l9_298*float3(l9_296,1.0)).xy);
}
float2 l9_299=l9_296;
l9_257=l9_299;
float l9_300=l9_257.x;
int l9_301=l9_260.x;
bool l9_302=l9_266;
float l9_303=l9_267;
if ((l9_301==0)||(l9_301==3))
{
float l9_304=l9_300;
float l9_305=0.0;
float l9_306=1.0;
bool l9_307=l9_302;
float l9_308=l9_303;
float l9_309=fast::clamp(l9_304,l9_305,l9_306);
float l9_310=step(abs(l9_304-l9_309),9.9999997e-06);
l9_308*=(l9_310+((1.0-float(l9_307))*(1.0-l9_310)));
l9_304=l9_309;
l9_300=l9_304;
l9_303=l9_308;
}
l9_257.x=l9_300;
l9_267=l9_303;
float l9_311=l9_257.y;
int l9_312=l9_260.y;
bool l9_313=l9_266;
float l9_314=l9_267;
if ((l9_312==0)||(l9_312==3))
{
float l9_315=l9_311;
float l9_316=0.0;
float l9_317=1.0;
bool l9_318=l9_313;
float l9_319=l9_314;
float l9_320=fast::clamp(l9_315,l9_316,l9_317);
float l9_321=step(abs(l9_315-l9_320),9.9999997e-06);
l9_319*=(l9_321+((1.0-float(l9_318))*(1.0-l9_321)));
l9_315=l9_320;
l9_311=l9_315;
l9_314=l9_319;
}
l9_257.y=l9_311;
l9_267=l9_314;
float2 l9_322=l9_257;
int l9_323=l9_255;
int l9_324=l9_256;
float l9_325=l9_265;
float2 l9_326=l9_322;
int l9_327=l9_323;
int l9_328=l9_324;
float3 l9_329=float3(0.0);
if (l9_327==0)
{
l9_329=float3(l9_326,0.0);
}
else
{
if (l9_327==1)
{
l9_329=float3(l9_326.x,(l9_326.y*0.5)+(0.5-(float(l9_328)*0.5)),0.0);
}
else
{
l9_329=float3(l9_326,float(l9_328));
}
}
float3 l9_330=l9_329;
float3 l9_331=l9_330;
float4 l9_332=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_331.xy,bias(l9_325));
float4 l9_333=l9_332;
if (l9_263)
{
l9_333=mix(l9_264,l9_333,float4(l9_267));
}
float4 l9_334=l9_333;
l9_248=l9_334;
float l9_335=0.0;
float l9_336=1.0;
float l9_337=0.0;
ssGlobals l9_338=param_5;
float l9_339;
if ((int(Tweak_N128_tmp)!=0))
{
float2 l9_340=float2(0.0);
l9_340=l9_338.gScreenCoord;
float4 l9_341=float4(0.0);
int l9_342;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_343=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_343=0;
}
else
{
l9_343=in.varStereoViewID;
}
int l9_344=l9_343;
l9_342=1-l9_344;
}
else
{
int l9_345=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_345=0;
}
else
{
l9_345=in.varStereoViewID;
}
int l9_346=l9_345;
l9_342=l9_346;
}
int l9_347=l9_342;
int l9_348=Tweak_N52Layout_tmp;
int l9_349=l9_347;
float2 l9_350=l9_340;
bool l9_351=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_352=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_353=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_354=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_355=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_356=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_357=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_358=0.0;
bool l9_359=l9_356&&(!l9_354);
float l9_360=1.0;
float l9_361=l9_350.x;
int l9_362=l9_353.x;
if (l9_362==1)
{
l9_361=fract(l9_361);
}
else
{
if (l9_362==2)
{
float l9_363=fract(l9_361);
float l9_364=l9_361-l9_363;
float l9_365=step(0.25,fract(l9_364*0.5));
l9_361=mix(l9_363,1.0-l9_363,fast::clamp(l9_365,0.0,1.0));
}
}
l9_350.x=l9_361;
float l9_366=l9_350.y;
int l9_367=l9_353.y;
if (l9_367==1)
{
l9_366=fract(l9_366);
}
else
{
if (l9_367==2)
{
float l9_368=fract(l9_366);
float l9_369=l9_366-l9_368;
float l9_370=step(0.25,fract(l9_369*0.5));
l9_366=mix(l9_368,1.0-l9_368,fast::clamp(l9_370,0.0,1.0));
}
}
l9_350.y=l9_366;
if (l9_354)
{
bool l9_371=l9_356;
bool l9_372;
if (l9_371)
{
l9_372=l9_353.x==3;
}
else
{
l9_372=l9_371;
}
float l9_373=l9_350.x;
float l9_374=l9_355.x;
float l9_375=l9_355.z;
bool l9_376=l9_372;
float l9_377=l9_360;
float l9_378=fast::clamp(l9_373,l9_374,l9_375);
float l9_379=step(abs(l9_373-l9_378),9.9999997e-06);
l9_377*=(l9_379+((1.0-float(l9_376))*(1.0-l9_379)));
l9_373=l9_378;
l9_350.x=l9_373;
l9_360=l9_377;
bool l9_380=l9_356;
bool l9_381;
if (l9_380)
{
l9_381=l9_353.y==3;
}
else
{
l9_381=l9_380;
}
float l9_382=l9_350.y;
float l9_383=l9_355.y;
float l9_384=l9_355.w;
bool l9_385=l9_381;
float l9_386=l9_360;
float l9_387=fast::clamp(l9_382,l9_383,l9_384);
float l9_388=step(abs(l9_382-l9_387),9.9999997e-06);
l9_386*=(l9_388+((1.0-float(l9_385))*(1.0-l9_388)));
l9_382=l9_387;
l9_350.y=l9_382;
l9_360=l9_386;
}
float2 l9_389=l9_350;
bool l9_390=l9_351;
float3x3 l9_391=l9_352;
if (l9_390)
{
l9_389=float2((l9_391*float3(l9_389,1.0)).xy);
}
float2 l9_392=l9_389;
l9_350=l9_392;
float l9_393=l9_350.x;
int l9_394=l9_353.x;
bool l9_395=l9_359;
float l9_396=l9_360;
if ((l9_394==0)||(l9_394==3))
{
float l9_397=l9_393;
float l9_398=0.0;
float l9_399=1.0;
bool l9_400=l9_395;
float l9_401=l9_396;
float l9_402=fast::clamp(l9_397,l9_398,l9_399);
float l9_403=step(abs(l9_397-l9_402),9.9999997e-06);
l9_401*=(l9_403+((1.0-float(l9_400))*(1.0-l9_403)));
l9_397=l9_402;
l9_393=l9_397;
l9_396=l9_401;
}
l9_350.x=l9_393;
l9_360=l9_396;
float l9_404=l9_350.y;
int l9_405=l9_353.y;
bool l9_406=l9_359;
float l9_407=l9_360;
if ((l9_405==0)||(l9_405==3))
{
float l9_408=l9_404;
float l9_409=0.0;
float l9_410=1.0;
bool l9_411=l9_406;
float l9_412=l9_407;
float l9_413=fast::clamp(l9_408,l9_409,l9_410);
float l9_414=step(abs(l9_408-l9_413),9.9999997e-06);
l9_412*=(l9_414+((1.0-float(l9_411))*(1.0-l9_414)));
l9_408=l9_413;
l9_404=l9_408;
l9_407=l9_412;
}
l9_350.y=l9_404;
l9_360=l9_407;
float2 l9_415=l9_350;
int l9_416=l9_348;
int l9_417=l9_349;
float l9_418=l9_358;
float2 l9_419=l9_415;
int l9_420=l9_416;
int l9_421=l9_417;
float3 l9_422=float3(0.0);
if (l9_420==0)
{
l9_422=float3(l9_419,0.0);
}
else
{
if (l9_420==1)
{
l9_422=float3(l9_419.x,(l9_419.y*0.5)+(0.5-(float(l9_421)*0.5)),0.0);
}
else
{
l9_422=float3(l9_419,float(l9_421));
}
}
float3 l9_423=l9_422;
float3 l9_424=l9_423;
float4 l9_425=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_424.xy,bias(l9_418));
float4 l9_426=l9_425;
if (l9_356)
{
l9_426=mix(l9_357,l9_426,float4(l9_360));
}
float4 l9_427=l9_426;
l9_341=l9_427;
float l9_428=0.0;
l9_428=dot(l9_341.xyz,float3(0.29899999,0.58700001,0.114));
l9_336=l9_428;
l9_339=l9_336;
}
else
{
float2 l9_429=float2(0.0);
l9_429=l9_338.gScreenCoord;
float4 l9_430=float4(0.0);
int l9_431;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_432=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_432=0;
}
else
{
l9_432=in.varStereoViewID;
}
int l9_433=l9_432;
l9_431=1-l9_433;
}
else
{
int l9_434=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_434=0;
}
else
{
l9_434=in.varStereoViewID;
}
int l9_435=l9_434;
l9_431=l9_435;
}
int l9_436=l9_431;
int l9_437=Tweak_N52Layout_tmp;
int l9_438=l9_436;
float2 l9_439=l9_429;
bool l9_440=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_441=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_442=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_443=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_444=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_445=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_446=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_447=0.0;
bool l9_448=l9_445&&(!l9_443);
float l9_449=1.0;
float l9_450=l9_439.x;
int l9_451=l9_442.x;
if (l9_451==1)
{
l9_450=fract(l9_450);
}
else
{
if (l9_451==2)
{
float l9_452=fract(l9_450);
float l9_453=l9_450-l9_452;
float l9_454=step(0.25,fract(l9_453*0.5));
l9_450=mix(l9_452,1.0-l9_452,fast::clamp(l9_454,0.0,1.0));
}
}
l9_439.x=l9_450;
float l9_455=l9_439.y;
int l9_456=l9_442.y;
if (l9_456==1)
{
l9_455=fract(l9_455);
}
else
{
if (l9_456==2)
{
float l9_457=fract(l9_455);
float l9_458=l9_455-l9_457;
float l9_459=step(0.25,fract(l9_458*0.5));
l9_455=mix(l9_457,1.0-l9_457,fast::clamp(l9_459,0.0,1.0));
}
}
l9_439.y=l9_455;
if (l9_443)
{
bool l9_460=l9_445;
bool l9_461;
if (l9_460)
{
l9_461=l9_442.x==3;
}
else
{
l9_461=l9_460;
}
float l9_462=l9_439.x;
float l9_463=l9_444.x;
float l9_464=l9_444.z;
bool l9_465=l9_461;
float l9_466=l9_449;
float l9_467=fast::clamp(l9_462,l9_463,l9_464);
float l9_468=step(abs(l9_462-l9_467),9.9999997e-06);
l9_466*=(l9_468+((1.0-float(l9_465))*(1.0-l9_468)));
l9_462=l9_467;
l9_439.x=l9_462;
l9_449=l9_466;
bool l9_469=l9_445;
bool l9_470;
if (l9_469)
{
l9_470=l9_442.y==3;
}
else
{
l9_470=l9_469;
}
float l9_471=l9_439.y;
float l9_472=l9_444.y;
float l9_473=l9_444.w;
bool l9_474=l9_470;
float l9_475=l9_449;
float l9_476=fast::clamp(l9_471,l9_472,l9_473);
float l9_477=step(abs(l9_471-l9_476),9.9999997e-06);
l9_475*=(l9_477+((1.0-float(l9_474))*(1.0-l9_477)));
l9_471=l9_476;
l9_439.y=l9_471;
l9_449=l9_475;
}
float2 l9_478=l9_439;
bool l9_479=l9_440;
float3x3 l9_480=l9_441;
if (l9_479)
{
l9_478=float2((l9_480*float3(l9_478,1.0)).xy);
}
float2 l9_481=l9_478;
l9_439=l9_481;
float l9_482=l9_439.x;
int l9_483=l9_442.x;
bool l9_484=l9_448;
float l9_485=l9_449;
if ((l9_483==0)||(l9_483==3))
{
float l9_486=l9_482;
float l9_487=0.0;
float l9_488=1.0;
bool l9_489=l9_484;
float l9_490=l9_485;
float l9_491=fast::clamp(l9_486,l9_487,l9_488);
float l9_492=step(abs(l9_486-l9_491),9.9999997e-06);
l9_490*=(l9_492+((1.0-float(l9_489))*(1.0-l9_492)));
l9_486=l9_491;
l9_482=l9_486;
l9_485=l9_490;
}
l9_439.x=l9_482;
l9_449=l9_485;
float l9_493=l9_439.y;
int l9_494=l9_442.y;
bool l9_495=l9_448;
float l9_496=l9_449;
if ((l9_494==0)||(l9_494==3))
{
float l9_497=l9_493;
float l9_498=0.0;
float l9_499=1.0;
bool l9_500=l9_495;
float l9_501=l9_496;
float l9_502=fast::clamp(l9_497,l9_498,l9_499);
float l9_503=step(abs(l9_497-l9_502),9.9999997e-06);
l9_501*=(l9_503+((1.0-float(l9_500))*(1.0-l9_503)));
l9_497=l9_502;
l9_493=l9_497;
l9_496=l9_501;
}
l9_439.y=l9_493;
l9_449=l9_496;
float2 l9_504=l9_439;
int l9_505=l9_437;
int l9_506=l9_438;
float l9_507=l9_447;
float2 l9_508=l9_504;
int l9_509=l9_505;
int l9_510=l9_506;
float3 l9_511=float3(0.0);
if (l9_509==0)
{
l9_511=float3(l9_508,0.0);
}
else
{
if (l9_509==1)
{
l9_511=float3(l9_508.x,(l9_508.y*0.5)+(0.5-(float(l9_510)*0.5)),0.0);
}
else
{
l9_511=float3(l9_508,float(l9_510));
}
}
float3 l9_512=l9_511;
float3 l9_513=l9_512;
float4 l9_514=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_513.xy,bias(l9_507));
float4 l9_515=l9_514;
if (l9_445)
{
l9_515=mix(l9_446,l9_515,float4(l9_449));
}
float4 l9_516=l9_515;
l9_430=l9_516;
float l9_517=0.0;
l9_517=l9_430.w;
l9_337=l9_517;
l9_339=l9_337;
}
l9_335=l9_339;
float4 l9_518=float4(0.0);
l9_518=float4(l9_248.xyz.x,l9_248.xyz.y,l9_248.xyz.z,l9_518.w);
l9_518.w=l9_335;
float4 l9_519=float4(0.0);
float4 l9_520=(*sc_set0.UserUniforms).Tweak_N58;
l9_519=l9_520;
float4 l9_521=float4(0.0);
float4 l9_522=(*sc_set0.UserUniforms).Tweak_N73;
l9_521=l9_522;
float2 l9_523=float2(0.0);
l9_523=param_5.gScreenCoord;
float2 l9_524=float2(0.0);
float2 l9_525=(*sc_set0.UserUniforms).Tweak_N27;
l9_524=l9_525;
float2 l9_526=float2(0.0);
l9_526=l9_523*l9_524;
float l9_527=0.0;
float l9_528=(*sc_set0.UserUniforms).Tweak_N26;
l9_527=l9_528;
float l9_529=0.0;
l9_529=param_5.gTimeElapsed*l9_527;
float3 l9_530=float3(0.0);
l9_530=float3(l9_526.x,l9_526.y,l9_530.z);
l9_530.z=l9_529;
float4 l9_531=float4(0.0);
float3 l9_532=l9_530;
bool l9_533=false;
float l9_534=0.0;
float4 l9_535;
if (l9_533)
{
l9_535=sc_set0.Tweak_N9.sample(sc_set0.Tweak_N9SmpSC,l9_532,level(l9_534));
}
else
{
l9_535=sc_set0.Tweak_N9.sample(sc_set0.Tweak_N9SmpSC,l9_532,bias(l9_534));
}
float4 l9_536=l9_535;
l9_531=l9_536;
float l9_537=0.0;
l9_537=l9_531.z;
float l9_538=0.0;
float l9_539=(*sc_set0.UserUniforms).Tweak_N12;
l9_538=l9_539;
float l9_540=0.0;
l9_540=mix((*sc_set0.UserUniforms).Port_Input0_N013,l9_537,l9_538);
float l9_541=0.0;
l9_541=fast::clamp(l9_540+0.001,(*sc_set0.UserUniforms).Port_Input1_N030+0.001,(*sc_set0.UserUniforms).Port_Input2_N030+0.001)-0.001;
float4 l9_542=float4(0.0);
l9_542=mix(l9_519,l9_521,float4(l9_541));
float l9_543=0.0;
l9_543=l9_531.x;
float l9_544=0.0;
float l9_545=(*sc_set0.UserUniforms).Tweak_N41;
l9_544=l9_545;
float l9_546=0.0;
l9_546=mix((*sc_set0.UserUniforms).Port_Input0_N040,l9_543,l9_544);
float l9_547=0.0;
l9_547=fast::clamp(l9_546+0.001,(*sc_set0.UserUniforms).Port_Input1_N044+0.001,(*sc_set0.UserUniforms).Port_Input2_N044+0.001)-0.001;
float l9_548=0.0;
l9_548=l9_547*l9_335;
float4 l9_549=float4(0.0);
l9_549=float4(l9_542.xyz.x,l9_542.xyz.y,l9_542.xyz.z,l9_549.w);
l9_549.w=l9_548;
float l9_550=0.0;
float l9_551;
if ((int(Tweak_N113_tmp)!=0))
{
l9_551=1.001;
}
else
{
l9_551=0.001;
}
l9_551-=0.001;
l9_550=l9_551;
float4 l9_552=float4(0.0);
l9_552=mix(l9_518,l9_549,float4(l9_550));
float4 l9_553=float4(0.0);
float4 l9_554=l9_246;
float4 l9_555=l9_552;
float4 l9_556;
l9_556=float4(l9_555.xyz.x,l9_555.xyz.y,l9_555.xyz.z,l9_556.w);
float3 l9_557=mix(l9_554.xyz,l9_556.xyz,float3(l9_555.w));
l9_556=float4(l9_557.x,l9_557.y,l9_557.z,l9_556.w);
l9_556.w=l9_554.w;
l9_553=l9_556;
float l9_558=0.0;
l9_558=mix(l9_335,l9_548,l9_550);
float l9_559=0.0;
float l9_560=(*sc_set0.UserUniforms).Tweak_N38;
l9_559=l9_560;
float l9_561=0.0;
l9_561=l9_558*l9_559;
float l9_562=0.0;
float4 l9_563=l9_246;
float l9_564=l9_563.w;
l9_562=l9_564;
float l9_565=0.0;
l9_565=l9_561+l9_562;
float4 l9_566=float4(0.0);
l9_566=float4(l9_553.xyz.x,l9_553.xyz.y,l9_553.xyz.z,l9_566.w);
l9_566.w=l9_565;
param=l9_566;
param_4=param;
}
else
{
if (NODE_3_DROPLIST_ITEM_tmp==1)
{
float2 l9_567=float2(0.0);
l9_567=param_5.Surface_UVCoord0;
float2 l9_568=float2(0.0);
float2 l9_569=float2(1.0);
float2 l9_570=float2(0.0);
ssGlobals l9_571=param_5;
float2 l9_572;
if ((int(Tweak_N66_tmp)!=0))
{
float2 l9_573=float2(0.0);
l9_573=l9_571.gScreenCoord;
float2 l9_574=float2(0.0);
float l9_575=1.0;
float2 l9_576=float2(1.0);
float2 l9_577=float2(0.0);
float l9_578=0.0;
l9_578=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_579=0.0;
l9_579=float(l9_578>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_575=l9_579;
float2 l9_580;
if ((l9_575*1.0)!=0.0)
{
float l9_581=0.0;
l9_581=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_582=float2(0.0);
l9_582=float2(1.0,l9_581);
l9_576=l9_582;
l9_580=l9_576;
}
else
{
float l9_583=0.0;
l9_583=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_584=float2(0.0);
l9_584=float2(l9_583,1.0);
l9_577=l9_584;
l9_580=l9_577;
}
l9_574=l9_580;
float2 l9_585=float2(0.0);
l9_585=((l9_573-(*sc_set0.UserUniforms).Port_Center_N046)*l9_574)+(*sc_set0.UserUniforms).Port_Center_N046;
float2 l9_586=float2(0.0);
float2 l9_587=(*sc_set0.UserUniforms).noisePivotPos;
l9_586=l9_587;
float2 l9_588=float2(0.0);
float2 l9_589=(*sc_set0.UserUniforms).Tweak_N60;
l9_588=l9_589;
float2 l9_590=float2(0.0);
l9_590=l9_586+l9_588;
float2 l9_591=float2(0.0);
l9_591=l9_590-(*sc_set0.UserUniforms).Port_Input1_N083;
float2 l9_592=float2(0.0);
l9_592=l9_585-l9_591;
float2 l9_593=float2(0.0);
l9_593=l9_592;
float2 l9_594=float2(0.0);
l9_594=((l9_593-(*sc_set0.UserUniforms).Port_Center_N086)*(*sc_set0.UserUniforms).Port_Scale_N086)+(*sc_set0.UserUniforms).Port_Center_N086;
float2 l9_595=float2(0.0);
l9_595=l9_594-float2((*sc_set0.UserUniforms).Port_Input1_N087);
float2 l9_596=float2(0.0);
l9_596=l9_595*l9_595;
float l9_597=0.0;
l9_597=l9_596.x;
float l9_598=0.0;
l9_598=l9_596.y;
float l9_599=0.0;
l9_599=l9_597+l9_598;
float l9_600=0.0;
float l9_601;
if (l9_599<=0.0)
{
l9_601=0.0;
}
else
{
l9_601=sqrt(l9_599);
}
l9_600=l9_601;
float2 l9_602=float2(0.0);
l9_602=l9_594-float2((*sc_set0.UserUniforms).Port_Input1_N093);
float l9_603=0.0;
l9_603=l9_602.x;
float l9_604=0.0;
l9_604=l9_602.y;
float l9_605=0.0;
l9_605=atan2(l9_604,l9_603);
float l9_606=0.0;
l9_606=3.1415927;
float l9_607=0.0;
l9_607=l9_606*(*sc_set0.UserUniforms).Port_Input1_N098;
float l9_608=0.0;
l9_608=l9_605/l9_607;
float l9_609=0.0;
l9_609=l9_608+(*sc_set0.UserUniforms).Port_Input1_N100;
float2 l9_610=float2(0.0);
l9_610.x=l9_600;
l9_610.y=l9_609;
float2 l9_611=float2(0.0);
l9_611=l9_610;
float l9_612=0.0;
float l9_613=0.0;
float2 l9_614=l9_611;
float l9_615=l9_614.x;
float l9_616=l9_614.y;
l9_612=l9_615;
l9_613=l9_616;
float l9_617=0.0;
float l9_618;
if (l9_612<=0.0)
{
l9_618=0.0;
}
else
{
l9_618=pow(l9_612,(*sc_set0.UserUniforms).Port_Input1_N023);
}
l9_617=l9_618;
float2 l9_619=float2(0.0);
l9_619.x=l9_617;
l9_619.y=l9_613;
l9_569=l9_619;
l9_572=l9_569;
}
else
{
float2 l9_620=float2(0.0);
l9_620=l9_571.gScreenCoord;
float2 l9_621=float2(0.0);
float l9_622=1.0;
float2 l9_623=float2(1.0);
float2 l9_624=float2(0.0);
float l9_625=0.0;
l9_625=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_626=0.0;
l9_626=float(l9_625>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_622=l9_626;
float2 l9_627;
if ((l9_622*1.0)!=0.0)
{
float l9_628=0.0;
l9_628=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_629=float2(0.0);
l9_629=float2(1.0,l9_628);
l9_623=l9_629;
l9_627=l9_623;
}
else
{
float l9_630=0.0;
l9_630=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_631=float2(0.0);
l9_631=float2(l9_630,1.0);
l9_624=l9_631;
l9_627=l9_624;
}
l9_621=l9_627;
float2 l9_632=float2(0.0);
l9_632=((l9_620-(*sc_set0.UserUniforms).Port_Center_N046)*l9_621)+(*sc_set0.UserUniforms).Port_Center_N046;
l9_570=l9_632;
l9_572=l9_570;
}
l9_568=l9_572;
float2 l9_633=float2(0.0);
float2 l9_634=(*sc_set0.UserUniforms).Tweak_N71;
l9_633=l9_634;
float l9_635=0.0;
float l9_636=(*sc_set0.UserUniforms).Tweak_N6;
l9_635=l9_636;
float2 l9_637=float2(0.0);
l9_637=l9_568+(l9_633*(param_5.gTimeElapsed*l9_635));
float2 l9_638=float2(0.0);
float2 l9_639=(*sc_set0.UserUniforms).Tweak_N25;
l9_638=l9_639;
float2 l9_640=float2(0.0);
l9_640=l9_637*l9_638;
float l9_641=0.0;
float l9_642=(*sc_set0.UserUniforms).Tweak_N11;
l9_641=l9_642;
float l9_643=0.0;
l9_643=param_5.gTimeElapsed*l9_641;
float3 l9_644=float3(0.0);
l9_644=float3(l9_640.x,l9_640.y,l9_644.z);
l9_644.z=l9_643;
float4 l9_645=float4(0.0);
float3 l9_646=l9_644;
bool l9_647=false;
float l9_648=0.0;
float4 l9_649;
if (l9_647)
{
l9_649=sc_set0.Tweak_N80.sample(sc_set0.Tweak_N80SmpSC,l9_646,level(l9_648));
}
else
{
l9_649=sc_set0.Tweak_N80.sample(sc_set0.Tweak_N80SmpSC,l9_646,bias(l9_648));
}
float4 l9_650=l9_649;
l9_645=l9_650;
float2 l9_651=float2(0.0);
l9_651=float2(l9_645.x,l9_645.y);
float2 l9_652=float2(0.0);
l9_652=(((l9_651-float2((*sc_set0.UserUniforms).Port_RangeMinA_N117))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N117-(*sc_set0.UserUniforms).Port_RangeMinA_N117)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N117-(*sc_set0.UserUniforms).Port_RangeMinB_N117))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N117);
float l9_653=0.0;
float l9_654=(*sc_set0.UserUniforms).Tweak_N126;
l9_653=l9_654;
float l9_655=0.0;
l9_655=l9_653*(*sc_set0.UserUniforms).Port_Input1_N127;
float2 l9_656=float2(0.0);
l9_656=l9_652*float2(l9_655);
float2 l9_657=float2(0.0);
l9_657=param_5.gScreenCoord;
float2 l9_658=float2(0.0);
float l9_659=1.0;
float2 l9_660=float2(1.0);
float2 l9_661=float2(0.0);
float l9_662=0.0;
l9_662=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_663=0.0;
l9_663=float(l9_662>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_659=l9_663;
float2 l9_664;
if ((l9_659*1.0)!=0.0)
{
float l9_665=0.0;
l9_665=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_666=float2(0.0);
l9_666=float2(1.0,l9_665);
l9_660=l9_666;
l9_664=l9_660;
}
else
{
float l9_667=0.0;
l9_667=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_668=float2(0.0);
l9_668=float2(l9_667,1.0);
l9_661=l9_668;
l9_664=l9_661;
}
l9_658=l9_664;
float2 l9_669=float2(0.0);
l9_669=((l9_657-(*sc_set0.UserUniforms).Port_Center_N046)*l9_658)+(*sc_set0.UserUniforms).Port_Center_N046;
float2 l9_670=float2(0.0);
float2 l9_671=(*sc_set0.UserUniforms).radialPivotPos;
l9_670=l9_671;
float2 l9_672=float2(0.0);
float2 l9_673=(*sc_set0.UserUniforms).Tweak_N50;
l9_672=l9_673;
float2 l9_674=float2(0.0);
l9_674=l9_670+l9_672;
float2 l9_675=float2(0.0);
l9_675=l9_669-l9_674;
float2 l9_676=float2(0.0);
float2 l9_677=l9_675;
float l9_678=dot(l9_677,l9_677);
float l9_679;
if (l9_678>0.0)
{
l9_679=1.0/sqrt(l9_678);
}
else
{
l9_679=0.0;
}
float l9_680=l9_679;
float2 l9_681=l9_677*l9_680;
l9_676=l9_681;
float l9_682=0.0;
float l9_683=(*sc_set0.UserUniforms).Tweak_N119;
l9_682=l9_683;
float l9_684=0.0;
l9_684=l9_682*(*sc_set0.UserUniforms).Port_Input1_N120;
float2 l9_685=float2(0.0);
l9_685=(l9_676*float2(l9_684))*(*sc_set0.UserUniforms).Port_Input2_N115;
float2 l9_686=float2(0.0);
float2 l9_687=(*sc_set0.UserUniforms).Tweak_N48;
l9_686=l9_687;
float l9_688=0.0;
float l9_689=(*sc_set0.UserUniforms).Tweak_N114;
l9_688=l9_689;
float l9_690=0.0;
l9_690=l9_688*(*sc_set0.UserUniforms).Port_Input1_N123;
float2 l9_691=float2(0.0);
l9_691=l9_686*float2(l9_690);
float2 l9_692=float2(0.0);
l9_692=(l9_656+l9_685)+l9_691;
float2 l9_693=float2(0.0);
l9_693=l9_567-l9_692;
float4 l9_694=float4(0.0);
int l9_695;
if ((int(prev_frameHasSwappedViews_tmp)!=0))
{
int l9_696=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_696=0;
}
else
{
l9_696=in.varStereoViewID;
}
int l9_697=l9_696;
l9_695=1-l9_697;
}
else
{
int l9_698=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_698=0;
}
else
{
l9_698=in.varStereoViewID;
}
int l9_699=l9_698;
l9_695=l9_699;
}
int l9_700=l9_695;
int l9_701=prev_frameLayout_tmp;
int l9_702=l9_700;
float2 l9_703=l9_693;
bool l9_704=(int(SC_USE_UV_TRANSFORM_prev_frame_tmp)!=0);
float3x3 l9_705=(*sc_set0.UserUniforms).prev_frameTransform;
int2 l9_706=int2(SC_SOFTWARE_WRAP_MODE_U_prev_frame_tmp,SC_SOFTWARE_WRAP_MODE_V_prev_frame_tmp);
bool l9_707=(int(SC_USE_UV_MIN_MAX_prev_frame_tmp)!=0);
float4 l9_708=(*sc_set0.UserUniforms).prev_frameUvMinMax;
bool l9_709=(int(SC_USE_CLAMP_TO_BORDER_prev_frame_tmp)!=0);
float4 l9_710=(*sc_set0.UserUniforms).prev_frameBorderColor;
float l9_711=0.0;
bool l9_712=l9_709&&(!l9_707);
float l9_713=1.0;
float l9_714=l9_703.x;
int l9_715=l9_706.x;
if (l9_715==1)
{
l9_714=fract(l9_714);
}
else
{
if (l9_715==2)
{
float l9_716=fract(l9_714);
float l9_717=l9_714-l9_716;
float l9_718=step(0.25,fract(l9_717*0.5));
l9_714=mix(l9_716,1.0-l9_716,fast::clamp(l9_718,0.0,1.0));
}
}
l9_703.x=l9_714;
float l9_719=l9_703.y;
int l9_720=l9_706.y;
if (l9_720==1)
{
l9_719=fract(l9_719);
}
else
{
if (l9_720==2)
{
float l9_721=fract(l9_719);
float l9_722=l9_719-l9_721;
float l9_723=step(0.25,fract(l9_722*0.5));
l9_719=mix(l9_721,1.0-l9_721,fast::clamp(l9_723,0.0,1.0));
}
}
l9_703.y=l9_719;
if (l9_707)
{
bool l9_724=l9_709;
bool l9_725;
if (l9_724)
{
l9_725=l9_706.x==3;
}
else
{
l9_725=l9_724;
}
float l9_726=l9_703.x;
float l9_727=l9_708.x;
float l9_728=l9_708.z;
bool l9_729=l9_725;
float l9_730=l9_713;
float l9_731=fast::clamp(l9_726,l9_727,l9_728);
float l9_732=step(abs(l9_726-l9_731),9.9999997e-06);
l9_730*=(l9_732+((1.0-float(l9_729))*(1.0-l9_732)));
l9_726=l9_731;
l9_703.x=l9_726;
l9_713=l9_730;
bool l9_733=l9_709;
bool l9_734;
if (l9_733)
{
l9_734=l9_706.y==3;
}
else
{
l9_734=l9_733;
}
float l9_735=l9_703.y;
float l9_736=l9_708.y;
float l9_737=l9_708.w;
bool l9_738=l9_734;
float l9_739=l9_713;
float l9_740=fast::clamp(l9_735,l9_736,l9_737);
float l9_741=step(abs(l9_735-l9_740),9.9999997e-06);
l9_739*=(l9_741+((1.0-float(l9_738))*(1.0-l9_741)));
l9_735=l9_740;
l9_703.y=l9_735;
l9_713=l9_739;
}
float2 l9_742=l9_703;
bool l9_743=l9_704;
float3x3 l9_744=l9_705;
if (l9_743)
{
l9_742=float2((l9_744*float3(l9_742,1.0)).xy);
}
float2 l9_745=l9_742;
l9_703=l9_745;
float l9_746=l9_703.x;
int l9_747=l9_706.x;
bool l9_748=l9_712;
float l9_749=l9_713;
if ((l9_747==0)||(l9_747==3))
{
float l9_750=l9_746;
float l9_751=0.0;
float l9_752=1.0;
bool l9_753=l9_748;
float l9_754=l9_749;
float l9_755=fast::clamp(l9_750,l9_751,l9_752);
float l9_756=step(abs(l9_750-l9_755),9.9999997e-06);
l9_754*=(l9_756+((1.0-float(l9_753))*(1.0-l9_756)));
l9_750=l9_755;
l9_746=l9_750;
l9_749=l9_754;
}
l9_703.x=l9_746;
l9_713=l9_749;
float l9_757=l9_703.y;
int l9_758=l9_706.y;
bool l9_759=l9_712;
float l9_760=l9_713;
if ((l9_758==0)||(l9_758==3))
{
float l9_761=l9_757;
float l9_762=0.0;
float l9_763=1.0;
bool l9_764=l9_759;
float l9_765=l9_760;
float l9_766=fast::clamp(l9_761,l9_762,l9_763);
float l9_767=step(abs(l9_761-l9_766),9.9999997e-06);
l9_765*=(l9_767+((1.0-float(l9_764))*(1.0-l9_767)));
l9_761=l9_766;
l9_757=l9_761;
l9_760=l9_765;
}
l9_703.y=l9_757;
l9_713=l9_760;
float2 l9_768=l9_703;
int l9_769=l9_701;
int l9_770=l9_702;
float l9_771=l9_711;
float2 l9_772=l9_768;
int l9_773=l9_769;
int l9_774=l9_770;
float3 l9_775=float3(0.0);
if (l9_773==0)
{
l9_775=float3(l9_772,0.0);
}
else
{
if (l9_773==1)
{
l9_775=float3(l9_772.x,(l9_772.y*0.5)+(0.5-(float(l9_774)*0.5)),0.0);
}
else
{
l9_775=float3(l9_772,float(l9_774));
}
}
float3 l9_776=l9_775;
float3 l9_777=l9_776;
float4 l9_778=sc_set0.prev_frame.sample(sc_set0.prev_frameSmpSC,l9_777.xy,bias(l9_771));
float4 l9_779=l9_778;
if (l9_709)
{
l9_779=mix(l9_710,l9_779,float4(l9_713));
}
float4 l9_780=l9_779;
l9_694=l9_780;
float l9_781=0.0;
float l9_782=(*sc_set0.UserUniforms).Tweak_N29;
l9_781=l9_782;
float l9_783=0.0;
l9_783=l9_781*(*sc_set0.UserUniforms).Port_Input1_N045;
float l9_784=0.0;
l9_784=l9_783+1.0;
float4 l9_785=float4(0.0);
l9_785=float4(1.0,1.0,1.0,l9_784);
float4 l9_786=float4(0.0);
float l9_787;
if (l9_694.x<=0.0)
{
l9_787=0.0;
}
else
{
l9_787=pow(l9_694.x,l9_785.x);
}
float l9_788=l9_787;
float l9_789;
if (l9_694.y<=0.0)
{
l9_789=0.0;
}
else
{
l9_789=pow(l9_694.y,l9_785.y);
}
float l9_790=l9_789;
float l9_791;
if (l9_694.z<=0.0)
{
l9_791=0.0;
}
else
{
l9_791=pow(l9_694.z,l9_785.z);
}
float l9_792=l9_791;
float l9_793;
if (l9_694.w<=0.0)
{
l9_793=0.0;
}
else
{
l9_793=pow(l9_694.w,l9_785.w);
}
l9_786=float4(l9_788,l9_790,l9_792,l9_793);
float l9_794=0.0;
float l9_795=(*sc_set0.UserUniforms).Tweak_N32;
l9_794=l9_795;
float l9_796=0.0;
l9_796=l9_794*(*sc_set0.UserUniforms).Port_Input1_N021;
float l9_797=0.0;
l9_797=1.0-l9_796;
float4 l9_798=float4(0.0);
l9_798=float4((*sc_set0.UserUniforms).Port_Value1_N033.x,(*sc_set0.UserUniforms).Port_Value1_N033.y,(*sc_set0.UserUniforms).Port_Value1_N033.z,l9_798.w);
l9_798.w=l9_797;
float4 l9_799=float4(0.0);
l9_799=l9_786*l9_798;
float2 l9_800=float2(0.0);
l9_800=param_5.gScreenCoord;
float4 l9_801=float4(0.0);
int l9_802;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_803=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_803=0;
}
else
{
l9_803=in.varStereoViewID;
}
int l9_804=l9_803;
l9_802=1-l9_804;
}
else
{
int l9_805=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_805=0;
}
else
{
l9_805=in.varStereoViewID;
}
int l9_806=l9_805;
l9_802=l9_806;
}
int l9_807=l9_802;
int l9_808=Tweak_N52Layout_tmp;
int l9_809=l9_807;
float2 l9_810=l9_800;
bool l9_811=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_812=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_813=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_814=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_815=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_816=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_817=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_818=0.0;
bool l9_819=l9_816&&(!l9_814);
float l9_820=1.0;
float l9_821=l9_810.x;
int l9_822=l9_813.x;
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
l9_810.x=l9_821;
float l9_826=l9_810.y;
int l9_827=l9_813.y;
if (l9_827==1)
{
l9_826=fract(l9_826);
}
else
{
if (l9_827==2)
{
float l9_828=fract(l9_826);
float l9_829=l9_826-l9_828;
float l9_830=step(0.25,fract(l9_829*0.5));
l9_826=mix(l9_828,1.0-l9_828,fast::clamp(l9_830,0.0,1.0));
}
}
l9_810.y=l9_826;
if (l9_814)
{
bool l9_831=l9_816;
bool l9_832;
if (l9_831)
{
l9_832=l9_813.x==3;
}
else
{
l9_832=l9_831;
}
float l9_833=l9_810.x;
float l9_834=l9_815.x;
float l9_835=l9_815.z;
bool l9_836=l9_832;
float l9_837=l9_820;
float l9_838=fast::clamp(l9_833,l9_834,l9_835);
float l9_839=step(abs(l9_833-l9_838),9.9999997e-06);
l9_837*=(l9_839+((1.0-float(l9_836))*(1.0-l9_839)));
l9_833=l9_838;
l9_810.x=l9_833;
l9_820=l9_837;
bool l9_840=l9_816;
bool l9_841;
if (l9_840)
{
l9_841=l9_813.y==3;
}
else
{
l9_841=l9_840;
}
float l9_842=l9_810.y;
float l9_843=l9_815.y;
float l9_844=l9_815.w;
bool l9_845=l9_841;
float l9_846=l9_820;
float l9_847=fast::clamp(l9_842,l9_843,l9_844);
float l9_848=step(abs(l9_842-l9_847),9.9999997e-06);
l9_846*=(l9_848+((1.0-float(l9_845))*(1.0-l9_848)));
l9_842=l9_847;
l9_810.y=l9_842;
l9_820=l9_846;
}
float2 l9_849=l9_810;
bool l9_850=l9_811;
float3x3 l9_851=l9_812;
if (l9_850)
{
l9_849=float2((l9_851*float3(l9_849,1.0)).xy);
}
float2 l9_852=l9_849;
l9_810=l9_852;
float l9_853=l9_810.x;
int l9_854=l9_813.x;
bool l9_855=l9_819;
float l9_856=l9_820;
if ((l9_854==0)||(l9_854==3))
{
float l9_857=l9_853;
float l9_858=0.0;
float l9_859=1.0;
bool l9_860=l9_855;
float l9_861=l9_856;
float l9_862=fast::clamp(l9_857,l9_858,l9_859);
float l9_863=step(abs(l9_857-l9_862),9.9999997e-06);
l9_861*=(l9_863+((1.0-float(l9_860))*(1.0-l9_863)));
l9_857=l9_862;
l9_853=l9_857;
l9_856=l9_861;
}
l9_810.x=l9_853;
l9_820=l9_856;
float l9_864=l9_810.y;
int l9_865=l9_813.y;
bool l9_866=l9_819;
float l9_867=l9_820;
if ((l9_865==0)||(l9_865==3))
{
float l9_868=l9_864;
float l9_869=0.0;
float l9_870=1.0;
bool l9_871=l9_866;
float l9_872=l9_867;
float l9_873=fast::clamp(l9_868,l9_869,l9_870);
float l9_874=step(abs(l9_868-l9_873),9.9999997e-06);
l9_872*=(l9_874+((1.0-float(l9_871))*(1.0-l9_874)));
l9_868=l9_873;
l9_864=l9_868;
l9_867=l9_872;
}
l9_810.y=l9_864;
l9_820=l9_867;
float2 l9_875=l9_810;
int l9_876=l9_808;
int l9_877=l9_809;
float l9_878=l9_818;
float2 l9_879=l9_875;
int l9_880=l9_876;
int l9_881=l9_877;
float3 l9_882=float3(0.0);
if (l9_880==0)
{
l9_882=float3(l9_879,0.0);
}
else
{
if (l9_880==1)
{
l9_882=float3(l9_879.x,(l9_879.y*0.5)+(0.5-(float(l9_881)*0.5)),0.0);
}
else
{
l9_882=float3(l9_879,float(l9_881));
}
}
float3 l9_883=l9_882;
float3 l9_884=l9_883;
float4 l9_885=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_884.xy,bias(l9_878));
float4 l9_886=l9_885;
if (l9_816)
{
l9_886=mix(l9_817,l9_886,float4(l9_820));
}
float4 l9_887=l9_886;
l9_801=l9_887;
float l9_888=0.0;
float l9_889=1.0;
float l9_890=0.0;
ssGlobals l9_891=param_5;
float l9_892;
if ((int(Tweak_N128_tmp)!=0))
{
float2 l9_893=float2(0.0);
l9_893=l9_891.gScreenCoord;
float4 l9_894=float4(0.0);
int l9_895;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_896=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_896=0;
}
else
{
l9_896=in.varStereoViewID;
}
int l9_897=l9_896;
l9_895=1-l9_897;
}
else
{
int l9_898=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_898=0;
}
else
{
l9_898=in.varStereoViewID;
}
int l9_899=l9_898;
l9_895=l9_899;
}
int l9_900=l9_895;
int l9_901=Tweak_N52Layout_tmp;
int l9_902=l9_900;
float2 l9_903=l9_893;
bool l9_904=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_905=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_906=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_907=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_908=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_909=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_910=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_911=0.0;
bool l9_912=l9_909&&(!l9_907);
float l9_913=1.0;
float l9_914=l9_903.x;
int l9_915=l9_906.x;
if (l9_915==1)
{
l9_914=fract(l9_914);
}
else
{
if (l9_915==2)
{
float l9_916=fract(l9_914);
float l9_917=l9_914-l9_916;
float l9_918=step(0.25,fract(l9_917*0.5));
l9_914=mix(l9_916,1.0-l9_916,fast::clamp(l9_918,0.0,1.0));
}
}
l9_903.x=l9_914;
float l9_919=l9_903.y;
int l9_920=l9_906.y;
if (l9_920==1)
{
l9_919=fract(l9_919);
}
else
{
if (l9_920==2)
{
float l9_921=fract(l9_919);
float l9_922=l9_919-l9_921;
float l9_923=step(0.25,fract(l9_922*0.5));
l9_919=mix(l9_921,1.0-l9_921,fast::clamp(l9_923,0.0,1.0));
}
}
l9_903.y=l9_919;
if (l9_907)
{
bool l9_924=l9_909;
bool l9_925;
if (l9_924)
{
l9_925=l9_906.x==3;
}
else
{
l9_925=l9_924;
}
float l9_926=l9_903.x;
float l9_927=l9_908.x;
float l9_928=l9_908.z;
bool l9_929=l9_925;
float l9_930=l9_913;
float l9_931=fast::clamp(l9_926,l9_927,l9_928);
float l9_932=step(abs(l9_926-l9_931),9.9999997e-06);
l9_930*=(l9_932+((1.0-float(l9_929))*(1.0-l9_932)));
l9_926=l9_931;
l9_903.x=l9_926;
l9_913=l9_930;
bool l9_933=l9_909;
bool l9_934;
if (l9_933)
{
l9_934=l9_906.y==3;
}
else
{
l9_934=l9_933;
}
float l9_935=l9_903.y;
float l9_936=l9_908.y;
float l9_937=l9_908.w;
bool l9_938=l9_934;
float l9_939=l9_913;
float l9_940=fast::clamp(l9_935,l9_936,l9_937);
float l9_941=step(abs(l9_935-l9_940),9.9999997e-06);
l9_939*=(l9_941+((1.0-float(l9_938))*(1.0-l9_941)));
l9_935=l9_940;
l9_903.y=l9_935;
l9_913=l9_939;
}
float2 l9_942=l9_903;
bool l9_943=l9_904;
float3x3 l9_944=l9_905;
if (l9_943)
{
l9_942=float2((l9_944*float3(l9_942,1.0)).xy);
}
float2 l9_945=l9_942;
l9_903=l9_945;
float l9_946=l9_903.x;
int l9_947=l9_906.x;
bool l9_948=l9_912;
float l9_949=l9_913;
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
l9_903.x=l9_946;
l9_913=l9_949;
float l9_957=l9_903.y;
int l9_958=l9_906.y;
bool l9_959=l9_912;
float l9_960=l9_913;
if ((l9_958==0)||(l9_958==3))
{
float l9_961=l9_957;
float l9_962=0.0;
float l9_963=1.0;
bool l9_964=l9_959;
float l9_965=l9_960;
float l9_966=fast::clamp(l9_961,l9_962,l9_963);
float l9_967=step(abs(l9_961-l9_966),9.9999997e-06);
l9_965*=(l9_967+((1.0-float(l9_964))*(1.0-l9_967)));
l9_961=l9_966;
l9_957=l9_961;
l9_960=l9_965;
}
l9_903.y=l9_957;
l9_913=l9_960;
float2 l9_968=l9_903;
int l9_969=l9_901;
int l9_970=l9_902;
float l9_971=l9_911;
float2 l9_972=l9_968;
int l9_973=l9_969;
int l9_974=l9_970;
float3 l9_975=float3(0.0);
if (l9_973==0)
{
l9_975=float3(l9_972,0.0);
}
else
{
if (l9_973==1)
{
l9_975=float3(l9_972.x,(l9_972.y*0.5)+(0.5-(float(l9_974)*0.5)),0.0);
}
else
{
l9_975=float3(l9_972,float(l9_974));
}
}
float3 l9_976=l9_975;
float3 l9_977=l9_976;
float4 l9_978=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_977.xy,bias(l9_971));
float4 l9_979=l9_978;
if (l9_909)
{
l9_979=mix(l9_910,l9_979,float4(l9_913));
}
float4 l9_980=l9_979;
l9_894=l9_980;
float l9_981=0.0;
l9_981=dot(l9_894.xyz,float3(0.29899999,0.58700001,0.114));
l9_889=l9_981;
l9_892=l9_889;
}
else
{
float2 l9_982=float2(0.0);
l9_982=l9_891.gScreenCoord;
float4 l9_983=float4(0.0);
int l9_984;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_985=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_985=0;
}
else
{
l9_985=in.varStereoViewID;
}
int l9_986=l9_985;
l9_984=1-l9_986;
}
else
{
int l9_987=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_987=0;
}
else
{
l9_987=in.varStereoViewID;
}
int l9_988=l9_987;
l9_984=l9_988;
}
int l9_989=l9_984;
int l9_990=Tweak_N52Layout_tmp;
int l9_991=l9_989;
float2 l9_992=l9_982;
bool l9_993=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_994=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_995=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_996=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_997=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_998=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_999=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_1000=0.0;
bool l9_1001=l9_998&&(!l9_996);
float l9_1002=1.0;
float l9_1003=l9_992.x;
int l9_1004=l9_995.x;
if (l9_1004==1)
{
l9_1003=fract(l9_1003);
}
else
{
if (l9_1004==2)
{
float l9_1005=fract(l9_1003);
float l9_1006=l9_1003-l9_1005;
float l9_1007=step(0.25,fract(l9_1006*0.5));
l9_1003=mix(l9_1005,1.0-l9_1005,fast::clamp(l9_1007,0.0,1.0));
}
}
l9_992.x=l9_1003;
float l9_1008=l9_992.y;
int l9_1009=l9_995.y;
if (l9_1009==1)
{
l9_1008=fract(l9_1008);
}
else
{
if (l9_1009==2)
{
float l9_1010=fract(l9_1008);
float l9_1011=l9_1008-l9_1010;
float l9_1012=step(0.25,fract(l9_1011*0.5));
l9_1008=mix(l9_1010,1.0-l9_1010,fast::clamp(l9_1012,0.0,1.0));
}
}
l9_992.y=l9_1008;
if (l9_996)
{
bool l9_1013=l9_998;
bool l9_1014;
if (l9_1013)
{
l9_1014=l9_995.x==3;
}
else
{
l9_1014=l9_1013;
}
float l9_1015=l9_992.x;
float l9_1016=l9_997.x;
float l9_1017=l9_997.z;
bool l9_1018=l9_1014;
float l9_1019=l9_1002;
float l9_1020=fast::clamp(l9_1015,l9_1016,l9_1017);
float l9_1021=step(abs(l9_1015-l9_1020),9.9999997e-06);
l9_1019*=(l9_1021+((1.0-float(l9_1018))*(1.0-l9_1021)));
l9_1015=l9_1020;
l9_992.x=l9_1015;
l9_1002=l9_1019;
bool l9_1022=l9_998;
bool l9_1023;
if (l9_1022)
{
l9_1023=l9_995.y==3;
}
else
{
l9_1023=l9_1022;
}
float l9_1024=l9_992.y;
float l9_1025=l9_997.y;
float l9_1026=l9_997.w;
bool l9_1027=l9_1023;
float l9_1028=l9_1002;
float l9_1029=fast::clamp(l9_1024,l9_1025,l9_1026);
float l9_1030=step(abs(l9_1024-l9_1029),9.9999997e-06);
l9_1028*=(l9_1030+((1.0-float(l9_1027))*(1.0-l9_1030)));
l9_1024=l9_1029;
l9_992.y=l9_1024;
l9_1002=l9_1028;
}
float2 l9_1031=l9_992;
bool l9_1032=l9_993;
float3x3 l9_1033=l9_994;
if (l9_1032)
{
l9_1031=float2((l9_1033*float3(l9_1031,1.0)).xy);
}
float2 l9_1034=l9_1031;
l9_992=l9_1034;
float l9_1035=l9_992.x;
int l9_1036=l9_995.x;
bool l9_1037=l9_1001;
float l9_1038=l9_1002;
if ((l9_1036==0)||(l9_1036==3))
{
float l9_1039=l9_1035;
float l9_1040=0.0;
float l9_1041=1.0;
bool l9_1042=l9_1037;
float l9_1043=l9_1038;
float l9_1044=fast::clamp(l9_1039,l9_1040,l9_1041);
float l9_1045=step(abs(l9_1039-l9_1044),9.9999997e-06);
l9_1043*=(l9_1045+((1.0-float(l9_1042))*(1.0-l9_1045)));
l9_1039=l9_1044;
l9_1035=l9_1039;
l9_1038=l9_1043;
}
l9_992.x=l9_1035;
l9_1002=l9_1038;
float l9_1046=l9_992.y;
int l9_1047=l9_995.y;
bool l9_1048=l9_1001;
float l9_1049=l9_1002;
if ((l9_1047==0)||(l9_1047==3))
{
float l9_1050=l9_1046;
float l9_1051=0.0;
float l9_1052=1.0;
bool l9_1053=l9_1048;
float l9_1054=l9_1049;
float l9_1055=fast::clamp(l9_1050,l9_1051,l9_1052);
float l9_1056=step(abs(l9_1050-l9_1055),9.9999997e-06);
l9_1054*=(l9_1056+((1.0-float(l9_1053))*(1.0-l9_1056)));
l9_1050=l9_1055;
l9_1046=l9_1050;
l9_1049=l9_1054;
}
l9_992.y=l9_1046;
l9_1002=l9_1049;
float2 l9_1057=l9_992;
int l9_1058=l9_990;
int l9_1059=l9_991;
float l9_1060=l9_1000;
float2 l9_1061=l9_1057;
int l9_1062=l9_1058;
int l9_1063=l9_1059;
float3 l9_1064=float3(0.0);
if (l9_1062==0)
{
l9_1064=float3(l9_1061,0.0);
}
else
{
if (l9_1062==1)
{
l9_1064=float3(l9_1061.x,(l9_1061.y*0.5)+(0.5-(float(l9_1063)*0.5)),0.0);
}
else
{
l9_1064=float3(l9_1061,float(l9_1063));
}
}
float3 l9_1065=l9_1064;
float3 l9_1066=l9_1065;
float4 l9_1067=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_1066.xy,bias(l9_1060));
float4 l9_1068=l9_1067;
if (l9_998)
{
l9_1068=mix(l9_999,l9_1068,float4(l9_1002));
}
float4 l9_1069=l9_1068;
l9_983=l9_1069;
float l9_1070=0.0;
l9_1070=l9_983.w;
l9_890=l9_1070;
l9_892=l9_890;
}
l9_888=l9_892;
float4 l9_1071=float4(0.0);
l9_1071=float4(l9_801.xyz.x,l9_801.xyz.y,l9_801.xyz.z,l9_1071.w);
l9_1071.w=l9_888;
float4 l9_1072=float4(0.0);
float4 l9_1073=(*sc_set0.UserUniforms).Tweak_N58;
l9_1072=l9_1073;
float4 l9_1074=float4(0.0);
float4 l9_1075=(*sc_set0.UserUniforms).Tweak_N73;
l9_1074=l9_1075;
float2 l9_1076=float2(0.0);
l9_1076=param_5.gScreenCoord;
float2 l9_1077=float2(0.0);
float2 l9_1078=(*sc_set0.UserUniforms).Tweak_N27;
l9_1077=l9_1078;
float2 l9_1079=float2(0.0);
l9_1079=l9_1076*l9_1077;
float l9_1080=0.0;
float l9_1081=(*sc_set0.UserUniforms).Tweak_N26;
l9_1080=l9_1081;
float l9_1082=0.0;
l9_1082=param_5.gTimeElapsed*l9_1080;
float3 l9_1083=float3(0.0);
l9_1083=float3(l9_1079.x,l9_1079.y,l9_1083.z);
l9_1083.z=l9_1082;
float4 l9_1084=float4(0.0);
float3 l9_1085=l9_1083;
bool l9_1086=false;
float l9_1087=0.0;
float4 l9_1088;
if (l9_1086)
{
l9_1088=sc_set0.Tweak_N9.sample(sc_set0.Tweak_N9SmpSC,l9_1085,level(l9_1087));
}
else
{
l9_1088=sc_set0.Tweak_N9.sample(sc_set0.Tweak_N9SmpSC,l9_1085,bias(l9_1087));
}
float4 l9_1089=l9_1088;
l9_1084=l9_1089;
float l9_1090=0.0;
l9_1090=l9_1084.z;
float l9_1091=0.0;
float l9_1092=(*sc_set0.UserUniforms).Tweak_N12;
l9_1091=l9_1092;
float l9_1093=0.0;
l9_1093=mix((*sc_set0.UserUniforms).Port_Input0_N013,l9_1090,l9_1091);
float l9_1094=0.0;
l9_1094=fast::clamp(l9_1093+0.001,(*sc_set0.UserUniforms).Port_Input1_N030+0.001,(*sc_set0.UserUniforms).Port_Input2_N030+0.001)-0.001;
float4 l9_1095=float4(0.0);
l9_1095=mix(l9_1072,l9_1074,float4(l9_1094));
float l9_1096=0.0;
l9_1096=l9_1084.x;
float l9_1097=0.0;
float l9_1098=(*sc_set0.UserUniforms).Tweak_N41;
l9_1097=l9_1098;
float l9_1099=0.0;
l9_1099=mix((*sc_set0.UserUniforms).Port_Input0_N040,l9_1096,l9_1097);
float l9_1100=0.0;
l9_1100=fast::clamp(l9_1099+0.001,(*sc_set0.UserUniforms).Port_Input1_N044+0.001,(*sc_set0.UserUniforms).Port_Input2_N044+0.001)-0.001;
float l9_1101=0.0;
l9_1101=l9_1100*l9_888;
float4 l9_1102=float4(0.0);
l9_1102=float4(l9_1095.xyz.x,l9_1095.xyz.y,l9_1095.xyz.z,l9_1102.w);
l9_1102.w=l9_1101;
float l9_1103=0.0;
float l9_1104;
if ((int(Tweak_N113_tmp)!=0))
{
l9_1104=1.001;
}
else
{
l9_1104=0.001;
}
l9_1104-=0.001;
l9_1103=l9_1104;
float4 l9_1105=float4(0.0);
l9_1105=mix(l9_1071,l9_1102,float4(l9_1103));
float4 l9_1106=float4(0.0);
float4 l9_1107=l9_799;
float4 l9_1108=l9_1105;
float4 l9_1109;
l9_1109=float4(l9_1108.xyz.x,l9_1108.xyz.y,l9_1108.xyz.z,l9_1109.w);
float3 l9_1110=mix(l9_1107.xyz,l9_1109.xyz,float3(l9_1108.w));
l9_1109=float4(l9_1110.x,l9_1110.y,l9_1110.z,l9_1109.w);
l9_1109.w=l9_1107.w;
l9_1106=l9_1109;
float l9_1111=0.0;
l9_1111=mix(l9_888,l9_1101,l9_1103);
float l9_1112=0.0;
float l9_1113=(*sc_set0.UserUniforms).Tweak_N38;
l9_1112=l9_1113;
float l9_1114=0.0;
l9_1114=l9_1111*l9_1112;
float l9_1115=0.0;
float4 l9_1116=l9_799;
float l9_1117=l9_1116.w;
l9_1115=l9_1117;
float l9_1118=0.0;
l9_1118=l9_1114+l9_1115;
float4 l9_1119=float4(0.0);
l9_1119=float4(l9_1106.xyz.x,l9_1106.xyz.y,l9_1106.xyz.z,l9_1119.w);
l9_1119.w=l9_1118;
float4 l9_1120=float4(0.0);
l9_1120=mix(l9_1119,l9_645,float4((*sc_set0.UserUniforms).Port_Input2_N129));
param_1=l9_1120;
param_4=param_1;
}
else
{
if (NODE_3_DROPLIST_ITEM_tmp==2)
{
float2 l9_1121=float2(0.0);
l9_1121=param_5.Surface_UVCoord0;
float2 l9_1122=float2(0.0);
float2 l9_1123=float2(1.0);
float2 l9_1124=float2(0.0);
ssGlobals l9_1125=param_5;
float2 l9_1126;
if ((int(Tweak_N66_tmp)!=0))
{
float2 l9_1127=float2(0.0);
l9_1127=l9_1125.gScreenCoord;
float2 l9_1128=float2(0.0);
float l9_1129=1.0;
float2 l9_1130=float2(1.0);
float2 l9_1131=float2(0.0);
float l9_1132=0.0;
l9_1132=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_1133=0.0;
l9_1133=float(l9_1132>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_1129=l9_1133;
float2 l9_1134;
if ((l9_1129*1.0)!=0.0)
{
float l9_1135=0.0;
l9_1135=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_1136=float2(0.0);
l9_1136=float2(1.0,l9_1135);
l9_1130=l9_1136;
l9_1134=l9_1130;
}
else
{
float l9_1137=0.0;
l9_1137=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_1138=float2(0.0);
l9_1138=float2(l9_1137,1.0);
l9_1131=l9_1138;
l9_1134=l9_1131;
}
l9_1128=l9_1134;
float2 l9_1139=float2(0.0);
l9_1139=((l9_1127-(*sc_set0.UserUniforms).Port_Center_N046)*l9_1128)+(*sc_set0.UserUniforms).Port_Center_N046;
float2 l9_1140=float2(0.0);
float2 l9_1141=(*sc_set0.UserUniforms).noisePivotPos;
l9_1140=l9_1141;
float2 l9_1142=float2(0.0);
float2 l9_1143=(*sc_set0.UserUniforms).Tweak_N60;
l9_1142=l9_1143;
float2 l9_1144=float2(0.0);
l9_1144=l9_1140+l9_1142;
float2 l9_1145=float2(0.0);
l9_1145=l9_1144-(*sc_set0.UserUniforms).Port_Input1_N083;
float2 l9_1146=float2(0.0);
l9_1146=l9_1139-l9_1145;
float2 l9_1147=float2(0.0);
l9_1147=l9_1146;
float2 l9_1148=float2(0.0);
l9_1148=((l9_1147-(*sc_set0.UserUniforms).Port_Center_N086)*(*sc_set0.UserUniforms).Port_Scale_N086)+(*sc_set0.UserUniforms).Port_Center_N086;
float2 l9_1149=float2(0.0);
l9_1149=l9_1148-float2((*sc_set0.UserUniforms).Port_Input1_N087);
float2 l9_1150=float2(0.0);
l9_1150=l9_1149*l9_1149;
float l9_1151=0.0;
l9_1151=l9_1150.x;
float l9_1152=0.0;
l9_1152=l9_1150.y;
float l9_1153=0.0;
l9_1153=l9_1151+l9_1152;
float l9_1154=0.0;
float l9_1155;
if (l9_1153<=0.0)
{
l9_1155=0.0;
}
else
{
l9_1155=sqrt(l9_1153);
}
l9_1154=l9_1155;
float2 l9_1156=float2(0.0);
l9_1156=l9_1148-float2((*sc_set0.UserUniforms).Port_Input1_N093);
float l9_1157=0.0;
l9_1157=l9_1156.x;
float l9_1158=0.0;
l9_1158=l9_1156.y;
float l9_1159=0.0;
l9_1159=atan2(l9_1158,l9_1157);
float l9_1160=0.0;
l9_1160=3.1415927;
float l9_1161=0.0;
l9_1161=l9_1160*(*sc_set0.UserUniforms).Port_Input1_N098;
float l9_1162=0.0;
l9_1162=l9_1159/l9_1161;
float l9_1163=0.0;
l9_1163=l9_1162+(*sc_set0.UserUniforms).Port_Input1_N100;
float2 l9_1164=float2(0.0);
l9_1164.x=l9_1154;
l9_1164.y=l9_1163;
float2 l9_1165=float2(0.0);
l9_1165=l9_1164;
float l9_1166=0.0;
float l9_1167=0.0;
float2 l9_1168=l9_1165;
float l9_1169=l9_1168.x;
float l9_1170=l9_1168.y;
l9_1166=l9_1169;
l9_1167=l9_1170;
float l9_1171=0.0;
float l9_1172;
if (l9_1166<=0.0)
{
l9_1172=0.0;
}
else
{
l9_1172=pow(l9_1166,(*sc_set0.UserUniforms).Port_Input1_N023);
}
l9_1171=l9_1172;
float2 l9_1173=float2(0.0);
l9_1173.x=l9_1171;
l9_1173.y=l9_1167;
l9_1123=l9_1173;
l9_1126=l9_1123;
}
else
{
float2 l9_1174=float2(0.0);
l9_1174=l9_1125.gScreenCoord;
float2 l9_1175=float2(0.0);
float l9_1176=1.0;
float2 l9_1177=float2(1.0);
float2 l9_1178=float2(0.0);
float l9_1179=0.0;
l9_1179=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_1180=0.0;
l9_1180=float(l9_1179>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_1176=l9_1180;
float2 l9_1181;
if ((l9_1176*1.0)!=0.0)
{
float l9_1182=0.0;
l9_1182=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_1183=float2(0.0);
l9_1183=float2(1.0,l9_1182);
l9_1177=l9_1183;
l9_1181=l9_1177;
}
else
{
float l9_1184=0.0;
l9_1184=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_1185=float2(0.0);
l9_1185=float2(l9_1184,1.0);
l9_1178=l9_1185;
l9_1181=l9_1178;
}
l9_1175=l9_1181;
float2 l9_1186=float2(0.0);
l9_1186=((l9_1174-(*sc_set0.UserUniforms).Port_Center_N046)*l9_1175)+(*sc_set0.UserUniforms).Port_Center_N046;
l9_1124=l9_1186;
l9_1126=l9_1124;
}
l9_1122=l9_1126;
float2 l9_1187=float2(0.0);
float2 l9_1188=(*sc_set0.UserUniforms).Tweak_N71;
l9_1187=l9_1188;
float l9_1189=0.0;
float l9_1190=(*sc_set0.UserUniforms).Tweak_N6;
l9_1189=l9_1190;
float2 l9_1191=float2(0.0);
l9_1191=l9_1122+(l9_1187*(param_5.gTimeElapsed*l9_1189));
float2 l9_1192=float2(0.0);
float2 l9_1193=(*sc_set0.UserUniforms).Tweak_N25;
l9_1192=l9_1193;
float2 l9_1194=float2(0.0);
l9_1194=l9_1191*l9_1192;
float l9_1195=0.0;
float l9_1196=(*sc_set0.UserUniforms).Tweak_N11;
l9_1195=l9_1196;
float l9_1197=0.0;
l9_1197=param_5.gTimeElapsed*l9_1195;
float3 l9_1198=float3(0.0);
l9_1198=float3(l9_1194.x,l9_1194.y,l9_1198.z);
l9_1198.z=l9_1197;
float4 l9_1199=float4(0.0);
float3 l9_1200=l9_1198;
bool l9_1201=false;
float l9_1202=0.0;
float4 l9_1203;
if (l9_1201)
{
l9_1203=sc_set0.Tweak_N80.sample(sc_set0.Tweak_N80SmpSC,l9_1200,level(l9_1202));
}
else
{
l9_1203=sc_set0.Tweak_N80.sample(sc_set0.Tweak_N80SmpSC,l9_1200,bias(l9_1202));
}
float4 l9_1204=l9_1203;
l9_1199=l9_1204;
float2 l9_1205=float2(0.0);
l9_1205=float2(l9_1199.x,l9_1199.y);
float2 l9_1206=float2(0.0);
l9_1206=(((l9_1205-float2((*sc_set0.UserUniforms).Port_RangeMinA_N117))/float2(((*sc_set0.UserUniforms).Port_RangeMaxA_N117-(*sc_set0.UserUniforms).Port_RangeMinA_N117)+1e-06))*((*sc_set0.UserUniforms).Port_RangeMaxB_N117-(*sc_set0.UserUniforms).Port_RangeMinB_N117))+float2((*sc_set0.UserUniforms).Port_RangeMinB_N117);
float l9_1207=0.0;
float l9_1208=(*sc_set0.UserUniforms).Tweak_N126;
l9_1207=l9_1208;
float l9_1209=0.0;
l9_1209=l9_1207*(*sc_set0.UserUniforms).Port_Input1_N127;
float2 l9_1210=float2(0.0);
l9_1210=l9_1206*float2(l9_1209);
float2 l9_1211=float2(0.0);
l9_1211=param_5.gScreenCoord;
float2 l9_1212=float2(0.0);
float l9_1213=1.0;
float2 l9_1214=float2(1.0);
float2 l9_1215=float2(0.0);
float l9_1216=0.0;
l9_1216=(*sc_set0.UserUniforms).sc_Camera.aspect;
float l9_1217=0.0;
l9_1217=float(l9_1216>(*sc_set0.UserUniforms).Port_Input1_N137);
l9_1213=l9_1217;
float2 l9_1218;
if ((l9_1213*1.0)!=0.0)
{
float l9_1219=0.0;
l9_1219=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_1220=float2(0.0);
l9_1220=float2(1.0,l9_1219);
l9_1214=l9_1220;
l9_1218=l9_1214;
}
else
{
float l9_1221=0.0;
l9_1221=(*sc_set0.UserUniforms).sc_Camera.aspect;
float2 l9_1222=float2(0.0);
l9_1222=float2(l9_1221,1.0);
l9_1215=l9_1222;
l9_1218=l9_1215;
}
l9_1212=l9_1218;
float2 l9_1223=float2(0.0);
l9_1223=((l9_1211-(*sc_set0.UserUniforms).Port_Center_N046)*l9_1212)+(*sc_set0.UserUniforms).Port_Center_N046;
float2 l9_1224=float2(0.0);
float2 l9_1225=(*sc_set0.UserUniforms).radialPivotPos;
l9_1224=l9_1225;
float2 l9_1226=float2(0.0);
float2 l9_1227=(*sc_set0.UserUniforms).Tweak_N50;
l9_1226=l9_1227;
float2 l9_1228=float2(0.0);
l9_1228=l9_1224+l9_1226;
float2 l9_1229=float2(0.0);
l9_1229=l9_1223-l9_1228;
float2 l9_1230=float2(0.0);
float2 l9_1231=l9_1229;
float l9_1232=dot(l9_1231,l9_1231);
float l9_1233;
if (l9_1232>0.0)
{
l9_1233=1.0/sqrt(l9_1232);
}
else
{
l9_1233=0.0;
}
float l9_1234=l9_1233;
float2 l9_1235=l9_1231*l9_1234;
l9_1230=l9_1235;
float l9_1236=0.0;
float l9_1237=(*sc_set0.UserUniforms).Tweak_N119;
l9_1236=l9_1237;
float l9_1238=0.0;
l9_1238=l9_1236*(*sc_set0.UserUniforms).Port_Input1_N120;
float2 l9_1239=float2(0.0);
l9_1239=(l9_1230*float2(l9_1238))*(*sc_set0.UserUniforms).Port_Input2_N115;
float2 l9_1240=float2(0.0);
float2 l9_1241=(*sc_set0.UserUniforms).Tweak_N48;
l9_1240=l9_1241;
float l9_1242=0.0;
float l9_1243=(*sc_set0.UserUniforms).Tweak_N114;
l9_1242=l9_1243;
float l9_1244=0.0;
l9_1244=l9_1242*(*sc_set0.UserUniforms).Port_Input1_N123;
float2 l9_1245=float2(0.0);
l9_1245=l9_1240*float2(l9_1244);
float2 l9_1246=float2(0.0);
l9_1246=(l9_1210+l9_1239)+l9_1245;
float2 l9_1247=float2(0.0);
l9_1247=l9_1121-l9_1246;
float4 l9_1248=float4(0.0);
int l9_1249;
if ((int(prev_frameHasSwappedViews_tmp)!=0))
{
int l9_1250=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1250=0;
}
else
{
l9_1250=in.varStereoViewID;
}
int l9_1251=l9_1250;
l9_1249=1-l9_1251;
}
else
{
int l9_1252=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1252=0;
}
else
{
l9_1252=in.varStereoViewID;
}
int l9_1253=l9_1252;
l9_1249=l9_1253;
}
int l9_1254=l9_1249;
int l9_1255=prev_frameLayout_tmp;
int l9_1256=l9_1254;
float2 l9_1257=l9_1247;
bool l9_1258=(int(SC_USE_UV_TRANSFORM_prev_frame_tmp)!=0);
float3x3 l9_1259=(*sc_set0.UserUniforms).prev_frameTransform;
int2 l9_1260=int2(SC_SOFTWARE_WRAP_MODE_U_prev_frame_tmp,SC_SOFTWARE_WRAP_MODE_V_prev_frame_tmp);
bool l9_1261=(int(SC_USE_UV_MIN_MAX_prev_frame_tmp)!=0);
float4 l9_1262=(*sc_set0.UserUniforms).prev_frameUvMinMax;
bool l9_1263=(int(SC_USE_CLAMP_TO_BORDER_prev_frame_tmp)!=0);
float4 l9_1264=(*sc_set0.UserUniforms).prev_frameBorderColor;
float l9_1265=0.0;
bool l9_1266=l9_1263&&(!l9_1261);
float l9_1267=1.0;
float l9_1268=l9_1257.x;
int l9_1269=l9_1260.x;
if (l9_1269==1)
{
l9_1268=fract(l9_1268);
}
else
{
if (l9_1269==2)
{
float l9_1270=fract(l9_1268);
float l9_1271=l9_1268-l9_1270;
float l9_1272=step(0.25,fract(l9_1271*0.5));
l9_1268=mix(l9_1270,1.0-l9_1270,fast::clamp(l9_1272,0.0,1.0));
}
}
l9_1257.x=l9_1268;
float l9_1273=l9_1257.y;
int l9_1274=l9_1260.y;
if (l9_1274==1)
{
l9_1273=fract(l9_1273);
}
else
{
if (l9_1274==2)
{
float l9_1275=fract(l9_1273);
float l9_1276=l9_1273-l9_1275;
float l9_1277=step(0.25,fract(l9_1276*0.5));
l9_1273=mix(l9_1275,1.0-l9_1275,fast::clamp(l9_1277,0.0,1.0));
}
}
l9_1257.y=l9_1273;
if (l9_1261)
{
bool l9_1278=l9_1263;
bool l9_1279;
if (l9_1278)
{
l9_1279=l9_1260.x==3;
}
else
{
l9_1279=l9_1278;
}
float l9_1280=l9_1257.x;
float l9_1281=l9_1262.x;
float l9_1282=l9_1262.z;
bool l9_1283=l9_1279;
float l9_1284=l9_1267;
float l9_1285=fast::clamp(l9_1280,l9_1281,l9_1282);
float l9_1286=step(abs(l9_1280-l9_1285),9.9999997e-06);
l9_1284*=(l9_1286+((1.0-float(l9_1283))*(1.0-l9_1286)));
l9_1280=l9_1285;
l9_1257.x=l9_1280;
l9_1267=l9_1284;
bool l9_1287=l9_1263;
bool l9_1288;
if (l9_1287)
{
l9_1288=l9_1260.y==3;
}
else
{
l9_1288=l9_1287;
}
float l9_1289=l9_1257.y;
float l9_1290=l9_1262.y;
float l9_1291=l9_1262.w;
bool l9_1292=l9_1288;
float l9_1293=l9_1267;
float l9_1294=fast::clamp(l9_1289,l9_1290,l9_1291);
float l9_1295=step(abs(l9_1289-l9_1294),9.9999997e-06);
l9_1293*=(l9_1295+((1.0-float(l9_1292))*(1.0-l9_1295)));
l9_1289=l9_1294;
l9_1257.y=l9_1289;
l9_1267=l9_1293;
}
float2 l9_1296=l9_1257;
bool l9_1297=l9_1258;
float3x3 l9_1298=l9_1259;
if (l9_1297)
{
l9_1296=float2((l9_1298*float3(l9_1296,1.0)).xy);
}
float2 l9_1299=l9_1296;
l9_1257=l9_1299;
float l9_1300=l9_1257.x;
int l9_1301=l9_1260.x;
bool l9_1302=l9_1266;
float l9_1303=l9_1267;
if ((l9_1301==0)||(l9_1301==3))
{
float l9_1304=l9_1300;
float l9_1305=0.0;
float l9_1306=1.0;
bool l9_1307=l9_1302;
float l9_1308=l9_1303;
float l9_1309=fast::clamp(l9_1304,l9_1305,l9_1306);
float l9_1310=step(abs(l9_1304-l9_1309),9.9999997e-06);
l9_1308*=(l9_1310+((1.0-float(l9_1307))*(1.0-l9_1310)));
l9_1304=l9_1309;
l9_1300=l9_1304;
l9_1303=l9_1308;
}
l9_1257.x=l9_1300;
l9_1267=l9_1303;
float l9_1311=l9_1257.y;
int l9_1312=l9_1260.y;
bool l9_1313=l9_1266;
float l9_1314=l9_1267;
if ((l9_1312==0)||(l9_1312==3))
{
float l9_1315=l9_1311;
float l9_1316=0.0;
float l9_1317=1.0;
bool l9_1318=l9_1313;
float l9_1319=l9_1314;
float l9_1320=fast::clamp(l9_1315,l9_1316,l9_1317);
float l9_1321=step(abs(l9_1315-l9_1320),9.9999997e-06);
l9_1319*=(l9_1321+((1.0-float(l9_1318))*(1.0-l9_1321)));
l9_1315=l9_1320;
l9_1311=l9_1315;
l9_1314=l9_1319;
}
l9_1257.y=l9_1311;
l9_1267=l9_1314;
float2 l9_1322=l9_1257;
int l9_1323=l9_1255;
int l9_1324=l9_1256;
float l9_1325=l9_1265;
float2 l9_1326=l9_1322;
int l9_1327=l9_1323;
int l9_1328=l9_1324;
float3 l9_1329=float3(0.0);
if (l9_1327==0)
{
l9_1329=float3(l9_1326,0.0);
}
else
{
if (l9_1327==1)
{
l9_1329=float3(l9_1326.x,(l9_1326.y*0.5)+(0.5-(float(l9_1328)*0.5)),0.0);
}
else
{
l9_1329=float3(l9_1326,float(l9_1328));
}
}
float3 l9_1330=l9_1329;
float3 l9_1331=l9_1330;
float4 l9_1332=sc_set0.prev_frame.sample(sc_set0.prev_frameSmpSC,l9_1331.xy,bias(l9_1325));
float4 l9_1333=l9_1332;
if (l9_1263)
{
l9_1333=mix(l9_1264,l9_1333,float4(l9_1267));
}
float4 l9_1334=l9_1333;
l9_1248=l9_1334;
float l9_1335=0.0;
float l9_1336=(*sc_set0.UserUniforms).Tweak_N29;
l9_1335=l9_1336;
float l9_1337=0.0;
l9_1337=l9_1335*(*sc_set0.UserUniforms).Port_Input1_N045;
float l9_1338=0.0;
l9_1338=l9_1337+1.0;
float4 l9_1339=float4(0.0);
l9_1339=float4(1.0,1.0,1.0,l9_1338);
float4 l9_1340=float4(0.0);
float l9_1341;
if (l9_1248.x<=0.0)
{
l9_1341=0.0;
}
else
{
l9_1341=pow(l9_1248.x,l9_1339.x);
}
float l9_1342=l9_1341;
float l9_1343;
if (l9_1248.y<=0.0)
{
l9_1343=0.0;
}
else
{
l9_1343=pow(l9_1248.y,l9_1339.y);
}
float l9_1344=l9_1343;
float l9_1345;
if (l9_1248.z<=0.0)
{
l9_1345=0.0;
}
else
{
l9_1345=pow(l9_1248.z,l9_1339.z);
}
float l9_1346=l9_1345;
float l9_1347;
if (l9_1248.w<=0.0)
{
l9_1347=0.0;
}
else
{
l9_1347=pow(l9_1248.w,l9_1339.w);
}
l9_1340=float4(l9_1342,l9_1344,l9_1346,l9_1347);
float l9_1348=0.0;
float l9_1349=(*sc_set0.UserUniforms).Tweak_N32;
l9_1348=l9_1349;
float l9_1350=0.0;
l9_1350=l9_1348*(*sc_set0.UserUniforms).Port_Input1_N021;
float l9_1351=0.0;
l9_1351=1.0-l9_1350;
float4 l9_1352=float4(0.0);
l9_1352=float4((*sc_set0.UserUniforms).Port_Value1_N033.x,(*sc_set0.UserUniforms).Port_Value1_N033.y,(*sc_set0.UserUniforms).Port_Value1_N033.z,l9_1352.w);
l9_1352.w=l9_1351;
float4 l9_1353=float4(0.0);
l9_1353=l9_1340*l9_1352;
float2 l9_1354=float2(0.0);
l9_1354=param_5.gScreenCoord;
float4 l9_1355=float4(0.0);
int l9_1356;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_1357=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1357=0;
}
else
{
l9_1357=in.varStereoViewID;
}
int l9_1358=l9_1357;
l9_1356=1-l9_1358;
}
else
{
int l9_1359=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1359=0;
}
else
{
l9_1359=in.varStereoViewID;
}
int l9_1360=l9_1359;
l9_1356=l9_1360;
}
int l9_1361=l9_1356;
int l9_1362=Tweak_N52Layout_tmp;
int l9_1363=l9_1361;
float2 l9_1364=l9_1354;
bool l9_1365=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_1366=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_1367=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_1368=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_1369=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_1370=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_1371=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_1372=0.0;
bool l9_1373=l9_1370&&(!l9_1368);
float l9_1374=1.0;
float l9_1375=l9_1364.x;
int l9_1376=l9_1367.x;
if (l9_1376==1)
{
l9_1375=fract(l9_1375);
}
else
{
if (l9_1376==2)
{
float l9_1377=fract(l9_1375);
float l9_1378=l9_1375-l9_1377;
float l9_1379=step(0.25,fract(l9_1378*0.5));
l9_1375=mix(l9_1377,1.0-l9_1377,fast::clamp(l9_1379,0.0,1.0));
}
}
l9_1364.x=l9_1375;
float l9_1380=l9_1364.y;
int l9_1381=l9_1367.y;
if (l9_1381==1)
{
l9_1380=fract(l9_1380);
}
else
{
if (l9_1381==2)
{
float l9_1382=fract(l9_1380);
float l9_1383=l9_1380-l9_1382;
float l9_1384=step(0.25,fract(l9_1383*0.5));
l9_1380=mix(l9_1382,1.0-l9_1382,fast::clamp(l9_1384,0.0,1.0));
}
}
l9_1364.y=l9_1380;
if (l9_1368)
{
bool l9_1385=l9_1370;
bool l9_1386;
if (l9_1385)
{
l9_1386=l9_1367.x==3;
}
else
{
l9_1386=l9_1385;
}
float l9_1387=l9_1364.x;
float l9_1388=l9_1369.x;
float l9_1389=l9_1369.z;
bool l9_1390=l9_1386;
float l9_1391=l9_1374;
float l9_1392=fast::clamp(l9_1387,l9_1388,l9_1389);
float l9_1393=step(abs(l9_1387-l9_1392),9.9999997e-06);
l9_1391*=(l9_1393+((1.0-float(l9_1390))*(1.0-l9_1393)));
l9_1387=l9_1392;
l9_1364.x=l9_1387;
l9_1374=l9_1391;
bool l9_1394=l9_1370;
bool l9_1395;
if (l9_1394)
{
l9_1395=l9_1367.y==3;
}
else
{
l9_1395=l9_1394;
}
float l9_1396=l9_1364.y;
float l9_1397=l9_1369.y;
float l9_1398=l9_1369.w;
bool l9_1399=l9_1395;
float l9_1400=l9_1374;
float l9_1401=fast::clamp(l9_1396,l9_1397,l9_1398);
float l9_1402=step(abs(l9_1396-l9_1401),9.9999997e-06);
l9_1400*=(l9_1402+((1.0-float(l9_1399))*(1.0-l9_1402)));
l9_1396=l9_1401;
l9_1364.y=l9_1396;
l9_1374=l9_1400;
}
float2 l9_1403=l9_1364;
bool l9_1404=l9_1365;
float3x3 l9_1405=l9_1366;
if (l9_1404)
{
l9_1403=float2((l9_1405*float3(l9_1403,1.0)).xy);
}
float2 l9_1406=l9_1403;
l9_1364=l9_1406;
float l9_1407=l9_1364.x;
int l9_1408=l9_1367.x;
bool l9_1409=l9_1373;
float l9_1410=l9_1374;
if ((l9_1408==0)||(l9_1408==3))
{
float l9_1411=l9_1407;
float l9_1412=0.0;
float l9_1413=1.0;
bool l9_1414=l9_1409;
float l9_1415=l9_1410;
float l9_1416=fast::clamp(l9_1411,l9_1412,l9_1413);
float l9_1417=step(abs(l9_1411-l9_1416),9.9999997e-06);
l9_1415*=(l9_1417+((1.0-float(l9_1414))*(1.0-l9_1417)));
l9_1411=l9_1416;
l9_1407=l9_1411;
l9_1410=l9_1415;
}
l9_1364.x=l9_1407;
l9_1374=l9_1410;
float l9_1418=l9_1364.y;
int l9_1419=l9_1367.y;
bool l9_1420=l9_1373;
float l9_1421=l9_1374;
if ((l9_1419==0)||(l9_1419==3))
{
float l9_1422=l9_1418;
float l9_1423=0.0;
float l9_1424=1.0;
bool l9_1425=l9_1420;
float l9_1426=l9_1421;
float l9_1427=fast::clamp(l9_1422,l9_1423,l9_1424);
float l9_1428=step(abs(l9_1422-l9_1427),9.9999997e-06);
l9_1426*=(l9_1428+((1.0-float(l9_1425))*(1.0-l9_1428)));
l9_1422=l9_1427;
l9_1418=l9_1422;
l9_1421=l9_1426;
}
l9_1364.y=l9_1418;
l9_1374=l9_1421;
float2 l9_1429=l9_1364;
int l9_1430=l9_1362;
int l9_1431=l9_1363;
float l9_1432=l9_1372;
float2 l9_1433=l9_1429;
int l9_1434=l9_1430;
int l9_1435=l9_1431;
float3 l9_1436=float3(0.0);
if (l9_1434==0)
{
l9_1436=float3(l9_1433,0.0);
}
else
{
if (l9_1434==1)
{
l9_1436=float3(l9_1433.x,(l9_1433.y*0.5)+(0.5-(float(l9_1435)*0.5)),0.0);
}
else
{
l9_1436=float3(l9_1433,float(l9_1435));
}
}
float3 l9_1437=l9_1436;
float3 l9_1438=l9_1437;
float4 l9_1439=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_1438.xy,bias(l9_1432));
float4 l9_1440=l9_1439;
if (l9_1370)
{
l9_1440=mix(l9_1371,l9_1440,float4(l9_1374));
}
float4 l9_1441=l9_1440;
l9_1355=l9_1441;
float l9_1442=0.0;
float l9_1443=1.0;
float l9_1444=0.0;
ssGlobals l9_1445=param_5;
float l9_1446;
if ((int(Tweak_N128_tmp)!=0))
{
float2 l9_1447=float2(0.0);
l9_1447=l9_1445.gScreenCoord;
float4 l9_1448=float4(0.0);
int l9_1449;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_1450=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1450=0;
}
else
{
l9_1450=in.varStereoViewID;
}
int l9_1451=l9_1450;
l9_1449=1-l9_1451;
}
else
{
int l9_1452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1452=0;
}
else
{
l9_1452=in.varStereoViewID;
}
int l9_1453=l9_1452;
l9_1449=l9_1453;
}
int l9_1454=l9_1449;
int l9_1455=Tweak_N52Layout_tmp;
int l9_1456=l9_1454;
float2 l9_1457=l9_1447;
bool l9_1458=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_1459=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_1460=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_1461=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_1462=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_1463=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_1464=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_1465=0.0;
bool l9_1466=l9_1463&&(!l9_1461);
float l9_1467=1.0;
float l9_1468=l9_1457.x;
int l9_1469=l9_1460.x;
if (l9_1469==1)
{
l9_1468=fract(l9_1468);
}
else
{
if (l9_1469==2)
{
float l9_1470=fract(l9_1468);
float l9_1471=l9_1468-l9_1470;
float l9_1472=step(0.25,fract(l9_1471*0.5));
l9_1468=mix(l9_1470,1.0-l9_1470,fast::clamp(l9_1472,0.0,1.0));
}
}
l9_1457.x=l9_1468;
float l9_1473=l9_1457.y;
int l9_1474=l9_1460.y;
if (l9_1474==1)
{
l9_1473=fract(l9_1473);
}
else
{
if (l9_1474==2)
{
float l9_1475=fract(l9_1473);
float l9_1476=l9_1473-l9_1475;
float l9_1477=step(0.25,fract(l9_1476*0.5));
l9_1473=mix(l9_1475,1.0-l9_1475,fast::clamp(l9_1477,0.0,1.0));
}
}
l9_1457.y=l9_1473;
if (l9_1461)
{
bool l9_1478=l9_1463;
bool l9_1479;
if (l9_1478)
{
l9_1479=l9_1460.x==3;
}
else
{
l9_1479=l9_1478;
}
float l9_1480=l9_1457.x;
float l9_1481=l9_1462.x;
float l9_1482=l9_1462.z;
bool l9_1483=l9_1479;
float l9_1484=l9_1467;
float l9_1485=fast::clamp(l9_1480,l9_1481,l9_1482);
float l9_1486=step(abs(l9_1480-l9_1485),9.9999997e-06);
l9_1484*=(l9_1486+((1.0-float(l9_1483))*(1.0-l9_1486)));
l9_1480=l9_1485;
l9_1457.x=l9_1480;
l9_1467=l9_1484;
bool l9_1487=l9_1463;
bool l9_1488;
if (l9_1487)
{
l9_1488=l9_1460.y==3;
}
else
{
l9_1488=l9_1487;
}
float l9_1489=l9_1457.y;
float l9_1490=l9_1462.y;
float l9_1491=l9_1462.w;
bool l9_1492=l9_1488;
float l9_1493=l9_1467;
float l9_1494=fast::clamp(l9_1489,l9_1490,l9_1491);
float l9_1495=step(abs(l9_1489-l9_1494),9.9999997e-06);
l9_1493*=(l9_1495+((1.0-float(l9_1492))*(1.0-l9_1495)));
l9_1489=l9_1494;
l9_1457.y=l9_1489;
l9_1467=l9_1493;
}
float2 l9_1496=l9_1457;
bool l9_1497=l9_1458;
float3x3 l9_1498=l9_1459;
if (l9_1497)
{
l9_1496=float2((l9_1498*float3(l9_1496,1.0)).xy);
}
float2 l9_1499=l9_1496;
l9_1457=l9_1499;
float l9_1500=l9_1457.x;
int l9_1501=l9_1460.x;
bool l9_1502=l9_1466;
float l9_1503=l9_1467;
if ((l9_1501==0)||(l9_1501==3))
{
float l9_1504=l9_1500;
float l9_1505=0.0;
float l9_1506=1.0;
bool l9_1507=l9_1502;
float l9_1508=l9_1503;
float l9_1509=fast::clamp(l9_1504,l9_1505,l9_1506);
float l9_1510=step(abs(l9_1504-l9_1509),9.9999997e-06);
l9_1508*=(l9_1510+((1.0-float(l9_1507))*(1.0-l9_1510)));
l9_1504=l9_1509;
l9_1500=l9_1504;
l9_1503=l9_1508;
}
l9_1457.x=l9_1500;
l9_1467=l9_1503;
float l9_1511=l9_1457.y;
int l9_1512=l9_1460.y;
bool l9_1513=l9_1466;
float l9_1514=l9_1467;
if ((l9_1512==0)||(l9_1512==3))
{
float l9_1515=l9_1511;
float l9_1516=0.0;
float l9_1517=1.0;
bool l9_1518=l9_1513;
float l9_1519=l9_1514;
float l9_1520=fast::clamp(l9_1515,l9_1516,l9_1517);
float l9_1521=step(abs(l9_1515-l9_1520),9.9999997e-06);
l9_1519*=(l9_1521+((1.0-float(l9_1518))*(1.0-l9_1521)));
l9_1515=l9_1520;
l9_1511=l9_1515;
l9_1514=l9_1519;
}
l9_1457.y=l9_1511;
l9_1467=l9_1514;
float2 l9_1522=l9_1457;
int l9_1523=l9_1455;
int l9_1524=l9_1456;
float l9_1525=l9_1465;
float2 l9_1526=l9_1522;
int l9_1527=l9_1523;
int l9_1528=l9_1524;
float3 l9_1529=float3(0.0);
if (l9_1527==0)
{
l9_1529=float3(l9_1526,0.0);
}
else
{
if (l9_1527==1)
{
l9_1529=float3(l9_1526.x,(l9_1526.y*0.5)+(0.5-(float(l9_1528)*0.5)),0.0);
}
else
{
l9_1529=float3(l9_1526,float(l9_1528));
}
}
float3 l9_1530=l9_1529;
float3 l9_1531=l9_1530;
float4 l9_1532=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_1531.xy,bias(l9_1525));
float4 l9_1533=l9_1532;
if (l9_1463)
{
l9_1533=mix(l9_1464,l9_1533,float4(l9_1467));
}
float4 l9_1534=l9_1533;
l9_1448=l9_1534;
float l9_1535=0.0;
l9_1535=dot(l9_1448.xyz,float3(0.29899999,0.58700001,0.114));
l9_1443=l9_1535;
l9_1446=l9_1443;
}
else
{
float2 l9_1536=float2(0.0);
l9_1536=l9_1445.gScreenCoord;
float4 l9_1537=float4(0.0);
int l9_1538;
if ((int(Tweak_N52HasSwappedViews_tmp)!=0))
{
int l9_1539=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1539=0;
}
else
{
l9_1539=in.varStereoViewID;
}
int l9_1540=l9_1539;
l9_1538=1-l9_1540;
}
else
{
int l9_1541=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1541=0;
}
else
{
l9_1541=in.varStereoViewID;
}
int l9_1542=l9_1541;
l9_1538=l9_1542;
}
int l9_1543=l9_1538;
int l9_1544=Tweak_N52Layout_tmp;
int l9_1545=l9_1543;
float2 l9_1546=l9_1536;
bool l9_1547=(int(SC_USE_UV_TRANSFORM_Tweak_N52_tmp)!=0);
float3x3 l9_1548=(*sc_set0.UserUniforms).Tweak_N52Transform;
int2 l9_1549=int2(SC_SOFTWARE_WRAP_MODE_U_Tweak_N52_tmp,SC_SOFTWARE_WRAP_MODE_V_Tweak_N52_tmp);
bool l9_1550=(int(SC_USE_UV_MIN_MAX_Tweak_N52_tmp)!=0);
float4 l9_1551=(*sc_set0.UserUniforms).Tweak_N52UvMinMax;
bool l9_1552=(int(SC_USE_CLAMP_TO_BORDER_Tweak_N52_tmp)!=0);
float4 l9_1553=(*sc_set0.UserUniforms).Tweak_N52BorderColor;
float l9_1554=0.0;
bool l9_1555=l9_1552&&(!l9_1550);
float l9_1556=1.0;
float l9_1557=l9_1546.x;
int l9_1558=l9_1549.x;
if (l9_1558==1)
{
l9_1557=fract(l9_1557);
}
else
{
if (l9_1558==2)
{
float l9_1559=fract(l9_1557);
float l9_1560=l9_1557-l9_1559;
float l9_1561=step(0.25,fract(l9_1560*0.5));
l9_1557=mix(l9_1559,1.0-l9_1559,fast::clamp(l9_1561,0.0,1.0));
}
}
l9_1546.x=l9_1557;
float l9_1562=l9_1546.y;
int l9_1563=l9_1549.y;
if (l9_1563==1)
{
l9_1562=fract(l9_1562);
}
else
{
if (l9_1563==2)
{
float l9_1564=fract(l9_1562);
float l9_1565=l9_1562-l9_1564;
float l9_1566=step(0.25,fract(l9_1565*0.5));
l9_1562=mix(l9_1564,1.0-l9_1564,fast::clamp(l9_1566,0.0,1.0));
}
}
l9_1546.y=l9_1562;
if (l9_1550)
{
bool l9_1567=l9_1552;
bool l9_1568;
if (l9_1567)
{
l9_1568=l9_1549.x==3;
}
else
{
l9_1568=l9_1567;
}
float l9_1569=l9_1546.x;
float l9_1570=l9_1551.x;
float l9_1571=l9_1551.z;
bool l9_1572=l9_1568;
float l9_1573=l9_1556;
float l9_1574=fast::clamp(l9_1569,l9_1570,l9_1571);
float l9_1575=step(abs(l9_1569-l9_1574),9.9999997e-06);
l9_1573*=(l9_1575+((1.0-float(l9_1572))*(1.0-l9_1575)));
l9_1569=l9_1574;
l9_1546.x=l9_1569;
l9_1556=l9_1573;
bool l9_1576=l9_1552;
bool l9_1577;
if (l9_1576)
{
l9_1577=l9_1549.y==3;
}
else
{
l9_1577=l9_1576;
}
float l9_1578=l9_1546.y;
float l9_1579=l9_1551.y;
float l9_1580=l9_1551.w;
bool l9_1581=l9_1577;
float l9_1582=l9_1556;
float l9_1583=fast::clamp(l9_1578,l9_1579,l9_1580);
float l9_1584=step(abs(l9_1578-l9_1583),9.9999997e-06);
l9_1582*=(l9_1584+((1.0-float(l9_1581))*(1.0-l9_1584)));
l9_1578=l9_1583;
l9_1546.y=l9_1578;
l9_1556=l9_1582;
}
float2 l9_1585=l9_1546;
bool l9_1586=l9_1547;
float3x3 l9_1587=l9_1548;
if (l9_1586)
{
l9_1585=float2((l9_1587*float3(l9_1585,1.0)).xy);
}
float2 l9_1588=l9_1585;
l9_1546=l9_1588;
float l9_1589=l9_1546.x;
int l9_1590=l9_1549.x;
bool l9_1591=l9_1555;
float l9_1592=l9_1556;
if ((l9_1590==0)||(l9_1590==3))
{
float l9_1593=l9_1589;
float l9_1594=0.0;
float l9_1595=1.0;
bool l9_1596=l9_1591;
float l9_1597=l9_1592;
float l9_1598=fast::clamp(l9_1593,l9_1594,l9_1595);
float l9_1599=step(abs(l9_1593-l9_1598),9.9999997e-06);
l9_1597*=(l9_1599+((1.0-float(l9_1596))*(1.0-l9_1599)));
l9_1593=l9_1598;
l9_1589=l9_1593;
l9_1592=l9_1597;
}
l9_1546.x=l9_1589;
l9_1556=l9_1592;
float l9_1600=l9_1546.y;
int l9_1601=l9_1549.y;
bool l9_1602=l9_1555;
float l9_1603=l9_1556;
if ((l9_1601==0)||(l9_1601==3))
{
float l9_1604=l9_1600;
float l9_1605=0.0;
float l9_1606=1.0;
bool l9_1607=l9_1602;
float l9_1608=l9_1603;
float l9_1609=fast::clamp(l9_1604,l9_1605,l9_1606);
float l9_1610=step(abs(l9_1604-l9_1609),9.9999997e-06);
l9_1608*=(l9_1610+((1.0-float(l9_1607))*(1.0-l9_1610)));
l9_1604=l9_1609;
l9_1600=l9_1604;
l9_1603=l9_1608;
}
l9_1546.y=l9_1600;
l9_1556=l9_1603;
float2 l9_1611=l9_1546;
int l9_1612=l9_1544;
int l9_1613=l9_1545;
float l9_1614=l9_1554;
float2 l9_1615=l9_1611;
int l9_1616=l9_1612;
int l9_1617=l9_1613;
float3 l9_1618=float3(0.0);
if (l9_1616==0)
{
l9_1618=float3(l9_1615,0.0);
}
else
{
if (l9_1616==1)
{
l9_1618=float3(l9_1615.x,(l9_1615.y*0.5)+(0.5-(float(l9_1617)*0.5)),0.0);
}
else
{
l9_1618=float3(l9_1615,float(l9_1617));
}
}
float3 l9_1619=l9_1618;
float3 l9_1620=l9_1619;
float4 l9_1621=sc_set0.Tweak_N52.sample(sc_set0.Tweak_N52SmpSC,l9_1620.xy,bias(l9_1614));
float4 l9_1622=l9_1621;
if (l9_1552)
{
l9_1622=mix(l9_1553,l9_1622,float4(l9_1556));
}
float4 l9_1623=l9_1622;
l9_1537=l9_1623;
float l9_1624=0.0;
l9_1624=l9_1537.w;
l9_1444=l9_1624;
l9_1446=l9_1444;
}
l9_1442=l9_1446;
float4 l9_1625=float4(0.0);
l9_1625=float4(l9_1355.xyz.x,l9_1355.xyz.y,l9_1355.xyz.z,l9_1625.w);
l9_1625.w=l9_1442;
float4 l9_1626=float4(0.0);
float4 l9_1627=(*sc_set0.UserUniforms).Tweak_N58;
l9_1626=l9_1627;
float4 l9_1628=float4(0.0);
float4 l9_1629=(*sc_set0.UserUniforms).Tweak_N73;
l9_1628=l9_1629;
float2 l9_1630=float2(0.0);
l9_1630=param_5.gScreenCoord;
float2 l9_1631=float2(0.0);
float2 l9_1632=(*sc_set0.UserUniforms).Tweak_N27;
l9_1631=l9_1632;
float2 l9_1633=float2(0.0);
l9_1633=l9_1630*l9_1631;
float l9_1634=0.0;
float l9_1635=(*sc_set0.UserUniforms).Tweak_N26;
l9_1634=l9_1635;
float l9_1636=0.0;
l9_1636=param_5.gTimeElapsed*l9_1634;
float3 l9_1637=float3(0.0);
l9_1637=float3(l9_1633.x,l9_1633.y,l9_1637.z);
l9_1637.z=l9_1636;
float4 l9_1638=float4(0.0);
float3 l9_1639=l9_1637;
bool l9_1640=false;
float l9_1641=0.0;
float4 l9_1642;
if (l9_1640)
{
l9_1642=sc_set0.Tweak_N9.sample(sc_set0.Tweak_N9SmpSC,l9_1639,level(l9_1641));
}
else
{
l9_1642=sc_set0.Tweak_N9.sample(sc_set0.Tweak_N9SmpSC,l9_1639,bias(l9_1641));
}
float4 l9_1643=l9_1642;
l9_1638=l9_1643;
float l9_1644=0.0;
l9_1644=l9_1638.z;
float l9_1645=0.0;
float l9_1646=(*sc_set0.UserUniforms).Tweak_N12;
l9_1645=l9_1646;
float l9_1647=0.0;
l9_1647=mix((*sc_set0.UserUniforms).Port_Input0_N013,l9_1644,l9_1645);
float l9_1648=0.0;
l9_1648=fast::clamp(l9_1647+0.001,(*sc_set0.UserUniforms).Port_Input1_N030+0.001,(*sc_set0.UserUniforms).Port_Input2_N030+0.001)-0.001;
float4 l9_1649=float4(0.0);
l9_1649=mix(l9_1626,l9_1628,float4(l9_1648));
float l9_1650=0.0;
l9_1650=l9_1638.x;
float l9_1651=0.0;
float l9_1652=(*sc_set0.UserUniforms).Tweak_N41;
l9_1651=l9_1652;
float l9_1653=0.0;
l9_1653=mix((*sc_set0.UserUniforms).Port_Input0_N040,l9_1650,l9_1651);
float l9_1654=0.0;
l9_1654=fast::clamp(l9_1653+0.001,(*sc_set0.UserUniforms).Port_Input1_N044+0.001,(*sc_set0.UserUniforms).Port_Input2_N044+0.001)-0.001;
float l9_1655=0.0;
l9_1655=l9_1654*l9_1442;
float4 l9_1656=float4(0.0);
l9_1656=float4(l9_1649.xyz.x,l9_1649.xyz.y,l9_1649.xyz.z,l9_1656.w);
l9_1656.w=l9_1655;
float l9_1657=0.0;
float l9_1658;
if ((int(Tweak_N113_tmp)!=0))
{
l9_1658=1.001;
}
else
{
l9_1658=0.001;
}
l9_1658-=0.001;
l9_1657=l9_1658;
float4 l9_1659=float4(0.0);
l9_1659=mix(l9_1625,l9_1656,float4(l9_1657));
float4 l9_1660=float4(0.0);
float4 l9_1661=l9_1353;
float4 l9_1662=l9_1659;
float4 l9_1663;
l9_1663=float4(l9_1662.xyz.x,l9_1662.xyz.y,l9_1662.xyz.z,l9_1663.w);
float3 l9_1664=mix(l9_1661.xyz,l9_1663.xyz,float3(l9_1662.w));
l9_1663=float4(l9_1664.x,l9_1664.y,l9_1664.z,l9_1663.w);
l9_1663.w=l9_1661.w;
l9_1660=l9_1663;
float l9_1665=0.0;
l9_1665=mix(l9_1442,l9_1655,l9_1657);
float l9_1666=0.0;
float l9_1667=(*sc_set0.UserUniforms).Tweak_N38;
l9_1666=l9_1667;
float l9_1668=0.0;
l9_1668=l9_1665*l9_1666;
float l9_1669=0.0;
float4 l9_1670=l9_1353;
float l9_1671=l9_1670.w;
l9_1669=l9_1671;
float l9_1672=0.0;
l9_1672=l9_1668+l9_1669;
float4 l9_1673=float4(0.0);
l9_1673=float4(l9_1660.xyz.x,l9_1660.xyz.y,l9_1660.xyz.z,l9_1673.w);
l9_1673.w=l9_1672;
float4 l9_1674=float4(0.0);
l9_1674=float4(l9_1230.x,l9_1230.y,0.0,1.0);
float4 l9_1675=float4(0.0);
l9_1675=mix(l9_1673,l9_1674,float4((*sc_set0.UserUniforms).Port_Input2_N131));
param_2=l9_1675;
param_4=param_2;
}
else
{
param_4=param_3;
}
}
}
Result_N51=param_4;
float Time_N139=0.0;
Time_N139=Globals.gTimeElapsed*(*sc_set0.UserUniforms).Port_Multiplier_N139;
float Output_N140=0.0;
Output_N140=float(Time_N139>(*sc_set0.UserUniforms).Port_Input1_N140);
float4 Output_N141=float4(0.0);
Output_N141=Result_N51*float4(Output_N140);
FinalColor=Output_N141;
float param_6=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_6<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1676=gl_FragCoord;
float2 l9_1677=floor(mod(l9_1676.xy,float2(4.0)));
float l9_1678=(mod(dot(l9_1677,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_6<l9_1678)
{
discard_fragment();
}
}
float4 param_7=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_1679=param_7;
float4 l9_1680=l9_1679;
float l9_1681=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1681=l9_1680.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_1681=fast::clamp(l9_1680.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1681=fast::clamp(dot(l9_1680.xyz,float3(l9_1680.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_1681=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_1681=(1.0-dot(l9_1680.xyz,float3(0.33333001)))*l9_1680.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1681=(1.0-fast::clamp(dot(l9_1680.xyz,float3(1.0)),0.0,1.0))*l9_1680.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_1681=fast::clamp(dot(l9_1680.xyz,float3(1.0)),0.0,1.0)*l9_1680.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_1681=fast::clamp(dot(l9_1680.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1681=fast::clamp(dot(l9_1680.xyz,float3(1.0)),0.0,1.0)*l9_1680.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_1681=dot(l9_1680.xyz,float3(0.33333001))*l9_1680.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_1681=1.0-fast::clamp(dot(l9_1680.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_1681=fast::clamp(dot(l9_1680.xyz,float3(1.0)),0.0,1.0);
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
float l9_1682=l9_1681;
float l9_1683=l9_1682;
float l9_1684=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_1683;
float3 l9_1685=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1679.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_1686=float4(l9_1685.x,l9_1685.y,l9_1685.z,l9_1684);
param_7=l9_1686;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_7=float4(param_7.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_1687=param_7;
float4 l9_1688=float4(0.0);
float4 l9_1689=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1690=out.sc_FragData0;
l9_1689=l9_1690;
}
else
{
float4 l9_1691=gl_FragCoord;
float2 l9_1692=l9_1691.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1693=l9_1692;
float2 l9_1694=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1695=1;
int l9_1696=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1696=0;
}
else
{
l9_1696=in.varStereoViewID;
}
int l9_1697=l9_1696;
int l9_1698=l9_1697;
float3 l9_1699=float3(l9_1693,0.0);
int l9_1700=l9_1695;
int l9_1701=l9_1698;
if (l9_1700==1)
{
l9_1699.y=((2.0*l9_1699.y)+float(l9_1701))-1.0;
}
float2 l9_1702=l9_1699.xy;
l9_1694=l9_1702;
}
else
{
l9_1694=l9_1693;
}
float2 l9_1703=l9_1694;
float2 l9_1704=l9_1703;
float2 l9_1705=l9_1704;
float2 l9_1706=l9_1705;
float l9_1707=0.0;
int l9_1708;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1709=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1709=0;
}
else
{
l9_1709=in.varStereoViewID;
}
int l9_1710=l9_1709;
l9_1708=1-l9_1710;
}
else
{
int l9_1711=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1711=0;
}
else
{
l9_1711=in.varStereoViewID;
}
int l9_1712=l9_1711;
l9_1708=l9_1712;
}
int l9_1713=l9_1708;
float2 l9_1714=l9_1706;
int l9_1715=sc_ScreenTextureLayout_tmp;
int l9_1716=l9_1713;
float l9_1717=l9_1707;
float2 l9_1718=l9_1714;
int l9_1719=l9_1715;
int l9_1720=l9_1716;
float3 l9_1721=float3(0.0);
if (l9_1719==0)
{
l9_1721=float3(l9_1718,0.0);
}
else
{
if (l9_1719==1)
{
l9_1721=float3(l9_1718.x,(l9_1718.y*0.5)+(0.5-(float(l9_1720)*0.5)),0.0);
}
else
{
l9_1721=float3(l9_1718,float(l9_1720));
}
}
float3 l9_1722=l9_1721;
float3 l9_1723=l9_1722;
float4 l9_1724=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1723.xy,bias(l9_1717));
float4 l9_1725=l9_1724;
float4 l9_1726=l9_1725;
l9_1689=l9_1726;
}
float4 l9_1727=l9_1689;
float3 l9_1728=l9_1727.xyz;
float3 l9_1729=l9_1728;
float3 l9_1730=l9_1687.xyz;
float3 l9_1731=definedBlend(l9_1729,l9_1730,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_1688=float4(l9_1731.x,l9_1731.y,l9_1731.z,l9_1688.w);
float3 l9_1732=mix(l9_1728,l9_1688.xyz,float3(l9_1687.w));
l9_1688=float4(l9_1732.x,l9_1732.y,l9_1732.z,l9_1688.w);
l9_1688.w=1.0;
float4 l9_1733=l9_1688;
param_7=l9_1733;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_1734=float4(in.varScreenPos.xyz,1.0);
param_7=l9_1734;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_1735=gl_FragCoord;
float l9_1736=fast::clamp(abs(l9_1735.z),0.0,1.0);
float4 l9_1737=float4(l9_1736,1.0-l9_1736,1.0,1.0);
param_7=l9_1737;
}
else
{
float4 l9_1738=param_7;
float4 l9_1739=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1739=float4(mix(float3(1.0),l9_1738.xyz,float3(l9_1738.w)),l9_1738.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_1740=l9_1738.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1740=fast::clamp(l9_1740,0.0,1.0);
}
l9_1739=float4(l9_1738.xyz*l9_1740,l9_1740);
}
else
{
l9_1739=l9_1738;
}
}
float4 l9_1741=l9_1739;
param_7=l9_1741;
}
}
}
}
}
float4 l9_1742=param_7;
FinalColor=l9_1742;
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
float4 l9_1743=float4(0.0);
l9_1743=float4(0.0);
float4 l9_1744=l9_1743;
float4 Cost=l9_1744;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_8=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_8,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_9=FinalColor;
float4 l9_1745=param_9;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1745.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_1745;
return out;
}
} // FRAGMENT SHADER
