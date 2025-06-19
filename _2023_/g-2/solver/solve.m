
syms r1 r2 r3 r4
EQ=load('EQ.mat');
E=EQ.eqns;
S=solve(E,[r1,r2,r3,r4]);