#!/usr/bin/octave

%set values for our filter
R1=400;
C1=470e-9;

%transfer function for nth order sallenkey with gain
function out = H(w,R1,C1)
    s=i*w;
    xc = 1./(s*C1);
    tempout = xc./(xc + R1);
    out=tempout;
endfunction

%frequency plotting range with 500 data points
f = linspace(0,10e3,300);

%do some plotting
grid on
xlabel('Frequency (Hz)')
ylabel('Attenuation (dB)')
%highlight plot points of interest with red circle
plot(f,(abs(H(f*2*pi,R1,C1))))
%plot(14e6,-20*log10(abs(H(14e6*2*pi,R1,C1))),'ro')
%plot(60e6,-20*log10(abs(H(60e6*2*pi,R1,C1))),'ro')
pause
