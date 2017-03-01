package helloaspectj;

public aspect HelloAspectJ2 {

	pointcut callSayHello(): call(* HelloAspectJDemo.sayHello());
	
	after() returning (Object retObj): callSayHello(){
		System.out.println("Returning normally with " + retObj);
	}
	
	after() throwing (Exception e): callSayHello(){
		System.out.println("Threw an exception: " + e);
	}
	
	after() : callSayHello(){
		System.out.println("Returned or threw an Exception");
	}
}
