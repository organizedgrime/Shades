class combiner{

color returned = color(0, 0, 0);
int ce;
int ce2;
float ave;
int avg;
int diff;
color combine(color c, color c2) {

  ce = col.colortoint(c);
  ce2 = col.colortoint(c2);

  diff = abs(ce2-ce);

  if (diff==6) {
    returned=grey;
    return returned;
  }

  if ((ce2-ce) > 6) {
    ce+=12;
  } else if ((ce2-ce) < -6) {
    ce2+=12;
  }

  ave = (ce2+ce)/2;
  if (ave>11) {
    ave-=12;
  }
  if (diff==1 || diff==11) {
    ave=ce2;
  } else if (ce2>ce && (ce2-ce)%2!=0) {
    ave++;
  }
  if (ave>11) {
    ave-=12;
  }
  avg = round(ave);  
  returned = col.inttocolor(avg);

  return returned;
}


int x, inv, dif, x1, inv1;
void cpucombine(int average) {

  x = int(random(average-3, average+3));
  if (x == average) {
    inv = -1;
    return;
  } else {
    if (x > average) {
      dif = x-average;
      if (dif==3) {
        dif=2;
      }
      inv = average-dif;
    } else {
      dif = average-x;
      if (dif==3) {
        dif=2;
      }
      inv = average+dif;
    }
    if (inv<0) {
      inv+=12;
    }
    if (inv>11) {
      inv-=12;
    }
    if (x<0) {
      x+=12;
    }
    if (x>11) {
      x-=12;
    }
  }

  if (combine(col.inttocolor(x), col.inttocolor(inv))!=col.inttocolor(average)) {
    println("CORRUPT LEVELGEN; inv: " + inv + " x: " + x + " AVG: " + average); 
    System.exit(0);
  }
}

int getinventory() {
  return inv;
}

color getboard() {
  return col.inttocolor(x);
}





}
