function [t, X, Y, Z, fs] = load_data(filename)

data = readtable(filename, 'VariableNamingRule','preserve');

t = data{:,1};
X = data{:,2};
Y = data{:,3};
Z = data{:,4};

dt = diff(t);
fs = round(1 / mean(dt));

end