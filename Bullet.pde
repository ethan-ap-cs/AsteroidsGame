class Bullet extends Floater{
	double dRadians;
	public Bullet(Spaceship theShip){
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
	}
	public void show(){
		fill(myColor);
    	stroke(myColor);
    	//translate the (x,y) center of the ship to the correct position
    	translate((float)myCenterX, (float)myCenterY);
    	ellipse(myCenterX, myCenterY, 10, 10);

	}
}