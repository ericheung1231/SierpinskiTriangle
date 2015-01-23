int triSiz;
public void setup()
{
	size(1000,1000, OPENGL);
	background(0);

}
public void draw()
{
	noFill();
	triSiz = mouseY;
	// stroke(255);
	fill(255);
	//stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	sierpinski(mouseX-triSiz/2,mouseY,triSiz);
	fill(0,0,0,100);
	rect(0,0,1000,1000);
}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, float len) 
{
	if (len > 30)
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-(len*(sqrt(3))/4), len/2);
	}
	else
	{
		stroke(100,255,255);
		triangle(x, y, x+len, y, 500, 400);
		stroke(255);
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
}