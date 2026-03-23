function signal = remove_dc(signal)

signal = signal - mean(signal);

end