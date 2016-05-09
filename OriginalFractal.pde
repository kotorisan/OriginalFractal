public int ilya = 20;
public void setup()
{
	size(600, 600);
	background(0);
}
public void draw()
{
	fractal(0, 600, 600);
}
public void mouseWheel(MouseEvent umi) //optional
{
	if (ilya > 300)
	{
		ilya = ilya + umi.getCount()*100;
		println(ilya);
	}
	else if (ilya > 152) {
		ilya += umi.getCount()*50;
		println(ilya);
	}
	else if(ilya > 77)
	{
		ilya += umi.getCount()*10;
		println(ilya);
	}
	else if(ilya > 39)
	{
		ilya += umi.getCount()*8;
		println(ilya);
	}
	else if (ilya > 20)
	{
		ilya += umi.getCount()*5;
		println(ilya);
	}
	else if (ilya > 10)
	{
		ilya += umi.getCount()*3;
		println(ilya);
	}
	else
	{
		ilya += umi.getCount()*2;
		println(ilya);
	}

}
public void fractal(int x, int y, int len) 
{
	fill(255,0,0,90);
	if (ilya < 5)
	{
		ilya = 5;
	}
	if(ilya > 605)
	{
		ilya = 603;
	}
	if (len >= ilya)
	{
		fractal(x,y,len/2);
		fractal(x+len/2, y, len/2);
		fractal(x+len/4, y-len/2, len/2);
	}
	else
	{
		ellipse(x, y, x+len/2, y-len);
		//triangle(x, y, x+len/2, y-len, x+len, y);
	}
}