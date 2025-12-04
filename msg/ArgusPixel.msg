uint8 PIXEL_STATUS_OK			= 0x00		# Pixel is ok.
uint8 PIXEL_STATUS_OFF			= 0x01		# Pixel was disabled and not read from the device.
uint8 PIXEL_STATUS_SAT			= 0x02		# Pixel was saturated.
uint8 PIXEL_STATUS_BIN_EXCL		= 0x04		# Pixel was excluded from the 1D result.
uint8 PIXEL_STATUS_INVALID		= 0x08		# Pixel data is invalid.
uint8 PIXEL_STATUS_PREFILTERED	= 0x10		# Pixel was pre-filtered by static mask.
uint8 PIXEL_STATUS_NO_SIGNAL	= 0x20		# Pixel has no valid signal.
uint8 PIXEL_STATUS_OUT_OF_SYNC	= 0x40		# Pixel has lost signal trace.
uint8 PIXEL_STATUS_STALLED		= 0x80		# Pixel value is stalled due to errors.

float32	range							# Range in meters, raw before calibration (q9.22)
float32	phase							# Phase in units of PI (uq1.15)
float32	amplitude						# Amplitudes of measured signals in LSB - 0 is Pixel Off, 0xFFFF is Overflow/Error (uq12.4)
uint8	status							# Pixel status, determines if the pixel is disabled, saturated, etc
int8	range_window					# The unambiguous window determined by the dual frequency feature. 
float32	amplitude_raw					# The raw amplitudes of measured signals in LSB (uq12.4)
float32	uncorrelated_noise				# The individual pixel uncorrelated noise (EMA averaged over time).
float32	snr								# The pixel signal-to-noise ratio.
