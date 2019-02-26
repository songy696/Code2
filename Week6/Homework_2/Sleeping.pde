class Sleeping {
   float x, y;
   int numFrames;
   int currentFrames;
   PImage[] frames;
   float size;
   
   Sleeping(float xPos, float yPos){
     x = xPos;
     y = yPos;
     numFrames = 7;
     currentFrames = 0;
     frames = new PImage[numFrames];
     frames[0]  = loadImage("Cat Sleeping_1.png");
     frames[1]  = loadImage("Cat Sleeping_2.png"); 
     frames[2]  = loadImage("Cat Sleeping_3.png");
     frames[3]  = loadImage("Cat Sleeping_4.png");
     frames[4]  = loadImage("Cat Sleeping_5.png");
     frames[5]  = loadImage("Cat Sleeping_6.png");
     frames[6]  = loadImage("Cat Sleeping_7.png");
   }
   
   void update(){
   currentFrames = (currentFrames+1) % numFrames;
     
   }
   
   void display(){
   image(frames[currentFrames], x, y);
   
   }

 }
