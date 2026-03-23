function plot_time(t, X, Y, Z)

figure;

subplot(3,1,1);
plot(t, X);
title('X');
xlabel('Time'); ylabel('ACC');

subplot(3,1,2);
plot(t, Y);
title('Y');
xlabel('Time'); ylabel('ACC');

subplot(3,1,3);
plot(t, Z);
title('Z');
xlabel('Time'); ylabel('ACC');

end