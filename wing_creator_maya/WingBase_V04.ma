//Maya ASCII 2014 scene
//Name: WingBase_V04.ma
//Last modified: Wed, Jul 02, 2014 02:49:42 AM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.9 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.391176061679225 142.48860230981745 -45.964319697004413 ;
	setAttr ".r" -type "double3" -69.938352729700696 -182.99999999998886 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 147.15856196502986;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.11024379730224609 0.0044402810744941235 -11.096898078918457 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.133579633634415 103.17639259405911 11.260706552337638 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 107.07690993570431;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.96785341200254 0.15364291593507762 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 44.628459830193989;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 2.6467554460713387 -7.9096400533849884 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 26.21878527665173;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "R_Wing_4";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -29.824237138894638 19.75822717700574 4.8782821333638964 ;
createNode locator -n "R_Wing_4Shape" -p "R_Wing_4";
	setAttr -k off ".v";
createNode transform -n "R_Wing_3";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -26.089396466555964 19.75822717700574 3.8210322421790508 ;
createNode locator -n "R_Wing_Shape3" -p "R_Wing_3";
	setAttr -k off ".v";
createNode transform -n "R_Wing_2";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.250441615785984 19.75822717700574 -0.91829212051759956 ;
createNode locator -n "R_Wing_Shape2" -p "R_Wing_2";
	setAttr -k off ".v";
createNode transform -n "R_Wing_1";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.8033137327715973 19.75822717700574 0 ;
createNode locator -n "R_Wing_Shape1" -p "R_Wing_1";
	setAttr -k off ".v";
createNode transform -n "L_Wing_4";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 29.824237138894642 19.75822717700574 4.8782821333639017 ;
createNode locator -n "L_Wing_Shape4" -p "L_Wing_4";
	setAttr -k off ".v";
createNode transform -n "L_Wing_3";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 26.089396466555964 19.75822717700574 3.8210322421790544 ;
createNode locator -n "L_Wing_Shape3" -p "L_Wing_3";
	setAttr -k off ".v";
createNode transform -n "L_Wing_2";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.250441615785986 19.75822717700574 -0.91829212051759779 ;
createNode locator -n "L_Wing_Shape2" -p "L_Wing_2";
	setAttr -k off ".v";
createNode transform -n "L_Wing_1";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.8033137327715962 19.75822717700574 0 ;
createNode locator -n "L_Wing_Shape1" -p "L_Wing_1";
	setAttr -k off ".v";
createNode transform -n "R_Primaries_BLND";
	setAttr ".v" no;
	setAttr ".ove" yes;
createNode mesh -n "R_Primaries_BLNDShape" -p "R_Primaries_BLND";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1 0.3179487 0.44448009 0.27252746 0.44448009 0.22710621
		 0.44448009 0.18168497 0.44448009 0.13626373 0.44448009 0.090842485 0.44448009 0.045421243
		 0.44448009 0 0.44448009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 74 ".pt[0:73]" -type "float3"  2.2402134 3.2750077 -30.936836 
		1.1368339 4.152669 -33.631172 -0.13230348 4.9447947 -36.168266 -1.3039637 5.4630933 
		-37.449665 -2.3688269 5.6938996 -38.17997 -3.4207196 5.8378949 -38.514858 -3.939374 
		5.713623 -38.080059 -3.9167833 4.3245745 -33.852287 2.4239354 1.8576765 -28.136524 
		1.6162038 2.2415895 -28.335732 0.55378461 2.4689381 -28.487417 -1.0025988 2.6908541 
		-28.611879 -1.9492841 2.7596273 -28.541956 -2.4661665 2.7311978 -28.368652 -2.8262439 
		2.6342783 -28.155912 -3.3849282 2.3546789 -27.707088 3.0072865 1.2201192 -23.616465 
		1.9269643 1.3208088 -24.382006 0.68851209 1.3698826 -24.674194 -0.69691038 1.409662 
		-24.62845 -1.6129217 1.3558217 -24.289818 -2.2871532 1.3224188 -24.046381 -2.7222123 
		1.290345 -23.787016 -3.1164432 1.2391906 -23.459042 3.4769089 0.62912863 -19.341213 
		2.4109058 0.63990098 -19.485456 1.0510721 0.65265805 -19.664482 -0.37743735 0.66484743 
		-19.725588 -1.3201153 0.6748274 -19.776409 -2.1591654 0.65948159 -19.529182 -2.585108 
		0.65711445 -19.461428 -3.1387167 0.63285577 -19.166845 3.8203602 0.1145042 -13.530834 
		2.6074972 0.098806851 -13.204984 1.2886617 0.10807891 -13.228547 -0.3917259 0.12166576 
		-13.340816 -1.4024389 0.13502249 -13.492582 -2.2588694 0.15468638 -13.756795 -3.0767291 
		0.16767924 -13.949059 -3.8030758 0.18742178 -14.234387 3.8745046 -8.7630662e-016 
		-8.7739019 2.5850194 -1.0459168e-015 -8.0536518 1.3837216 -1.1183603e-015 -7.7995377 
		-0.17294508 -1.2109293e-015 -7.7228661 -1.1818465 -1.2675744e-015 -7.8854465 -2.1598346 
		-1.3272025e-015 -7.9887676 -2.9984617 -1.3747681e-015 -8.3936195 -3.8472319 -1.4214426e-015 
		-9.0872116 4.0348687 -1.6382074e-015 -2.7117214 2.9482799 -1.7077893e-015 -1.6965628 
		1.4992819 -1.795413e-015 -1.343071 0.29092395 -1.8679308e-015 -1.1554089 -0.72044492 
		-1.9274298e-015 -1.2301397 -1.4729061 -1.9722264e-015 -1.1832485 -2.1454899 -2.0080688e-015 
		-1.9542999 -3.0946729 -2.0575413e-015 -3.2572727 3.9338474 -2.2169334e-015 2.7393093 
		3.4003644 -2.2627937e-015 5.5023928 2.1966364 -2.3390559e-015 6.4679527 1.0508971 
		-2.4084575e-015 6.7701797 0.52333057 -2.4401791e-015 6.8637238 0.16466177 -2.4597949e-015 
		6.5498028 -0.62183118 -2.5002143e-015 5.3590765 -1.8226955 -2.5551111e-015 2.2211294 
		1.8784232 -2.944111e-015 14.526607 1.6794732 -2.9558911e-015 14.526585 -3.5854015 
		0.55751395 -18.197027 -2.8622484 0.57673061 -18.40295 -2.2758687 0.58476996 -18.479258 
		-1.394459 0.58037579 -18.541498 -0.40692532 0.5702883 -18.478363 1.0780433 0.54746073 
		-18.342844 2.3748026 0.53982824 -18.231499 3.5659399 0.52443445 -18.114759;
	setAttr -s 74 ".vt[0:73]"  -0.0094957352 -1.4770949e-015 6.50952053
		 0.7861191 -1.4770949e-015 7.75753355 1.61195099 -1.4770949e-015 9.051578522 2.2999692 -1.4770949e-015 9.67081261
		 2.90392256 -1.4770949e-015 9.99205208 3.47217774 -1.4770949e-015 10.11127758 3.7083745 -1.4770949e-015 9.86260891
		 3.38668871 -1.4770949e-015 7.69696426 -0.26387048 0.33452421 5.4463377 0.12830138 0.047592334 5.46273422
		 0.68800294 -0.11036661 5.48361826 1.50097513 -0.25668812 5.46559048 1.98510957 -0.31831133 5.38218403
		 2.23982382 -0.32200474 5.26943493 2.41072059 -0.27199578 5.14512062 2.66742635 -0.09683793 4.89316654
		 -0.91461778 -9.0415748e-016 3.18321991 -0.34092736 -9.0415748e-016 3.65915799 0.38672197 -9.0415748e-016 3.81020069
		 1.07571578 -9.0415748e-016 3.65004563 1.51383734 -9.0415748e-016 3.46627045 1.82527637 -9.0415748e-016 3.31890583
		 2.074155092 -9.0415748e-016 3.1517868 2.27956557 -9.0415748e-016 2.97094011 -1.51399767 -2.9994027e-016 1.019764066
		 -0.90298945 -2.9994027e-016 1.092059612 -0.10740328 -2.9994027e-016 1.18588281 0.63303745 -2.9994027e-016 1.16557479
		 1.1413008 -2.9994027e-016 1.14974451 1.5641942 -2.9994027e-016 1.005010128 1.83123505 -2.9994027e-016 0.95306319
		 2.14668608 -2.9994027e-016 0.82050169 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425
		 -0.42216098 2.9994008e-016 -1.59755349 0.45052832 2.9994008e-016 -1.60273862 0.97899425 2.9994008e-016 -1.56643605
		 1.43253338 2.9994008e-016 -1.47220886 1.81606114 2.9994008e-016 -1.39226115 2.16074085 2.9994008e-016 -1.27759826
		 -1.964432 5.5511151e-016 -3.57756162 -1.32878935 5.9988033e-016 -3.95787001 -0.7190367 5.9988033e-016 -4.11776543
		 0.081746131 5.9988033e-016 -4.20716143 0.6281051 5.9988033e-016 -4.12780094 1.11919343 5.9988033e-016 -4.15162945
		 1.56941748 5.9988033e-016 -3.99173403 2.037061214 5.9988033e-016 -3.69754004 -2.26517224 9.2746635e-016 -6.41356087
		 -1.74676299 9.2746635e-016 -6.92440128 -1.01326704 9.2746635e-016 -7.13917637 -0.39706224 9.2746635e-016 -7.26832867
		 0.1284605 9.2746635e-016 -7.26832867 0.51513004 9.2746635e-016 -7.31612492 0.8950392 9.2746635e-016 -6.97973824
		 1.44024837 9.2746635e-016 -6.40482998 -2.44290066 1.1997609e-015 -8.95901394 -2.28389573 1.1997609e-015 -10.26590443
		 -1.70289433 1.1997609e-015 -10.75765419 -1.12386394 1.1997609e-015 -10.93807411 -0.85532278 1.1997609e-015 -10.99987411
		 -0.65683001 1.1997609e-015 -10.86584473 -0.20038545 1.1997609e-015 -10.33767414 0.55221117 1.1997609e-015 -8.91574001
		 -1.87842345 1.4720555e-015 -14.52660561 -1.77566493 1.4720555e-015 -14.53345108 2.14981174 -1.6652662e-016 0.35388336
		 1.82786036 -1.6652662e-016 0.43146202 1.53491271 -1.6652662e-016 0.45407557 1.10520375 -1.6652662e-016 0.54566479
		 0.59244734 -1.6652662e-016 0.54990065 -0.17740554 -1.6652662e-016 0.56684542 -0.96069199 -1.6652662e-016 0.50647402
		 -1.58088636 -1.6652662e-016 0.49254736;
	setAttr -s 130 ".ed[0:129]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 73 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 72 1 26 71 1 27 70 1 28 69 1 29 68 1 30 67 1 31 66 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0 66 39 0 67 38 1 66 67 0 68 37 1
		 67 68 0 69 36 1 68 69 0 70 35 1 69 70 0 71 34 1 70 71 0 72 33 1 71 72 0 73 32 0 72 73 0;
	setAttr -s 57 -ch 228 ".fc[0:56]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 129 -47 45
		mu 0 4 25 72 73 24
		f 4 54 127 -54 47
		mu 0 4 26 71 72 25
		f 4 55 125 -55 48
		mu 0 4 27 70 71 26
		f 4 56 123 -56 49
		mu 0 4 28 69 70 27
		f 4 57 121 -57 50
		mu 0 4 29 68 69 28
		f 4 58 119 -58 51
		mu 0 4 30 67 68 29
		f 4 59 117 -59 52
		mu 0 4 31 66 67 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64
		f 4 115 -73 -117 -118
		mu 0 4 66 39 38 67
		f 4 -120 116 -71 -119
		mu 0 4 68 67 38 37
		f 4 -122 118 -69 -121
		mu 0 4 69 68 37 36
		f 4 -124 120 -67 -123
		mu 0 4 70 69 36 35
		f 4 -126 122 -65 -125
		mu 0 4 71 70 35 34
		f 4 -128 124 -63 -127
		mu 0 4 72 71 34 33
		f 4 -130 126 -61 -129
		mu 0 4 73 72 33 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode mesh -n "WingBase13:WingBase08:polySurfaceShape1" -p "R_Primaries_BLND";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 64 ".pt";
	setAttr ".pt[0]" -type "float3" 1.9874253 2.2606103e-017 0.063231543 ;
	setAttr ".pt[1]" -type "float3" 2.2588956 2.2606103e-017 0.052708391 ;
	setAttr ".pt[2]" -type "float3" 2.4711726 2.2606103e-017 0.94701445 ;
	setAttr ".pt[3]" -type "float3" 2.5456355 2.2606103e-017 1.3258719 ;
	setAttr ".pt[4]" -type "float3" 2.5360339 2.2606103e-017 1.6471121 ;
	setAttr ".pt[5]" -type "float3" 2.4907341 2.2606103e-017 2.0067141 ;
	setAttr ".pt[6]" -type "float3" 2.1133757 2.2606103e-017 2.1577842 ;
	setAttr ".pt[7]" -type "float3" 1.3663865 2.2606103e-017 1.250675 ;
	setAttr ".pt[8]" -type "float3" 1.7236203 0.33452421 0.043094877 ;
	setAttr ".pt[9]" -type "float3" 1.5022372 0.047592334 -0.7011255 ;
	setAttr ".pt[10]" -type "float3" 1.4483837 -0.11036661 -1.0000328 ;
	setAttr ".pt[11]" -type "float3" 1.6478009 -0.25668812 -1.2103611 ;
	setAttr ".pt[12]" -type "float3" 1.5183802 -0.31831133 -1.2937673 ;
	setAttr ".pt[13]" -type "float3" 1.1595395 -0.32200474 -1.214216 ;
	setAttr ".pt[14]" -type "float3" 0.7168811 -0.27199578 -1.0187392 ;
	setAttr ".pt[15]" -type "float3" 0.36003214 -0.09683793 -0.51007628 ;
	setAttr ".pt[16]" -type "float3" 1.0234526 -4.3368087e-018 -0.86921209 ;
	setAttr ".pt[17]" -type "float3" 0.9835881 -4.3368087e-018 -0.96373719 ;
	setAttr ".pt[18]" -type "float3" 1.0976825 -4.3368087e-018 -1.0525374 ;
	setAttr ".pt[19]" -type "float3" 1.173121 -4.3368087e-018 -1.3569186 ;
	setAttr ".pt[20]" -type "float3" 0.99768752 -4.3368087e-018 -1.5406936 ;
	setAttr ".pt[21]" -type "float3" 0.69557184 -4.3368087e-018 -1.5438324 ;
	setAttr ".pt[22]" -type "float3" 0.33089522 -4.3368087e-018 -1.4711084 ;
	setAttr ".pt[23]" -type "float3" -0.077248998 -4.3368087e-018 -1.0814919 ;
	setAttr ".pt[24]" -type "float3" 0.32523215 0 -0.33104685 ;
	setAttr ".pt[25]" -type "float3" 0.32268542 0 -0.44890565 ;
	setAttr ".pt[26]" -type "float3" 0.50471616 0 -0.43503004 ;
	setAttr ".pt[27]" -type "float3" 0.63160187 0 -0.50341338 ;
	setAttr ".pt[28]" -type "float3" 0.52631027 0 -0.51924366 ;
	setAttr ".pt[29]" -type "float3" 0.33564872 0 -0.61590284 ;
	setAttr ".pt[30]" -type "float3" -0.010865623 0 -0.58790201 ;
	setAttr ".pt[31]" -type "float3" -0.30896932 0 -0.5303092 ;
	setAttr ".pt[34]" -type "float3" 0.20445466 0 0.023358503 ;
	setAttr ".pt[35]" -type "float3" 0.46358877 0 0.066248357 ;
	setAttr ".pt[36]" -type "float3" 0.37849954 0 0.10255097 ;
	setAttr ".pt[37]" -type "float3" 0.21848373 0 0.14870311 ;
	setAttr ".pt[38]" -type "float3" 0.06618429 0 0.14870311 ;
	setAttr ".pt[39]" -type "float3" -0.17159951 0 0.073211774 ;
	setAttr ".pt[40]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[41]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[42]" -type "float3" 0.073391467 0 -0.48536921 ;
	setAttr ".pt[43]" -type "float3" 0.34665176 0 -0.47861463 ;
	setAttr ".pt[44]" -type "float3" 0.31616399 0 -0.39925453 ;
	setAttr ".pt[45]" -type "float3" 0.23040554 0 -0.51923311 ;
	setAttr ".pt[46]" -type "float3" -0.082071841 0 -0.51923311 ;
	setAttr ".pt[47]" -type "float3" -0.1912747 0 -0.60534769 ;
	setAttr ".pt[48]" -type "float3" -0.28987256 0 -1.1321654 ;
	setAttr ".pt[49]" -type "float3" -0.27032751 0 -1.1321654 ;
	setAttr ".pt[50]" -type "float3" -0.086260021 0 -1.1321654 ;
	setAttr ".pt[51]" -type "float3" -0.06320253 0 -1.1321654 ;
	setAttr ".pt[52]" -type "float3" -0.043389313 0 -1.1321654 ;
	setAttr ".pt[53]" -type "float3" -0.2061483 0 -1.3091137 ;
	setAttr ".pt[54]" -type "float3" -0.37566766 0 -1.1875025 ;
	setAttr ".pt[55]" -type "float3" -0.40516874 0 -1.1234348 ;
	setAttr ".pt[56]" -type "float3" -0.4800241 0 -1.9391041 ;
	setAttr ".pt[57]" -type "float3" -0.75982416 0 -2.3486667 ;
	setAttr ".pt[58]" -type "float3" -0.55811727 0 -2.4394729 ;
	setAttr ".pt[59]" -type "float3" -0.31185782 0 -2.4682579 ;
	setAttr ".pt[60]" -type "float3" -0.48212141 0 -2.5300581 ;
	setAttr ".pt[61]" -type "float3" -0.82846773 0 -2.5568497 ;
	setAttr ".pt[62]" -type "float3" -0.87033874 0 -2.509702 ;
	setAttr ".pt[63]" -type "float3" -0.58182883 0 -1.8958303 ;
	setAttr ".pt[64]" -type "float3" -0.2799415 0 -2.439218 ;
	setAttr ".pt[65]" -type "float3" -0.27634692 0 -2.4460645 ;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 1 57 58 1 58 59 1
		 59 60 1 59 64 1 60 61 1 60 65 1 61 62 1 62 63 1 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_Primaries_BLND";
	setAttr ".v" no;
	setAttr ".ove" yes;
