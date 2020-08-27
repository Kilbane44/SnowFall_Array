int FLAKE_COUNT = 50;
float[] snowX = new float[FLAKE_COUNT];
float[] snowY = new float[FLAKE_COUNT];
float[] snowSpeed = new float[FLAKE_COUNT];
PImage snow;


PImage land;


void setup()
{
  
  size(500,500);
  for(int i=0; i < FLAKE_COUNT; i++)
  {
    snowX[i] = random(width);
    snowY[i]= 0;
    snowSpeed[i] = random(1,2);
  }
  land = loadImage("snowLand.jpg");
  snow = loadImage("Snowflake.png");
  snow.resize(25,25);
  land.resize(width,height);
}

void draw()
{
  //background(255);
  image(land,0,0);
  
  for(int i=0; i < FLAKE_COUNT; i++)
  {
    image(snow,snowX[i], snowY[i]);
    snowY[i]+= snowSpeed[i];
    
    if(snowY[i] > height)
    {
      snowY[i] =0;
    }
  }
}