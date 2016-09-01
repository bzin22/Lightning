 // AP Computer Programming 
 // Lightning Code - Bryan Zin
 // Block 3 Mr. Simon

  // initial lightning bolt
  int x1 = 350; 
  int y1 = 0;
  int x2 = 340;
  int y2 = 10;

void setup()
{
  size(700,700);
  background(0);
  noLoop();
}

void draw()
{
	// Zeus
	stroke(255,255,255);
	line(120, 70, 100, 90); // left leg
	line(120, 70, 150, 100); // right leg
	line(120, 70, 120, 40); // body
	line(120, 40, 90, 70); // left arm
	line(120, 40, 150, 70); //right arm
	ellipse(120, 25, 30, 30); // head

	// clouds
	fill(128, 128, 128);
	noStroke();
	ellipse(120, 120, 60, 60);
	ellipse(90, 120, 60, 60);
	ellipse(150, 120, 60, 60);
	ellipse(70, 150, 60, 60);
	ellipse(120, 150, 60, 60);

	ellipse(190, 120, 60, 60);
	ellipse(160, 120, 60, 60);
	ellipse(220, 120, 60, 60);
	ellipse(140, 150, 60, 60);
	ellipse(190, 150, 60, 60);
	
	// lightning 
	stroke(255,0,0);
	while (y2 < 700) // loop to make the "bolt"
	{
		line(x1, y1, x2, y2);
		x1 = x2;
		y1 = y2;
		x2 = x2 + (int)(Math.random()*9);
		y2 = y2 + (int)(Math.random()*18);
	}
	
}
void mousePressed()
{
	redraw(); 
	x1 = (int)Math.random()*9;
	y1 = 0;
	x2 = (int)Math.random()*9;
	y2 = (int)Math.random()*7;

}