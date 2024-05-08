import processing.sound.*;

WhiteNoise impulse;
Env env; 

boolean trigger = false;

void setup() {
  size(640, 360);
  background(255);
  noStroke();
  fill(0, 100, 0);
  rect(width/2, 0, width/2, height);
  
  frameRate(20);
  
  impulse = new WhiteNoise(this);
  env = new Env(this);
}

void draw() { 
  fill(0, 150, 0);
  boolean newTrigger = mouseX > width/2;
  if (newTrigger != trigger) {
    trigger = newTrigger;
    if (trigger) {
      env.play(impulse, 0, .01, 1, 0);
      fill(150, 0, 0);
    }
  }
  rect(width/2, 0, width/2, height);
} 
