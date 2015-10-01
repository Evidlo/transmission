#!/usr/bin/octave

%set values for our filter
R1=25e3;
R2=1e3;
R3=1e3;
R4=1e5;
RA=100;
RB=900;

gain=(1+RB/RA);

gain1=gain * (R2*R3*R4)/(R2*R3*R4 + R1*R3*R4 + R1*R2*R4 + R1*R2*R3)
gain2=gain * (R1*R3*R4)/(R2*R3*R4 + R1*R3*R4 + R1*R2*R4 + R1*R2*R3)
gain3=gain * (R1*R2*R4)/(R2*R3*R4 + R1*R3*R4 + R1*R2*R4 + R1*R2*R3)
gain4=gain * (R1*R2*R3)/(R2*R3*R4 + R1*R3*R4 + R1*R2*R4 + R1*R2*R3)
