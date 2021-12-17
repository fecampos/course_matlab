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
    if f(i,j) >0.5 | f(i,j) <-0.5;
      f(i,j) = 1;
    end
  end
end
toc

tic
[xx tt] = meshgrid(x,t);
f = cos(omega*tt-k*xx);
f(f>0.5 | f<-0.5) = 1;
toc
```

# 2) Recursividad


# 3) Formatos netcdf

# 4) Parte práctica
