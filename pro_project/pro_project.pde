PImage archer;

PVector position;
float playerSpeed = 5;

arrow a;

ArrayList<arrow> arrows = new ArrayList<arrow>();

void setup() {

  size(800, 800);
  
  imageMode(CENTER);
  
  position = new PVector(100, 475);
  a = new arrow();
 
  stroke(255, 0, 0);
  
  archer = loadImage("archer.png");
  archer.resize(50, 250);
}

void draw() {

  PVector mouse = new PVector(mouseX, mouseY);
  PVector direction = mouse.copy().sub(position);
  
  fill(0,255,0);
  rect(0, 600, 800, 200);
  
  image(archer, position.x, position.y);
  
  stroke(255,0,0);
  line(mouseX, mouseY, position.x, position.y);
  
  ellipse(position.x, position.y, 40, 40);
  
  direction.normalize();
  direction.mult(5);
  
  for(arrow arr : arrows) {
    arr.Render();
  }
  
  position.add(direction);
}

void keyPressed() {

  if (key == ' ') {
  
    arrows.add(new arrow());
    
  }

}
