#!/usr/bin/octave
%plots tether C vs tether gain

%given parameters
Rdata = 150;
C=10e-9;

function out = F(C,Rdata,w)
	s = i*w;
	out = abs(Rdata./(2*Rdata + 2./(C.*s)));
endfunction

low_bound = 0;
high_bound =1e3;
data_points = 2000;

f = linspace(0,1000000)
w = 2*pi*f 

hold on
plot(f,F(C,Rdata,w))
xlabel('Frequency Hz')
ylabel('Gain')

pause
