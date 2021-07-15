PL=-0.2; 
A = [-0.1309 0 -9.496; 2 -4 0; 0 0.1 -0.08]; 
B = [0; 0; -0.1]; BPL=PL*B; 
C = [0 0 1]; 
D = 0; 
Q = [20 0 0; 0 10 0; 0 0 5]; 
R = .15; 
[K, P] = lqr2(A, B, Q, R) 
Af = A - B*K 
t=0:0.02:30; 
[y, x] = step(Af, BPL, C, D, 1, t); 
plot(t, y), grid 
xlabel('Time (seconds)'), ylabel('Δf')