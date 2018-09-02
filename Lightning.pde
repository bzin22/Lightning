 // AP Computer Programming 
 // Lightning Code - Bryan Zin
 // Block 3 Mr. Simon
  // initial lightning bolt
  int x1 = 120; 
  int y1 = 120;
  int x2 = 140;
  int y2 = 10;

  // explosion
  int intitalRadius = 10;

  // person being bolted

  // head
  int xHead = 410;
  int yHead = 580; 
  int radiusHead = 20;
  // body
  int x1body = 410;
  int y1body = 590;
  int x2body = 410;
  int y2body = 625;
  // arms
  int x1arm = 390;
  int y1arm = 605;
  int x2arm = 430;
  int y2arm = 605;
  // left leg
  int x1left = 410;
  int y1left = 625;
  int x2left = 390;
  int y2left = 650;
  // right leg
  int x1right = 410;
  int y1right = 625;
  int x2right = 430;
  int y2right = 650;


void setup()
{
  size(700,700);
  background(0);
  noLoop();
}

void draw()
{
	// person on ground
	stroke (255,255,255);
	ellipse(xHead, yHead, radiusHead, radiusHead);	// head
	line(x1body, y1body, x2body, y2body); // body
	line(x1arm, y1arm, x2arm, y2arm); // arm
	line(x1left, y1left, x2left, y2left); // left leg
	line(x1right, y1right, x2right, y2right); // right leg

	// Zeus
	stroke(153,153,0);
	line(120, 70, 100, 90); // left leg
	line(120, 70, 150, 100); // right leg
	line(120, 70, 120, 40); // body
	line(120, 40, 90, 70); // left arm
	line(120, 40, 150, 70); //right arm
	fill(153, 153, 0);
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

	// house
	fill(96,96,96); 
	rect(150, 500, 200, 150); // body
	fill(51,25,0); 
	triangle(150, 500, 350, 500, 250,390); // roof
	fill(0,0,0);
	rect(225, 575, 50, 75); // door

	
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

	/*
	if (x2 <= 350) 
	{
		for (int j = 0; j < 400; j++) 
		{
			fill(96,96,96);
			noStroke();
			ellipse(350, 400, intitalRadius, intitalRadius);
			for (int i = 0; i < 300; i++) 
			{
				intitalRadius += 30;
				stroke(255,255,255);
				text("System Error: Zeus is now bored of killing lowly humans.", 350, 350);
			}
			
		}
		
	}
	*/
}

void mousePressed()
{
	redraw(); 
	/* if (true) 
		{
			xHead = 600;
			yHead = 640;
			x1body = 0;
		    y1body = 670;
		    x2body = 475;
		    y2body = 670;
		} 
	*/
	
	x1 = 120;
	y1 = 120;
	x2 = (int)(Math.random()*300);
	y2 = (int)(Math.random()*7);

}
