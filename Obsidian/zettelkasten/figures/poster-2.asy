if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="poster-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.render = 0;
settings.prc = false;

import graph3;
import solids;
size (18cm, 0);
currentprojection=perspective(5,1,4);
dotfactor=15.5;

pen def_front=cmyk(black)+linewidth(.5);

pen def_back=gray(.5)+dotted+linewidth(.1)+linetype(new real[] {1,2});
pen def_back_solid=gray(.5)+linewidth(.3);

real x_centre = 1.5;
real y_centre = 1.5;
real rad = 1;
triple vertex=(0,0,1);

surface sph = shift(vertex)*unitsphere;
revolution b=sphere(vertex,1);

draw(b,1,frontpen=def_front,backpen=def_back,longitudinalpen=nullpen); // Draw equator

draw(b.silhouette(),def_front);
int d = 3;
draw((d,-d,0)--(d,d,0)--(-d,d,0)--(-d,-d,0)--cycle,def_back_solid);

void dointersect(triple pt)
{
path3 intray = point((0,0,2))--pt;
triple[] tmp = intersectionpoints(intray,sph,1e-4);
draw(point((0,0,2))--tmp[0],def_back);
draw(tmp[0]--pt,def_back_solid);
dot(pt,cmyk(red));
dot(tmp[0],cmyk(blue));
}

real r = 2.8;
dointersect((2,2,0));
dointersect((-2.5,r/2,0));
dointersect((1.9,-2.1,0));
dot((0,0,1.9),cmyk(green));
