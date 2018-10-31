//your variable declarations here
Spaceship s;
Star [] z;
public void setup(){
	background(0);
	size(400, 400);
	s = new Spaceship();
	z = new Star[100];
	for (int i = 0; i < z.length; i++){
		z[i] = new Star();
	}
}
public void draw(){
	background(0);
	for (int i = 0; i < z.length; i++){
		z[i].show();
	}
	s.show();
	s.move();
}
public void keyPressed(){
	if (key == 'w'){
		s.accelerate(0.9);
	}
	if (key == 's'){
		s.accelerate(-0.9);
	}
	if (key == 'a'){
		s.turn(10);
	}
	if (key == 'd'){
		s.turn(-10);
	}
	if (key == 'z'){
		s.setDirectionX(0);
		s.setDirectionY(0);
		s.setPointDirection((int)(Math.random()*360));
		s.setX((int)(Math.random()*400));
		s.setY((int)(Math.random()*400));
	}
}
