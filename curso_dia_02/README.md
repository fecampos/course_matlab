# IV CONGRESO LATINOAMERICANO DE MATEMÁTICA - COLAMAT 2021
# Cursillo: Computación científica en Matlab/Octave (día 02)



# 1) Vectorización 
Queremos realizar la siguiente operación: en dos dimensiones: f<sub>(x,t)</sub> = A cos(&omega;t-kx)

a) mediante loops
```MATLAB
k = 0.35;
omega = 0.2;
t = 0:200; nt = length(t);
x = -50:50; nx = length(x);
for j = 1:nx
  for i = 1:nt
    f(i,j) = cos(omega*t(i)-k*x(j));
  end
end  
```
b) mediante vectorización
```MATLAB
k = 0.35;
omega = 0.2;
t = 0:200; nt = length(t);
x = -50:50; nx = length(x);
[xx tt] = meshgrid(x,t);
f = cos(omega*tt-k*xx);
```
midamos los tiempos con tic toc ...
```MATLAB
k = 0.35;
omega = 0.2;
t = 0:300; nt = length(t);
x = -50:50; nx = length(x);

f = zeros(nt,nx);
g = zeros(nt,nx);

tic
for j = 1:nx
  for i = 1:nt
    f(i,j) = cos(omega*t(i)-k*x(j));
  end
end
toc

tic
[xx tt] = meshgrid(x,t);
f = cos(omega*tt-k*xx);
toc
```
modificando una matriz con condiciones específicas:

```MATLAB
k = 0.35;
omega = 0.2;
t = 0:300; nt = length(t);
x = -50:50; nx = length(x);

f = zeros(nt,nx);
g = zeros(nt,nx);

tic
for j = 1:nx
  for i = 1:nt
    f(i,j) = cos(omega*t(i)-k*x(j));
    if f(i,j) >0.5 || f(i,j) <-0.5;
      f(i,j) = 1;
    end
  end
end
toc

tic
[xx tt] = meshgrid(x,t);
f = cos(omega*tt-k*xx);
f(f>0.5 || f<-0.5) = 1;
toc
```

# 2) Recursividad

cálculo del factorial mediante una función interna:

```MATLAB
n = 100
factorial(n)
```
cálculo del factorial de forma no óptima:
```MATLAB
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
```
cálculo del factorial de forma óptima:
```MATLAB
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
```
Otro ejemplo de recursividad:
```MATLAB
function [out] = prime_number(n)

out = 'true'; s = length(n);

if s == 1;
  n = [n round(n/2)+1];
end

a = n(1); b = n(2);

if b < 2
  out = 'true'; return
elseif a == 2 || a == 3
  out = 'true'; return;
elseif mod(a,b) == 0
  out = 'false'; return;
else
  b = b-1; 
end

out = prime_number([a b]);

return
```


# 3) Guardar en diferentes formatos

# 4) Parte práctica
1) Crear una funcion para el calculo de la serie de Fibonacci sin y con recursividad y comparar los tempos de cálculo. (fibonacci_v01.m y fibonacci_v02.m)
2) Crear una función recursiva que invierta el orden de los elementos de un vector (invert.m) 
3) De (1) comparar los tiempos computacionales de fibonacci_v01.m y fibonacci_v02.m para n= 10, 50, 100, 500, 1000 y graficar n vs tiempos computacionales
4) Guardar los resultados de (3) en un archivo .mat y .txt y los gráficos en formato .png y .jpg
