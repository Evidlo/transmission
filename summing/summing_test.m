#!/usr/bin/octave

%set values for our filter
RA=125000;
RB=1000;
RC=1000;
RD=1e6;
RE=20;
RF=1000;

gain=(1+RF/RE);
gain=1;

gainA=gain * (RB*RC*RD)/(RB*RC*RD + RA*RC*RD + RA*RB*RD + RA*RB*RC)
gainB=gain * (RA*RC*RD)/(RB*RC*RD + RA*RC*RD + RA*RB*RD + RA*RB*RC)
gainC=gain * (RA*RB*RD)/(RB*RC*RD + RA*RC*RD + RA*RB*RD + RA*RB*RC)
gainD=gain * (RA*RB*RC)/(RB*RC*RD + RA*RC*RD + RA*RB*RD + RA*RB*RC)