createNode mesh -n "L_Primaries_BLNDShape" -p "L_Primaries_BLND";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1 0.3179487 0.44448009 0.27252746 0.44448009 0.22710621
		 0.44448009 0.18168497 0.44448009 0.13626373 0.44448009 0.090842485 0.44448009 0.045421243
		 0.44448009 0 0.44448009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 74 ".pt[0:73]" -type "float3"  -2.2212219 3.20909 -30.838005 
		-2.7090721 4.1030722 -33.537369 -3.0915985 4.9265137 -36.078812 -3.2959747 5.3651495 
		-37.362507 -3.4390182 5.6361313 -38.094231 -3.5236359 5.778996 -38.429886 -3.477375 
		5.6557035 -37.994446 -2.8565941 4.2896752 -33.759464 -1.8961945 2.0850244 -28.519228 
		-1.8728065 2.4756489 -28.714705 -1.9297905 2.7078011 -28.863726 -1.9993515 2.9349511 
		-28.985292 -2.0209351 3.0042198 -28.915091 -2.0134811 2.9735646 -28.743021 -1.9951973 
		2.8734002 -28.532084 -1.9499245 2.5865691 -28.087267 -1.178051 1.2271783 -23.614223 
		-1.2451096 1.3207346 -24.382141 -1.461956 1.3663328 -24.675499 -1.4545212 1.4032929 
		-24.630692 -1.414753 1.3532674 -24.290792 -1.3633995 1.3222324 -24.046572 -1.4260979 
		1.2924278 -23.786427 -1.442688 1.2448977 -23.457243 -0.44891357 0.62735373 -19.339415 
		-0.60492706 0.64185047 -19.483004 -0.83626556 0.65901679 -19.661243 -0.88863754 0.67542022 
		-19.721607 -0.96248627 0.68885082 -19.771826 -0.96922302 0.6681999 -19.525536 -1.0773621 
		0.66501427 -19.45792 -1.1546555 0.6323694 -19.164818 -0.1908493 0.11627466 -13.529473 
		-0.28261185 0.10968672 -13.20288 -0.44433975 0.11357801 -13.226882 -0.50933075 0.11928036 
		-13.339795 -0.55554962 0.12488595 -13.492195 -0.60619736 0.13313869 -13.757342 -0.55539322 
		0.13859165 -13.950225 -0.51840591 0.14687733 -14.236491 0.054359436 -1.3441394e-015 
		-8.7739019 0.072559357 -1.3536045e-015 -8.0536518 0.054351807 -1.281161e-015 -7.7995377 
		0.0094528198 -1.188592e-015 -7.7228661 -0.074363708 -1.1319469e-015 -7.8854465 -0.078552246 
		-1.0723188e-015 -7.9887676 -0.14037323 -1.0247532e-015 -8.3936195 -0.22689056 -9.7807869e-016 
		-9.0872116 0.49547577 -2.0716579e-015 -2.7117214 0.54524612 -2.0020761e-015 -1.6965628 
		0.5272522 -1.9144524e-015 -1.343071 0.50320053 -1.8419346e-015 -1.1554089 0.46352386 
		-1.7824356e-015 -1.2301397 0.44264603 -1.737639e-015 -1.1832485 0.35541153 -1.7017967e-015 
		-1.9542999 0.21417618 -1.6523241e-015 -3.2572727 0.95195389 -2.5821101e-015 2.7393093 
		1.1674271 -2.5362498e-015 5.5023928 1.2091522 -2.4599876e-015 6.4679527 1.1968307 
		-2.390586e-015 6.7701797 1.187315 -2.3588644e-015 6.8637238 1.1489983 -2.3392486e-015 
		6.5498028 1.0226021 -2.2988292e-015 5.3590765 0.71827316 -2.2439324e-015 2.2211294 
		1.8784237 -2.944111e-015 14.526607 1.8718567 -2.9323309e-015 14.526585 -0.71422195 
		0.5309816 -18.1996 -0.79347229 0.55684131 -18.40435 -0.79395676 0.56766039 -18.480165 
		-0.81594849 0.56174594 -18.542669 -0.77796936 0.54817176 -18.480152 -0.72323227 0.5174526 
		-18.346024 -0.45341873 0.50718135 -18.235146 -0.40416718 0.48646608 -18.119343;
	setAttr -s 74 ".vt[0:73]"  -0.0094957352 -1.4770949e-015 6.50952053
		 0.7861191 -1.4770949e-015 7.75753355 1.61195099 -1.4770949e-015 9.051578522 2.2999692 -1.4770949e-015 9.67081261
		 2.90392256 -1.4770949e-015 9.99205208 3.47217774 -1.4770949e-015 10.11127758 3.7083745 -1.4770949e-015 9.86260891
		 3.38668871 -1.4770949e-015 7.69696426 -0.26387048 0.33452421 5.4463377 0.12830138 0.047592334 5.46273422
		 0.68800294 -0.11036661 5.48361826 1.50097513 -0.25668812 5.46559048 1.98510957 -0.31831133 5.38218403
		 2.23982382 -0.32200474 5.26943493 2.41072059 -0.27199578 5.14512062 2.66742635 -0.09683793 4.89316654
		 -0.91461778 -9.0415748e-016 3.18321991 -0.34092736 -9.0415748e-016 3.65915799 0.38672197 -9.0415748e-016 3.81020069
		 1.07571578 -9.0415748e-016 3.65004563 1.51383734 -9.0415748e-016 3.46627045 1.82527637 -9.0415748e-016 3.31890583
		 2.074155092 -9.0415748e-016 3.1517868 2.27956557 -9.0415748e-016 2.97094011 -1.51399767 -2.9994027e-016 1.019764066
		 -0.90298945 -2.9994027e-016 1.092059612 -0.10740328 -2.9994027e-016 1.18588281 0.63303745 -2.9994027e-016 1.16557479
		 1.1413008 -2.9994027e-016 1.14974451 1.5641942 -2.9994027e-016 1.005010128 1.83123505 -2.9994027e-016 0.95306319
		 2.14668608 -2.9994027e-016 0.82050169 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425
		 -0.42216098 2.9994008e-016 -1.59755349 0.45052832 2.9994008e-016 -1.60273862 0.97899425 2.9994008e-016 -1.56643605
		 1.43253338 2.9994008e-016 -1.47220886 1.81606114 2.9994008e-016 -1.39226115 2.16074085 2.9994008e-016 -1.27759826
		 -1.964432 5.5511151e-016 -3.57756162 -1.32878935 5.9988033e-016 -3.95787001 -0.7190367 5.9988033e-016 -4.11776543
		 0.081746131 5.9988033e-016 -4.20716143 0.6281051 5.9988033e-016 -4.12780094 1.11919343 5.9988033e-016 -4.15162945
		 1.56941748 5.9988033e-016 -3.99173403 2.037061214 5.9988033e-016 -3.69754004 -2.26517224 9.2746635e-016 -6.41356087
		 -1.74676299 9.2746635e-016 -6.92440128 -1.01326704 9.2746635e-016 -7.13917637 -0.39706224 9.2746635e-016 -7.26832867
		 0.1284605 9.2746635e-016 -7.26832867 0.51513004 9.2746635e-016 -7.31612492 0.8950392 9.2746635e-016 -6.97973824
		 1.44024837 9.2746635e-016 -6.40482998 -2.44290066 1.1997609e-015 -8.95901394 -2.28389573 1.1997609e-015 -10.26590443
		 -1.70289433 1.1997609e-015 -10.75765419 -1.12386394 1.1997609e-015 -10.93807411 -0.85532278 1.1997609e-015 -10.99987411
		 -0.65683001 1.1997609e-015 -10.86584473 -0.20038545 1.1997609e-015 -10.33767414 0.55221117 1.1997609e-015 -8.91574001
		 -1.87842345 1.4720555e-015 -14.52660561 -1.77566493 1.4720555e-015 -14.53345108 2.14981174 -1.6652662e-016 0.35388336
		 1.82786036 -1.6652662e-016 0.43146202 1.53491271 -1.6652662e-016 0.45407557 1.10520375 -1.6652662e-016 0.54566479
		 0.59244734 -1.6652662e-016 0.54990065 -0.17740554 -1.6652662e-016 0.56684542 -0.96069199 -1.6652662e-016 0.50647402
		 -1.58088636 -1.6652662e-016 0.49254736;
	setAttr -s 130 ".ed[0:129]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 73 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 72 1 26 71 1 27 70 1 28 69 1 29 68 1 30 67 1 31 66 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0 66 39 0 67 38 1 66 67 0 68 37 1
		 67 68 0 69 36 1 68 69 0 70 35 1 69 70 0 71 34 1 70 71 0 72 33 1 71 72 0 73 32 0 72 73 0;
	setAttr -s 57 -ch 228 ".fc[0:56]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 129 -47 45
		mu 0 4 25 72 73 24
		f 4 54 127 -54 47
		mu 0 4 26 71 72 25
		f 4 55 125 -55 48
		mu 0 4 27 70 71 26
		f 4 56 123 -56 49
		mu 0 4 28 69 70 27
		f 4 57 121 -57 50
		mu 0 4 29 68 69 28
		f 4 58 119 -58 51
		mu 0 4 30 67 68 29
		f 4 59 117 -59 52
		mu 0 4 31 66 67 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64
		f 4 115 -73 -117 -118
		mu 0 4 66 39 38 67
		f 4 -120 116 -71 -119
		mu 0 4 68 67 38 37
		f 4 -122 118 -69 -121
		mu 0 4 69 68 37 36
		f 4 -124 120 -67 -123
		mu 0 4 70 69 36 35
		f 4 -126 122 -65 -125
		mu 0 4 71 70 35 34
		f 4 -128 124 -63 -127
		mu 0 4 72 71 34 33
		f 4 -130 126 -61 -129
		mu 0 4 73 72 33 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode mesh -n "polySurfaceShape1" -p "L_Primaries_BLND";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 64 ".pt";
	setAttr ".pt[0]" -type "float3" 1.9874253 2.2606103e-017 0.063231543 ;
	setAttr ".pt[1]" -type "float3" 2.2588956 2.2606103e-017 0.052708391 ;
	setAttr ".pt[2]" -type "float3" 2.4711726 2.2606103e-017 0.94701445 ;
	setAttr ".pt[3]" -type "float3" 2.5456355 2.2606103e-017 1.3258719 ;
	setAttr ".pt[4]" -type "float3" 2.5360339 2.2606103e-017 1.6471121 ;
	setAttr ".pt[5]" -type "float3" 2.4907341 2.2606103e-017 2.0067141 ;
	setAttr ".pt[6]" -type "float3" 2.1133757 2.2606103e-017 2.1577842 ;
	setAttr ".pt[7]" -type "float3" 1.3663865 2.2606103e-017 1.250675 ;
	setAttr ".pt[8]" -type "float3" 1.7236203 0.33452421 0.043094877 ;
	setAttr ".pt[9]" -type "float3" 1.5022372 0.047592334 -0.7011255 ;
	setAttr ".pt[10]" -type "float3" 1.4483837 -0.11036661 -1.0000328 ;
	setAttr ".pt[11]" -type "float3" 1.6478009 -0.25668812 -1.2103611 ;
	setAttr ".pt[12]" -type "float3" 1.5183802 -0.31831133 -1.2937673 ;
	setAttr ".pt[13]" -type "float3" 1.1595395 -0.32200474 -1.214216 ;
	setAttr ".pt[14]" -type "float3" 0.7168811 -0.27199578 -1.0187392 ;
	setAttr ".pt[15]" -type "float3" 0.36003214 -0.09683793 -0.51007628 ;
	setAttr ".pt[16]" -type "float3" 1.0234526 -4.3368087e-018 -0.86921209 ;
	setAttr ".pt[17]" -type "float3" 0.9835881 -4.3368087e-018 -0.96373719 ;
	setAttr ".pt[18]" -type "float3" 1.0976825 -4.3368087e-018 -1.0525374 ;
	setAttr ".pt[19]" -type "float3" 1.173121 -4.3368087e-018 -1.3569186 ;
	setAttr ".pt[20]" -type "float3" 0.99768752 -4.3368087e-018 -1.5406936 ;
	setAttr ".pt[21]" -type "float3" 0.69557184 -4.3368087e-018 -1.5438324 ;
	setAttr ".pt[22]" -type "float3" 0.33089522 -4.3368087e-018 -1.4711084 ;
	setAttr ".pt[23]" -type "float3" -0.077248998 -4.3368087e-018 -1.0814919 ;
	setAttr ".pt[24]" -type "float3" 0.32523215 0 -0.33104685 ;
	setAttr ".pt[25]" -type "float3" 0.32268542 0 -0.44890565 ;
	setAttr ".pt[26]" -type "float3" 0.50471616 0 -0.43503004 ;
	setAttr ".pt[27]" -type "float3" 0.63160187 0 -0.50341338 ;
	setAttr ".pt[28]" -type "float3" 0.52631027 0 -0.51924366 ;
	setAttr ".pt[29]" -type "float3" 0.33564872 0 -0.61590284 ;
	setAttr ".pt[30]" -type "float3" -0.010865623 0 -0.58790201 ;
	setAttr ".pt[31]" -type "float3" -0.30896932 0 -0.5303092 ;
	setAttr ".pt[34]" -type "float3" 0.20445466 0 0.023358503 ;
	setAttr ".pt[35]" -type "float3" 0.46358877 0 0.066248357 ;
	setAttr ".pt[36]" -type "float3" 0.37849954 0 0.10255097 ;
	setAttr ".pt[37]" -type "float3" 0.21848373 0 0.14870311 ;
	setAttr ".pt[38]" -type "float3" 0.06618429 0 0.14870311 ;
	setAttr ".pt[39]" -type "float3" -0.17159951 0 0.073211774 ;
	setAttr ".pt[40]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[41]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[42]" -type "float3" 0.073391467 0 -0.48536921 ;
	setAttr ".pt[43]" -type "float3" 0.34665176 0 -0.47861463 ;
	setAttr ".pt[44]" -type "float3" 0.31616399 0 -0.39925453 ;
	setAttr ".pt[45]" -type "float3" 0.23040554 0 -0.51923311 ;
	setAttr ".pt[46]" -type "float3" -0.082071841 0 -0.51923311 ;
	setAttr ".pt[47]" -type "float3" -0.1912747 0 -0.60534769 ;
	setAttr ".pt[48]" -type "float3" -0.28987256 0 -1.1321654 ;
	setAttr ".pt[49]" -type "float3" -0.27032751 0 -1.1321654 ;
	setAttr ".pt[50]" -type "float3" -0.086260021 0 -1.1321654 ;
	setAttr ".pt[51]" -type "float3" -0.06320253 0 -1.1321654 ;
	setAttr ".pt[52]" -type "float3" -0.043389313 0 -1.1321654 ;
	setAttr ".pt[53]" -type "float3" -0.2061483 0 -1.3091137 ;
	setAttr ".pt[54]" -type "float3" -0.37566766 0 -1.1875025 ;
	setAttr ".pt[55]" -type "float3" -0.40516874 0 -1.1234348 ;
	setAttr ".pt[56]" -type "float3" -0.4800241 0 -1.9391041 ;
	setAttr ".pt[57]" -type "float3" -0.75982416 0 -2.3486667 ;
	setAttr ".pt[58]" -type "float3" -0.55811727 0 -2.4394729 ;
	setAttr ".pt[59]" -type "float3" -0.31185782 0 -2.4682579 ;
	setAttr ".pt[60]" -type "float3" -0.48212141 0 -2.5300581 ;
	setAttr ".pt[61]" -type "float3" -0.82846773 0 -2.5568497 ;
	setAttr ".pt[62]" -type "float3" -0.87033874 0 -2.509702 ;
	setAttr ".pt[63]" -type "float3" -0.58182883 0 -1.8958303 ;
	setAttr ".pt[64]" -type "float3" -0.2799415 0 -2.439218 ;
	setAttr ".pt[65]" -type "float3" -0.27634692 0 -2.4460645 ;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 1 57 58 1 58 59 1
		 59 60 1 59 64 1 60 61 1 60 65 1 61 62 1 62 63 1 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_Secondaries_BLND";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
	setAttr ".sp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
