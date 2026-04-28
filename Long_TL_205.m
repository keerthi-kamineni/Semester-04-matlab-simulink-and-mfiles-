clc;
clear;

% Line parameters (per km)
z = 0.1 + 1i*0.4;     % series impedance
y = 1i*3e-6;          % shunt admittance
l = 150;              % length in km

% Calculations
gamma = sqrt(z*y);
Zc = sqrt(z/y);

A = cosh(gamma*l);
B = Zc*sinh(gamma*l);
C = (1/Zc)*sinh(gamma*l);
D = A;

% Display
disp('Long Transmission Line ABCD Parameters:');
disp([A B; C D]);