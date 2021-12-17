function [out] = my_factorial_v02(n)
if n <= 0 || n == 1
  out = 1; return
end	

if mod(n,fix(n)) ~= 0
  display('n is not a integer')
  return;
end

out = n*factorial(n-1);

return
