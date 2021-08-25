int WIDTH = 800;
int HEIGHT = 600;
void setup(){
  frameRate(60);
  size(800, 600);
}

float i = 0;
void draw(){
  //int points = (int)map(mouseX, 0, WIDTH, 0, 200);
  int points = 200;
  //int r = (int)map(mouseY, 0, HEIGHT, 0, (HEIGHT/2)-20);
  int r = (HEIGHT/2)-20;
  //int factor = (int)map(mouseX, 0, width, 0, 100);
  float factor = i;
  background(0, 0, 5);
  noFill();
  stroke(255, 210, 200, 30);
  translate(width/2, height/2);
  circle(0, 0, (r*2));
  
  //for(float i = 0; i < points; i++){
  //  fill(255);
  //  float theta = (i/points)*TWO_PI;
  //  circle(r*cos(theta), r*sin(theta), 5);
  //}
  for(float j = 0; j < points; j++){
    float t1 = (j/points)*TWO_PI;
    float t2 = (((j*factor)/points)%points)*TWO_PI;
    float x1 = r*cos(t1-PI);
    float y1 = r*sin(t1-PI);
    float x2 = r*cos(t2-PI);
    float y2 = r*sin(t2-PI);
    line(x1, y1, x2, y2);
    push();
    stroke(255, 0, 0);
    point(x1+((x2-x1)/2), y1+((y2-y1)/2));
    pop();
  }
  i+=.01;
}
