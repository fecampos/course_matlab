# IV CONGRESO LATINOAMERICANO DE MATEMÁTICA - COLAMAT 2021
# Cursillo: Computación científica en Matlab/Octave (día 01)

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

# 3) Conceptos básicos: funciones

# 4) Conceptos básicos: parte práctica
