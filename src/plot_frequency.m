function plot_frequency(X, Y, Z, fs)

N = length(X);
f = (0:N-1)*(fs/N);

figure;

subplot(3,1,1);
plot(f, abs(fft(X)));
xlim([0 10]);
title('FFT X');

subplot(3,1,2);
plot(f, abs(fft(Y)));
xlim([0 10]);
title('FFT Y');

subplot(3,1,3);
plot(f, abs(fft(Z)));
xlim([0 10]);
title('FFT Z');

end