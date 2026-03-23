clc; clear; close all;


[t, X, Y, Z, fs] = load_data('data/raw_data.xls');
plot_time(t, X, Y, Z);

plot_frequency(X, Y, Z, fs);

[Xf, Yf, Zf] = filter_signal(X, Y, Z, fs);

Abs_ACC = compute_magnitude(Xf, Yf, Zf);

Abs_ACC = remove_dc(Abs_ACC);

[num_steps, distance] = detect_steps(Abs_ACC, fs);

fprintf('Total steps: %d\n', num_steps);
fprintf('Distance (m): %.2f\n', distance);