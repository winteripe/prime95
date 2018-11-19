#!/bin/bash

[ -z "$V5UserID" ] && V5UserID=HaochenLiu
[ -z "$WorkPreference" ] && WorkPreference=102
[ -z "$ComputerID" ] && ComputerID=$HOSTNAME

cd /opt/prime95
export LD_LIBRARY_PATH=/opt/prime95:$LD_LIBRARY_PATH

cat <<-EOF > prime.txt
V24OptionsConverted=1
WGUID_version=2
StressTester=0
UsePrimenet=1
DialUp=0
V5UserID=$V5UserID
OutputIterations=1000
ResultsFileIterations=999999999
DiskWriteTime=30
NetworkRetryTime=2
NetworkRetryTime2=70
DaysOfWork=30
DaysBetweenCheckins=      0.125
NumBackupFiles=3
SilentVictory=0
Priority=1
RunOnBattery=1
WorkPreference=$WorkPreference
[PrimeNet]
Debug=0
ProxyHost=
[Worker #1]
EOF

cat <<-EOF > local.txt
ComputerID=$ComputerID
EOF

./mprime