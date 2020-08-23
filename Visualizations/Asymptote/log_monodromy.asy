import graph3;
size(7.5cm,0);
real f(pair z) {
    if (z!=0)
        return angle(z);
    else
        return 0;
}
currentprojection=perspective(8,-4,3.5);
limits((-7,-8,-4),(7,7,6));
xaxis3(Label("$x$",1),red,arrow=Arrow3);
yaxis3(Label("$y$",1),red,arrow=Arrow3);
zaxis3(Label("$z$",1),red,arrow=Arrow3);
draw(surface(f,(-6,-6),(6,6),nx=31),white,meshpen=blue+thick(),nolight);
