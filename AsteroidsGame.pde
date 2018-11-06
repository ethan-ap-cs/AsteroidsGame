//your variable declarations here
Spaceship s;
Star [] z;
Asteroid [] a;
public void setup(){
	background(0);
	size(400, 400);
	s = new Spaceship();
	a = new Asteroid[20];
	for (int i = 0; i < a.length; i++){
		a[i] = new Asteroid();
	}
	z = new Star[150];
	for (int i = 0; i < z.length; i++){
		z[i] = new Star();
	}
}
public void draw(){
	background(0);
	for (int i = 0; i < z.length; i++){
		z[i].show();
	}
	for (int i = 0; i < a.length; i++){
		a[i].move();
		a[i].show();
		//a[i].setPointDirection((int)(Math.random()*360));
		a[i].setDirectionX(.7);
		a[i].setDirectionY(.7);
	}
	s.show();
	s.move();
}
public void keyPressed(){
	if (key == 'w'){
		s.accelerate(1.1);
	}
	if (key == 's'){
		s.accelerate(-1.1);
	}
	if (key == 'a'){
		s.turn(12);
	}
	if (key == 'd'){
		s.turn(-12);
	}
	if (key == 'z'){
		s.setDirectionX(0);
		s.setDirectionY(0);
		s.setPointDirection((int)(Math.random()*360));
		s.setX((int)(Math.random()*400));
		s.setY((int)(Math.random()*400));
	}
}