createNode mesh -n "L_Secondaries_BLNDShape" -p "L_Secondaries_BLND";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -24.999613 2.9480121 -31.658285 
		-25.151798 3.7504063 -34.050224 -25.204479 4.0738912 -34.889324 -25.238302 4.2923741 
		-35.424267 -25.242132 4.3351812 -35.47847 -25.217155 4.2155972 -35.068798 -25.173082 
		3.9883571 -34.351589 -25.024921 3.2087648 -32.033321 -24.874916 2.3016889 -29.608215 
		-24.969656 2.8122334 -31.159609 -25.011806 3.0507867 -31.846237 -25.040344 3.2270937 
		-32.306393 -25.044174 3.2665441 -32.36314 -25.024958 3.1862688 -32.041096 -24.989515 
		3.0168326 -31.453865 -24.901722 2.5778377 -30.005386 -24.617775 1.3829759 -25.323999 
		-24.689964 1.6766971 -26.563322 -24.722534 1.8172047 -27.120667 -24.745548 1.9279858 
		-27.511898 -24.749378 1.9573499 -27.574532 -24.735924 1.9198776 -27.339666 -24.709587 
		1.8271618 -26.884251 -24.644579 1.5885255 -25.762423 -24.358286 0.49232236 -20.363503 
		-24.384901 0.56052178 -20.836208 -24.398312 0.59907657 -21.073847 -24.40909 0.63434482 
		-21.264311 -24.413395 0.65350682 -21.339731 -24.411463 0.65761948 -21.304276 -24.404524 
		0.64787018 -21.180016 -24.38509 0.61164695 -20.833166 -23.537045 0.059142459 -14.723198 
		-23.62414 0.06490355 -14.791205 -23.711235 0.070664868 -14.859217 -23.817663 0.077704452 
		-14.942319 -23.904757 0.083465852 -15.010332 -23.991854 0.089226827 -15.078338 -24.059616 
		0.093709081 -15.131253 -24.146711 0.099470161 -15.199261 -23.798857 2.0389093e-015 
		-10.235976 -23.75725 2.0323772e-015 -9.4835348 -23.741896 2.1089587e-015 -9.2058401 
		-23.734499 2.1908414e-015 -9.0720854 -23.7381 2.2610437e-015 -9.1371927 -23.753222 
		2.3298185e-015 -9.410675 -23.775192 2.3822363e-015 -9.8080091 -23.824366 2.4467915e-015 
		-10.697304 -23.529974 1.3132661e-015 -5.3733187 -23.47187 1.3815643e-015 -4.3225555 
		-23.450539 1.4706549e-015 -3.9367743 -23.438763 1.5447378e-015 -3.7238102 -23.441919 
		1.6062825e-015 -3.7808886 -23.460825 1.6712304e-015 -4.1227961 -23.489017 1.7158921e-015 
		-4.6326256 -23.55382 1.7782485e-015 -5.8045616 -23.361059 8.0443884e-016 -2.3185501 
		-23.225159 8.5781885e-016 0.13917065 -23.12125 9.1945479e-016 2.0183001 -23.101969 
		9.8492081e-016 2.366992 -23.110209 1.0382511e-015 2.2179947 -23.174364 1.0855009e-015 
		1.0577641 -23.231588 1.113071e-015 0.022889137 -23.327608 1.1659231e-015 -1.713604 
		-22.723438 4.1005225e-016 9.2125931 -22.72341 4.1178192e-016 9.2131119;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "R_Secondaries_BLND";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
	setAttr ".sp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
createNode mesh -n "R_Secondaries_BLNDShape" -p "R_Secondaries_BLND";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -19.079973 2.8929958 -31.574154 
		-19.363289 3.7615166 -34.061493 -20.841183 4.0919938 -34.894897 -22.41453 4.3151994 
		-35.425983 -23.637808 4.3589301 -35.479439 -24.890579 4.2367597 -35.071869 -26.162901 
		4.0046048 -34.358639 -27.165257 3.1433396 -31.956287 -19.302654 2.2724488 -29.506414 
		-20.35671 2.762634 -31.071764 -21.540752 2.9916637 -31.764902 -23.271824 3.1609344 
		-32.229851 -24.495106 3.198817 -32.287685 -25.741976 3.1217473 -31.963467 -26.700846 
		2.9590685 -31.371605 -27.865612 2.5375857 -29.911133 -19.740921 1.2426647 -25.110504 
		-20.894218 1.523996 -26.359592 -22.08807 1.6830802 -26.907393 -23.900948 1.8085048 
		-27.291082 -25.124229 1.8417511 -27.351721 -26.365204 1.7993252 -27.119406 -27.162441 
		1.694353 -26.6703 -28.303881 1.4241695 -25.564697 -20.128126 0.51543212 -20.360762 
		-21.328077 0.5741542 -20.835743 -22.541553 0.60734844 -21.074652 -24.138494 0.63771468 
		-21.266277 -25.513599 0.65421337 -21.342339 -26.742777 0.65775478 -21.307016 -27.596304 
		0.6493597 -21.182428 -28.691086 0.61817205 -20.834383 -19.832363 0.044787511 -14.723619 
		-21.117514 0.051815055 -14.791508 -22.402668 0.058842741 -14.859398 -23.973085 0.067430146 
		-14.942354 -25.258238 0.07445772 -15.010242 -26.54339 0.081485339 -15.078133 -27.543278 
		0.08695291 -15.130951 -28.828428 0.093980454 -15.198839 -20.450449 2.4489711e-015 
		-10.235976 -21.764425 2.2764277e-015 -9.4835348 -22.999743 2.1998462e-015 -9.2058401 
		-24.329592 2.1179635e-015 -9.0720854 -25.479685 2.0477612e-015 -9.1371927 -26.617983 
		1.9789864e-015 -9.410675 -27.496002 1.9265686e-015 -9.8080091 -28.59944 1.8620135e-015 
		-10.697304 -20.492945 1.6851949e-015 -5.3733187 -21.550236 1.6168967e-015 -4.3225555 
		-22.983864 1.5278061e-015 -3.9367743 -24.181953 1.4537233e-015 -3.7238102 -25.19021 
		1.3921786e-015 -3.7808886 -26.269796 1.3272306e-015 -4.1227961 -27.02737 1.2825689e-015 
		-4.6326256 -28.110529 1.2202126e-015 -5.8045616 -20.908064 1.1048442e-015 -2.3185501 
		-21.643925 1.0514641e-015 0.13917065 -22.546608 9.898282e-016 2.0183001 -23.596468 
		9.2436218e-016 2.366992 -24.475657 8.7103193e-016 2.2179947 -25.31146 8.237821e-016 
		1.0577641 -25.818937 7.9621208e-016 0.022889137 -26.778097 7.4335998e-016 -1.713604 
		-22.723438 4.1005225e-016 9.2125931 -22.751657 4.0832258e-016 9.2131119;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_Primaries_Base";
	setAttr ".v" no;
	setAttr ".ove" yes;
createNode mesh -n "L_Primaries_BaseShape" -p "L_Primaries_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1 0.3179487 0.44448009 0.27252746 0.44448009 0.22710621
		 0.44448009 0.18168497 0.44448009 0.13626373 0.44448009 0.090842485 0.44448009 0.045421243
		 0.44448009 0 0.44448009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 74 ".pt[0:73]" -type "float3"  -2.2212219 0 -30.838005 -2.7090721 
		0 -33.537369 -3.0915985 0 -36.078812 -3.2959747 0 -37.362507 -3.4390182 0 -38.094231 
		-3.5236359 0 -38.429886 -3.477375 0 -37.994446 -2.8565941 0 -33.759464 -1.8961945 
		-0.33452421 -28.519228 -1.8728065 -0.047592342 -28.714705 -1.9297905 0.11036661 -28.863726 
		-1.9993515 0.25668812 -28.985292 -2.0209351 0.31831133 -28.915091 -2.0134811 0.32200474 
		-28.743021 -1.9951973 0.27199578 -28.532084 -1.9499245 0.09683793 -28.087267 -1.178051 
		0 -23.614223 -1.2451096 0 -24.382141 -1.461956 0 -24.675499 -1.4545212 0 -24.630692 
		-1.414753 0 -24.290792 -1.3633995 0 -24.046572 -1.4260979 0 -23.786427 -1.442688 
		0 -23.457243 -0.44891357 0 -19.339415 -0.60492706 0 -19.483004 -0.83626556 0 -19.661243 
		-0.88863754 0 -19.721607 -0.96248627 0 -19.771826 -0.96922302 0 -19.525536 -1.0773621 
		0 -19.45792 -1.1546555 0 -19.164818 -0.1908493 0 -13.529473 -0.28261185 0 -13.20288 
		-0.44433975 0 -13.226882 -0.50933075 0 -13.339795 -0.55554962 0 -13.492195 -0.60619736 
		0 -13.757342 -0.55539322 0 -13.950225 -0.51840591 0 -14.236491 0.054359436 0 -8.7739019 
		0.072559357 0 -8.0536518 0.054351807 0 -7.7995377 0.0094528198 0 -7.7228661 -0.074363708 
		0 -7.8854465 -0.078552246 0 -7.9887676 -0.14037323 0 -8.3936195 -0.22689056 0 -9.0872116 
		0.49547577 0 -2.7117214 0.54524612 0 -1.6965628 0.5272522 0 -1.343071 0.50320053 
		0 -1.1554089 0.46352386 0 -1.2301397 0.44264603 0 -1.1832485 0.35541153 0 -1.9542999 
		0.21417618 0 -3.2572727 0.95195389 0 2.7393093 1.1674271 0 5.5023928 1.2091522 0 
		6.4679527 1.1968307 0 6.7701797 1.187315 0 6.8637238 1.1489983 0 6.5498028 1.0226021 
		0 5.3590765 0.71827316 0 2.2211294 1.8784237 0 14.526607 1.8718567 0 14.526585 -0.71422195 
		0 -18.1996 -0.79347229 0 -18.40435 -0.79395676 0 -18.480165 -0.81594849 0 -18.542669 
		-0.77796936 0 -18.480152 -0.72323227 0 -18.346024 -0.45341873 0 -18.235146 -0.40416718 
		0 -18.119343;
	setAttr -s 74 ".vt[0:73]"  -0.0094957352 -1.4770949e-015 6.50952053
		 0.7861191 -1.4770949e-015 7.75753355 1.61195099 -1.4770949e-015 9.051578522 2.2999692 -1.4770949e-015 9.67081261
		 2.90392256 -1.4770949e-015 9.99205208 3.47217774 -1.4770949e-015 10.11127758 3.7083745 -1.4770949e-015 9.86260891
		 3.38668871 -1.4770949e-015 7.69696426 -0.26387048 0.33452421 5.4463377 0.12830138 0.047592334 5.46273422
		 0.68800294 -0.11036661 5.48361826 1.50097513 -0.25668812 5.46559048 1.98510957 -0.31831133 5.38218403
		 2.23982382 -0.32200474 5.26943493 2.41072059 -0.27199578 5.14512062 2.66742635 -0.09683793 4.89316654
		 -0.91461778 -9.0415748e-016 3.18321991 -0.34092736 -9.0415748e-016 3.65915799 0.38672197 -9.0415748e-016 3.81020069
		 1.07571578 -9.0415748e-016 3.65004563 1.51383734 -9.0415748e-016 3.46627045 1.82527637 -9.0415748e-016 3.31890583
		 2.074155092 -9.0415748e-016 3.1517868 2.27956557 -9.0415748e-016 2.97094011 -1.51399767 -2.9994027e-016 1.019764066
		 -0.90298945 -2.9994027e-016 1.092059612 -0.10740328 -2.9994027e-016 1.18588281 0.63303745 -2.9994027e-016 1.16557479
		 1.1413008 -2.9994027e-016 1.14974451 1.5641942 -2.9994027e-016 1.005010128 1.83123505 -2.9994027e-016 0.95306319
		 2.14668608 -2.9994027e-016 0.82050169 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425
		 -0.42216098 2.9994008e-016 -1.59755349 0.45052832 2.9994008e-016 -1.60273862 0.97899425 2.9994008e-016 -1.56643605
		 1.43253338 2.9994008e-016 -1.47220886 1.81606114 2.9994008e-016 -1.39226115 2.16074085 2.9994008e-016 -1.27759826
		 -1.964432 5.5511151e-016 -3.57756162 -1.32878935 5.9988033e-016 -3.95787001 -0.7190367 5.9988033e-016 -4.11776543
		 0.081746131 5.9988033e-016 -4.20716143 0.6281051 5.9988033e-016 -4.12780094 1.11919343 5.9988033e-016 -4.15162945
		 1.56941748 5.9988033e-016 -3.99173403 2.037061214 5.9988033e-016 -3.69754004 -2.26517224 9.2746635e-016 -6.41356087
		 -1.74676299 9.2746635e-016 -6.92440128 -1.01326704 9.2746635e-016 -7.13917637 -0.39706224 9.2746635e-016 -7.26832867
		 0.1284605 9.2746635e-016 -7.26832867 0.51513004 9.2746635e-016 -7.31612492 0.8950392 9.2746635e-016 -6.97973824
		 1.44024837 9.2746635e-016 -6.40482998 -2.44290066 1.1997609e-015 -8.95901394 -2.28389573 1.1997609e-015 -10.26590443
		 -1.70289433 1.1997609e-015 -10.75765419 -1.12386394 1.1997609e-015 -10.93807411 -0.85532278 1.1997609e-015 -10.99987411
		 -0.65683001 1.1997609e-015 -10.86584473 -0.20038545 1.1997609e-015 -10.33767414 0.55221117 1.1997609e-015 -8.91574001
		 -1.87842345 1.4720555e-015 -14.52660561 -1.77566493 1.4720555e-015 -14.53345108 2.14981174 -1.6652662e-016 0.35388336
		 1.82786036 -1.6652662e-016 0.43146202 1.53491271 -1.6652662e-016 0.45407557 1.10520375 -1.6652662e-016 0.54566479
		 0.59244734 -1.6652662e-016 0.54990065 -0.17740554 -1.6652662e-016 0.56684542 -0.96069199 -1.6652662e-016 0.50647402
		 -1.58088636 -1.6652662e-016 0.49254736;
	setAttr -s 130 ".ed[0:129]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 73 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 72 1 26 71 1 27 70 1 28 69 1 29 68 1 30 67 1 31 66 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0 66 39 0 67 38 1 66 67 0 68 37 1
		 67 68 0 69 36 1 68 69 0 70 35 1 69 70 0 71 34 1 70 71 0 72 33 1 71 72 0 73 32 0 72 73 0;
	setAttr -s 57 -ch 228 ".fc[0:56]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 129 -47 45
		mu 0 4 25 72 73 24
		f 4 54 127 -54 47
		mu 0 4 26 71 72 25
		f 4 55 125 -55 48
		mu 0 4 27 70 71 26
		f 4 56 123 -56 49
		mu 0 4 28 69 70 27
		f 4 57 121 -57 50
		mu 0 4 29 68 69 28
		f 4 58 119 -58 51
		mu 0 4 30 67 68 29
		f 4 59 117 -59 52
		mu 0 4 31 66 67 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64
		f 4 115 -73 -117 -118
		mu 0 4 66 39 38 67
		f 4 -120 116 -71 -119
		mu 0 4 68 67 38 37
		f 4 -122 118 -69 -121
		mu 0 4 69 68 37 36
		f 4 -124 120 -67 -123
		mu 0 4 70 69 36 35
		f 4 -126 122 -65 -125
		mu 0 4 71 70 35 34
		f 4 -128 124 -63 -127
		mu 0 4 72 71 34 33
		f 4 -130 126 -61 -129
		mu 0 4 73 72 33 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode mesh -n "WingBase13:WingBase08:polySurfaceShape1" -p "L_Primaries_Base";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 64 ".pt";
	setAttr ".pt[0]" -type "float3" 1.9874253 2.2606103e-017 0.063231543 ;
	setAttr ".pt[1]" -type "float3" 2.2588956 2.2606103e-017 0.052708391 ;
	setAttr ".pt[2]" -type "float3" 2.4711726 2.2606103e-017 0.94701445 ;
	setAttr ".pt[3]" -type "float3" 2.5456355 2.2606103e-017 1.3258719 ;
	setAttr ".pt[4]" -type "float3" 2.5360339 2.2606103e-017 1.6471121 ;
	setAttr ".pt[5]" -type "float3" 2.4907341 2.2606103e-017 2.0067141 ;
	setAttr ".pt[6]" -type "float3" 2.1133757 2.2606103e-017 2.1577842 ;
	setAttr ".pt[7]" -type "float3" 1.3663865 2.2606103e-017 1.250675 ;
	setAttr ".pt[8]" -type "float3" 1.7236203 0.33452421 0.043094877 ;
	setAttr ".pt[9]" -type "float3" 1.5022372 0.047592334 -0.7011255 ;
	setAttr ".pt[10]" -type "float3" 1.4483837 -0.11036661 -1.0000328 ;
	setAttr ".pt[11]" -type "float3" 1.6478009 -0.25668812 -1.2103611 ;
	setAttr ".pt[12]" -type "float3" 1.5183802 -0.31831133 -1.2937673 ;
	setAttr ".pt[13]" -type "float3" 1.1595395 -0.32200474 -1.214216 ;
	setAttr ".pt[14]" -type "float3" 0.7168811 -0.27199578 -1.0187392 ;
	setAttr ".pt[15]" -type "float3" 0.36003214 -0.09683793 -0.51007628 ;
	setAttr ".pt[16]" -type "float3" 1.0234526 -4.3368087e-018 -0.86921209 ;
	setAttr ".pt[17]" -type "float3" 0.9835881 -4.3368087e-018 -0.96373719 ;
	setAttr ".pt[18]" -type "float3" 1.0976825 -4.3368087e-018 -1.0525374 ;
	setAttr ".pt[19]" -type "float3" 1.173121 -4.3368087e-018 -1.3569186 ;
	setAttr ".pt[20]" -type "float3" 0.99768752 -4.3368087e-018 -1.5406936 ;
	setAttr ".pt[21]" -type "float3" 0.69557184 -4.3368087e-018 -1.5438324 ;
	setAttr ".pt[22]" -type "float3" 0.33089522 -4.3368087e-018 -1.4711084 ;
	setAttr ".pt[23]" -type "float3" -0.077248998 -4.3368087e-018 -1.0814919 ;
	setAttr ".pt[24]" -type "float3" 0.32523215 0 -0.33104685 ;
	setAttr ".pt[25]" -type "float3" 0.32268542 0 -0.44890565 ;
	setAttr ".pt[26]" -type "float3" 0.50471616 0 -0.43503004 ;
	setAttr ".pt[27]" -type "float3" 0.63160187 0 -0.50341338 ;
	setAttr ".pt[28]" -type "float3" 0.52631027 0 -0.51924366 ;
	setAttr ".pt[29]" -type "float3" 0.33564872 0 -0.61590284 ;
	setAttr ".pt[30]" -type "float3" -0.010865623 0 -0.58790201 ;
	setAttr ".pt[31]" -type "float3" -0.30896932 0 -0.5303092 ;
	setAttr ".pt[34]" -type "float3" 0.20445466 0 0.023358503 ;
	setAttr ".pt[35]" -type "float3" 0.46358877 0 0.066248357 ;
	setAttr ".pt[36]" -type "float3" 0.37849954 0 0.10255097 ;
	setAttr ".pt[37]" -type "float3" 0.21848373 0 0.14870311 ;
	setAttr ".pt[38]" -type "float3" 0.06618429 0 0.14870311 ;
	setAttr ".pt[39]" -type "float3" -0.17159951 0 0.073211774 ;
	setAttr ".pt[40]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[41]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[42]" -type "float3" 0.073391467 0 -0.48536921 ;
	setAttr ".pt[43]" -type "float3" 0.34665176 0 -0.47861463 ;
	setAttr ".pt[44]" -type "float3" 0.31616399 0 -0.39925453 ;
	setAttr ".pt[45]" -type "float3" 0.23040554 0 -0.51923311 ;
	setAttr ".pt[46]" -type "float3" -0.082071841 0 -0.51923311 ;
	setAttr ".pt[47]" -type "float3" -0.1912747 0 -0.60534769 ;
	setAttr ".pt[48]" -type "float3" -0.28987256 0 -1.1321654 ;
	setAttr ".pt[49]" -type "float3" -0.27032751 0 -1.1321654 ;
	setAttr ".pt[50]" -type "float3" -0.086260021 0 -1.1321654 ;
	setAttr ".pt[51]" -type "float3" -0.06320253 0 -1.1321654 ;
	setAttr ".pt[52]" -type "float3" -0.043389313 0 -1.1321654 ;
	setAttr ".pt[53]" -type "float3" -0.2061483 0 -1.3091137 ;
	setAttr ".pt[54]" -type "float3" -0.37566766 0 -1.1875025 ;
	setAttr ".pt[55]" -type "float3" -0.40516874 0 -1.1234348 ;
	setAttr ".pt[56]" -type "float3" -0.4800241 0 -1.9391041 ;
	setAttr ".pt[57]" -type "float3" -0.75982416 0 -2.3486667 ;
	setAttr ".pt[58]" -type "float3" -0.55811727 0 -2.4394729 ;
	setAttr ".pt[59]" -type "float3" -0.31185782 0 -2.4682579 ;
	setAttr ".pt[60]" -type "float3" -0.48212141 0 -2.5300581 ;
	setAttr ".pt[61]" -type "float3" -0.82846773 0 -2.5568497 ;
	setAttr ".pt[62]" -type "float3" -0.87033874 0 -2.509702 ;
	setAttr ".pt[63]" -type "float3" -0.58182883 0 -1.8958303 ;
	setAttr ".pt[64]" -type "float3" -0.2799415 0 -2.439218 ;
	setAttr ".pt[65]" -type "float3" -0.27634692 0 -2.4460645 ;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 1 57 58 1 58 59 1
		 59 60 1 59 64 1 60 61 1 60 65 1 61 62 1 62 63 1 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "R_Primaries_Base";
	setAttr ".v" no;
	setAttr ".ove" yes;
