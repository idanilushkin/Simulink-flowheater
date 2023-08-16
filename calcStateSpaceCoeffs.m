% This script calculates the coefficients of the spectral representation of
% a first-order hyperbolic equation. 
% The variable x ranges from 0 to 1 (i.e. the length of heater L=1)

% The orthonormal basis of functions has the form:
% P(h,x) = sqrt(2)*sin((2*h-1)*pi/2*x), h=1,2,3,...

% See pdf-file for more details.

% This script only needs to be run if you want to change the state space
% size or the length d of the initial part of the heater to account for
% the inlet flow temperature. 

clear;
global N P0d P0L Pout P1 d
N=10; % state-space dimension
P0d=zeros(N,1); 
P0L=zeros(N,1); 
Pout=zeros(N,1);
P1=zeros(N,N); 
d=0.4;
syms x
for h=1:N 
    h1 = sym(h);
    P  = sqrt(2)*sin((2*h1-1)*pi/2*x);
    P0d(h) = double(int(P, x, 0, sym(d) ));
    P0L(h) = double(int(P, x, 0, 1 ));
    Pout(h)= double(subs(P, x, 1));
    dP = diff(P,x);
    for h_=1:N
        h2 = sym(h_);
        P_ = sqrt(2)*sin((2*h2-1)*pi/2*x);
        P1(h_,h)=double(int(dP*P_, x, 0, 1));
    end
end

clear x h h_ h1 h2 P dP P_ 
