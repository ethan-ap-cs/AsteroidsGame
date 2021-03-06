class Bullet extends Floater{
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
	double dRadians;
	public Bullet(Spaceship theShip){
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
		myColor = color(255, 255, 255);
		System.out.println(myCenterX + ", " + myCenterY);
	}
	public void show(){
		fill(myColor);
    	stroke(myColor);
    	//translate the (x,y) center of the ship to the correct position
    	ellipse((float)myCenterX, (float)myCenterY, 10, 10);
    	//translate((float)myCenterX, (float)myCenterY);

	}
}