createNode mesh -n "R_Primaries_BaseShape" -p "R_Primaries_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1 0.3179487 0.44448009 0.27252746 0.44448009 0.22710621
		 0.44448009 0.18168497 0.44448009 0.13626373 0.44448009 0.090842485 0.44448009 0.045421243
		 0.44448009 0 0.44448009;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 74 ".pt[0:73]" -type "float3"  2.2402134 3.227374e-015 -30.534412 
		1.1368339 3.1896836e-015 -33.521481 -0.13230348 3.1353943e-015 -36.310215 -1.3039637 
		3.0761653e-015 -37.725639 -2.3688269 3.0197201e-015 -38.538757 -3.4207196 2.9604915e-015 
		-38.917294 -3.939374 2.9259006e-015 -38.444832 -3.9167833 2.8892719e-015 -33.799629 
		2.4239354 -0.33452421 -28.105536 1.6162038 -0.047592387 -28.328873 0.55378461 0.11036664 
		-28.49782 -1.0025988 0.25668812 -28.641096 -1.9492841 0.31831133 -28.572945 -2.4661665 
		0.3220048 -28.391649 -2.8262439 0.27199578 -28.167242 -3.3849282 0.096837983 -27.692427 
		3.0072865 2.064593e-015 -23.60046 1.9269643 2.0025485e-015 -24.383003 0.68851209 
		1.9399932e-015 -24.683481 -0.69691038 1.8547053e-015 -24.644455 -1.6129217 1.7961806e-015 
		-24.296734 -2.2871532 1.7517514e-015 -24.047655 -2.7222123 1.7289508e-015 -23.782869 
		-3.1164432 1.7058271e-015 -23.446253 3.4769089 8.4026785e-016 -19.343409 2.4109058 
		7.8454706e-016 -19.488455 1.0510721 7.1544664e-016 -19.668427 -0.37743735 6.3118254e-016 
		-19.730438 -1.3201153 5.7798209e-016 -19.782007 -2.1591654 5.270176e-016 -19.53364 
		-2.585108 5.0755771e-016 -19.465706 -3.1387167 4.7839182e-016 -19.169317 3.8203602 
		-3.5426444e-016 -13.529184 2.6074972 -4.2291204e-016 -13.202431 1.2886617 -4.9376441e-016 
		-13.226528 -0.3917259 -5.9267896e-016 -13.339579 -1.4024389 -6.5173717e-016 -13.492113 
		-2.2588694 -7.0107715e-016 -13.75746 -3.0767291 -7.5426749e-016 -13.950474 -3.8030758 
		-8.0100819e-016 -14.23694 3.8745046 -8.7630662e-016 -8.7739019 2.5850194 -1.0459168e-015 
		-8.0536518 1.3837216 -1.1183603e-015 -7.7995377 -0.17294508 -1.2109293e-015 -7.7228661 
		-1.1818465 -1.2675744e-015 -7.8854465 -2.1598346 -1.3272025e-015 -7.9887676 -2.9984617 
		-1.3747681e-015 -8.3936195 -3.8472319 -1.4214426e-015 -9.0872116 4.0348687 -1.6382074e-015 
		-2.7117214 2.9482799 -1.7077893e-015 -1.6965628 1.4992819 -1.795413e-015 -1.343071 
		0.29092395 -1.8679308e-015 -1.1554089 -0.72044492 -1.9274298e-015 -1.2301397 -1.4729061 
		-1.9722264e-015 -1.1832485 -2.1454899 -2.0080688e-015 -1.9542999 -3.0946729 -2.0575413e-015 
		-3.2572727 3.9338474 -2.2169334e-015 2.7393093 3.4003644 -2.2627937e-015 5.5023928 
		2.1966364 -2.3390559e-015 6.4679527 1.0508971 -2.4084575e-015 6.7701797 0.52333057 
		-2.4401791e-015 6.8637238 0.16466177 -2.4597949e-015 6.5498028 -0.62183118 -2.5002143e-015 
		5.3590765 -1.8226955 -2.5551111e-015 2.2211294 1.8784232 -2.944111e-015 14.526607 
		1.6794732 -2.9558911e-015 14.526585 -3.5854015 1.572442e-016 -18.193892 -2.8622484 
		2.0637725e-016 -18.401247 -2.2758687 2.423123e-016 -18.478153 -1.394459 2.976297e-016 
		-18.540066 -0.40692532 3.5577313e-016 -18.476177 1.0780433 4.4334956e-016 -18.338963 
		2.3748026 5.0623183e-016 -18.227043 3.5659399 5.7615218e-016 -18.109161;
	setAttr -s 74 ".vt[0:73]"  -0.0094957352 -1.4770949e-015 6.50952053
		 0.7861191 -1.4770949e-015 7.75753355 1.61195099 -1.4770949e-015 9.051578522 2.2999692 -1.4770949e-015 9.67081261
		 2.90392256 -1.4770949e-015 9.99205208 3.47217774 -1.4770949e-015 10.11127758 3.7083745 -1.4770949e-015 9.86260891
		 3.38668871 -1.4770949e-015 7.69696426 -0.26387048 0.33452421 5.4463377 0.12830138 0.047592334 5.46273422
		 0.68800294 -0.11036661 5.48361826 1.50097513 -0.25668812 5.46559048 1.98510957 -0.31831133 5.38218403
		 2.23982382 -0.32200474 5.26943493 2.41072059 -0.27199578 5.14512062 2.66742635 -0.09683793 4.89316654
		 -0.91461778 -9.0415748e-016 3.18321991 -0.34092736 -9.0415748e-016 3.65915799 0.38672197 -9.0415748e-016 3.81020069
		 1.07571578 -9.0415748e-016 3.65004563 1.51383734 -9.0415748e-016 3.46627045 1.82527637 -9.0415748e-016 3.31890583
		 2.074155092 -9.0415748e-016 3.1517868 2.27956557 -9.0415748e-016 2.97094011 -1.51399767 -2.9994027e-016 1.019764066
		 -0.90298945 -2.9994027e-016 1.092059612 -0.10740328 -2.9994027e-016 1.18588281 0.63303745 -2.9994027e-016 1.16557479
		 1.1413008 -2.9994027e-016 1.14974451 1.5641942 -2.9994027e-016 1.005010128 1.83123505 -2.9994027e-016 0.95306319
		 2.14668608 -2.9994027e-016 0.82050169 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425
		 -0.42216098 2.9994008e-016 -1.59755349 0.45052832 2.9994008e-016 -1.60273862 0.97899425 2.9994008e-016 -1.56643605
		 1.43253338 2.9994008e-016 -1.47220886 1.81606114 2.9994008e-016 -1.39226115 2.16074085 2.9994008e-016 -1.27759826
		 -1.964432 5.5511151e-016 -3.57756162 -1.32878935 5.9988033e-016 -3.95787001 -0.7190367 5.9988033e-016 -4.11776543
		 0.081746131 5.9988033e-016 -4.20716143 0.6281051 5.9988033e-016 -4.12780094 1.11919343 5.9988033e-016 -4.15162945
		 1.56941748 5.9988033e-016 -3.99173403 2.037061214 5.9988033e-016 -3.69754004 -2.26517224 9.2746635e-016 -6.41356087
		 -1.74676299 9.2746635e-016 -6.92440128 -1.01326704 9.2746635e-016 -7.13917637 -0.39706224 9.2746635e-016 -7.26832867
		 0.1284605 9.2746635e-016 -7.26832867 0.51513004 9.2746635e-016 -7.31612492 0.8950392 9.2746635e-016 -6.97973824
		 1.44024837 9.2746635e-016 -6.40482998 -2.44290066 1.1997609e-015 -8.95901394 -2.28389573 1.1997609e-015 -10.26590443
		 -1.70289433 1.1997609e-015 -10.75765419 -1.12386394 1.1997609e-015 -10.93807411 -0.85532278 1.1997609e-015 -10.99987411
		 -0.65683001 1.1997609e-015 -10.86584473 -0.20038545 1.1997609e-015 -10.33767414 0.55221117 1.1997609e-015 -8.91574001
		 -1.87842345 1.4720555e-015 -14.52660561 -1.77566493 1.4720555e-015 -14.53345108 2.14981174 -1.6652662e-016 0.35388336
		 1.82786036 -1.6652662e-016 0.43146202 1.53491271 -1.6652662e-016 0.45407557 1.10520375 -1.6652662e-016 0.54566479
		 0.59244734 -1.6652662e-016 0.54990065 -0.17740554 -1.6652662e-016 0.56684542 -0.96069199 -1.6652662e-016 0.50647402
		 -1.58088636 -1.6652662e-016 0.49254736;
	setAttr -s 130 ".ed[0:129]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 73 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 72 1 26 71 1 27 70 1 28 69 1 29 68 1 30 67 1 31 66 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0 66 39 0 67 38 1 66 67 0 68 37 1
		 67 68 0 69 36 1 68 69 0 70 35 1 69 70 0 71 34 1 70 71 0 72 33 1 71 72 0 73 32 0 72 73 0;
	setAttr -s 57 -ch 228 ".fc[0:56]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 129 -47 45
		mu 0 4 25 72 73 24
		f 4 54 127 -54 47
		mu 0 4 26 71 72 25
		f 4 55 125 -55 48
		mu 0 4 27 70 71 26
		f 4 56 123 -56 49
		mu 0 4 28 69 70 27
		f 4 57 121 -57 50
		mu 0 4 29 68 69 28
		f 4 58 119 -58 51
		mu 0 4 30 67 68 29
		f 4 59 117 -59 52
		mu 0 4 31 66 67 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64
		f 4 115 -73 -117 -118
		mu 0 4 66 39 38 67
		f 4 -120 116 -71 -119
		mu 0 4 68 67 38 37
		f 4 -122 118 -69 -121
		mu 0 4 69 68 37 36
		f 4 -124 120 -67 -123
		mu 0 4 70 69 36 35
		f 4 -126 122 -65 -125
		mu 0 4 71 70 35 34
		f 4 -128 124 -63 -127
		mu 0 4 72 71 34 33
		f 4 -130 126 -61 -129
		mu 0 4 73 72 33 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".vnm" 0;
