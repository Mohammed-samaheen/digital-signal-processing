A = load("Q4.mat")
sig = A.X
sig1 = sig
sound(sig)
f1 = fft2(sig)
% f1 = fftshift(f1)
N = length(sig);
f = [-N/2:N/2-1]/N;

f1(abs(f1) < 30000) = 0
plot(f,abs(f1))

sig = ifft2(f1)
sound(sig)