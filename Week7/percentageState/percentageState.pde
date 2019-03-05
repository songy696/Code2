char[] states = {'A','B','C','D','E', 'F'};
float[] range = {.2, .4, .1, .1, .05, .15};
float rand = random(1);

println(rand);
float current = 0;
for (int i = 0; i < range.length; i++){
  //cycle through every range value
  current += range[i];
  if(rand<current){
    println(states[i]);//set teh state
    break; //cnacel the for loop
  }
}
