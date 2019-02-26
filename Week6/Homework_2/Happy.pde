class Happy {
   float x, y;
   int numFrames;
   int currentFrames;
   PImage[] frames;
   
   Happy(float xPos, float yPos){
     x = xPos;
     y = yPos;
     numFrames = 3;
     currentFrames = 0;
     frames = new PImage[numFrames];
     frames[0]  = loadImage("Cat Happy_1.png");
     frames[1]  = loadImage("Cat Happy_2.png"); 
     frames[2]  = loadImage("Cat Happy_3.png");
   }
   
   void update(){
   currentFrames = (currentFrames+1) % numFrames;
     
   }
   
   void display(){
   image(frames[currentFrames], x, y);
   
   }

 }
