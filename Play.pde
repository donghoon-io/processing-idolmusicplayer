class Play {
  Play() {
  }
  void nowPlaying() {
    background(100, 100, 100);
    fft.analyze();
    for (int i = bands-1; i >=0; i -= 3) {
      sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
      int j;
      if (i% 2 == 1) {
        j = i/2 + bands/2;
      } else {
        j = -i/2 + bands/2;
      }
      if (music==1) {
        fill(255);
        textSize(20);
        text("GFriend - Rough", 430, 50);
        fill(255, random(100, 255), random(200, 255));
      } else if (music==0) {
        fill(255);
        textSize(20);
        text("Red Velvet - Red Flavor", 390, 50);
        fill(255, random(0, 150), random(200, 255));
      } else if (music==2) {
        fill(255);
        textSize(20);
        text("Luis Fonsi - Despacito", 400, 50);
        fill(random(200, 255));
      } else if (music==3) {
        fill(255);
        textSize(20);
        text("MC The Max - Lying On Your Lips", 300, 50);
        fill(random(100, 150), random(200, 255), 255);
      }
      ellipse(j*r_width*6+25, 380-pow(sum[i], 0.5)*height*4, constrain(10*log(sum[i]*height*scale), 0, 20), constrain(10*log(sum[i]*height*scale), 0, 20) );
    }
  }
}