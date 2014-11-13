boolean drop=false;
float x=350;
float y = 0;
float speed = 0;  
float gravity = 0.2;  
int sz=100;
void setup() {
  size(700, 700);
  noStroke();
}

void draw() {
  background(220);
  fill(random(0, 250), random(0, 250), random(0, 250), random(0, 250));
  ellipseMode(CENTER);
  ellipse(x, y, sz, sz);
  if (drop) {
    // Add speed to location.

    y = y + speed;
    // Add gravity to speed. so now every time it bounces, speed increases
    speed = speed + gravity;
  }
  // If square reaches the bottom Reverse speed
  if (y + sz/2 > height) {
    speed = speed * -0.95;
  }
}


void mousePressed(){
 drop = !drop; 
}
