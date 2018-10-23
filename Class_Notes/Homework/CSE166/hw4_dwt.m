I = imread('cameraman.tif');

[LL1, LH1, HL1, HH1] = dwt2(I, 'haar');
[LL2, LH2, HL2, HH2] = dwt2(LL1, 'haar');
[LL3, LH3, HL3, HH3] = dwt2(LL2, 'haar');

A1 = [LL3, LH3; HL3, HH3];
A2 = [LL2, LH2; HL2, HH2];
A3 = [A2, LH1; HL1, HH1];

imwrite(idwt2(LL3, LH3, HL3, HH3, 'haar'), 'cameraman_A2.png');
imwrite(idwt2(LL2, LH2, HL2, HH2, 'haar'), 'cameraman_A1.png');

subplot(2,2,1);
imshow(I, []);
title('Original');

subplot(2,2,2);
imshow(A1, []);
title('Level 1');

subplot(2,2,3)
imshow(A2, []);   
title('Level 2')

subplot(2,2,4);
imshow(A3, []);
title('Level 3');