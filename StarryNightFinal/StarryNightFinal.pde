import controlP5.*;
import java.util.*;

float rand1;
float rand2;
float rand3;
float rand4;
float rand5;
float rand6;
float rand7;
float rand8;
float rand9;
float rand10;
float rand11;
float rand12;
float rand13;
float rand14;
float rand15;
ControlP5 cp5;
boolean clicked;
boolean place;
boolean con1;
boolean con2;
int x1, y1, x2, y2;
int rStar;
int gStar;
int bStar;
int heightStar;
int back;
int sRed;
int sGreen;
int sBlue;
boolean spacemode;

///////////////////////////////////////////////////////////////////////////////////

void setup() {
  size(650,650);
  sRed = 25;
  sGreen = 25;
  sBlue = 112;
  rStar = 255;
  gStar = 255;
  background(sRed,sGreen,sBlue);
  rand1 = random(.5,.95);
  rand2 = random(.3,.4);
  rand3 = random(.5,.75);
  rand4 = random(.5,.8); 
  rand5 = random(.7,.95);   
  rand6 = random(.3,.5);    
  rand7 = random(.6,.8);  
  rand8 = random(.2,.4);  
  rand9 = random(.7,.9);
  rand10 = random(.3,.6);
  rand11 = random(.8,.9);
  rand12 = random(.7,.9);
  rand13 = random(.1,.7);
  rand14 = random(.5,.8);
  rand15 = random(.1,.2);
  con1 = false;
  con2 = false;
  
  cp5 = new ControlP5(this);
  
  PFont pfont = createFont("Boulder", 20, true);
  ControlFont font = new ControlFont(pfont, 241);
  
  cp5.addButton("Reset")
    .setValue(0)
    .setPosition(20,20)
    .setColorBackground(color(0,0,0))
    .setSize(100,50)
    .setId(1);

  cp5.getController("Reset")
    .getCaptionLabel()
    .setFont(font)
    .setSize(20); 
    
  cp5.addButton("Libra")
    .setValue(100)
    .setPosition(150,20)
    .setColorBackground(color(0,0,0))
    .setSize(100,50)
    .setId(2);
    
  cp5.getController("Libra")
    .getCaptionLabel()
    .setFont(font)
    .setSize(14);    
 
  cp5.addButton("Little Dipper")
    .setValue(100)
    .setPosition(280,20)
    .setColorBackground(color(0,0,0))
    .setSize(100,50)
    .setId(3);  
   
  cp5.getController("Little Dipper")
    .getCaptionLabel()
    .setFont(font)
    .setSize(11);    

}

//////////////////////////////////////////////////////////////////////////////

