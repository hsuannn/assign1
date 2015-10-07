/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage en;
PImage fi;
PImage hp;
PImage tr;
int x=0,y,z;
float a=random(30,200);
float b=random(640);
float c=random(480);

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  en = loadImage("img/enemy.png");
  fi = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  tr = loadImage("img/treasure.png");
}

void draw() {
  // your code
  image(bg1,x++,0);
  y = x%1280;
  image(bg2,y-640,0);
  image(bg1,y-1280,0);
  image(fi,580,250);//fighter
  image(tr,b,c);//treasure
  /* enemy */
  z = 5*x%640;
  image(en,z,350);
  /* hp & line */
  noStroke();
  fill(255,0,0);
  rect(30,20,a,30);
  image(hp,20,20);
}
