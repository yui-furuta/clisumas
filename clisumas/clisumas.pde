
int r=0;
int g=0;
int b=0;

float x;
float y;




void setup(){
  size(640, 480);
  colorMode(RGB, 255);
  background(255,255,255);
  frameRate(100);
  
  fill(51,0,102);
  rect(0,0,640,480);
  
  


  
  
  fill(51,204,0);
  noStroke();
  fill(153,102,51);
  rect(250,400,140,80);
  fill(51,204,0);
triangle(200,200,320,100,440,200);
triangle(160,290,320,170,480,290);
triangle(120,400,320,240,520,400);

 fill(255,255,0);
 beginShape();
vertex( 320,60 );
vertex( 330,82);
vertex( 355,84 );
vertex( 338,105 );
vertex( 342,130);
vertex( 320,118);
vertex(298,130 );
vertex(302,105 );
vertex( 285,84);
vertex( 310,82);
endShape( CLOSE );
 
 
}




void draw(){
  

  //リフレッシュするための四角の描画
  fill(255, 255, 255, 0); //透過度を60にすることで，描画された円は徐々に消えていく．
  noStroke(); //描画する四角の枠線を書かないように指定する．
  rect(0, 0, width, height); //画面全体に四角を描画する．
}

void mousePressed(){ //左クリックが起きた時に自動的に実行されるブロック
  x = mouseX; //左クリックが起きた時のマウスのx, y座標
  y = mouseY; 
  r = (int)random(255)+50; //色はランダムに決める．パステル調にするために100~255．
  g =(int)random(255)+50;
  b = (int)random(255)+50;
  
 
  fill(r, g, b); 
  ellipse(x, y, 20,20); //左クリックが起きた座標に，ランダムな色で円を描く．
}
