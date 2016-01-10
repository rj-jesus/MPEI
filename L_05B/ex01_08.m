%% Ex. 1

H = [	0.8 0 0.3 0
	0.2 0.9 0.2 0
	0 0.1 0.4 0
	0 0 0.1 1	];

%% Ex. 2

X_0 = [1 0 0 0]';
X_1000 = H ^ 1000 * X_0;
fprintf('P(1 -> 2 in 1000 steps) = %f\n', X_1000(2));

%% Ex. 3

H_1 = H ^ 1;
H_2 = H ^ 2;
H_10 = H ^ 10;
H_100 = H ^ 100;

%% Ex. 4

Q = H(1:3, 1:3);

%% Ex. 5

F =  inv(eye(3) - Q);

%% Ex. 6

t = sum(F);

%% Ex. 7



%% Ex. 8

H_delay = H;
H_delay(3, 1) = 0.39999; H_delay(3, 4) = 0.00001;
