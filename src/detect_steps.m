function [num_steps, distance] = detect_steps(signal, fs)

minPeakHeight = 0.8 * std(signal);
minPeakDistance = round(0.5 * fs);

[pks, locs] = findpeaks(signal, ...
    'MinPeakHeight', minPeakHeight, ...
    'MinPeakDistance', minPeakDistance);

num_steps = length(pks);

steplength = 0.65;
distance = (num_steps - 1) * steplength;

figure;
plot(signal); hold on;
plot(locs, pks, 'ro');

end