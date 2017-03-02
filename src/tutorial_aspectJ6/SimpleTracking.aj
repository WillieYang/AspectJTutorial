package tutorial_aspectJ6;

import org.aspectj.lang.Signature;

public aspect SimpleTracking {

	pointcut tracedCall(): call(* *(..))
						&& within(SimpleTracingTest);
	
	before(): tracedCall(){
		Signature sig = thisJoinPointStaticPart.getSignature();
		
		String line = "" 
				+ thisJoinPointStaticPart.getSourceLocation()
				.getLine();
		
		String sourceName = thisJoinPointStaticPart.getSourceLocation()
					.getWithinType().getCanonicalName();
		
		System.out.println("Call form" + sourceName + "line" + line +"\n to"
				+ sig.getDeclaringTypeName() + "." +sig.getName() + "\n");
	}
}
