import processing.serial.*;
Serial myPort; 
int x;
float y;
float r=20;

void setup(){
  size(800,600); //width,height  
 myPort=new Serial(this,"COM3",9600);
}

void draw(){  
  background(100,50,200);
    if(myPort.read()>0){ 
    for(int i=0; i<20;i++){
  for(int j=0;j<20;j++){
  float alpha=0;
  float agito=0;
  agito=map(40*j,0,width,0,PI);
  alpha=map(40*i,0,width,0,PI);
  r=20*sin(alpha);
  y=20*sin(agito);
  ellipse(random(0,40*r),random(0,40*j),random(2*r),random(2*r));
  fill(random(0,255),random(0,255),random(0,255));
  stroke(random(0,255),random(0,255),random(0,255));
  }
}

    } 
    else{
  stroke(300,40,100);
  strokeWeight(15);
  fill(300,50,800);
 for(int i=0; i<20;i++){
  for(int j=0;j<20;j++){
    float alpha=0;
    float agito=0;
    agito=map(40*j,0,width,0,PI);
    alpha=map(40*i,0,width,0,PI);
    r=20*sin(alpha);
    y=20*sin(agito);
    ellipse(random(0,width-r),40*y,random(2*r),random(2*r));
  }
 }
    }
}


   
  


  