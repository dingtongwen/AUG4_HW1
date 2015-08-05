float x;
float y;
float px;
float py;

float easing=0.05;
float w;

void setup(){
  size(600,600);
  background(0);
  smooth();
  stroke(0,102);
  
}

void draw(){
  x=x+(mouseX-x)*easing;
  y=y+(mouseY-y)*easing;
  stroke(random(255),0,255,200);
  w = dist(x,y,px,py);
  strokeWeight(w);
  line(x,y,px,py);
  line(width-x,width-y,width-px,width-py);
  
  px=x;
  py=y;
  if(mousePressed){
    background(0);
  }

}
