import graph3;
size(8cm,0);

currentprojection=perspective(5,5,3.5);
currentlight=light(white,(2,2,2),(2,-2,-2));

path3 p=(-1,-1,0)--(1,-1,0)--(1,1,0)--(-1,1,0)--cycle;
draw(p,lightblue);

path3 g=(1,0,0)..(0,1,1)..(-1,0,0)..(0,-1,1)..cycle;
draw(g,2bp+.8red);
draw(surface(g),palered);
dot(g,5bp+.8green);

limits((-1.5,-1.5,0),(1.4,1.4,1.5));
xaxis3("$x$",Arrow3);
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
