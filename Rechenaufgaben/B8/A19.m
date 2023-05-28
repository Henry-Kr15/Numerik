%% Aufgabe 19

f = @(x)    x.^2 + 2.*x + 1;
df = @(x)   2.*x + 2;

x0 = 10;
tol = 10e-6;
k_max = 100;

[x,out] = myfunction(f, df, x0, tol, k_max) # muss in e) angepasst werden (Z. 10)

k = out(:,1);
x_k = out(:,2);
f_k = out(:,3);

disp4 = [nan; abs(x_k(2:end)-x_k(1:end-1))];
disp5 = [nan; nan; disp4(3:end) ./ disp4(2:end-1)];
disp6 = [nan; nan; disp4(3:end) ./ (disp4(2:end-1) .* disp4(2:end-1))]

## T = table(k, x_k, f_k, disp4, disp5, disp6);
## disp(T)
