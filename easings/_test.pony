use "ponytest"


actor Main is TestList
	new create(env: Env) => PonyTest(env, this)
	new make() => None

	fun tag tests(test: PonyTest) =>
	test(_Test1)
		
	
 	fun @runtime_override_defaults(rto: RuntimeOptions) =>
		rto.ponyanalysis = 1
		rto.ponynoblock = true
		rto.ponygcinitial = 0
		rto.ponygcfactor = 1.0


class iso _Test1 is UnitTest
	fun name(): String => "placeholder"
  
  //fun printTestCode(f:String, v1:F32, v2:F32) =>
  //  @fprintf[I32](@pony_os_stdout[Pointer[U8]](), "if %s(%s).string() != \"%s\" then error end\n".cstring(), f.cstring(), v1.string().cstring(), v2.string().cstring())
    
  
	fun apply(h: TestHelper) =>
    try
    
      //printTestCode("Easing32.bounceEaseIn", 0.25, Easing32.bounceEaseIn(0.25))
      //printTestCode("Easing32.bounceEaseOut", 0.25, Easing32.bounceEaseOut(0.25))
      //printTestCode("Easing32.bounceEaseInOut", 0.25, Easing32.bounceEaseInOut(0.25))
      
        
      if Easing32.linear(0.25).string() != "0.25" then error end
      
      if Easing32.quadraticEaseIn(0.25).string() != "0.0625" then error end
      if Easing32.quadraticEaseOut(0.25).string() != "0.4375" then error end
      if Easing32.quadraticEaseInOut(0.25).string() != "0.125" then error end
      
      if Easing32.cubicEaseIn(0.25).string() != "0.015625" then error end
      if Easing32.cubicEaseOut(0.25).string() != "0.578125" then error end
      if Easing32.cubicEaseInOut(0.25).string() != "0.0625" then error end
      
      if Easing32.quarticEaseIn(0.25).string() != "0.00390625" then error end
      if Easing32.quarticEaseOut(0.25).string() != "0.683594" then error end
      if Easing32.quarticEaseInOut(0.25).string() != "0.03125" then error end
      
      if Easing32.quinticEaseIn(0.25).string() != "0.000976562" then error end
      if Easing32.quinticEaseOut(0.25).string() != "0.762695" then error end
      if Easing32.quinticEaseInOut(0.25).string() != "0.015625" then error end
      
      if Easing32.sineEaseIn(0.25).string() != "0.0761205" then error end
      if Easing32.sineEaseOut(0.25).string() != "0.382683" then error end
      if Easing32.sineEaseInOut(0.25).string() != "0.146447" then error end
      
      if Easing32.circularEaseIn(0.25).string() != "0.0317541" then error end
      if Easing32.circularEaseOut(0.25).string() != "0.661438" then error end
      if Easing32.circularEaseInOut(0.25).string() != "0.0669873" then error end
      
      if Easing32.exponentialEaseIn(0.25).string() != "0.00552427" then error end
      if Easing32.exponentialEaseOut(0.25).string() != "0.823223" then error end
      if Easing32.exponentialEaseInOut(0.25).string() != "0.015625" then error end
      
      if Easing32.elasticEaseIn(0.25).string() != "-0.00510376" then error end
      if Easing32.elasticEaseOut(0.25).string() != "0.932351" then error end
      if Easing32.elasticEaseInOut(0.25).string() != "-0.0110485" then error end
      
      if Easing32.backEaseIn(0.25).string() != "-0.161152" then error end
      if Easing32.backEaseOut(0.25).string() != "1.10846" then error end
      if Easing32.backEaseInOut(0.25).string() != "-0.1875" then error end
      
      if Easing32.bounceEaseIn(0.25).string() != "0.0411367" then error end
      if Easing32.bounceEaseOut(0.25).string() != "0.472656" then error end
      if Easing32.bounceEaseInOut(0.25).string() != "0.140625" then error end
      
      if Easing32.tweenQuadraticEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenQuadraticEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenQuadraticEaseInOut(0,1,1) != 1 then error end
      
      if Easing32.tweenCubicEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenCubicEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenCubicEaseInOut(0,1,1) != 1 then error end
      
      if Easing32.tweenQuarticEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenQuarticEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenQuarticEaseInOut(0,1,1) != 1 then error end
      
      if Easing32.tweenQuinticEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenQuinticEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenQuinticEaseInOut(0,1,1) != 1 then error end
      
      if Easing32.tweenSineEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenSineEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenSineEaseInOut(0,1,1) != 1 then error end
      
      if Easing32.tweenCircularEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenCircularEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenCircularEaseInOut(0,1,1) != 1 then error end
      
      if Easing32.tweenExponentialEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenExponentialEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenExponentialEaseInOut(0,1,1) != 1 then error end
      
      if Easing32.tweenElasticEaseIn(0,1,1) != 1 then error end
      if Easing32.tweenElasticEaseOut(0,1,1) != 1 then error end
      if Easing32.tweenElasticEaseInOut(0,1,1) != 1 then error end
      
      if (Easing32.tweenBackEaseIn(0,1,1) - 1).abs() > 0.01 then error end
      if (Easing32.tweenBackEaseOut(0,1,1) - 1).abs() > 0.01 then error end
      if (Easing32.tweenBackEaseInOut(0,1,1) - 1).abs() > 0.01 then error end
      
      if (Easing32.tweenBounceEaseIn(0,1,1) - 1).abs() > 0.01 then error end
      if (Easing32.tweenBounceEaseOut(0,1,1) - 1).abs() > 0.01 then error end
      if (Easing32.tweenBounceEaseInOut(0,1,1) - 1).abs() > 0.01 then error end
    
      h.complete( true )
    else
      
      h.env.out.print(recover val String.copy_cstring(__error_loc) end)
      
      h.complete( false )
    end
