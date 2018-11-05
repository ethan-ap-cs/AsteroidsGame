class Asteroid extends Floater{
	private int size = 30;
	private int rotatationSpeed;
	public Asteroid(){
		myColor =  color(0,255,100);
		myCenterX = (int)(Math.random()*400);
		myCenterY = (int)(Math.random()*400);
		myDirectionX = myDirectionY = 0;
		myPointDirection = Math.random() * 2 * Math.PI;
		corners = 3;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = (int)(Math.random()*size)-(size/2);
    	yCorners[0] = (int)(Math.random()*size)-(size/2);
    	xCorners[1] = (int)(Math.random()*size)-(size/2);
    	yCorners[1] = (int)(Math.random()*size)-(size/2);
    	xCorners[2] = (int)(Math.random()*size)-(size/2);
    	yCorners[2] = (int)(Math.random()*size)-(size/2);
	}
	public void setX(int x){
		myCenterX = x;
	}
	public int getX(){
		return (int)myCenterX;
	}
	public void setY(int y){
		myCenterY = y;
	}
	public int getY(){
		return (int)myCenterY;
	}
	public void setDirectionX(double x){
		myDirectionX = x;
	}
	public double getDirectionX(){
		return myDirectionX;
	}
	public void setDirectionY(double y){
		myDirectionY = y;
	}
	public double getDirectionY(){
		return myDirectionY;
	}
	public void setPointDirection(int degrees){
		myPointDirection = degrees;
	}
	public double getPointDirection(){
		return myPointDirection;
	}
	public void move(){
		turn(rotatationSpeed);
		super.move();
	}
}