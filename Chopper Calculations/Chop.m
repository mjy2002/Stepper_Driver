t = [0:.000001:.001];
V_s = 10;
R = 1.4;
L = .0027;
tau = L/R;
I_max = 2;

for i = [1:length(t)]
    I_l(i) = (V_s/R)*(1-exp(-t(i)/tau));
    if I_l(i) > I_max
        I_l(i) = 2;
    end
end

plot(t,I_l)
     
display(tau)
