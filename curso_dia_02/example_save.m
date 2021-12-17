#! /bin/octave -qf

clear all; close all; clc; 

t = 0:0.1:100;

f = sin(t)+cos(t/3);

save data.mat t f

hf = figure("paperunits","normalized","position",[100 100 800 300]);

plot(t,f,"linewidth",2); grid on

xlabel("time [in seconds]");

ylabel("variable");

print(hf, "plot01.png","-S800,300");
