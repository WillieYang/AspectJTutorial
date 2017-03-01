package tutorial_aspectj;

public aspect AspectJ_1 {

	pointcut callSetX(): call(void figures.Point.setX(int)) && within (ClassTest_1); 
	
	before(): callSetX(){
		System.out.println("Before call Point.setX(int)");
	}
}
