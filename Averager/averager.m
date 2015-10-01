#!/usr/bin/octave
r1 = 120;
r2 = 10e3;
c=1e-9;

w=1e3;

%charging
printf('charging time constant\n')

%equivalent series resistor for parallel R and C
req = 1/(w^2 * c^2 * r2);
tc_charge=c*(r1 + req)
(w^-1)/tc_charge

%discharging
printf('discharging time constant\n')

tc_discharge=c*r2
(w^-1)/tc_discharge
