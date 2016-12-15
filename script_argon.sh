#!/bin/bash
cd /mnt/share/isaev/isaev/tmpr_test


for TMPR in 80 75 70 65; do
		mkdir $TMPR
		cp co_out.dat $TMPR/co_in.dat
		cp params.dat $TMPR
		cp fint.ps
		cd $TMPR
		sed 's/_TMPR_/$TMPR/' ./fint.ps > fint.dat
		mdnaes
		cp co_out.dat ../co_out.dat
		cd ..// 
  done;
done;

for TMPRR in 64 63 62 61 60 59 58 57 56 55 54 53 52 51 50; do
		mkdir $TMPRR
		cp co_out.dat $TMPRR/co_in.dat
		cp params.dat $TMPRR
		cp fint.ns
		cd $TMPRR
		sed 's/_TMPR_/$TMPRR/' ./fint.ns > fint.dat
		mdnaes
		cp co_out.dat ../co_out.dat
		cd ..//  
  done;
done;

