︠ed713272-9498-4b2f-85ad-fdfeb08b867as︠
var('A,h,e,c,t')
f = (A + 3*y + A^2*y)^3
g = A*(A*c*h + A^-1*h) + h + A^-2 * (A*e + A^-1*c*e)
eight = -A^-3
circ = -A^2-A^-2
hopf = -A^4 - A^-4
result = g(A=t^(-1/4), h=hopf,e=eight,c=circ)

result.expand()
︡be32ea77-2b79-463b-be98-28a4ad7b2fad︡{"stdout":"(A, h, e, c, t)\n"}︡{"stdout":"A^6/sqrt(t) - 2*A^4 + A^2/sqrt(t) + t^(3/4)/A + 1/(A^2*sqrt(t)) - t^(1/4)/A^3 - 2/A^4 + t^(3/4)/A^5 + 1/(A^6*sqrt(t))\n"}︡{"done":true}︡
︠db30b9b1-59f9-4ea6-ae6f-24cf6406fc59︠









