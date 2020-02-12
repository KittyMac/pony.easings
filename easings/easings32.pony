
// Ported from: https://github.com/warrenm/AHEasing/blob/master/AHEasing/easing.c

primitive Easing32

  // Modeled after the line y = x
  fun linear(p:F32):F32 =>
    p
	
  // MARK: ------------- QUADRATIC -------------
  
  // Modeled after the parabola y = x^2
  fun quadraticEaseIn(p:F32):F32 =>
  	p * p
  
  // Modeled after the parabola y = -x^2 + 2x
  fun quadraticEaseOut(p:F32):F32 =>
  	-(p * (p - 2))
  
  // Modeled after the piecewise quadratic
  // y = (1/2)((2x)^2)             ; [0, 0.5)
  // y = -(1/2)((2x-1)*(2x-3) - 1) ; [0.5, 1]
  fun quadraticEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		return 2 * (p * p)
  	else
  		return ((-2 * (p * p)) + (4 * p)) - 1
    end
  
  fun tweenQuadraticEaseIn(a:F32, b:F32, t:F32):F32 => a + (quadraticEaseIn(t) * (b - a))
  fun tweenQuadraticEaseOut(a:F32, b:F32, t:F32):F32 => a + (quadraticEaseOut(t) * (b - a))
  fun tweenQuadraticEaseInOut(a:F32, b:F32, t:F32):F32 => a + (quadraticEaseInOut(t) * (b - a))
  
  
  // MARK: ------------- CUBIC -------------
  
  // Modeled after the cubic y = x^3
  fun cubicEaseIn(p:F32):F32 =>
  	(p * p) * p

  // Modeled after the cubic y = (x - 1)^3 + 1
  fun cubicEaseOut(p:F32):F32 =>
  	let f = (p - 1)
  	((f * f) * f) + 1

  // Modeled after the piecewise cubic
  // y = (1/2)((2x)^3)       ; [0, 0.5)
  // y = (1/2)((2x-2)^3 + 2) ; [0.5, 1]
  fun cubicEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		return (4 * p) * (p * p)
  	else
  		let f = ((2 * p) - 2)
  		return ((0.5 * f) * (f * f)) + 1
    end
  
  fun tweenCubicEaseIn(a:F32, b:F32, t:F32):F32 => a + (cubicEaseIn(t) * (b - a))
  fun tweenCubicEaseOut(a:F32, b:F32, t:F32):F32 => a + (cubicEaseOut(t) * (b - a))
  fun tweenCubicEaseInOut(a:F32, b:F32, t:F32):F32 => a + (cubicEaseInOut(t) * (b - a))

  
  // MARK: ------------- QUARTIC -------------
  
  // Modeled after the quartic x^4
  fun quarticEaseIn(p:F32):F32 =>
  	(p * p) * (p * p)

  // Modeled after the quartic y = 1 - (x - 1)^4
  fun quarticEaseOut(p:F32):F32 =>
  	let f = (p - 1)
  	((f * f) * (f * (1 - p))) + 1

  // Modeled after the piecewise quartic
  // y = (1/2)((2x)^4)        ; [0, 0.5)
  // y = -(1/2)((2x-2)^4 - 2) ; [0.5, 1]
  fun quarticEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		return ((8 * p) * (p * p)) * p
  	else
  		let f = (p - 1)
  		return (((-8 * f) * (f * f)) * f) + 1
    end
  
  fun tweenQuarticEaseIn(a:F32, b:F32, t:F32):F32 => a + (quarticEaseIn(t) * (b - a))
  fun tweenQuarticEaseOut(a:F32, b:F32, t:F32):F32 => a + (quarticEaseOut(t) * (b - a))
  fun tweenQuarticEaseInOut(a:F32, b:F32, t:F32):F32 => a + (quarticEaseInOut(t) * (b - a))
  
  
  // MARK: ------------- QUINTIC -------------
  
  // Modeled after the quintic y = x^5
  fun quinticEaseIn(p:F32):F32 =>
  	((p * p) * (p * p)) * p

  // Modeled after the quintic y = (x - 1)^5 + 1
  fun quinticEaseOut(p:F32):F32 =>
  	let f = (p - 1)
  	(((f * f) * (f * f)) * f) + 1

  // Modeled after the piecewise quintic
  // y = (1/2)((2x)^5)       ; [0, 0.5)
  // y = (1/2)((2x-2)^5 + 2) ; [0.5, 1]
  fun quinticEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		return 16 * (((p * p) * (p * p)) * p)
  	else
  		let f = ((2 * p) - 2)
  		return  (0.5 * (((f * f) * (f * f)) * f)) + 1
    end
  
  fun tweenQuinticEaseIn(a:F32, b:F32, t:F32):F32 => a + (quinticEaseIn(t) * (b - a))
  fun tweenQuinticEaseOut(a:F32, b:F32, t:F32):F32 => a + (quinticEaseOut(t) * (b - a))
  fun tweenQuinticEaseInOut(a:F32, b:F32, t:F32):F32 => a + (quinticEaseInOut(t) * (b - a))
  
  
  // MARK: ------------- SINE -------------
  
  // Modeled after quarter-cycle of sine wave
  fun sineEaseIn(p:F32):F32 =>
  	((p - 1) * F32.pi_2()).sin() + 1

  // Modeled after quarter-cycle of sine wave (different phase)
  fun sineEaseOut(p:F32):F32 =>
  	(p * F32.pi_2()).sin()

  // Modeled after half sine wave
  fun sineEaseInOut(p:F32):F32 =>
  	0.5 * (1 - (p * F32.pi()).cos() )
  
  fun tweenSineEaseIn(a:F32, b:F32, t:F32):F32 => a + (sineEaseIn(t) * (b - a))
  fun tweenSineEaseOut(a:F32, b:F32, t:F32):F32 => a + (sineEaseOut(t) * (b - a))
  fun tweenSineEaseInOut(a:F32, b:F32, t:F32):F32 => a + (sineEaseInOut(t) * (b - a))
  
  
  // MARK: ------------- CIRCULAR -------------
  
  // Modeled after shifted quadrant IV of unit circle
  fun circularEaseIn(p:F32):F32 =>
  	1 - (1 - (p * p)).sqrt()

  // Modeled after shifted quadrant II of unit circle
  fun circularEaseOut(p:F32):F32 =>
  	((2 - p) * p).sqrt()

  // Modeled after the piecewise circular function
  // y = (1/2)(1 - sqrt(1 - 4x^2))           ; [0, 0.5)
  // y = (1/2)(sqrt(-(2x - 3)*(2x - 1)) + 1) ; [0.5, 1]
  fun circularEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		return 0.5 * (1 - (1 - (4 * (p * p))).sqrt())
  	else
  		return 0.5 * ((-((2 * p) - 3) * ((2 * p) - 1)).sqrt() + 1)
    end
  
  fun tweenCircularEaseIn(a:F32, b:F32, t:F32):F32 => a + (circularEaseIn(t) * (b - a))
  fun tweenCircularEaseOut(a:F32, b:F32, t:F32):F32 => a + (circularEaseOut(t) * (b - a))
  fun tweenCircularEaseInOut(a:F32, b:F32, t:F32):F32 => a + (circularEaseInOut(t) * (b - a))
  
  
  // MARK: ------------- EXPONENTIAL -------------
  
  // Modeled after the exponential function y = 2^(10(x - 1))
  fun exponentialEaseIn(p:F32):F32 =>
  	if p == 0.0 then 
      p 
    else
      F32(2).pow(10 * (p - 1))
    end

  // Modeled after the exponential function y = -2^(-10x) + 1
  fun exponentialEaseOut(p:F32):F32 =>
  	if p == 1.0 then
      p
    else
      1 - F32(2).pow(-10 * p)
    end

  // Modeled after the piecewise exponential
  // y = (1/2)2^(10(2x - 1))         ; [0,0.5)
  // y = -(1/2)*2^(-10(2x - 1))) + 1 ; [0.5,1]
  fun exponentialEaseInOut(p:F32):F32 =>
  	if (p == 0.0) or (p == 1.0) then
      return p
    end

  	if p < 0.5 then
  		return 0.5 * F32(2).pow((20 * p) - 10)
    else
  		return (-0.5 * F32(2).pow((-20 * p) + 10)) + 1
    end
  
  fun tweenExponentialEaseIn(a:F32, b:F32, t:F32):F32 => a + (exponentialEaseIn(t) * (b - a))
  fun tweenExponentialEaseOut(a:F32, b:F32, t:F32):F32 => a + (exponentialEaseOut(t) * (b - a))
  fun tweenExponentialEaseInOut(a:F32, b:F32, t:F32):F32 => a + (exponentialEaseInOut(t) * (b - a))
  
  
  
  // MARK: ------------- ELASTIC -------------
  
  // Modeled after the damped sine wave y = sin(13pi/2*x)*pow(2, 10 * (x - 1))
  fun elasticEaseIn(p:F32):F32 =>
  	(13 * F32.pi_2() * p).sin() * F32(2).pow(10 * (p - 1))

  // Modeled after the damped sine wave y = sin(-13pi/2*(x + 1))*pow(2, -10x) + 1
  fun elasticEaseOut(p:F32):F32 =>
  	((-13 * F32.pi_2() * (p + 1)).sin() * F32(2).pow(-10 * p)) + 1

  // Modeled after the piecewise exponentially-damped sine wave:
  // y = (1/2)*sin(13pi/2*(2*x))*pow(2, 10 * ((2*x) - 1))      ; [0,0.5)
  // y = (1/2)*(sin(-13pi/2*((2x-1)+1))*pow(2,-10(2*x-1)) + 2) ; [0.5, 1]
  fun elasticEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		return 0.5 * (13 * F32.pi_2() * (2 * p)).sin() * F32(2).pow(10 * ((2 * p) - 1))
  	else
  		return 0.5 * ( ((-13 * F32.pi_2() * (((2 * p) - 1) + 1)).sin() * F32(2).pow(-10 * ((2 * p) - 1))) + 2 )
    end
  
  fun tweenElasticEaseIn(a:F32, b:F32, t:F32):F32 => a + (elasticEaseIn(t) * (b - a))
  fun tweenElasticEaseOut(a:F32, b:F32, t:F32):F32 => a + (elasticEaseOut(t) * (b - a))
  fun tweenElasticEaseInOut(a:F32, b:F32, t:F32):F32 => a + (elasticEaseInOut(t) * (b - a))

  
  // MARK: ------------- BACK -------------
  
  // Modeled after the overshooting cubic y = x^3-x*sin(x*pi)
  fun backEaseIn(p:F32):F32 =>
  	((p * p) * p) - (p * (p * F32.pi()).sin())

  // Modeled after overshooting cubic y = 1-((1-x)^3-(1-x)*sin((1-x)*pi))
  fun backEaseOut(p:F32):F32 =>
  	let f = (1 - p)
  	1 - (  ((f * f) * f) - (f * (f * F32.pi()).sin() ) )

  // Modeled after the piecewise overshooting cubic function:
  // y = (1/2)*((2x)^3-(2x)*sin(2*x*pi))           ; [0, 0.5)
  // y = (1/2)*(1-((1-x)^3-(1-x)*sin((1-x)*pi))+1) ; [0.5, 1]
  fun backEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		let f = 2 * p
  		return 0.5 * (((f * f) * f) - (f * (f * F32.pi()).sin()) )
    else
  		let f = (1 - ((2 * p) - 1))
  		return (0.5 * (1 - (((f * f) * f) - (f * (f * F32.pi()).sin())  ))) + 0.5
    end
  
  fun tweenBackEaseIn(a:F32, b:F32, t:F32):F32 => a + (backEaseIn(t) * (b - a))
  fun tweenBackEaseOut(a:F32, b:F32, t:F32):F32 => a + (backEaseOut(t) * (b - a))
  fun tweenBackEaseInOut(a:F32, b:F32, t:F32):F32 => a + (backEaseInOut(t) * (b - a))

  
  // MARK: ------------- BOUNCE -------------
  
  fun bounceEaseIn(p:F32):F32 =>
  	1 - bounceEaseOut(1 - p)

  fun bounceEaseOut(p:F32):F32 =>
  	if p < (4 / 11.0) then
  		return ((121.0 * p) * p) / 16.0
    elseif p < (8.0 / 11.0) then
  		return (((363.0 / 40.0) * p * p) - ((99.0 / 10.0) * p)) + (17.0 / 5.0)
    elseif p < (9.0 / 10.0) then
  		return (((4356.0 / 361.0) * p * p) - ((35442.0 / 1805.0) * p)) + (16061.0 / 1805.0)
    else
  		return (((54.0 / 5.0) * p * p) - ((513.0 / 25.0) * p)) + (268.0 / 25.0)
    end

  fun bounceEaseInOut(p:F32):F32 =>
  	if p < 0.5 then
  		return (0.5 * bounceEaseIn(p * 2))
    else
  		return (0.5 * bounceEaseOut((p * 2) - 1)) + 0.5
    end
  
  fun tweenBounceEaseIn(a:F32, b:F32, t:F32):F32 => a + (bounceEaseIn(t) * (b - a))
  fun tweenBounceEaseOut(a:F32, b:F32, t:F32):F32 => a + (bounceEaseOut(t) * (b - a))
  fun tweenBounceEaseInOut(a:F32, b:F32, t:F32):F32 => a + (bounceEaseInOut(t) * (b - a))

  
  