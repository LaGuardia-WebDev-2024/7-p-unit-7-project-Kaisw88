//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var planetX=0
var planetY=0
var planetZ=0
var colorChange=0
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
//circular planet
fill (232, 160, 26)
ellipse (296 + planetX, 157, 100, 100);

// tringular planet
fill (26, 187, 232)
triangle (463 + planetY, 96, 454 + planetY, 69, 476 + planetY, 79);

//square planet
fill (37 + colorChange, 99 + colorChange, 2 + colorChange)
rect (100 + planetZ , 47, 93, 93);


  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

planetX-=4
planetY-=2
planetZ-=1
colorChange=colorChange-2
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
