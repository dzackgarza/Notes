I = imread('cameraman.tif');

[LL1, LH1, HL1, HH1] = dwt2(I, 'haar');
[LL2, LH2, HL2, HH2] = dwt2(LL1, 'haar');

z = zeros(size(LL2));
A1 = [LL2, LH2; HL2, HH2];
A2 = [A1, LH1; HL1, HH1];

Ip = idwt2(LL2, z, z, z, 'haar');
Ip = idwt2(Ip, LH1, HL1, HH1, 'haar');

imshow(Ip, [])