package tutorial_aspectJ5;

import java.util.ArrayList;
import java.util.List;

import figures.Point;

public aspect PointObserving {

	private List<Point> Point.observers = new ArrayList<Point>();
	
	pointcut moveAction(Point point): call(void Point.move(int, int))
									&& target(point)
									&& within(PointObservingTest);
	
	after(Point point) : moveAction(point){
		System.out.println("Point moved");
		point.observers.add(point);
		
		System.out.println("-"+point.observers);
	}
	
	public static void addObserver(Point p){
		
	}
	
	public static void removeObserver(Point p){
		
	}
}
