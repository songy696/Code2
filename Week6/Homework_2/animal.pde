class Animal {
   float x, y;
   int numFrames;
   int currentFrames;
   PImage[] frames;
   
   Animal(float xPos, float yPos){
     x = xPos;
     y = yPos;
     numFrames = 7;
     currentFrames = 0;
     frames = new PImage[numFrames];
     frames[0]  = loadImage("Cat walking_1.png");
     frames[1]  = loadImage("Cat walking_2.png"); 
     frames[2]  = loadImage("Cat walking_3.png");
     frames[3]  = loadImage("Cat walking_4.png");
     frames[4]  = loadImage("Cat walking_5.png");
     frames[5]  = loadImage("Cat walking_6.png");
     frames[6]  = loadImage("Cat walking_7.png");
   }
   
   void update(){
     currentFrames = (currentFrames+1) % numFrames;
     x = x + 4;
   }
   
   void display(){
     image(frames[currentFrames], x, y);
   
   }

 }
