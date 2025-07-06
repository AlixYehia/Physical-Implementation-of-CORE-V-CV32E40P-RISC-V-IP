set DESIGN riscv_core

set DB_PATH 	"/mnt/hgfs/stdcell_rvt/db_nldm"
set FFLIB 		"$DB_PATH/saed14rvt_ff0p88v25c.db"
set SSLIB 		"$DB_PATH/saed14rvt_ss0p6vm40c.db"

set TARGET_LIBRARY_FILES [list $SSLIB $FFLIB]
set LINK_LIBRARY_FILES [list * $SSLIB $FFLIB]  

set link_library   $LINK_LIBRARY_FILES
set target_library $TARGET_LIBRARY_FILES

set_app_var link_library $link_library
#create_lib  -ref_libs $NDM_REFERENCE_LIB_DIRS  -technology $TECH_FILE /home/ICer/cv32e40p_updated/work/${DESIGN}
 #open_lib /home/ICer/cv32e40p_updated/work/riscv_core

set DESIGN_REF_TECH_PATH          "/mnt/hgfs/SAED14nm_PDK_06052019/SAED14nm_PDK_12232018/techfiles"
set TECH_FILE                     "${DESIGN_REF_TECH_PATH}/saed14nm_1p9m_mw.tf"  ;#  Milkyway technology file



create_lib -technology  $TECH_FILE -ref_libs " /mnt/hgfs/SAED14nm_EDK_CORE_RVT_v_062020/stdcell_rvt/ndm/saed14rvt_frame_only.ndm \
                                              /mnt/hgfs/SAED14nm_EDK_CORE_RVT_v_062020/stdcell_rvt/ndm/saed14rvt_frame_timing_ccs.ndm " ${DESIGN}.dlib


