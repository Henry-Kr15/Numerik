function [x,ret] = myfunction(f, df, x0, tol, k_max) # muss in e) angepasst werden (Z. 22)

k = 0;
x = x0;
ret = [0,x,f(x)];
err = abs(f(x)/df(x))

while (err > tol) && (k < k_max)
  k = k + 1;
  x = x - f(x)/df(x); # muss in e) angepasst werden (Z. 31)
  ret(end+1,:) = [k, x, f(x)];
  err = abs(f(x)/df(x));
end
end
