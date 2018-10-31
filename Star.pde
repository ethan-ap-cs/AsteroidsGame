class Star{
	int myX, myY, myColor;
  	public Star(){
	  	myX = (int)(Math.random()*400);
	  	myY = (int)(Math.random()*400);
	  	myColor = color((int)(Math.random()*88)+87);
  	}
  	void show(){
  		stroke(myColor);
  		fill(myColor);
  		ellipse(myX, myY, 5, 5);
  	}
}
