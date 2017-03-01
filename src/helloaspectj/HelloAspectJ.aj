package helloaspectj;

public aspect HelloAspectJ {

	pointcut callSayHello(): call(* HelloAspectJDemo.sayHello());
	
	before() : callSayHello(){
		System.out.println("Before call sayHello");
	}
	
	after() : callSayHello(){
		System.out.println("Afer call sayHello");
	}
}
