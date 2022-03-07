int soldierx;
int soldiery;
int robotx;
int roboty;
//laser
  int laserx;
  int lasera;
void setup() {
    //soildier random place
  int a;
  a=160;
  int b = floor(random(4))*80;
  soldiery=a+b;
  soldierx=0;
  int c;
  c=160;
  int d=floor(random(4))*80;
  roboty=c+d;
  int e;
  e=160;
  int f=floor(random(6))*80;
  robotx=e+f;
  laserx=robotx;
  lasera=laserx+15;
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
  
  if (soldierx>=640){
    soldierx=-80;
  }    
 
  PImage soil; //soil image
  soil=loadImage("img/soil.png");
  image(soil,0,160,640,320);
  //soildier random place
  PImage soldier;
  soldier=loadImage("img/soldier.png");
  image(soldier,soldierx+=3,soldiery,80,80);
  //robot
  PImage robot;
  robot=loadImage("img/robot.png");
  image(robot,robotx,roboty,80,80);
  //laser
  
  
  
  strokeWeight(10);
  stroke(255,0,0);
  line (lasera ,roboty+40,laserx+20,roboty+40);
  laserx=laserx-2;
  lasera=lasera-3;
  if(laserx<=robotx-160){
    laserx=robotx;
    lasera=laserx+15;
  }
  if(laserx-lasera>=4){
    lasera=laserx-4;
   }

}
