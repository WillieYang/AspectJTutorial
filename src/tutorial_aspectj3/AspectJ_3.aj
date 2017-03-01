package tutorial_aspectj3;

import figures.FigureElement;
import figures.Point;

public aspect AspectJ_3 {

	pointcut moveAction(): (
			call(void FigureElement.move(int, int)) ||
			call(void Point.setX(int))				||
			call(void Point.setY(int))
			)
			&& within(ClassTest_3);
	
	before() : moveAction(){
		System.out.println("Before move");
	}
}
