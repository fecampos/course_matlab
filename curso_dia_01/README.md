# IV CONGRESO LATINOAMERICANO DE MATEMÁTICA - COLAMAT 2021
# Cursillo: Computación científica en Matlab/Octave (día 01)

# (*) instrucciones de acceso a Matlab y Octave por terminal (usuarios de Linux)

```SH
#matlab 
matlab -nodesktop

#Octave
octave-cli

#comandos de linux usados en Matlab/octave
ls
pwd
cd
```

# 1) Conceptos básicos: matrices y operadores
comencemos ...

```MATLAB
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% funciones básicas y operadores %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% como una calculadora, funcionan los siguientes operaciones: 
% suma                +
% resta               - 
% multiplicación      * .*
% división            / ./  
% potencia            ^ .^ 
% division en matriz  \ \

% para realizar comentarios, usar       %
% para escribir caracteres usar         ' '
% para ver la lista de variables usar   whos (name, size, bytes, class, global, ...)
```

ahora los vectores y las matrices ...
```MATLAB
%%%%%%%%%%%%%%%%%%%%%%%
% vectores y matrices %
%%%%%%%%%%%%%%%%%%%%%%%
% ejemplo de vector columna
[10; 20; 30; 10]

% ejemplo de vector fila
[10 20 30 10]
[10,20,30,10]

% ejemplo de matrices
[10 20 30 40; 10 40 30 20; 10 10 10 20]

% asignamos a una variable la columna/matriz para realizar operaciones
a = [10; 20; 30; 10]
b = [10 20 30 10]
c = [10 20 30 40; 10 40 30 20; 10 10 10 20]

% aplicar traspuiesta a la matriz o vector: '
a = a'
b = b'
c = c'

% si no queremos salida por pantalla ;
a = a';
b = b';
c = c';

% ejemplos de operaciones entre columnas o matrices:
a+b'
a'+b
a.^2
a.*b'
a'.*b
a*b ???
b*a ???
a*b' ??
a'*b ??

% podemos usar funciones trigonometricas: sin, cos, tan
sin(a)
cos(b)
sin(a).*cos(b)'
```



# 2) Conceptos básicos: lazos y condicionales
comencemos con lazos (loops)...
```MATLAB
%%%%%%%%%%%%%%%%%%%%%%%
%        loops        %
%%%%%%%%%%%%%%%%%%%%%%%
%for i=1:100
%  statement 1
%  statement 2
%  .
%  .
%  .
%end  

% un ejemplo de un loop
for i = 1:100
  pi*i^2
end  
```
continuemos con las condicionales...
```MATLAB
%%%%%%%%%%%%%%%%%%%%%%%
%    conditionals     %
%%%%%%%%%%%%%%%%%%%%%%%
%if condition 1
%  statement 
%elseif condition 2
%  statement
%elseif condition 3 
%  statement
%else
%  statement 
%end  

% un ejemplo de una condicional
if sin(pi/2) == 1
  display('estamos ok')
else
  display('tenemos errores')
end  

% empleamos lo sguiente en las condicionales:
% == igual a 
% ~= no es igual a 
% <  menor que
% <= menor igual a 
% >  mayor que
% >= mayor igual a

% tambien podemos usar operaciones booleanas:
% & -> and
% | -> or
```

ahora el ciclo while...
```MATLAB
%%%%%%%%%%%%%%%%%%%%%%%
%   while condition   %
%%%%%%%%%%%%%%%%%%%%%%%
%while expression
%  statement 
%end

% un ejemplo del uso de while
i = 1
while i ~= 15
  display(['la iteracion numero: ' num2str(i)])
  i = i+1;
end  
```

# 3) Conceptos básicos: funciones

como Function

```MATLAB
% ejemplo de funciones:
a = rand(10)
b = mean(a);
c = std(a);

% function [out1 out2 ...] = name_function(in1,in2,...)

function [m,s] = stat2(x)
    n = length(x);
    m = avg(x,n);
    s = sqrt(sum((x-m).^2/n));
end

function m = avg(x,n)
    m = sum(x)/n;
end
```
Como function handle
```MATLAB
% h = @(arglist)anonymous_function

% ejemplo
sqr = @(n) n.^2;
x = sqr(3)
```
Diferencias entre function y function handle

function: se escribe en un archivo separado, comienzan todos con function

function handle: básicamente es una variable que funciona como una función

# 4) Conceptos básicos: parte práctica
Ejemplos:
1) crear una función senoidal (my_first_func.m) donde deba ingresar 2 períodos &omega;<sub>1</sub> = 0.5 s y &omega;<sub>2</sub> = 0.36 s, el tiempo de análisis y la amplitud. (Para graficar, podemos usar el comando plot )
2) Usando la función anterior (my_first_func.m) guarde los resultados en y<sub>1</sub> (&omega;<sub>1</sub> = 0.45 s, &omega;<sub>2</sub> = 0.32 s. A = 0.31 ) y y<sub>2</sub> donde (&omega;<sub>1</sub> = 0.25 s, &omega;<sub>2</sub> = 0.42 s. A = 0.32), luego calcule y<sub>1</sub>+y<sub>2</sub>, y<sub>1</sub>-y<sub>2</sub>, y<sub>1</sub>y<sub>2</sub> para finalmente plotear, puede usar subplot en conjunto con plot.
3) del resultado anterior (y<sub>1</sub>+y<sub>2</sub>, y<sub>1</sub>-y<sub>2</sub>, y<sub>1</sub>y<sub>2</sub>) grafique solo los valores que se encuentran en el rango de -0.1 y 0.1.
4) Como usaría el while para graficar en un determinaod intervalo de tiempo?
