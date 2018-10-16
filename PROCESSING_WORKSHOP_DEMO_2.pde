/*

PROCESSING WORKSHOP - DEMO 2
BY: JOSE GEORGES AND KARI GIGNAC

*/

color[] colorsArray = {#DAF7A6, #FFC300, #FF5733, #C70039, #900C3F, #581845};
color[] palette = colorsArray;

int s = 50; //size of the square
int x = 0; //initial position
int y = 0; //initial position


/*****************
| setup function 
|  
|    The setup function runs as soon as the program starts to run and only one time. 
|    It is Usually used to initialize any data needed or configurations
|
******************/
void setup(){
  size(600, 400); //create a window 600 px by 600 px
  background(255); //make the background color white
  noStroke(); //eliminate strokes
  frameRate(30); //change the frame rate to 30 fps. default is 60
  
  //this will just add squares all over the window as an initial state 
  for(int x = 0; x < width; x += s){
    for(int y = 0; y < height; y+=s){
      fill(palette[int(random(1, 6))]);
      rect(x, y, s, s);
    }
  }
}

/*****************
| draw function 
|  
|   The draw function runs every certain frames per second (fps). 
|   Its default value for frame rate is 60 fps.
|
******************/
void draw(){
  fill(palette[int(random(1, 6))]);//choose a color for the fill randomly from the palette
  rect(x, y, s, s); //draw a rectangle pos x and y, with width s and height s
  x += s; //increase x position by the size of the rectangle
  //if the x gets to the right end of the window, then go down one row and start again
  if(x == width){ 
    y += s;
    x = 0;
  }
  //if the y gets to the bottom of the window, go back to the top
  if(y == height){
    y = 0;
  }
}
