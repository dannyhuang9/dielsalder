#!/bin/sh

rm energies.txt;
for i in *full-b3lyp_d3bj-dz-ts.out;
do echo $i;
grep "SCF Done" $i | tail -n1 | awk '{print $5}' >> energies.txt;
done

