function [Str] = generateStringN(u, var, inputFile)

# [P_SYM, SYM] = probabilidadeLetrasPT('pg21209.txt');
P_SYM = [0.115342 0.011644 0.028010 0.047642 0.110257 0.010208 0.014282 0.014886 0.059453 0.003211 0.000807 0.029538 0.045411 0.052610 0.098089 0.017635 0.006768 0.070369 0.065179 0.045127 0.040067 0.014954 0.001560 0.001979 0.001880 0.004401 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.004863 0.000955 0.003433 0.003933 0.005129 0.001264 0.001763 0.000573 0.002965 0.000869 0.000092 0.001196 0.002244 0.003119 0.004870 0.003335 0.001707 0.002305 0.003637 0.001812 0.002170 0.001288 0.000086 0.000136 0.000166 0.000037 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.034414 0.000000 0.000327 0.000000 0.000000 0.000000];
SYM = [97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 231 225 233 237 243 250 227 245 226 234 244 224 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 199 193 201 205 211 218 195 213 194 212 202 192];

length = floor(u + sqrt(var) * randn);

CP_SYM = cumsum(P_SYM);
numbers = rand(1, length);
for i = 1:length
	numbers(i) = SYM(find(CP_SYM > numbers(i))(1));
endfor
Str = char(numbers);

endfunction
