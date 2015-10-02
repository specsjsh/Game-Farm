%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Matlab code for Lotka-Volterra predator prey model.
%
%  Pred_euler.m
%
%  This program implements a numerical integration of the
%  Lotka-Volterra predator-prey model using Forward Euler.
%  The form of this code is more matlab style than pred.m
%
%  Author: L.G. de Pillis
%  Date:   January 1997
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a=1.0;   %  (a-bW) is the intrinsic growth rate of the krill
b=0.5;   % 
c=0.75;  %  (-c+dK) is the intrinsic growth rate of the whales
d=0.25;  % 

% Set initial conditions
tinit = 0.0;           % start time
tfinal = 50.0;         % stop time
K(1)=5.0;              % initial krill population
W(1)=1.0;              % initial whale population

n = 2000;              % number of time steps
dt = (tfinal-tinit)/n; % time step size
T=[tinit:dt:tfinal];   % create vector of discrete solution times

% Execute forward Euler to solve at each time step
for i = 1:n
  K(i+1) = K(i) + dt*K(i)*(a-b*W(i));
  W(i+1) = W(i) + dt*W(i)*(-c+d*K(i));
end;

%Plot Results...
S1 = sprintf('IC: W0=%g, K0=%g',W(1),K(1));

figure(1)
clg;
plot(K,W);
title('Phase Plane Plot');
xlabel('Krill');
ylabel('Whales');
legend(S1,0)
grid;

figure(2)
clg;
plot(T,K,'r-',T,W,'g-.');
legend('Krill','Whales');
xlabel('time');
ylabel('whales and krill');
