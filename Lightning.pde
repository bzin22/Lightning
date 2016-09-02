 // AP Computer Programming 
 // Lightning Code - Bryan Zin
 // Block 3 Mr. Simon

  // initial lightning bolt
  int x1 = 120; 
  int y1 = 120;
  int x2 = 140;
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

	// ground
	fill(102,51,0);
	rect(0, 650, 700, 50);

	//house
	fill(96,96,96); 
	rect(150, 600, 100, 50); // body
	fill(51,25,0); 
	triangle(150, 600, 250, 600, 200,575); // roof
	fill(0,0,0);
	rect(175, 625, 25, 25); // door

	
	// lightning 
	stroke(255,0,0);
	strokeWeight(2);
	while (y2 < 650) // loop to make the "bolt"
	{
		line(x1, y1, x2, y2);
		x1 = x2;
		y1 = y2;
		x2 = x2 + (int)(Math.random()*9);
		y2 = y2 + (int)(Math.random()*18);
	}
	
}

void backchange()
{
	background(255, 255, 255);
}

void mousePressed()
{
	redraw(); 
	backchange();
	x1 = 120;
	y1 = 120;
	x2 = (int)(Math.random()*300);
	y2 = (int)(Math.random()*7);

}