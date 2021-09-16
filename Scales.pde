void setup() {
  size(1920, 1080);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for (int y = 0; y<1300; y=y+250){
    for (int x = 0; x<2000; x=x+150){
      snowman(x, y);
    }
  }
}
void snowman (int x, int y) {
  strokeWeight(1.5);
  //body
fill(255,255,255);
ellipse(x, y, 150, 150);
ellipse(x, y-100, 100, 100);
//head
ellipse(x, y-180, 75, 75);

fill(0,0,0);
//eyes
ellipse(x+15, y-183, 10,10);
ellipse(x-15,y-183, 10,10);

fill((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
ellipse(x, y-80, 10, 10);
ellipse(x, y-100, 10, 10);
ellipse(x, y-120, 10, 10);
fill(0,0,0);
//mouth
ellipse(x, y-160, 20,20);
//nose
fill(255, 165, 0);
triangle(x,y-180,x,y-175,x-20,y-178);
//arms
strokeWeight(7);
line(x+45, y-115, x+75, y-80);
line(x-45, y-115, x-75, y-80);
}
