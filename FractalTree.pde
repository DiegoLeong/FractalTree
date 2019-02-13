private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here
	double angle1 = angle - branchAngle;
	double angle2 = angle + branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	if(branchLength > smallestBranch)
	{
		line(x,y,endX1,endY1);
		line(x,y,endX2,endY2);
		drawBranches(endX1,endY1,branchLength*.75,angle-1);
		drawBranches(endX2,endY2,branchLength*.75,angle+1);
	}


} 
