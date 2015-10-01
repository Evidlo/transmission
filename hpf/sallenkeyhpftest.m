#!/usr/bin/octave
%set values for our filter
R1=240;
R2=240;
C1=22e-10;
C2=22e-10;
RB=10;
RA=1000;
K=(RA+RB)/RA;
n=1;

%transfer function for nth order sallenkey with gain
function out = H(w,R1,R2,C1,C2,K,n)
	s=i*w;
	temp_out = K/(R1*R2*C1*C2)./(s.^2 + (1/(R1*C1) + 1/(C2*R1) + (1-K)/(C2*R2)).*s + (1/(R1*R2*C1*C2)));
	out = temp_out.^n;
endfunction

%frequency plotting range with 500 data points
f = 0:70e6/500:70e6;

%do some plotting
subplot(1,2,1)
hold on
%plot(f,-20*log10(abs(H(f*2*pi,R1,R2,C1,C2,K,n))))
plot(f,-20*log10(abs(H(f*2*pi,C1,C2,R1,R2,K,n))))
xlabel('Frequency (Hz)')
ylabel('Attenuation (dB)')
%highlight plot points of interest with red circle
plot(14e6,-20*log10(abs(H(14e6*2*pi,R1,R2,C1,C2,K,n))),'ro')
plot(60e6,-20*log10(abs(H(60e6*2*pi,R1,R2,C1,C2,K,n))),'ro')

subplot(1,2,2)
hold on
%plot(f,abs(H(f*2*pi,R1,R2,C1,C2,K,n)))
plot(f,abs(H(f*2*pi,C1,C2,R1,R2,K,n)))
xlabel('Frequency (Hz)')
ylabel('Gain')
%highlight plot points of interest with red circle
plot(14e6,abs(H(14e6*2*pi,R1,R2,C1,C2,K,n)),'ro')
plot(60e6,abs(H(60e6*2*pi,R1,R2,C1,C2,K,n)),'ro')
pause
