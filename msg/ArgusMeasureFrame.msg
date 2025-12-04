uint8 ARGUS_STATE_NONE					= 0x0000
uint8 ARGUS_STATE_XTALK_MONITOR_ACTIVE	= 0x0001
uint8 ARGUS_STATE_DUAL_FREQ_MODE		= 0x0002
uint8 ARGUS_STATE_MEASUREMENT_FREQ		= 0x0004
uint8 ARGUS_STATE_DEBUG_MODE			= 0x0008
uint8 ARGUS_STATE_WEAK_SIGNAL			= 0x0010
uint8 ARGUS_STATE_BGL_WARNING			= 0x0020
uint8 ARGUS_STATE_BGL_ERROR				= 0x0040
uint8 ARGUS_STATE_PLL_LOCKED			= 0x0080
uint8 ARGUS_STATE_LASER_WARNING			= 0x0100
uint8 ARGUS_STATE_LASER_ERROR			= 0x0200
uint8 ARGUS_STATE_HAS_DATA				= 0x0400
uint8 ARGUS_STATE_HAS_AUX_DATA			= 0x0800
uint8 ARGUS_STATE_SATURATED_PIXELS		= 0x0100
uint8 ARGUS_STATE_DCA_POWER_HIGH		= 0x2000
uint8 ARGUS_STATE_DCA_GAIN_MED_LOW		= 0x4000
uint8 ARGUS_STATE_DCA_GAIN_MED_HIGH		= 0x8000
uint8 ARGUS_STATE_DCA_GAIN_HIGH			= 0xC000
uint8 ARGUS_STATE_DCA_MIN				= 0x10000
uint8 ARGUS_STATE_DCA_MAX				= 0x20000
uint8 ARGUS_STATE_DCA_RESET				= 0x20000

uint32	integration_time			# The integration time determines the measured time between the start signal and the IR
uint32	px_en_mask					# Pixel enabled mask for the 32 pixels sorted by x-y-indices.
uint32	ch_en_mask					# ADS channel enabled mask for the remaining channels 31 .. 63 (miscellaneous values)
uint32	state						# The current state of the measurement frame
float32	analog_integration_depth	# Pattern count per sample in uq10.6, determines the analog integration depth.
uint16	digital_integration_depth	# Sample count per phase/frame, determines the digital integration depth.
float32	OutputPower					# Laser Modulation Current per sample in uq12.4 mA, determines the optical output power. 
uint8	BiasCurrent					# Laser Bias Current Settings in LSB.
uint8	PixelGain					# Charge pump voltage per sample in LSB, determines the pixel gain.
int8	pll_offset					# PLL Frequency Offset, caused by temperature compensation, in PLL_INT_PRD LSBs.
uint8	pll_ctrl_cur				# The current PLL_CTRL_CUR value.
