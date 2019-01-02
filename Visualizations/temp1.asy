unitsize(1inch);
path T,ct,tt;
T=(0,0)--(1,0)--(1/2,sqrt(3)/2)--cycle;
ct=(0,0)..(1,0)--(1/2,sqrt(3)/2)..cycle;
tt=shift(sqrt(3)/6*dir(30))*(scale(1/2)*T);
draw(T);
draw(shift(2*right)*ct);
fill(reverse(shift(4*right)*tt)^^(shift(4*right)*T),blue);
