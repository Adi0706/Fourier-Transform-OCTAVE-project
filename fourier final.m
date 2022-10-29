fs=1000;
N=1024; % length of fft sequence
t= [0: N-1] *(1/fs); % input signal
x=0.8*cos(2*pi*100*t);
subplot (3,1,1);
plot(t,x);
axis ([0 0.05 -1 1]);
grid;
xlabel('t');
ylabel('amplitude');
title ('input signal'); % Fourier transform of given signal


x1=fft(x); % magnitude spectrum
k=0: N-1;
Xmag=abs(x1);
subplot (3,1,2);
plot (k, Xmag);
grid;
xlabel('t');
ylabel('amplitude');
title ('magnitude of fft signal') %phase spectrum
Xphase=angle(x1);
subplot (3,1,3);
plot (k, Xphase);
grid;
xlabel('t');
ylabel('angle');
title ('phase of fft signal');