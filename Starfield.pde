Particle[]james = new Particle[1000];
void setup()
{
	size(800,800);
	for(int j = 0; j < james.length ; j++){
		james[j] =  new NormalParticle();
	}
	james[james.length - 1] = new OddballParticle();
	james[james.length - 2] = new JumboParticle();
}
void draw()
{	
	background(0);
	for (int i = 0; i < james.length; i++) {
		james[i].move();
		james[i].show();
	}
}
class NormalParticle implements Particle
{
	double myX,myY, angle, speed;
	int myColor;
	NormalParticle(){
		myX = 400;
		myY = 400;
		myColor = color((int)(Math.random()*100),(int)(Math.random()*100),(int)(Math.random()*100));
		angle = Math.random()*Math.PI*2;
		speed = Math.random()*100;
	}
	void move(){
		myX += Math.cos(angle)*speed;
		myY += Math.sin(angle)*speed;
		angle += .02;
	}
	void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, 5, 5);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{	
	double myX,myY, angle, speed;
	int myColor;
	OddballParticle(){
		myX = 400;
		myY = 400;
		myColor = color((int)(Math.random()*100),(int)(Math.random()*100),(int)(Math.random()*100));
		angle = Math.random()*PI*2;
		speed = Math.random()*10;
	}
	public void show(){
		fill(myColor);
		rect((float)myX, (float)myY, 30, 30);;
	}
	public void move(){
		myX += Math.cos(angle)*speed;
		myY += Math.sin(angle)*speed;
		angle += .02;
	}
}
class JumboParticle extends NormalParticle
{	
	void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, 50, 50);
	}
}