I = imread('cameraman.tif');
LL = {};
LH = {};
HL = {};
HH = {};
LL{1} = I;

for i = 2:5
    [LL{i}, LH{i}, HL{i}, HH{i}] = dwt2(LL{i-1}, 'haar');
end

A = {};
A{1} = I;
for i = 2:5
    A{i} = idwt2(zeros(size(LL{i})), LH{i}, HL{i}, HH{i}, 'haar');
    subplot(2,2,i-1);
    imshow(A{i}, [])
    title(sprintf('Level %d', i-1))
    colorbar
end
print('2b','-dpng')