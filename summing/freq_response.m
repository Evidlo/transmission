#!/usr/bin/octave
%plots tether C vs tether gain

%given parameters
R1=5e3;
R2=1e3;
C=.1e-6;

function out = F(C,R1,R2,w)
	s = i*w;
	out=abs(((R2*C.*s))./((R1+R2)*C.*s + 1))
endfunction

low_bound = 0;
high_bound = 70e6
data_points = 2000;

w=[low_bound:(high_bound-low_bound)/data_points:high_bound]

hold on
plot(w,F(C,R1,R2,w))
xlabel('Frequency (rad/s)')
ylabel('Gain')

pause
