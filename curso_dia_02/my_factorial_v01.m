function [out] = my_factorial_v01(n)
if n == 0 || n == 1
  out = 1; return
end	

if mod(n,fix(n)) ~= 0
  display('n is not a integer')
  return;
end

out = 1;
for i = 1:n
  out = out*i;
end

return
