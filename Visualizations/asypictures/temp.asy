settings.render = 0;
settings.prc = false;

import solids;
size(6cm);
import graph3;

currentprojection=perspective(5,4,4);
real R=3;
real a=1;

triple fs(pair t) {
  return ((R+a*Cos(t.y))*Cos(t.x),(R+a*Cos(t.y))*Sin(t.x),a*Sin(t.y));
};

surface s=surface(fs,(0,180),(360,360),8,8,Spline);
material m = blue;

draw(s, surfacepen=m);
/*draw(s,surfacepen=material(blue+opacity(0.6), emissivepen=0.2*white),render(compression=Low,merge=true));*/

xaxis3(Label("$x$",1),xmin=0,xmax=7,Arrow3);
yaxis3(Label("$y$",1),ymin=0,ymax=7,Arrow3);
zaxis3(Label("$z$",1),zmin=0,zmax=4,Arrow3);

label("$Y = $ A Torus", (0,-40), p = fontsize(30pt));
