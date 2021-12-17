#! /bin/octave -qf

clear all; close all; clc; 

t = 0:0.1:100;

f = sin(t)+cos(t/3);

[tt] = repmat(t,[10 1])

save data.mat t f

save('data.txt','tt','-ascii')

hf = figure("paperunits","normalized","position",[100 100 800 300]);

plot(t,f,"linewidth",2); grid on

xlabel("time [in seconds]");

ylabel("variable");

print(hf, "plot01.png","-S800,300");
