set ad_hdl_dir    	[pwd]
set ad_phdl_dir   	[pwd]
set proj_dir		$ad_hdl_dir/projects/fmcomms2/zc702

source $ad_hdl_dir/projects/scripts/adi_project.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

adi_project_create fmcomms2_zc702 $proj_dir config_tx.tcl

adi_project_files fmcomms2_zc702 [list \
  "../common/prcfg.v" \
  "$ad_hdl_dir/library/prcfg/common/prcfg_top.v" \
  "$ad_hdl_dir/library/prcfg/default/prcfg_dac.v" \
  "$ad_hdl_dir/library/prcfg/default/prcfg_adc.v" \
  "system_top.v" \
  "system_constr.xdc"\
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/common/zc702/zc702_system_constr.xdc" ]

adi_project_run fmcomms2_zc702