createNode mesh -n "polySurfaceShape1" -p "R_Primaries_Base";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 64 ".pt";
	setAttr ".pt[0]" -type "float3" 1.9874253 2.2606103e-017 0.063231543 ;
	setAttr ".pt[1]" -type "float3" 2.2588956 2.2606103e-017 0.052708391 ;
	setAttr ".pt[2]" -type "float3" 2.4711726 2.2606103e-017 0.94701445 ;
	setAttr ".pt[3]" -type "float3" 2.5456355 2.2606103e-017 1.3258719 ;
	setAttr ".pt[4]" -type "float3" 2.5360339 2.2606103e-017 1.6471121 ;
	setAttr ".pt[5]" -type "float3" 2.4907341 2.2606103e-017 2.0067141 ;
	setAttr ".pt[6]" -type "float3" 2.1133757 2.2606103e-017 2.1577842 ;
	setAttr ".pt[7]" -type "float3" 1.3663865 2.2606103e-017 1.250675 ;
	setAttr ".pt[8]" -type "float3" 1.7236203 0.33452421 0.043094877 ;
	setAttr ".pt[9]" -type "float3" 1.5022372 0.047592334 -0.7011255 ;
	setAttr ".pt[10]" -type "float3" 1.4483837 -0.11036661 -1.0000328 ;
	setAttr ".pt[11]" -type "float3" 1.6478009 -0.25668812 -1.2103611 ;
	setAttr ".pt[12]" -type "float3" 1.5183802 -0.31831133 -1.2937673 ;
	setAttr ".pt[13]" -type "float3" 1.1595395 -0.32200474 -1.214216 ;
	setAttr ".pt[14]" -type "float3" 0.7168811 -0.27199578 -1.0187392 ;
	setAttr ".pt[15]" -type "float3" 0.36003214 -0.09683793 -0.51007628 ;
	setAttr ".pt[16]" -type "float3" 1.0234526 -4.3368087e-018 -0.86921209 ;
	setAttr ".pt[17]" -type "float3" 0.9835881 -4.3368087e-018 -0.96373719 ;
	setAttr ".pt[18]" -type "float3" 1.0976825 -4.3368087e-018 -1.0525374 ;
	setAttr ".pt[19]" -type "float3" 1.173121 -4.3368087e-018 -1.3569186 ;
	setAttr ".pt[20]" -type "float3" 0.99768752 -4.3368087e-018 -1.5406936 ;
	setAttr ".pt[21]" -type "float3" 0.69557184 -4.3368087e-018 -1.5438324 ;
	setAttr ".pt[22]" -type "float3" 0.33089522 -4.3368087e-018 -1.4711084 ;
	setAttr ".pt[23]" -type "float3" -0.077248998 -4.3368087e-018 -1.0814919 ;
	setAttr ".pt[24]" -type "float3" 0.32523215 0 -0.33104685 ;
	setAttr ".pt[25]" -type "float3" 0.32268542 0 -0.44890565 ;
	setAttr ".pt[26]" -type "float3" 0.50471616 0 -0.43503004 ;
	setAttr ".pt[27]" -type "float3" 0.63160187 0 -0.50341338 ;
	setAttr ".pt[28]" -type "float3" 0.52631027 0 -0.51924366 ;
	setAttr ".pt[29]" -type "float3" 0.33564872 0 -0.61590284 ;
	setAttr ".pt[30]" -type "float3" -0.010865623 0 -0.58790201 ;
	setAttr ".pt[31]" -type "float3" -0.30896932 0 -0.5303092 ;
	setAttr ".pt[34]" -type "float3" 0.20445466 0 0.023358503 ;
	setAttr ".pt[35]" -type "float3" 0.46358877 0 0.066248357 ;
	setAttr ".pt[36]" -type "float3" 0.37849954 0 0.10255097 ;
	setAttr ".pt[37]" -type "float3" 0.21848373 0 0.14870311 ;
	setAttr ".pt[38]" -type "float3" 0.06618429 0 0.14870311 ;
	setAttr ".pt[39]" -type "float3" -0.17159951 0 0.073211774 ;
	setAttr ".pt[40]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[41]" -type "float3" -0.10551625 0 -0.48536921 ;
	setAttr ".pt[42]" -type "float3" 0.073391467 0 -0.48536921 ;
	setAttr ".pt[43]" -type "float3" 0.34665176 0 -0.47861463 ;
	setAttr ".pt[44]" -type "float3" 0.31616399 0 -0.39925453 ;
	setAttr ".pt[45]" -type "float3" 0.23040554 0 -0.51923311 ;
	setAttr ".pt[46]" -type "float3" -0.082071841 0 -0.51923311 ;
	setAttr ".pt[47]" -type "float3" -0.1912747 0 -0.60534769 ;
	setAttr ".pt[48]" -type "float3" -0.28987256 0 -1.1321654 ;
	setAttr ".pt[49]" -type "float3" -0.27032751 0 -1.1321654 ;
	setAttr ".pt[50]" -type "float3" -0.086260021 0 -1.1321654 ;
	setAttr ".pt[51]" -type "float3" -0.06320253 0 -1.1321654 ;
	setAttr ".pt[52]" -type "float3" -0.043389313 0 -1.1321654 ;
	setAttr ".pt[53]" -type "float3" -0.2061483 0 -1.3091137 ;
	setAttr ".pt[54]" -type "float3" -0.37566766 0 -1.1875025 ;
	setAttr ".pt[55]" -type "float3" -0.40516874 0 -1.1234348 ;
	setAttr ".pt[56]" -type "float3" -0.4800241 0 -1.9391041 ;
	setAttr ".pt[57]" -type "float3" -0.75982416 0 -2.3486667 ;
	setAttr ".pt[58]" -type "float3" -0.55811727 0 -2.4394729 ;
	setAttr ".pt[59]" -type "float3" -0.31185782 0 -2.4682579 ;
	setAttr ".pt[60]" -type "float3" -0.48212141 0 -2.5300581 ;
	setAttr ".pt[61]" -type "float3" -0.82846773 0 -2.5568497 ;
	setAttr ".pt[62]" -type "float3" -0.87033874 0 -2.509702 ;
	setAttr ".pt[63]" -type "float3" -0.58182883 0 -1.8958303 ;
	setAttr ".pt[64]" -type "float3" -0.2799415 0 -2.439218 ;
	setAttr ".pt[65]" -type "float3" -0.27634692 0 -2.4460645 ;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 1 57 58 1 58 59 1
		 59 60 1 59 64 1 60 61 1 60 65 1 61 62 1 62 63 1 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_Secondaries_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
	setAttr ".sp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
createNode mesh -n "L_Secondaries_BaseShape" -p "L_Secondaries_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -24.999613 5.991092e-015 
		-31.95122 -25.151798 5.9991214e-015 -34.703438 -25.204479 6.0863904e-015 -35.656174 
		-25.238302 6.1806592e-015 -36.267845 -25.242132 6.255329e-015 -36.337097 -25.217155 
		6.3335682e-015 -35.885414 -25.173082 6.4141744e-015 -35.088375 -25.024921 6.4846229e-015 
		-32.408939 -24.874916 5.4124821e-015 -29.696142 -24.969656 5.4712234e-015 -31.40947 
		-25.011806 5.5411439e-015 -32.171761 -25.040344 5.6453941e-015 -32.687836 -25.044174 
		5.7200639e-015 -32.757088 -25.024958 5.7975894e-015 -32.409595 -24.989515 5.8584733e-015 
		-31.768623 -24.901722 5.9351709e-015 -30.180901 -24.617775 4.8551835e-015 -25.045815 
		-24.689964 4.9213821e-015 -26.351341 -24.722534 4.9924901e-015 -26.940369 -24.745548 
		5.1020877e-015 -27.356565 -24.749378 5.1767575e-015 -27.425817 -24.735924 5.2535694e-015 
		-27.182507 -24.709587 5.3039988e-015 -26.706196 -24.644579 5.3778723e-015 -25.530575 
		-24.358286 3.6950211e-015 -20.353043 -24.384901 3.7668673e-015 -20.834389 -24.398312 
		3.84035e-015 -21.076899 -24.40909 3.9374746e-015 -21.271824 -24.413395 4.0214117e-015 
		-21.349672 -24.411463 4.0967956e-015 -21.314735 -24.404524 4.149484e-015 -21.189241 
		-24.38509 4.2177099e-015 -20.837807 -23.537045 2.4564847e-015 -14.722333 -23.62414 
		2.5298443e-015 -14.790589 -23.711235 2.6032044e-015 -14.858846 -23.817663 2.6928478e-015 
		-14.942252 -23.904757 2.7662078e-015 -15.010509 -23.991854 2.8395674e-015 -15.078765 
		-24.059616 2.8966437e-015 -15.131869 -24.146711 2.9700035e-015 -15.200126 -23.798857 
		2.0389093e-015 -10.235976 -23.75725 2.0323772e-015 -9.4835348 -23.741896 2.1089587e-015 
		-9.2058401 -23.734499 2.1908414e-015 -9.0720854 -23.7381 2.2610437e-015 -9.1371927 
		-23.753222 2.3298185e-015 -9.410675 -23.775192 2.3822363e-015 -9.8080091 -23.824366 
		2.4467915e-015 -10.697304 -23.529974 1.3132661e-015 -5.3733187 -23.47187 1.3815643e-015 
		-4.3225555 -23.450539 1.4706549e-015 -3.9367743 -23.438763 1.5447378e-015 -3.7238102 
		-23.441919 1.6062825e-015 -3.7808886 -23.460825 1.6712304e-015 -4.1227961 -23.489017 
		1.7158921e-015 -4.6326256 -23.55382 1.7782485e-015 -5.8045616 -23.361059 8.0443884e-016 
		-2.3185501 -23.225159 8.5781885e-016 0.13917065 -23.12125 9.1945479e-016 2.0183001 
		-23.101969 9.8492081e-016 2.366992 -23.110209 1.0382511e-015 2.2179947 -23.174364 
		1.0855009e-015 1.0577641 -23.231588 1.113071e-015 0.022889137 -23.327608 1.1659231e-015 
		-1.713604 -22.723438 4.1005225e-016 9.2125931 -22.72341 4.1178192e-016 9.2131119;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "R_Secondaries_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
	setAttr ".sp" -type "double3" -2.510845875120934e-032 2.0502612482791631e-016 -3.0748993641191865e-048 ;
createNode mesh -n "R_Secondaries_BaseShape" -p "R_Secondaries_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -19.079973 6.7160387e-015 
		-31.95122 -19.363289 6.7080092e-015 -34.703438 -20.841183 6.6207403e-015 -35.656174 
		-22.41453 6.5264714e-015 -36.267845 -23.637808 6.4518017e-015 -36.337097 -24.890579 
		6.3735625e-015 -35.885414 -26.162901 6.2929563e-015 -35.088375 -27.165257 6.2225077e-015 
		-32.408939 -19.302654 6.0948874e-015 -29.696142 -20.35671 6.0361461e-015 -31.40947 
		-21.540752 5.9662256e-015 -32.171761 -23.271824 5.8619754e-015 -32.687836 -24.495106 
		5.7873056e-015 -32.757088 -25.741976 5.7097801e-015 -32.409595 -26.700846 5.6488962e-015 
		-31.768623 -27.865612 5.5721986e-015 -30.180901 -19.740921 5.4524256e-015 -25.045815 
		-20.894218 5.386227e-015 -26.351341 -22.08807 5.315119e-015 -26.940369 -23.900948 
		5.2055214e-015 -27.356565 -25.124229 5.1308517e-015 -27.425817 -26.365204 5.0540398e-015 
		-27.182507 -27.162441 5.0036104e-015 -26.706196 -28.303881 4.9297368e-015 -25.530575 
		-20.128126 4.2130665e-015 -20.353043 -21.328077 4.1412203e-015 -20.834389 -22.541553 
		4.0677377e-015 -21.076899 -24.138494 3.9706131e-015 -21.271824 -25.513599 3.8866759e-015 
		-21.349672 -26.742777 3.8112921e-015 -21.314735 -27.596304 3.7586037e-015 -21.189241 
		-28.691086 3.6903777e-015 -20.837807 -19.832363 2.9101771e-015 -14.722333 -21.117514 
		2.8368175e-015 -14.790589 -22.402668 2.7634575e-015 -14.858846 -23.973085 2.6738141e-015 
		-14.942252 -25.258238 2.600454e-015 -15.010509 -26.54339 2.5270944e-015 -15.078765 
		-27.543278 2.4700182e-015 -15.131869 -28.828428 2.3966583e-015 -15.200126 -20.450449 
		2.4489711e-015 -10.235976 -21.764425 2.2764277e-015 -9.4835348 -22.999743 2.1998462e-015 
		-9.2058401 -24.329592 2.1179635e-015 -9.0720854 -25.479685 2.0477612e-015 -9.1371927 
		-26.617983 1.9789864e-015 -9.410675 -27.496002 1.9265686e-015 -9.8080091 -28.59944 
		1.8620135e-015 -10.697304 -20.492945 1.6851949e-015 -5.3733187 -21.550236 1.6168967e-015 
		-4.3225555 -22.983864 1.5278061e-015 -3.9367743 -24.181953 1.4537233e-015 -3.7238102 
		-25.19021 1.3921786e-015 -3.7808886 -26.269796 1.3272306e-015 -4.1227961 -27.02737 
		1.2825689e-015 -4.6326256 -28.110529 1.2202126e-015 -5.8045616 -20.908064 1.1048442e-015 
		-2.3185501 -21.643925 1.0514641e-015 0.13917065 -22.546608 9.898282e-016 2.0183001 
		-23.596468 9.2436218e-016 2.366992 -24.475657 8.7103193e-016 2.2179947 -25.31146 
		8.237821e-016 1.0577641 -25.818937 7.9621208e-016 0.022889137 -26.778097 7.4335998e-016 
		-1.713604 -22.723438 4.1005225e-016 9.2125931 -22.751657 4.0832258e-016 9.2131119;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_PrimaryCoverts_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1.6315572881362692e-031 -1.3322676295501878e-015 1.998081410541618e-047 ;
	setAttr ".sp" -type "double3" 1.6315572881362692e-031 -1.3322676295501878e-015 1.998081410541618e-047 ;
createNode mesh -n "L_PrimaryCoverts_BaseShape" -p "L_PrimaryCoverts_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -0.30227518 2.7178318e-015 
		-27.853071 -0.3374598 2.777712e-015 -30.051636 -0.46421456 2.8373279e-015 -31.283907 
		-0.23683208 2.9403131e-015 -32.405228 -0.29931849 3.0077996e-015 -32.716301 -0.27827954 
		3.0855149e-015 -32.159367 -0.73600411 3.1045985e-015 -30.802444 -1.0016999 3.1241449e-015 
		-28.185703 -0.62623644 2.0794324e-015 -25.012659 -0.57614803 2.1607052e-015 -26.901564 
		-0.53580999 2.2407842e-015 -27.722403 -0.48944986 2.3216004e-015 -28.148075 -0.53175342 
		2.3915586e-015 -27.971771 -0.66112399 2.450854e-015 -27.470491 -0.97301507 2.4877972e-015 
		-26.993423 -1.138725 2.5426423e-015 -25.171547 -0.70359993 1.47613e-015 -21.492197 
		-0.71715975 1.5496082e-015 -22.749519 -0.63801789 1.6344391e-015 -23.420231 -0.73812282 
		1.6973187e-015 -23.603004 -0.64819658 1.7834702e-015 -23.597176 -0.72995639 1.8485965e-015 
		-23.404217 -1.0240798 1.8877156e-015 -23.05513 -1.1108167 1.952232e-015 -22.047829 
		-0.58299112 3.0324404e-016 -16.792355 -0.67151928 3.6754125e-016 -17.250534 -0.62085974 
		4.4888416e-016 -17.608299 -0.68901062 5.1567689e-016 -17.728952 -0.68064183 5.9184055e-016 
		-17.825249 -0.73379087 6.604705e-016 -17.816723 -0.95388174 7.0865598e-016 -17.719181 
		-1.0546012 7.7146019e-016 -17.421684 -0.40576363 -8.7181533e-016 -11.741488 -0.44162941 
		-7.9632236e-016 -11.460033 -0.48241174 -7.3569687e-016 -11.378224 -0.39823082 -6.5024882e-016 
		-11.390963 -0.45852309 -5.8249365e-016 -11.476617 -0.52595305 -5.1561262e-016 -11.656462 
		-0.72780895 -4.7471294e-016 -11.866624 -0.81328249 -4.1384926e-016 -12.320464 -0.16593957 
		-1.3581963e-015 -7.8436499 -0.17193198 -1.370624e-015 -7.1873503 -0.029197574 -1.3003808e-015 
		-6.9592352 0.053683668 -1.2256279e-015 -6.8631678 -0.0029994845 -1.1619262e-015 -6.9436998 
		-0.13347495 -1.1072615e-015 -7.0855608 -0.51393509 -1.0604504e-015 -7.4616604 -0.62709045 
		-1.0036647e-015 -8.2872353 0.10035563 -2.084547e-015 -2.8926058 0.14480901 -2.0180098e-015 
		-1.9642258 0.28869092 -1.9331039e-015 -1.645874 0.27037483 -1.8627074e-015 -1.4788866 
		0.23854566 -1.8046738e-015 -1.5522566 0.044887066 -1.7611045e-015 -1.6895533 -0.2119112 
		-1.7252676e-015 -2.2799778 -0.38035274 -1.6755141e-015 -3.418294 0.51728392 -2.5765559e-015 
		1.7103119 0.41591024 -2.5352323e-015 3.83881 0.63354123 -2.46213e-015 4.6302528 0.84969234 
		-2.3949065e-015 4.8740778 0.66221631 -2.3641276e-015 4.8958549 0.27646363 -2.3446452e-015 
		4.5787811 0.11131763 -2.3038436e-015 3.5274944 0.11473823 -2.2465906e-015 1.2506609 
		1.5984821 -2.944111e-015 12.087389 1.5929954 -2.9326388e-015 12.079607;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "R_PrimaryCoverts_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1.6315572881362692e-031 -1.3322676295501878e-015 1.998081410541618e-047 ;
	setAttr ".sp" -type "double3" 1.6315572881362692e-031 -1.3322676295501878e-015 1.998081410541618e-047 ;
