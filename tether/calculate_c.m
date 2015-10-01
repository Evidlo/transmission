#!/usr/bin/octave
%plots tether C vs tether gain

%given parameters
Rdata = 75;
w = 1e3*2*pi;

function out = F(C,Rdata,w)
	s = i*w;
	out = abs(Rdata./(2*Rdata + 2./(C.*s)));
endfunction

low_bound = 1e-15;
high_bound = 1e-3;
data_points = 2000;

%create range for C
C = logspace(log10(low_bound),log10(high_bound),data_points)

hold on
semilogx(C,F(C,Rdata,w))
xlabel('AC Coupling Capacitance (F)')
ylabel('Gain')

pause
