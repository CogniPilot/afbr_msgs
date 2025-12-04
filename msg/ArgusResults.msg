uint8 STATUS_OK_IDLE								= 0
uint8 STATUS_IGNORE									= 1
uint8 STATUS_BUSY									= 2
uint8 STATUS_INITIALIZING							= 3
uint8 ERROR_FAIL									= -1
uint8 ERROR_ABORTED									= -2
uint8 ERROR_READ_ONLY								= -3
uint8 ERROR_OUT_OF_RANGE							= -4
uint8 ERROR_INVALID_ARGUMENT						= -5
uint8 ERROR_TIMEOUT									= -6
uint8 ERROR_NOT_INITIALIZED							= -7
uint8 ERROR_NOT_SUPPORTED							= -8
uint8 ERROR_NOT_IMPLEMENTED							= -9
uint8 STATUS_S2PI_GPIO_MODE							= 51
uint8 ERROR_S2PI_RX_ERROR							= -51
uint8 ERROR_S2PI_TX_ERROR							= -52
uint8 ERROR_S2PI_INVALID_STATE						= -53
uint8 ERROR_S2PI_INVALID_BAUDRATE					= -54
uint8 ERROR_S2PI_INVALID_SLAVE						= -55
uint8 ERROR_NVM_EMPTY								= -98
uint8 ERROR_NVM_OUT_OF_RANGE						= -99
uint8 STATUS_ARGUS_BUFFER_BUSY						= 104
uint8 STATUS_ARGUS_POWERLIMIT						= 105
uint8 STATUS_ARGUS_PLL_NOT_LOCKED					= 106
uint8 STATUS_ARGUS_NO_OBJECT						= 108
uint8 uint8 STATUS_ARGUS_EEPROM_BIT_ERROR			= 109
uint8 STATUS_ARGUS_INVALID_EEPROM					= 110
uint8 ERROR_ARGUS_NOT_CONNECTED						= -101
uint8 ERROR_ARGUS_INVALID_CFG						= -102
uint8 ERROR_ARGUS_BUFFER_EMPTY						= -103
uint8 ERROR_ARGUS_INVALID_SLAVE						= -104
uint8 ERROR_ARGUS_INVALID_MODE						= -105
uint8 ERROR_ARGUS_BIAS_VOLTAGE_REINIT				= -107
uint8 ERROR_ARGUS_LASER_MONITOR_INACTIVE			= -108
uint8 ERROR_ARGUS_EEPROM_FAILURE					= -109
uint8 ERROR_ARGUS_STALLED							= -110
uint8 ERROR_ARGUS_BGL_EXCEEDANCE					= -111
uint8 ERROR_ARGUS_XTALK_AMPLITUDE_EXCEEDANCE		= -112
uint8 ERROR_ARGUS_LASER_FAILURE						= -113
uint8 ERROR_ARGUS_DATA_INTEGRITY_LOST				= -114
uint8 ERROR_ARGUS_RANGE_OFFSET_CALIBRATION_FAILED	= -115
uint8 ERROR_ARGUS_VSUB_CALIBRATION_FAILED			= -116
uint8 ERROR_ARGUS_BUSY								= -191
uint8 ERROR_ARGUS_UNKNOWN_MODULE					= -199
uint8 ERROR_ARGUS_UNKNOWN_CHIP						= -198
uint8 ERROR_ARGUS_UNKNOWN_LASER						= -197
uint8 STATUS_ARGUS_BUSY_TEST						= 191
uint8 STATUS_ARGUS_BUSY_UPDATE						= 192
uint8 STATUS_ARGUS_BUSY_CAL_SEQ						= 195
uint8 STATUS_ARGUS_BUSY_MEAS						= 196
uint8 STATUS_ARGUS_STARTING							= 100
uint8 STATUS_ARGUS_ACTIVE							= 103

std_msgs/Header			header
int16					status
ArgusMeasureFrame		frame[<=1]
builtin_interfaces/Time	time_stamp 			# Time in sec and usec converted to ROS 2 timestamp (sec and nsec)
											# (measured since the last MCU startup/reset) when the measurement was triggered.
ArgusPixel 				pixel[<=8][<=4]		# [long edge][short edge]
ArgusPixel 				pixel_ref[<=1]
ArgusResultsBin 		bin[<=1]
ArgusResultsAux 		auxiliary[<=1]
ArgusResultsDebug 		debug[<=1]