createNode mesh -n "R_PrimaryCoverts_BaseShape" -p "R_PrimaryCoverts_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  4.2961173 3.2809724e-015 
		-27.853071 3.2830129 3.221092e-015 -30.051636 2.1826577 3.1614764e-015 -31.283907 
		0.72816485 3.0584911e-015 -32.405228 -0.43645871 2.9910046e-015 -32.716301 -1.6846076 
		2.9132894e-015 -32.159367 -2.4539936 2.8942057e-015 -30.802444 -3.0389047 2.8746594e-015 
		-28.185703 4.6012177 2.719611e-015 -25.012659 3.3240197 2.6383382e-015 -26.901564 
		2.0565715 2.5582593e-015 -27.722403 0.78310132 2.477443e-015 -28.148075 -0.40170527 
		2.4074849e-015 -27.971771 -1.4994447 2.3481894e-015 -27.470491 -2.414664 2.3112463e-015 
		-26.993423 -3.4760635 2.2564011e-015 -25.171547 4.5797405 2.1231527e-015 -21.492197 
		3.3661904 2.0496745e-015 -22.749519 2.0599389 1.9648435e-015 -23.420231 0.93293321 
		1.901964e-015 -23.603004 -0.38410294 1.8158125e-015 -23.597176 -1.5294528 1.7506863e-015 
		-23.404217 -2.46244 1.7115672e-015 -23.05513 -3.6028125 1.6470506e-015 -22.047829 
		4.2614508 8.9651704e-016 -16.792355 3.122869 8.3221982e-016 -17.250534 1.8450986 
		7.5087692e-016 -17.608299 0.68613958 6.8408419e-016 -17.728952 -0.54933923 6.0792052e-016 
		-17.825249 -1.7233 5.3929058e-016 -17.816723 -2.7303195 4.911051e-016 -17.719181 
		-3.8567095 4.2830089e-016 -17.421684 4.0352745 -3.2794501e-016 -11.741488 2.7665148 
		-4.0343798e-016 -11.460033 1.735643 -4.6406346e-016 -11.378224 0.42435172 -5.4951151e-016 
		-11.390963 -0.74246627 -6.1726668e-016 -11.476617 -1.9021463 -6.8414772e-016 -11.656462 
		-2.7719448 -7.2504739e-016 -11.866624 -3.851398 -7.859111e-016 -12.320464 3.8837712 
		-8.6224974e-016 -7.8436499 2.6184783 -1.0288973e-015 -7.1873503 1.614054 -1.0991406e-015 
		-6.9592352 0.47612759 -1.1738934e-015 -6.8631678 -0.62088275 -1.2375951e-015 -6.9436998 
		-1.6441009 -1.2922598e-015 -7.0855608 -2.7890434 -1.3390709e-015 -7.4616604 -3.8295813 
		-1.3958566e-015 -8.2872353 3.8502438 -1.6253183e-015 -2.8926058 2.8080621 -1.6918555e-015 
		-1.9642258 1.5653231 -1.7767615e-015 -1.645874 0.39734459 -1.847158e-015 -1.4788866 
		-0.58224529 -1.9051916e-015 -1.5522566 -1.4874437 -1.9487609e-015 -1.6895533 -2.3295026 
		-1.9845978e-015 -2.2799778 -3.3104815 -2.0343514e-015 -3.418294 3.4084692 -2.2224876e-015 
		1.7103119 2.6322329 -2.2638112e-015 3.83881 1.6560129 -2.3369135e-015 4.6302528 0.77432001 
		-2.404137e-015 4.8740778 0.084186435 -2.4349159e-015 4.8958549 -0.61973906 -2.4543982e-015 
		4.5787811 -1.4512242 -2.4951998e-015 3.5274944 -2.3828182 -2.5524529e-015 1.2506609 
		1.5984817 -2.944111e-015 12.087389 1.4056406 -2.9555832e-015 12.079607;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_SecondaryCoverts_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
createNode mesh -n "L_SecondaryCoverts_BaseShape" -p "L_SecondaryCoverts_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -23.972351 6.1168954e-015 
		-32.073547 -24.055454 6.1333846e-015 -34.820759 -24.083178 6.2237105e-015 -35.737236 
		-24.100504 6.3199991e-015 -36.310001 -24.101675 6.3949946e-015 -36.348694 -24.087053 
		6.4719657e-015 -35.865326 -24.06196 6.5502477e-015 -35.035843 -23.980087 6.6125783e-015 
		-32.3293 -23.903913 5.5313958e-015 -29.81119 -23.954985 5.5954848e-015 -31.499439 
		-23.977165 5.6678511e-015 -32.232674 -23.991478 5.7738433e-015 -32.70583 -23.992647 
		5.8488387e-015 -32.744522 -23.981184 5.9254147e-015 -32.36557 -23.961054 5.9844237e-015 
		-31.700119 -23.912107 6.0563635e-015 -30.082052 -23.762802 4.9598874e-015 -25.146374 
		-23.801453 5.0301937e-015 -26.424034 -23.81838 5.1032172e-015 -26.983637 -23.829607 
		5.2142582e-015 -27.354778 -23.830778 5.2892536e-015 -27.393476 -23.822474 5.3654345e-015 
		-27.118929 -23.807449 5.4144785e-015 -26.622311 -23.770996 5.4848551e-015 -25.417236 
		-23.620445 3.7853805e-015 -20.440363 -23.634108 3.8588132e-015 -20.892048 -23.640532 
		3.9331513e-015 -21.104378 -23.645224 4.0310213e-015 -21.259491 -23.64654 4.1153244e-015 
		-21.30299 -23.644552 4.190715e-015 -21.23727 -23.640106 4.243098e-015 -21.090322 
		-23.628639 4.3103487e-015 -20.711226 -22.907589 2.5335706e-015 -14.801992 -22.998808 
		2.6064254e-015 -14.839819 -23.090025 2.6792806e-015 -14.877646 -23.20149 2.7683072e-015 
		-14.923869 -23.292709 2.841162e-015 -14.961696 -23.383928 2.914017e-015 -14.999523 
		-23.454899 2.9707002e-015 -15.028953 -23.546116 3.0435552e-015 -15.06678 -23.313927 
		2.0982961e-015 -10.307572 -23.290154 2.0895799e-015 -9.5216837 -23.280811 2.1654253e-015 
		-9.2128677 -23.275755 2.2470213e-015 -9.0457363 -23.276855 2.31753e-015 -9.0821142 
		-23.284273 2.3872482e-015 -9.3273201 -23.295637 2.4409649e-015 -9.7029848 -23.321724 
		2.5083473e-015 -10.565342 -23.166687 1.3577559e-015 -5.4401712 -23.134077 1.4229321e-015 
		-4.3621569 -23.121313 1.5109735e-015 -3.9402113 -23.113958 1.5845149e-015 -3.6971064 
		-23.114923 1.646328e-015 -3.7289991 -23.124456 1.7124236e-015 -4.0441513 -23.139318 
		1.7587179e-015 -4.5354099 -23.173975 1.824766e-015 -5.6811304 -23.073895 8.3960637e-016 
		-2.3727036 -22.998936 8.8552318e-016 0.10529041 -22.941366 9.4148421e-016 2.0084295 
		-22.930016 1.005979e-015 2.3836565 -22.933861 1.0598474e-015 2.2565451 -22.968351 
		1.1107302e-015 1.1163502 -22.999296 1.1415186e-015 0.093390465 -23.051138 1.1997809e-015 
		-1.6204176 -22.723438 4.1005225e-016 9.2125931 -22.723402 4.1178287e-016 9.2138186;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "R_SecondaryCoverts_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
createNode mesh -n "R_SecondaryCoverts_BaseShape" -p "R_SecondaryCoverts_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -20.107235 6.5902352e-015 
		-32.073547 -20.459633 6.573746e-015 -34.820759 -21.962484 6.4834201e-015 -35.737236 
		-23.552328 6.3871316e-015 -36.310001 -24.778265 6.3121361e-015 -36.348694 -26.020681 
		6.235165e-015 -35.865326 -27.274023 6.156883e-015 -35.035843 -28.210091 6.0945524e-015 
		-32.3293 -20.273657 5.9759737e-015 -29.81119 -21.371382 5.9118847e-015 -31.499439 
		-22.575394 5.8395184e-015 -32.232674 -24.32069 5.7335262e-015 -32.70583 -25.546633 
		5.6585308e-015 -32.744522 -26.785749 5.5819547e-015 -32.36557 -27.729307 5.5229458e-015 
		-31.700119 -28.855227 5.451006e-015 -30.082052 -20.595894 5.3477218e-015 -25.146374 
		-21.78273 5.2774155e-015 -26.424034 -22.992224 5.2043919e-015 -26.983637 -24.816889 
		5.093351e-015 -27.354778 -26.04283 5.0183555e-015 -27.393476 -27.278654 4.9421747e-015 
		-27.118929 -28.064579 4.8931306e-015 -26.622311 -29.177464 4.822754e-015 -25.417236 
		-20.865967 4.1227071e-015 -20.440363 -22.078871 4.0492745e-015 -20.892048 -23.299334 
		3.9749363e-015 -21.104378 -24.902361 3.8770663e-015 -21.259491 -26.280455 3.7927632e-015 
		-21.30299 -27.509687 3.7173726e-015 -21.23727 -28.360722 3.6649896e-015 -21.090322 
		-29.447536 3.597739e-015 -20.711226 -20.461819 2.8330912e-015 -14.801992 -21.742846 
		2.7602364e-015 -14.839819 -23.023878 2.6873812e-015 -14.877646 -24.589258 2.5983547e-015 
		-14.923869 -25.870285 2.5254999e-015 -14.961696 -27.151316 2.4526449e-015 -14.999523 
		-28.147995 2.3959617e-015 -15.028953 -29.429024 2.3231067e-015 -15.06678 -20.935379 
		2.3895843e-015 -10.307572 -22.231522 2.2192251e-015 -9.5216837 -23.460827 2.1433796e-015 
		-9.2128677 -24.788336 2.0617836e-015 -9.0457363 -25.940929 1.9912749e-015 -9.0821142 
		-27.086931 1.9215567e-015 -9.3273201 -27.975557 1.86784e-015 -9.7029848 -29.102081 
		1.8004577e-015 -10.565342 -20.856232 1.6407051e-015 -5.4401712 -21.888029 1.5755289e-015 
		-4.3621569 -23.313089 1.4874876e-015 -3.9402113 -24.506758 1.4139462e-015 -3.6971064 
		-25.517206 1.3521331e-015 -3.7289991 -26.606165 1.2860374e-015 -4.0441513 -27.377069 
		1.2397432e-015 -4.5354099 -28.490374 1.173695e-015 -5.6811304 -21.195229 1.0696766e-015 
		-2.3727036 -21.870148 1.0237598e-015 0.10529041 -22.726492 9.6779878e-016 2.0084295 
		-23.768421 9.0330399e-016 2.3836565 -24.652004 8.4943556e-016 2.2565451 -25.517473 
		7.985528e-016 1.1163502 -26.051229 7.6776448e-016 0.093390465 -27.054567 7.0950217e-016 
		-1.6204176 -22.723438 4.1005225e-016 9.2125931 -22.751665 4.0832163e-016 9.2138186;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_Alula_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.5480713928236983e-031 3.043013508614357e-016 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -2.5480713928236983e-031 3.043013508614357e-016 1.7763568394002505e-015 ;
createNode mesh -n "L_Alula_BaseShape" -p "L_Alula_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  0.61577511 2.6214266e-015 
		-15.802849 0.28879213 2.8203364e-015 -17.593578 -0.1014179 3.4415639e-015 -18.452084 
		-0.40702128 3.4792778e-015 -19.184307 -0.69993246 3.5185454e-015 -19.407417 -0.87213027 
		3.5725961e-015 -19.12151 -1.1453886 3.6142701e-015 -18.347107 -1.3716235 3.0463938e-015 
		-16.619617 0.52672195 1.4306329e-015 -14.019876 0.23387814 -3.988991e-006 -15.139691 
		-0.05721128 -3.4640172e-005 -15.726338 -0.33546734 -4.7494366e-005 -16.186928 -0.5955677 
		-6.459114e-006 -16.327971 -0.83768249 7.0139351e-005 -16.115843 -1.1148233 5.3422023e-005 
		-15.629608 -1.3754709 2.6733304e-015 -14.561827 0.49220777 8.5953044e-016 -11.764606 
		0.25567412 3.9949327e-007 -12.60638 0.013825178 -2.8371593e-005 -13.030351 -0.23206231 
		-6.4129548e-005 -13.309926 -0.47948706 -3.5749978e-005 -13.385633 -0.73248291 6.0555438e-005 
		-13.251326 -1.038866 1.3317551e-005 -12.98567 -1.3019786 2.269992e-015 -12.288477 
		0.50098324 1.1401415e-015 -8.0743933 0.25887704 4.0630272e-007 -8.4355106 0.027270794 
		2.6140037e-006 -8.6207666 -0.21640395 -1.1875042e-006 -8.7449141 -0.44494295 -6.7026594e-006 
		-8.8061218 -0.70829415 1.383158e-015 -8.7942839 -1.0258977 1.4129575e-015 -8.7289333 
		-1.3102117 1.4451547e-015 -8.5180368 0.53430629 3.1386658e-016 -4.4873724 0.27086878 
		3.7489016e-009 -4.2620268 0.12233067 1.7053678e-008 -4.1990709 -0.10843384 2.8556588e-008 
		-4.1727362 -0.35031503 -2.4701731e-007 -4.2104254 -0.61867046 4.8089838e-008 -4.3101883 
		-0.84076452 7.4420093e-008 -4.4551163 -1.1170053 6.3968998e-016 -4.7179337 0.69707632 
		-3.0979489e-017 -1.7454991 0.44251943 9.4544399e-009 -1.1734695 0.3584615 1.3839831e-008 
		-0.9034605 0.16989565 3.1712175e-009 -0.7770071 -0.089926422 -5.5918036e-008 -0.80472088 
		-0.36364233 7.3100903e-009 -0.98305702 -0.79628181 2.088618e-008 -1.302784 -1.0210595 
		1.9614625e-016 -1.9112329 0.91161036 -5.3781722e-016 1.7178564 0.75066209 1.0693828e-009 
		2.4545832 0.54307806 3.3018961e-009 2.8444996 0.28017211 4.2851278e-009 3.0276833 
		0.04037267 -1.0086749e-008 3.0117512 -0.26879942 -2.2114607e-010 2.7869816 -0.53599739 
		3.1638461e-009 2.3595419 -0.81330729 -2.7462195e-016 1.531518 1.048193 -8.782252e-016 
		4.4780731 0.81916881 -8.7023689e-016 5.9883833 0.82642019 -8.2691374e-016 6.6426296 
		0.8556577 -7.8258046e-016 6.8392191 0.58264887 -7.6227634e-016 6.8503866 0.14314398 
		-7.4937661e-016 6.6182804 -0.13402009 -7.2229337e-016 5.8759775 -0.29230452 -6.7020741e-016 
		4.3284607 1.5366488 -1.1753265e-015 12.09055 1.499318 -1.1677541e-015 12.087387;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "R_Alula_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.5480713928236983e-031 3.043013508614357e-016 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -2.5480713928236983e-031 3.043013508614357e-016 1.7763568394002505e-015 ;
