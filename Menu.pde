class Menu {
  Menu() {
  }
  void menuExecute() {
    background(100, 100, 100);
    fill(255);
    textSize(35);
    text("IDOL MUSIC PLAYER", 160, 50);
    noStroke();    
    textSize(20);
    text("Red Velvet", 30, 140);
    text("GFriend", 200, 140);
    text("Luis Fonsi", 350, 140);
    text("MC The Max", 500, 140);
    RedVelvet1.resize(250, 150);
    image(RedVelvet1, -50, 220);
    GFriend1.resize(230, 200);
    image(GFriend1, 130, 180);
    LuisFonsi1.resize(200, 200);
    image(LuisFonsi1, 300, 185);
    MCTheMax1.resize(180, 150);
    image(MCTheMax1, 470, 220);
    if (mousePressed) {
      for (int j = 0; j<4; j++) {
        if (10+160*j<=mouseX&&mouseX<=150+160*j&&80<=mouseY&&mouseY<=350) {
          stage = 1;
          music = j;
        }
      }
    }
  }
}