void draw() {
  
  stroke(sRed,sGreen,sBlue);
  strokeWeight(1.5);
  strokeJoin(BEVEL);
  
  fill(rStar, gStar, bStar);
  pushMatrix();
  translate(40, height*rand1);
  rotate(frameCount / -100.0);
  star(0, 0, 12, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(80, height*rand2);
  rotate(frameCount / 100.0);
  star(0, 0, 10, 25, 5);  
  popMatrix();
  
  pushMatrix();
  translate(120, height*rand3);
  rotate(frameCount / 125.0);
  star(0, 0, 12, 30, 5); 
  popMatrix(); 
  
  pushMatrix();
  translate(160, height*rand4);
  rotate(frameCount / 225.0);
  star(0, 0, 15, 37.5, 5);  
  popMatrix();
  
  pushMatrix();
  translate(200, height*rand5);
  rotate(frameCount / -250.0);
  star(0, 0, 10, 25, 5); 
  popMatrix();
  
  pushMatrix();
  translate(240, height*rand6);
  rotate(frameCount / 300.0);
  star(0, 0, 12, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(280, height*rand7);
  rotate(frameCount / 150.0);
  star(0, 0, 12, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(320, height*rand8);
  rotate(frameCount / -200.0);
  star(0, 0, 12, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(360, height*rand9);
  rotate(frameCount / -175.0);
  star(0, 0, 9, 22.5, 5);  
  popMatrix();
  
  pushMatrix();
  translate(400, height*rand10);
  rotate(frameCount / 120.0);
  star(0, 0, 12, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(440, height*rand11);
  rotate(frameCount / 120.0);
  star(0, 0, 8, 18, 5); 
  popMatrix();
  
  pushMatrix();
  translate(480, height*rand12);
  rotate(frameCount / 120.0);
  star(0, 0, 12, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(520, height*rand13);
  rotate(frameCount / 120.0);
  star(0, 0, 20, 50, 5); 
  popMatrix();
  
  pushMatrix();
  translate(560, height*rand14);
  rotate(frameCount / 120.0);
  star(0, 0, 12, 30, 5); 
  popMatrix();
  
  pushMatrix();
  translate(600, height*rand15);
  rotate(frameCount / 120.0);
  star(0, 0, 12, 30, 5); 
  popMatrix(); 
  
  
  if(place == true) {
    fill(rStar, gStar, bStar);
    stroke(rStar, gStar, bStar);
    strokeWeight(5);
    line(x1, y1, x2, y2);
    place = false;
  }
  
//////////////////////////////////////////////////////////////////////////////////

    if(con1 == true) {
      
      background(sRed,sGreen,sBlue);
      
      pushMatrix();
      translate(140, height*.51);
      rotate(frameCount / 60.0);
      star(0, 0, 10, 25, 5); 
      popMatrix(); 
      
      pushMatrix();
      translate(200, height*.47);
      rotate(frameCount / 120.0);
      star(0, 0, 10, 25, 5);  
      popMatrix(); 
      
      pushMatrix();
      translate(260, height*.43);
      rotate(frameCount / -150.0);
      star(0, 0, 10, 25, 5); 
      popMatrix(); 
      
      pushMatrix();
      translate(325, height*.28);
      rotate(frameCount / -250.0);
      star(0, 0, 10, 25, 5);  
      popMatrix(); 
      
      pushMatrix();
      translate(445, height*.41);
      rotate(frameCount / 100.0);
      star(0, 0, 10, 25, 5);  
      popMatrix(); 
      
      pushMatrix();
      translate(420, height*.63);
      rotate(frameCount / 80.0);
      star(0, 0, 10, 25, 5);  
      popMatrix(); 
      
      pushMatrix();
      translate(325, height*.7);
      rotate(frameCount / 200.0);
      star(0, 0, 10, 25, 5);  
      popMatrix(); 
      
      pushMatrix();
      translate(325, height*.8);
      rotate(frameCount / -100.0);
      star(0, 0, 10, 25, 5);  
      popMatrix(); 
      
///////////////////////////////////////////////////////////////////////////////////

      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(165, 320, 175, 315);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(225, 295, 237, 288);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(275, 252, 305, 205);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(351, 200, 423, 244);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(442, 294, 426, 381);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(396, 430, 352, 444);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(325, 480, 325, 490);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(335, 210, 396, 386);
      
    }
      
//////////////////////////////////////////////////////////////////////////////////

    if (con2 == true) {
      
      background(sRed,sGreen,sBlue);
    
      pushMatrix();
      translate(40, height*.4);
      rotate(frameCount / 120.0);
      star(0, 0, 12, 30, 5); 
      popMatrix();
    
      pushMatrix();
      translate(130, height*.52);
      rotate(frameCount / 120.0);
      star(0, 0, 10, 25, 5); 
      popMatrix();
      
      pushMatrix();
      translate(250, height*.62);
      rotate(frameCount / 120.0);
      star(0, 0, 10, 25, 5); 
      popMatrix();
      
      pushMatrix();
      translate(400, height*.62);
      rotate(frameCount / -150.0);
      star(0, 0, 10, 25, 5); 
      popMatrix();
      
      pushMatrix();
      translate(550, height*.5);
      rotate(frameCount / 120.0);
      star(0, 0, 10, 25, 5); 
      popMatrix();
      
      pushMatrix();
      translate(620, height*.65);
      rotate(frameCount / 200.0);
      star(0, 0, 10, 25, 5); 
      popMatrix();
      
      pushMatrix();
      translate(440, height*.8);
      rotate(frameCount / -80.0);
      star(0, 0, 10, 25, 5); 
      popMatrix();
      
//////////////////////////////////////////////////////////////////////////

      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(60, 280, 112, 319);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(155, 347, 220, 393);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(277, 403, 370, 403);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(424, 386, 522, 335);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(567, 350, 602, 400);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(594, 437, 465, 505);
      
      fill(rStar, gStar, bStar);
      stroke(rStar, gStar, bStar);
      strokeWeight(5);
      line(430, 493, 408, 432);
          
    }
}

//////////////////////////////////////////////////////////////////////////////////

void controlEvent(ControlEvent theEvent) {
  
 switch(theEvent.getController().getId()) {
    case(1):
    setup();
    con1 = false;
    con2 = false;
    break;
    
    case(2):
    con1 = true;
    con2 = false;
    break; 
    
    case(3):
    con2 = true;
    con1= false;
    break;
    
 }
} 

/////////////////////////////////////////////////////////////////////////////////

void mouseClicked() {
  redraw();
  color c = get(mouseX, mouseY);
  color yellow = color(255, 255, 0);
  if(c == yellow) {
    if (clicked) {
      x2 = mouseX;
      y2 = mouseY;
      clicked = false;
      place = true;
      return;
    }
    x1 = mouseX;
    y1 = mouseY;
    clicked = true;
  }
}

/////////////////////////////////////////////////////////////////////////////////////

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

/////////////////////////////////////////////////////////////////////////////////////