createNode mesh -n "R_Alula_BaseShape" -p "R_Alula_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  3.378067 2.9597099e-015 -15.802849 
		2.6567612 3.1103291e-015 -17.593578 1.8198609 3.6768527e-015 -18.452084 0.89835405 
		3.6391398e-015 -19.184307 -0.035844684 3.5998722e-015 -19.407417 -1.090757 3.545822e-015 
		-19.12151 -2.0446093 3.5041476e-015 -18.347107 -2.6689808 2.8875133e-015 -16.619617 
		3.4482598 1.7884182e-015 -14.019876 2.5139933 -3.988991e-006 -15.139691 1.5779729 
		-3.4640172e-005 -15.726338 0.62911886 -4.7494366e-005 -16.186928 -0.33789098 -6.459114e-006 
		-16.327971 -1.3228862 7.0139351e-005 -16.115843 -2.2728558 5.3422023e-005 -15.629608 
		-3.2393174 2.445075e-015 -14.561827 3.3839333 1.2136647e-015 -11.764606 2.3933568 
		3.9949327e-007 -12.60638 1.4080958 -2.8371593e-005 -13.030351 0.42687276 -6.4129548e-005 
		-13.309926 -0.55281246 -3.5749978e-005 -13.385633 -1.5269263 6.0555438e-005 -13.251326 
		-2.4476538 1.3317551e-005 -12.98567 -3.4116507 2.0116317e-015 -12.288477 3.1774762 
		1.4679174e-015 -8.0743933 2.1924727 4.0630272e-007 -8.4355106 1.1969681 2.6140037e-006 
		-8.6207666 0.21353284 -1.1875042e-006 -8.7449141 -0.78503811 -6.7026594e-006 -8.8061218 
		-1.7487967 1.2557333e-015 -8.7942839 -2.6583033 1.2130454e-015 -8.7289333 -3.601099 
		1.1646017e-015 -8.5180368 3.0952048 6.2748624e-016 -4.4873724 2.0540166 3.7489016e-009 
		-4.2620268 1.1309007 1.7053678e-008 -4.1990709 0.13455474 2.8556588e-008 -4.1727362 
		-0.85067427 -2.4701731e-007 -4.2104254 -1.809429 4.8089838e-008 -4.3101883 -2.658989 
		7.4420093e-008 -4.4551163 -3.5476756 3.4201867e-016 -4.7179337 3.0207553 2.5358906e-016 
		-1.7454991 2.0040267 9.4544399e-009 -1.1734695 1.2263949 1.3839831e-008 -0.9034605 
		0.35991561 3.1712175e-009 -0.7770071 -0.53395587 -5.5918036e-008 -0.80472088 -1.4139336 
		7.3100903e-009 -0.98305702 -2.5066965 2.088618e-008 -1.302784 -3.4356117 -9.9551147e-017 
		-1.9112329 3.0389891 -2.7728852e-016 1.7178564 2.2022092 1.0693828e-009 2.4545832 
		1.310936 3.3018961e-009 2.8444996 0.38754731 4.2851278e-009 3.0276833 -0.38407236 
		-1.0086749e-008 3.0117512 -1.1737571 -2.2114618e-010 2.7869816 -2.0054162 3.1638461e-009 
		2.3595419 -2.877527 -5.2741597e-016 1.531518 2.8775601 -6.5419234e-016 4.4780731 
		2.2289743 -6.9758552e-016 5.9883833 1.4631341 -7.4893875e-016 6.6426296 0.76835465 
		-7.9327203e-016 6.8392191 0.16375387 -8.1357615e-016 6.8503866 -0.48641938 -8.2647588e-016 
		6.6182804 -1.2058864 -8.5355912e-016 5.8759775 -1.9757755 -8.7637311e-016 4.3284607 
		1.660315 -1.1601818e-015 12.09055 1.499318 -1.1677541e-015 12.087387;
	setAttr -s 66 ".vt[0:65]"  -1.99692106 -1.4997011e-015 6.44628906 -1.47277653 -1.4997011e-015 7.70482492
		 -0.85922158 -1.4997011e-015 8.10456371 -0.24566638 -1.4997011e-015 8.34494019 0.3678886 -1.4997011e-015 8.34494019
		 0.98144358 -1.4997011e-015 8.10456371 1.59499884 -1.4997011e-015 7.70482492 2.020302296 -1.4997011e-015 6.44628906
		 -1.98749077 -1.1997609e-015 5.40324259 -1.37393582 -1.1997609e-015 6.16385984 -0.76038074 -1.1997609e-015 6.48365116
		 -0.14682573 -1.1997609e-015 6.67595148 0.46672934 -1.1997609e-015 6.67595148 1.080284357 -1.1997609e-015 6.48365116
		 1.69383955 -1.1997609e-015 6.16385984 2.30739427 -1.1997609e-015 5.40324259 -1.93807042 -8.9982068e-016 4.05243206
		 -1.32451546 -8.9982068e-016 4.62289524 -0.71096051 -8.9982068e-016 4.86273813 -0.09740521 -8.9982068e-016 5.0069642067
		 0.51614976 -8.9982068e-016 5.0069642067 1.12970459 -8.9982068e-016 4.86273813 1.74325991 -8.9982068e-016 4.62289524
		 2.35681462 -8.9982068e-016 4.05243206 -1.83922982 -2.9994027e-016 1.35081089 -1.22567487 -2.9994027e-016 1.5409652
		 -0.61211944 -2.9994027e-016 1.62091291 0.0014355481 -2.9994027e-016 1.66898811 0.61499053 -2.9994027e-016 1.66898811
		 1.22854543 -2.9994027e-016 1.62091291 1.84210062 -2.9994027e-016 1.5409652 2.45565534 -2.9994027e-016 1.35081089
		 -1.81475556 2.9994008e-016 -1.35081005 -1.16244268 2.9994008e-016 -1.54096425 -0.62661564 2.9994008e-016 -1.62091196
		 -0.013060451 2.9994008e-016 -1.66898704 0.60049468 2.9994008e-016 -1.66898704 1.2140497 2.9994008e-016 -1.62091196
		 1.74987686 2.9994008e-016 -1.54096425 2.33234024 2.9994008e-016 -1.35081005 -1.85891581 5.5511151e-016 -3.092192411
		 -1.22327316 5.9988033e-016 -3.4725008 -0.7924282 5.9988033e-016 -3.63239646 -0.26490563 5.9988033e-016 -3.72854662
		 0.31194112 5.9988033e-016 -3.72854662 0.88878793 5.9988033e-016 -3.63239646 1.65148926 5.9988033e-016 -3.4725008
		 2.22833586 5.9988033e-016 -3.092192411 -1.97529972 9.2746635e-016 -5.28139544 -1.47643554 9.2746635e-016 -5.79223585
		 -0.92700702 9.2746635e-016 -6.0070109367 -0.33385971 9.2746635e-016 -6.13616323 0.17184982 9.2746635e-016 -6.13616323
		 0.72127831 9.2746635e-016 -6.0070109367 1.27070689 9.2746635e-016 -5.79223585 1.84541714 9.2746635e-016 -5.28139544
		 -1.96287656 1.1997609e-015 -7.019909859 -1.52407157 1.1997609e-015 -7.91723776 -1.14477706 1.1997609e-015 -8.31818104
		 -0.81200618 1.1997609e-015 -8.46981621 -0.37320137 1.1997609e-015 -8.46981621 0.17163771 1.1997609e-015 -8.30899525
		 0.66995329 1.1997609e-015 -7.82797194 1.13404 1.1997609e-015 -7.019909859 -1.59848189 1.4720555e-015 -12.087387085
		 -1.499318 1.4720555e-015 -12.087387085;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "L_MedianCoverts_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
createNode mesh -n "L_MedianCoverts_BaseShape" -p "L_MedianCoverts_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -23.52121 6.172144e-015 -22.436214 
		-23.635746 6.1847843e-015 -24.538425 -23.835648 6.2540241e-015 -25.229931 -24.03652 
		6.327835e-015 -25.65749 -24.180647 6.3853231e-015 -25.678463 -24.31275 6.4443262e-015 
		-25.299353 -24.436876 6.5043334e-015 -24.654999 -24.47382 6.5521137e-015 -22.574829 
		-23.480186 5.5832871e-015 -20.70179 -23.653423 5.6324155e-015 -21.987434 -23.813549 
		5.6878881e-015 -22.540667 -24.029903 5.7691376e-015 -22.890812 -24.17403 5.8266257e-015 
		-22.911785 -24.308537 5.8853255e-015 -22.61269 -24.400888 5.9305596e-015 -22.096197 
		-24.489075 5.9857053e-015 -20.848593 -23.393156 5.0051558e-015 -17.125687 -23.565825 
		5.0590495e-015 -18.096134 -23.721951 5.1150261e-015 -18.5163 -23.944843 5.2001458e-015 
		-18.787735 -24.088972 5.2576339e-015 -18.808706 -24.225883 5.3160313e-015 -18.589626 
		-24.304348 5.353626e-015 -18.203594 -24.402044 5.407574e-015 -17.272486 -23.298939 
		3.824754e-015 -13.518387 -23.452578 3.881044e-015 -13.855852 -23.600704 3.938029e-015 
		-14.009889 -23.791958 4.0130515e-015 -14.117385 -23.953972 4.0776751e-015 -14.14096 
		-24.095695 4.135466e-015 -14.081914 -24.191103 4.1756204e-015 -13.963314 -24.307829 
		4.2271717e-015 -13.66519 -22.622116 2.5685311e-015 -9.1977196 -22.852211 2.6243783e-015 
		-9.2182732 -23.082304 2.6802261e-015 -9.2388268 -23.363472 2.7484701e-015 -9.2639446 
		-23.593567 2.8043175e-015 -9.2844982 -23.823664 2.8601647e-015 -9.3050537 -24.002682 
		2.903616e-015 -9.3210449 -24.232777 2.9594634e-015 -9.3416004 -23.036299 2.1322958e-015 
		-5.7549238 -23.16659 2.1047121e-015 -5.1436658 -23.301823 2.162852e-015 -4.8983769 
		-23.452305 2.2254001e-015 -4.760941 -23.587809 2.2794491e-015 -4.7806582 -23.728123 
		2.3328922e-015 -4.9604073 -23.841883 2.3740692e-015 -5.2419257 -23.996414 2.4257215e-015 
		-5.8946295 -22.897007 1.3907823e-015 -2.0264502 -22.988636 1.4407435e-015 -1.1932583 
		-23.143698 1.5082322e-015 -0.85991287 -23.276527 1.5646059e-015 -0.66521978 -23.395321 
		1.6119891e-015 -0.68250608 -23.530844 1.6626556e-015 -0.91624641 -23.633955 1.6981425e-015 
		-1.2871575 -23.794512 1.7487723e-015 -2.1570458 -22.854614 8.6646049e-016 0.3260088 
		-22.867182 9.0165842e-016 2.2292337 -22.916286 9.4455566e-016 3.6933327 -23.027876 
		9.9399465e-016 3.9881744 -23.134405 1.0352878e-015 3.8970423 -23.265888 1.0742924e-015 
		3.029635 -23.355522 1.0978934e-015 2.2496972 -23.518423 1.1425549e-015 0.94380665 
		-22.723438 4.1005225e-016 9.2125931 -22.726702 4.1137876e-016 9.2137318;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "R_MedianCoverts_Base";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
	setAttr ".sp" -type "double3" -2.4264943050271188e-031 2.0502612482791631e-016 1.7763568394002505e-015 ;
