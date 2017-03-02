package tutorial_aspectJ5;

import figures.Point;

public class PointObservingTest {

	public static void main(String[] args ){
		
		Point point1 = new Point(100, 100);
		
		point1.move(10, 10);
		
		System.out.println("----------");
		
		Point point2 = new Point(200, 200);
		
		point2.move(15, 10);
		
		point2.move(15, 10);
		
		point2.move(25, 10);
	}
}
