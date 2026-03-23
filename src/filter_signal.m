function [Xf, Yf, Zf] = filter_signal(X, Y, Z, fs)

fc = 4;
[B, A] = butter(5, fc/(fs/2), 'low');

Xf = filter(B, A, X);
Yf = filter(B, A, Y);
Zf = filter(B, A, Z);

end