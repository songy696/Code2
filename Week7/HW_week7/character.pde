class Cat {
  // STATES
  int STAND = 0;
  int WALK = 1;
  int HAPPY = 2;
  int SLEEP = 3;
  int STATE = STAND;
  // Setup Choice Matrix
  String[] stateNames = {"STAND", "WALK", "HAPPY", "SLEEP"};
  float[][] choices = {
    // "Walk","Happy","Sleep"
    { 0.5, 0.2, 0.2, 0.1}, 
    { 0.2, 0.3, 0.4, 0.1}, 
    { 0.05, 0.5, 0.4, 0.05}, 
    { 0.6, 0.3, 0.05, 0.05}, 
  };

  // movement variables
  PVector velo, pos;
  int facingDirection = 1;
  float speed = 3;
  float walkSpeed = 5;

  // Setup Happy Animation
  int numHappyFrames = 3;
  int happyAnimationSpeed = 8;
  PImage[] happy = new PImage[numHappyFrames];

  // Setup Walk Animation
  int numWalkFrames = 8;
  int walkAnimationSpeed = 5;
  PImage[] walk = new PImage[numWalkFrames];
  
  // Setup Sleep Animation
  int numSleepFrames = 7;
  int sleepAnimationSpeed = 4;
  PImage[] sleep = new PImage[numSleepFrames];

  //standing
  PImage stand = new PImage();
  boolean chooseNewDirection = true;

  //animation handler
  int frameNumber = 0;
  //
  // ———————— ———————— ———————— ———————— ———————— ———————— ———————— CONSTRUCTOR
  //
  Cat() {
    
    velo = new PVector(0, 0);
    pos = new PVector(width/2, height/2);
    
    stand = loadImage("Cat Happy_1.png");

    // load walk
    int s = 160;
    walk[0] = loadImage("Cat Walking.png");
    walk[0].resize(s,s);
    walk[1] = loadImage("Cat walking_1.png");
    walk[1].resize(s,s);
    walk[2] = loadImage("Cat walking_2.png");
    walk[2].resize(s,s);
    walk[3] = loadImage("Cat walking_3.png"); 
    walk[3].resize(s,s);
    walk[4] = loadImage("Cat walking_4.png");
    walk[4].resize(s,s);
    walk[5] = loadImage("Cat walking_5.png");
    walk[5].resize(s,s);
    walk[6] = loadImage("Cat walking_6.png");
    walk[6].resize(s,s);
    walk[7] = loadImage("Cat walking_7.png");
    walk[7].resize(s,s);
    
    // load happy
    happy[0] = loadImage("Cat Happy_1.png");
    happy[1] = loadImage("Cat Happy_2.png");
    happy[2] = loadImage("Cat Happy_2.png");

    // load sleep
    sleep[0] = loadImage("Cat Sleeping_1.png");
    sleep[1] = loadImage("Cat Sleeping_2.png");
    sleep[2] = loadImage("Cat Sleeping_3.png");
    sleep[3] = loadImage("Cat Sleeping_4.png");
    sleep[4] = loadImage("Cat Sleeping_5.png");
    sleep[5] = loadImage("Cat Sleeping_6.png");
    sleep[6] = loadImage("Cat Sleeping_7.png");
  }
  //
  // ———————— ———————— ———————— ———————— ———————— ———————— ———————— MOVEMENT
  //
  void update() {
    // Move your character
    pos.add(velo);
    // Wrap Screen
    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }
    if (chooseNewDirection) { 
      facingDirection = (random(1) < .5) ? 1 : -1;
      chooseNewDirection = false;
    }
    // Handle different movement and state changes:
    switch (STATE) {
    case 1: // WALK
      velo = new PVector(facingDirection * walkSpeed, 0);
      break;
    case 2: // HAPPY
      velo = new PVector(0, 0);
      break;
    case 3: // SLEEP
      velo = new PVector(0, 0);
      break;
      case 0: // STAND
    default:
      STATE = getNewState();
      break;
    }
  }
  //
  // ———————— ———————— ———————— ———————— ———————— ———————— ———————— ANIMATION HANDLERS
  //
  void displayCharacter() {
    pushMatrix();
    translate(pos.x, pos.y);
    scale(facingDirection, 1); // face left or right
    //
    // —————————————————————————————— ANIMATION STATE MACHINE
    //
    switch (STATE) {
    case 1: // WALK
      // draw a shadow circle:
      fill(0, 20);
      ellipse(0, 65, 110, 30);
      playWalkAnimation();
      break;
    case 2: // HAPPY
      // draw a shadow circle:
      fill(0, 20);
      ellipse(0, 65, 110, 30);
      playHappyAnimation();
      break;
    case 3: // SLEEP
      // draw a shadow circle:
      fill(0, 20);
      ellipse(0, 65, 150, 30);
      playSleepAnimation();
      break;
    case 0: // STAND
    default:
      // draw a shadow circle:
      fill(0, 20);
      ellipse(0, 65, 110, 30);
      image(stand, 0, 0);
      break;
    }
    popMatrix();
  }
  void playSleepAnimation() {
    image(sleep[frameNumber], 0, 20);
    if (frameCount%sleepAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber>=numSleepFrames) {
        STATE = getNewState();
      };
    }
  }
  void playWalkAnimation() {
    image(walk[frameNumber], 0, 0);
    if (frameCount%walkAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber>=numWalkFrames) {
        STATE = getNewState();
        chooseNewDirection = true;
      };
    }
  }
  void playHappyAnimation() {
    image(happy[frameNumber], 0, 20);
    if (frameCount%happyAnimationSpeed == 0) {
      frameNumber++;
      if (frameNumber>=numHappyFrames) {
        STATE = getNewState();
      };
    }
  }
  int getNewState() {
    frameNumber = 0;
    float rand = random(1);
    float currentTotal = 0;
    float[] range = choices[STATE];
    for (int i = 0; i<range.length; i++) {
      // cycle through every range value
      currentTotal += range[i];
      if (rand < currentTotal) {
        return i;
      }
    }
    return 0;
  }
}
