
primitive Easing
	
	fun easeInExpo (from:F64, to:F64, v:F64):F64 =>
	    ((to - from) * Math.pow(2, 10 * ((v / 1) - 1))) + from

	fun easeOutExpo (from:F64, to:F64, v:F64):F64 =>
	    ((to - from) * (-Math.pow(2, -10 * (v / 1)) + 1)) + from