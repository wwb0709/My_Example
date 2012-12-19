export FAMILY=iphone

#Start iOS Simulator (https://github.com/jhaynie/iphonesim)

if [ "x$IOS_SIM" = "x" ]
then
  export IOS_SIM=/PATH/ios-sim/build/Release/ios-sim
fi

if [ ! -f $IOS_SIM ]
then
 echo "Please install iOS Simulator Launcher (https://github.com/jhaynie/iphonesim)"
 exit 13
fi

if [ "$RUN_MEMORY_ANALYZIS" = "true" ]
then
MEMVERIFICATION="--setenv MallocGuardEdges=YES --setenv MallocScribble=YES --setenv MallocPreScribble=YES --setenv MallocStackLogging=YES --setenv MallocStackLoggingNoCompact=YES --setenv NSDebugEnabled=YES  --setenv NSDebugEnabled=YES --setenv NSZombieEnabled=YES  --setenv NSDeallocateZombies=NO --setenv NSHangOnUncaughtException=YES --setenv NSAutoreleaseFreedObjectCheckEnabled=YES --setenv MallocStackLogging=1 --setenv MallocCheckHeapStart=1000 --setenv MallocCheckHeapEach=100 --setenv MallocCheckHeapAbort=1  --setenv MallocErrorAbort=YES --setenv MallocCorruptionAbort=YES"
else
MEMVERIFICATION=""
fi

echo "$IOS_SIM launch \"$CODESIGNING_FOLDER_PATH\" --verbose --sdk $IPHONEOS_DEPLOYMENT_TARGET --family $FAMILY $MEMVERIFICATION"
$IOS_SIM launch "$CODESIGNING_FOLDER_PATH" --verbose --sdk $IPHONEOS_DEPLOYMENT_TARGET --family $FAMILY $MEMVERIFICATION
#--stdout /var/tmp/sim_out.txt --stderr /var/tmp/sim_err.txt 
#echo "See /var/tmp/sim_out.txt /var/tmp/sim_err.txt"

