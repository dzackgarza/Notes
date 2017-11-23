function output = DWT(xs)
    len_xs = size(xs, 2);
    H = getHarrMatrix(len_xs);
    output = H * cast(xs, 'double');
end
