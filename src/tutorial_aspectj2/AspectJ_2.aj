package tutorial_aspectj2;

import figures.Point;

public aspect AspectJ_2 {

	pointcut callMove(Point point, int dx, int dy)
					: call(* figures.Point.move(int, int))
							&& args(dx, dy) && target(point) && within(ClassTest_2);
	
	before(Point point, int dx, int dy) : callMove(point, dx, dy){
		System.out.println("Before call move(" + dx +"," + dy +")");
		System.out.println(point.toString());
	}
}
