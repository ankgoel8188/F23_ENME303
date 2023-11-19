clc; clear 

%% Saving all the variables in the workspace
x = 1:0.1:100;

save testvars

%% Saving specific varaiables from the workspace
p = rand(1,10);
q = ones(10);

save pqfile.mat p q

%% Loadin .mat files
load testvars.mat
load pqfile.mat p q

%% Reading CSV files
T = readtable('MDCOVID19_Cases-Howard-County.csv');
H = T.Howard;