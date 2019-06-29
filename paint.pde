color c[] = {#FC4C4C,#00FF70,#4852FF,#FFFF00,0};

void setup() {
  background(255);
  size(1900,980);
  int x = 20,d = 0,w = 1; 
  while(x < width-70) {
    if(d < 5)
      fill(c[(x-10)/60]);
    else if(w < 9) {
      noFill();
      strokeWeight(w);
      line(x+10,35,x+40,35);
      w+=2;
    }
    strokeWeight(1);
    rect(x,10,50,50);
    x+=60;
    d++;
  }
}

void draw() {
  if(mousePressed) {
    int x = 10;
    while(x < width-70) {
      if(mouseX > x && mouseX < x+50 && mouseY > 10 && mouseY < 60 && (x-10)/60 < 5)
        stroke(c[(x-10)/60]);
      else if(mouseX > x && mouseX < x+50 && mouseY > 10 && mouseY < 60 && (x-10)/60 < 9 ) {
          strokeWeight((2*(x-10)/60)-9);
      }
      x+=60;
    }
    if(mouseY > 80)
      line(mouseX,mouseY,pmouseX,pmouseY);
  }
}

void keyPressed() {
  if(key == 's')
    save("my_drawing.png");
}
