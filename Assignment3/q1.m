table = csvread('houses.csv');
[l, w] = size(table);
table = [ones(l, 1) table];
[l, w] = size(table);

x = table(1:floor(0.9*l),1:w-1);
y = table(1:floor(0.9*l), w);

answer = (inv(x.' * x))*(x.' * y)

errorsetX = table(1+floor(0.9*l):l, 1:w-1);
errorsetY = table(1+floor(0.9*l):l, w);
actual_data = norm(errorsetY, 2);


calc_y = errorsetX * answer;
calc_data = norm(calc_y, 2);

x1 = [1 1400 4];
y1 = x1 * answer

error1 = 100 * abs(actual_data - calc_data)/actual_data


% part 2

x = normalize(x,'norm',1);
% x(:,1) = 1; 
y = normalize(y,'norm',1);

answer = (inv(x.' * x))*(x.' * y)

errorsetX = table(1+floor(0.9*l):l, 1:w-1);
errorsetX = normalize(errorsetX,'norm',1);
errorsetY = table(1+floor(0.9*l):l, w);
errorsetY = normalize(errorsetY,'norm',1);
actual_data = norm(errorsetY, 2);


calc_y = errorsetX * answer;
calc_data = norm(calc_y, 2);

x1 = [1 1400 4];
y1 = x1 * answer

error2 = 100 * abs(actual_data - calc_data)/actual_data




% part 3

actualmean_Y = mean(y);
mean_X = mean(x);
mean_Y = mean_X * answer;
(abs(mean_Y - actualmean_Y) < 0.1)