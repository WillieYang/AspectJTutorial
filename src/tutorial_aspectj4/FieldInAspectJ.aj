package tutorial_aspectj4;

import java.io.PrintStream;

public aspect FieldInAspectJ {

	PrintStream logStream = System.err;
	
	pointcut move(): call(* figures.Point.move(int, int)) && within(FieldInAspectJTest);
	
	before() : move(){
		logStream.println("Before Point move");
	}
}
