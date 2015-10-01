this document describes the procedure for finding a proper time constant for our averaging circuit given a certain bitrate and carrier frequency

time constant max
	we're transmitting bytes as 115000baud, so 920Kbit/s
	to ensure that the cap is fully charged, we will let at least 5 time constants go by for each bit (e^-5 = .006 or 99% of signal amplitude)
	so max TC is (time of 1 bit)/5
	(1/920e3)/5 = 2.173e-7

time constant min
