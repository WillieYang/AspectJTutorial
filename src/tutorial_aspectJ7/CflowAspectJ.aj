package tutorial_aspectJ7;

public aspect CflowAspectJ {

	pointcut call_cflow_call(): !cflowbelow(call(* MyClass.callA()))
								&& within(CFLowDemo || MyClass);
	
	before() : call_cflow_call(){		
		System.out.println(
				"Join Point at:" + thisJoinPointStaticPart.getSourceLocation().getWithinType().getCanonicalName()
				+ "-->" + thisJoinPointStaticPart.getSourceLocation().getLine());
	}			
}
