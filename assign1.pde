int soldierX;
int soldierY;
int robotX;
int robotY;
//laser
  int laserX;
  int laserA;
void setup() {
    //soildier random place
  int a;
  a=160;
  int b = floor(random(4))*80;
  soldierY=a+b;
  soldierX=0;
  int c;
  c=160;
  int d=floor(random(4))*80;
  robotY=c+d;
  int e;
  e=160;
  int f=floor(random(6))*80;
  robotX=e+f;
  laserX=robotX;
  laserA=laserX;
  size(640, 480, P2D);
  PImage sky; //sky image
  sky=loadImage("img/bg.jpg");
  image(sky,0,0,640,480);
  PImage soil; //soil image
  soil=loadImage("img/soil.png");
  image(soil,0,160,640,320);
  noStroke(); //grass
  fill(124,402,25);
  rect(0,145,640,15);
  PImage heart; //life image
  heart= loadImage("img/life.png");
  image(heart,10,10,50,51);
  image(heart,80,10,50,51);
  image(heart,150,10,50,51);
  PImage groundhog; //groundhhog image
  groundhog=loadImage("img/groundhog.png");
  image(groundhog,280,80,80,80);
  
  noStroke(); //sun
  fill(255,255,0);
  ellipse(590,50,130,130);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
}

void draw() {
  
  if (soldierX>=640){
    soldierX=-80;
  }    
 
  PImage soil; //soil image
  soil=loadImage("img/soil.png");
  image(soil,0,160,640,320);
  //soildier random place
  PImage soldier;
  soldier=loadImage("img/soldier.png");
  image(soldier,soldierX+=3,soldierY,80,80);
  //robot
  PImage robot;
  robot=loadImage("img/robot.png");
  image(robot,robotX,robotY,80,80);
  //laser
  
  
  
  strokeWeight(10);
  stroke(255,0,0);
  line (laserA+25 ,robotY+37,laserX+25,robotY+37);
  laserX=laserX-2;
  laserA=laserA-4;
  if(laserX<=robotX-160){
    laserX=robotX;
    laserA=laserX;
  }
  if(laserX-laserA>=40){
    laserA=laserX-40;
   }

}
