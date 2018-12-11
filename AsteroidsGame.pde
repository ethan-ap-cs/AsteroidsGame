//your variable declarations here
Spaceship s;
Star [] z;
ArrayList <Asteroid> a;
ArrayList <Bullet> b;
public void setup(){
	background(0);
	size(400, 400);
	s = new Spaceship();
	a = new ArrayList <Asteroid> ();
	b = new ArrayList <Bullet> ();
	for (int i = 0; i < 20; i++){
		a.add(new Asteroid());
		a.get(i).setDirectionX((Math.random()*3 -1)/2);
		a.get(i).setDirectionY((Math.random()*3 -1)/2);
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
	for (int i = 0; i < a.size(); i++){
		a.get(i).show();
		a.get(i).move();
		if(dist(s.getX(), s.getY(), a.get(i).getX(), a.get(i).getY()) <= 18){
			a.remove(i);
		}
	}
	s.show();
	s.move();
}
public void keyPressed(){
	if (key == 'f'){
		b.add(new Bullet(s));
		b.get(b.size() - 1).show();
		b.get(b.size() - 1).move();
	}
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