createNode mesh -n "R_MedianCoverts_BaseShape" -p "R_MedianCoverts_Base";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0 0 0.045421243 0
		 0.090842485 0 0.13626373 0 0.18168497 0 0.22710621 0 0.27252746 0 0.3179487 0 0 0.1
		 0.045421243 0.1 0.090842485 0.1 0.13626373 0.1 0.18168497 0.1 0.22710621 0.1 0.27252746
		 0.1 0.3179487 0.1 0 0.2 0.045421243 0.2 0.090842485 0.2 0.13626373 0.2 0.18168497
		 0.2 0.22710621 0.2 0.27252746 0.2 0.3179487 0.2 0 0.40000001 0.045421243 0.40000001
		 0.090842485 0.40000001 0.13626373 0.40000001 0.18168497 0.40000001 0.22710621 0.40000001
		 0.27252746 0.40000001 0.3179487 0.40000001 0 0.60000002 0.045421243 0.60000002 0.090842485
		 0.60000002 0.13626373 0.60000002 0.18168497 0.60000002 0.22710621 0.60000002 0.27252746
		 0.60000002 0.3179487 0.60000002 0 0.69999999 0.045421243 0.69999999 0.090842485 0.69999999
		 0.13626373 0.69999999 0.18168497 0.69999999 0.22710621 0.69999999 0.27252746 0.69999999
		 0.3179487 0.69999999 0 0.80000001 0.045421243 0.80000001 0.090842485 0.80000001 0.13626373
		 0.80000001 0.18168497 0.80000001 0.22710621 0.80000001 0.27252746 0.80000001 0.3179487
		 0.80000001 0 0.90000004 0.022710621 0.95000005 0.068131864 0.95000005 0.13626373
		 0.90000004 0.18168497 0.90000004 0.24981683 0.95000005 0.29523808 0.95000005 0.3179487
		 0.90000004 0.13626373 1 0.18168497 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -20.558376 6.5349867e-015 
		-22.436214 -20.879341 6.5223464e-015 -24.538425 -22.210014 6.4531065e-015 -25.229931 
		-23.616312 6.3792957e-015 -25.65749 -24.699293 6.3218075e-015 -25.678463 -25.794985 
		6.2628045e-015 -25.299353 -26.899107 6.2027973e-015 -24.654999 -27.716358 6.155017e-015 
		-22.574829 -20.697384 5.9240824e-015 -20.70179 -21.672943 5.874954e-015 -21.987434 
		-22.73901 5.8194814e-015 -22.540667 -24.282265 5.7382319e-015 -22.890812 -25.36525 
		5.6807438e-015 -22.911785 -26.458397 5.622044e-015 -22.61269 -27.289473 5.5768099e-015 
		-22.096197 -28.278259 5.5216642e-015 -20.848593 -20.96554 5.3024534e-015 -17.125687 
		-22.018358 5.2485596e-015 -18.096134 -23.088654 5.192583e-015 -18.5163 -24.701653 
		5.1074634e-015 -18.787735 -25.784636 5.0499753e-015 -18.808706 -26.875244 4.9915779e-015 
		-18.589626 -27.56768 4.9539832e-015 -18.203594 -28.546415 4.9000352e-015 -17.272486 
		-21.187473 4.0833337e-015 -13.518387 -22.260401 4.0270437e-015 -13.855852 -23.339161 
		3.9700587e-015 -14.009889 -24.755627 3.8950361e-015 -14.117385 -25.973022 3.8304126e-015 
		-14.14096 -27.058544 3.7726216e-015 -14.081914 -27.809725 3.7324672e-015 -13.963314 
		-28.768347 3.6809159e-015 -13.66519 -20.747292 2.7981308e-015 -9.1977196 -21.889442 
		2.7422836e-015 -9.2182732 -23.031599 2.6864357e-015 -9.2388268 -24.427277 2.6181918e-015 
		-9.2639446 -25.569427 2.5623443e-015 -9.2844982 -26.71158 2.5064971e-015 -9.3050537 
		-27.600212 2.4630458e-015 -9.3210449 -28.742363 2.4071984e-015 -9.3416004 -21.213007 
		2.3555847e-015 -5.7549238 -22.355085 2.2040928e-015 -5.1436658 -23.439816 2.1459529e-015 
		-4.8983769 -24.611786 2.0834048e-015 -4.760941 -25.629976 2.0293558e-015 -4.7806582 
		-26.643082 1.9759127e-015 -4.9604073 -27.429312 1.9347357e-015 -5.2419257 -28.427391 
		1.8830834e-015 -5.8946295 -21.125912 1.6076788e-015 -2.0264502 -22.03347 1.5577175e-015 
		-1.1932583 -23.290705 1.4902289e-015 -0.85991287 -24.344189 1.4338551e-015 -0.66521978 
		-25.236809 1.3864719e-015 -0.68250608 -26.199778 1.3358055e-015 -0.91624641 -26.882433 
		1.3003186e-015 -1.2871575 -27.869837 1.2496888e-015 -2.1570458 -21.414509 1.0428225e-015 
		0.3260088 -22.001902 1.0076246e-015 2.2292337 -22.751572 9.6472733e-016 3.6933327 
		-23.670561 9.1528834e-016 3.9881744 -24.45146 8.7399517e-016 3.8970423 -25.219936 
		8.3499057e-016 3.029635 -25.695004 8.1138959e-016 2.2496972 -26.587282 7.6672808e-016 
		0.94380665 -22.723438 4.1005225e-016 9.2125931 -22.748365 4.0872574e-016 9.2137318;
	setAttr -s 66 ".vt[0:65]"  22.039793015 -3.1767827e-015 11.470047 22.25754356 -3.1767827e-015 12.83832264
		 23.022830963 -3.1767827e-015 13.27383137 23.82641602 -3.1767827e-015 13.53616714
		 24.43997002 -3.1767827e-015 13.53697205 25.05386734 -3.1767827e-015 13.27649593 25.66799164 -3.1767827e-015 12.84279728
		 26.095088959 -3.1767827e-015 11.47536755 22.088785172 -2.8768424e-015 10.33635044
		 22.66318321 -2.8768424e-015 11.16387272 23.27627945 -2.8768424e-015 11.51228046 24.15608406 -2.8768424e-015 11.72245979
		 24.76963997 -2.8768424e-015 11.72326469 25.38346672 -2.8768424e-015 11.51504517 25.84518051 -2.8768424e-015 11.1680479
		 26.38366699 -2.8768424e-015 10.3419857 22.17934799 -2.5769023e-015 7.99906969 22.79209137 -2.5769023e-015 8.61994839
		 23.40530205 -2.5769023e-015 8.88145542 24.32324791 -2.5769023e-015 9.039429665 24.93680382 -2.5769023e-015 9.040234566
		 25.55056381 -2.5769023e-015 8.88426971 25.93601418 -2.5769023e-015 8.62407303 26.47422981 -2.5769023e-015 8.0047035217
		 22.24320602 -1.9770219e-015 5.64197922 22.85648918 -1.9770219e-015 5.84947586 23.46993256 -1.9770219e-015 5.93718147
		 24.27379227 -1.9770219e-015 5.99049282 24.96349716 -1.9770219e-015 5.99139786 25.57711983 -1.9770219e-015 5.93994617
		 26.00041389465 -1.9770219e-015 5.8536005 26.53808784 -1.9770219e-015 5.647614 21.68470383 -1.3416655e-015 2.82070446
		 22.37082672 -1.3416655e-015 2.82160449 23.056951523 -1.3416655e-015 2.82250476 23.8953743 -1.3416655e-015 2.82360482
		 24.58149719 -1.3416655e-015 2.82450485 25.26762199 -1.3416655e-015 2.82540512 25.80144691 -1.3416655e-015 2.82610536
		 26.48756981 -1.3416655e-015 2.82700562 22.12465286 -1.1219701e-015 0.57453489 22.76083755 -1.0772012e-015 0.16198574
		 23.37081909 -1.0772012e-015 -0.011015553 24.032045364 -1.0772012e-015 -0.11466034
		 24.60889244 -1.0772012e-015 -0.11390353 25.18560219 -1.0772012e-015 -0.0086345933
		 25.63559723 -1.0772012e-015 0.16575737 26.21190262 -1.0772012e-015 0.57989728 22.011459351 -7.4961526e-016 -1.85796916
		 22.51105309 -7.4961526e-016 -2.41258216 23.21720123 -7.4961526e-016 -2.64510965 23.81035805 -7.4961526e-016 -2.78471613
		 24.31606483 -7.4961526e-016 -2.78405261 24.86531067 -7.4961526e-016 -2.6429472 25.25819397 -7.4961526e-016 -2.40897799
		 25.8321743 -7.4961526e-016 -1.85295653 22.13456154 -4.7732075e-016 -3.39683056 22.4345417 -4.7732075e-016 -4.64603567
		 22.83392906 -4.7732075e-016 -5.61055756 23.34921837 -4.7732075e-016 -5.81393003 23.79293251 -4.7732075e-016 -5.76373863
		 24.24291229 -4.7732075e-016 -5.2067318 24.52526283 -4.7732075e-016 -4.70332479 25.052852631 -4.7732075e-016 -3.86159658
		 22.72343826 -2.0502612e-016 -9.21259308 22.73753357 -2.0502612e-016 -9.21363258;
	setAttr -s 115 ".ed[0:114]"  0 1 0 0 8 0 1 2 0 1 9 1 2 3 0 2 10 1 3 4 0
		 3 11 1 4 5 0 4 12 1 5 6 0 5 13 1 6 7 0 6 14 1 7 15 0 8 9 1 8 16 0 9 10 1 9 17 1 10 11 1
		 10 18 1 11 12 1 11 19 1 12 13 1 12 20 1 13 14 1 13 21 1 14 15 1 14 22 1 15 23 0 16 17 1
		 16 24 0 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 17 25 1 18 26 1 19 27 1 20 28 1
		 21 29 1 22 30 1 23 31 0 24 25 1 24 32 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 25 33 1 26 34 1 27 35 1 28 36 1 29 37 1 30 38 1 31 39 0 32 33 1 32 40 0 33 34 1 33 41 1
		 34 35 1 34 42 1 35 36 1 35 43 1 36 37 1 36 44 1 37 38 1 37 45 1 38 39 1 38 46 1 39 47 0
		 40 41 1 40 48 0 41 42 1 41 49 1 42 43 1 42 50 1 43 44 1 43 51 1 44 45 1 44 52 1 45 46 1
		 45 53 1 46 47 1 46 54 1 47 55 0 48 49 1 48 56 0 49 50 1 49 57 1 50 51 1 50 58 1 51 52 1
		 51 59 1 52 53 1 52 60 1 53 54 1 53 61 1 54 55 1 54 62 1 55 63 0 56 57 0 57 58 0 58 59 0
		 59 60 1 59 64 0 60 61 0 60 65 0 61 62 0 62 63 0 64 65 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 3 -16 -2
		mu 0 4 0 1 9 8
		f 4 2 5 -18 -4
		mu 0 4 1 2 10 9
		f 4 4 7 -20 -6
		mu 0 4 2 3 11 10
		f 4 6 9 -22 -8
		mu 0 4 3 4 12 11
		f 4 8 11 -24 -10
		mu 0 4 4 5 13 12
		f 4 10 13 -26 -12
		mu 0 4 5 6 14 13
		f 4 12 14 -28 -14
		mu 0 4 6 7 15 14
		f 4 15 18 -31 -17
		mu 0 4 8 9 17 16
		f 4 17 20 -33 -19
		mu 0 4 9 10 18 17
		f 4 19 22 -34 -21
		mu 0 4 10 11 19 18
		f 4 21 24 -35 -23
		mu 0 4 11 12 20 19
		f 4 23 26 -36 -25
		mu 0 4 12 13 21 20
		f 4 25 28 -37 -27
		mu 0 4 13 14 22 21
		f 4 27 29 -38 -29
		mu 0 4 14 15 23 22
		f 4 38 -46 -32 30
		mu 0 4 17 25 24 16
		f 4 39 -48 -39 32
		mu 0 4 18 26 25 17
		f 4 40 -49 -40 33
		mu 0 4 19 27 26 18
		f 4 41 -50 -41 34
		mu 0 4 20 28 27 19
		f 4 42 -51 -42 35
		mu 0 4 21 29 28 20
		f 4 43 -52 -43 36
		mu 0 4 22 30 29 21
		f 4 44 -53 -44 37
		mu 0 4 23 31 30 22
		f 4 53 -61 -47 45
		mu 0 4 25 33 32 24
		f 4 54 -63 -54 47
		mu 0 4 26 34 33 25
		f 4 55 -65 -55 48
		mu 0 4 27 35 34 26
		f 4 56 -67 -56 49
		mu 0 4 28 36 35 27
		f 4 57 -69 -57 50
		mu 0 4 29 37 36 28
		f 4 58 -71 -58 51
		mu 0 4 30 38 37 29
		f 4 59 -73 -59 52
		mu 0 4 31 39 38 30
		f 4 60 63 -76 -62
		mu 0 4 32 33 41 40
		f 4 62 65 -78 -64
		mu 0 4 33 34 42 41
		f 4 64 67 -80 -66
		mu 0 4 34 35 43 42
		f 4 66 69 -82 -68
		mu 0 4 35 36 44 43
		f 4 68 71 -84 -70
		mu 0 4 36 37 45 44
		f 4 70 73 -86 -72
		mu 0 4 37 38 46 45
		f 4 72 74 -88 -74
		mu 0 4 38 39 47 46
		f 4 75 78 -91 -77
		mu 0 4 40 41 49 48
		f 4 77 80 -93 -79
		mu 0 4 41 42 50 49
		f 4 79 82 -95 -81
		mu 0 4 42 43 51 50
		f 4 81 84 -97 -83
		mu 0 4 43 44 52 51
		f 4 83 86 -99 -85
		mu 0 4 44 45 53 52
		f 4 85 88 -101 -87
		mu 0 4 45 46 54 53
		f 4 87 89 -103 -89
		mu 0 4 46 47 55 54
		f 4 90 93 -106 -92
		mu 0 4 48 49 57 56
		f 4 92 95 -107 -94
		mu 0 4 49 50 58 57
		f 4 94 97 -108 -96
		mu 0 4 50 51 59 58
		f 4 96 99 -109 -98
		mu 0 4 51 52 60 59
		f 4 98 101 -111 -100
		mu 0 4 52 53 61 60
		f 4 100 103 -113 -102
		mu 0 4 53 54 62 61
		f 4 102 104 -114 -104
		mu 0 4 54 55 63 62
		f 4 108 111 -115 -110
		mu 0 4 59 60 65 64;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 11 ".dli[1:10]"  2 6 4 7 0 0 0 0 
		0 0;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode groupId -n "WingBase13:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase13:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase14:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase14:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Wing_Hi:WingBase13:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Wing_Hi:WingBase13:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_TailRig_groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth2:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth2:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth3:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth3:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase15:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase15:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth4:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth4:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth5:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth5:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth6:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth6:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "Wing_Hi1:WingBase13:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Wing_Hi1:WingBase13:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_TailRig_groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth7:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth7:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth8:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth8:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth9:groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Teeth9:tongue_groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId177";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId181";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId186";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId262";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId264";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId273";
	setAttr ".ihi" 0;
createNode groupId -n "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId276";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase16:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase16:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase17:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase17:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase18:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase18:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase19:groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "WingBase19:WingBase08:groupId1";
	setAttr ".ihi" 0;
createNode displayLayer -n "Original";
	setAttr ".dt" 1;
	setAttr ".do" 10;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n"
		+ "                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"left3\\\" -ps 1 47 80 -ps 2 53 100 -ps 3 47 20 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Hypershade\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"hyperShadePanel\\\" -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels  $panelName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Node Editor\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"nodeEditorPanel\\\" -l (localizedPanelLabel(\\\"Node Editor\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"NodeEditorEd\\\");\\n            nodeEditor -e \\n                -allAttributes 0\\n                -allNodes 0\\n                -autoSizeNodes 1\\n                -createNodeCommand \\\"nodeEdCreateNodeCommand\\\" \\n                -defaultPinnedState 0\\n                -ignoreAssets 1\\n                -additiveGraphingMode 0\\n                -settingsChangedCallback \\\"nodeEdSyncControls\\\" \\n                -traversalDepthLimit -1\\n                -keyPressCommand \\\"nodeEdKeyPressCommand\\\" \\n                -keyReleaseCommand \\\"nodeEdKeyReleaseCommand\\\" \\n                -nodeTitleMode \\\"name\\\" \\n                -gridSnap 0\\n                -gridVisibility 1\\n                -popupMenuScript \\\"nodeEdBuildPanelMenus\\\" \\n                -island 0\\n                -showNamespace 1\\n                -showShapes 1\\n                -showSGShapes 0\\n                -showTransforms 1\\n                -syncedSelection 1\\n                -extendToShapes 1\\n                $editorName;\\n\\t\\t\\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Node Editor\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"NodeEditorEd\\\");\\n            nodeEditor -e \\n                -allAttributes 0\\n                -allNodes 0\\n                -autoSizeNodes 1\\n                -createNodeCommand \\\"nodeEdCreateNodeCommand\\\" \\n                -defaultPinnedState 0\\n                -ignoreAssets 1\\n                -additiveGraphingMode 0\\n                -settingsChangedCallback \\\"nodeEdSyncControls\\\" \\n                -traversalDepthLimit -1\\n                -keyPressCommand \\\"nodeEdKeyPressCommand\\\" \\n                -keyReleaseCommand \\\"nodeEdKeyReleaseCommand\\\" \\n                -nodeTitleMode \\\"name\\\" \\n                -gridSnap 0\\n                -gridVisibility 1\\n                -popupMenuScript \\\"nodeEdBuildPanelMenus\\\" \\n                -island 0\\n                -showNamespace 1\\n                -showShapes 1\\n                -showSGShapes 0\\n                -showTransforms 1\\n                -syncedSelection 1\\n                -extendToShapes 1\\n                $editorName;\\n\\t\\t\\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition edge -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 0.58823532 0.33280289 0.011534025 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.713 0.0042779874 0.0042779874 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode shadingEngine -n "lambert7SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -380.95238095238102 271.42857142857144 ;
	setAttr ".vh" -type "double2" 270.2380952380953 379.76190476190482 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 12 ".hyp";
	setAttr ".hyp[0].x" -195.35714721679687;
	setAttr ".hyp[0].y" 177.38095092773437;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 1.7857142686843872;
	setAttr ".hyp[1].y" 161.90475463867187;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 198.92857360839844;
	setAttr ".hyp[2].y" 217.85714721679687;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 1.7857142686843872;
	setAttr ".hyp[3].y" 240.4761962890625;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 396.07144165039062;
	setAttr ".hyp[4].y" 177.38095092773437;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" -53.571430206298828;
	setAttr ".hyp[5].y" 161.90475463867187;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" -53.571430206298828;
	setAttr ".hyp[6].y" 161.90475463867187;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" -53.571430206298828;
	setAttr ".hyp[7].y" 161.90475463867187;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" -250.11904907226562;
	setAttr ".hyp[8].y" 339.28570556640625;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" -52.976188659667969;
	setAttr ".hyp[9].y" 402.38095092773437;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".anf" yes;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode shadingEngine -n "phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 39 ".gn";
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr ".ep" 1;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3333332538604736;
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[2]" "Original.id";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "R_PrimaryCoverts_BaseShape.iog" "lambert2SG.dsm" -na;
connectAttr "L_SecondaryCoverts_BaseShape.iog" "lambert2SG.dsm" -na;
connectAttr "R_SecondaryCoverts_BaseShape.iog" "lambert2SG.dsm" -na;
connectAttr "L_PrimaryCoverts_BaseShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "L_Alula_BaseShape.iog" "lambert3SG.dsm" -na;
connectAttr "R_Alula_BaseShape.iog" "lambert3SG.dsm" -na;
connectAttr "L_MedianCoverts_BaseShape.iog" "lambert3SG.dsm" -na;
connectAttr "R_MedianCoverts_BaseShape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "lambert2.msg" "hyperLayout1.hyp[0].dn";
connectAttr "lambert2SG.msg" "hyperLayout1.hyp[1].dn";
connectAttr "lambert3.msg" "hyperLayout1.hyp[2].dn";
connectAttr "lambert3SG.msg" "hyperLayout1.hyp[3].dn";
connectAttr "lambert4SG.msg" "hyperLayout1.hyp[4].dn";
connectAttr "lambert5SG.msg" "hyperLayout1.hyp[5].dn";
connectAttr "lambert6SG.msg" "hyperLayout1.hyp[6].dn";
connectAttr "lambert7SG.msg" "hyperLayout1.hyp[7].dn";
connectAttr "phong1SG.msg" "hyperLayout1.hyp[8].dn";
connectAttr "phong2SG.msg" "hyperLayout1.hyp[9].dn";
connectAttr "phong1SG.msg" "materialInfo7.sg";
connectAttr "phong2SG.msg" "materialInfo8.sg";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "WingBase13:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase13:WingBase08:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase14:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase14:WingBase08:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "Wing_Hi:WingBase13:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "Wing_Hi:WingBase13:WingBase08:groupId1.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_TailRig_groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "Gryphon15_Eye_groupId262.msg" ":initialShadingGroup.gn" -na;
connectAttr "Gryphon15_Eye_groupId264.msg" ":initialShadingGroup.gn" -na;
connectAttr "Gryphon15_Eye_CalebEarbits_groupId262.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_Eye_CalebEarbits_groupId264.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId262.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_Eye_CalebEarbits_CalebReel04_groupId264.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "WingBase15:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase15:WingBase08:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "Gryphon15_tongue_groupId262.msg" ":initialShadingGroup.gn" -na;
connectAttr "Gryphon15_tongue_groupId264.msg" ":initialShadingGroup.gn" -na;
connectAttr "Gryphon15_tongue_CalebEarbits_groupId262.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_tongue_CalebEarbits_groupId264.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId262.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_tongue_CalebEarbits_CalebReel04_groupId264.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Wing_Hi1:WingBase13:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "Wing_Hi1:WingBase13:WingBase08:groupId1.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_BackClaws_TailRig_groupId1.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_BackClaws_Eye_groupId262.msg" ":initialShadingGroup.gn" -na
		;
connectAttr "Gryphon15_BackClaws_Eye_groupId264.msg" ":initialShadingGroup.gn" -na
		;
connectAttr "Gryphon15_BackClaws_Eye_CalebEarbits_groupId262.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_BackClaws_Eye_CalebEarbits_groupId264.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId262.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "Gryphon15_BackClaws_Eye_CalebEarbits_CalebReel04_groupId264.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "WingBase16:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase16:WingBase08:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase17:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase17:WingBase08:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase18:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase18:WingBase08:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase19:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "WingBase19:WingBase08:groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "R_Secondaries_BaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Secondaries_BaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Primaries_BaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Primaries_BaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Secondaries_BLNDShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Secondaries_BLNDShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Primaries_BLNDShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Primaries_BLNDShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of WingBase_V04.ma
