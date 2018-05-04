#!/bin/bash

## Create high CPU usage by forcing GC in random time intervals
echo "Create high CPU usage by forcing GC in random time intervals"

while true
do
        ## Read PID using pgrep
        appID=$(pgrep -f tomcat)

        ## Read PID using pidof
        #appID=$(pidof java)

        ## Execute GC
        sudo ${JAVA_HOME}/bin/jcmd ${appID} GC.run

        ## Sleep for a random time intervals
        sleep $(( ( RANDOM % 10 ) + 0 ))
done

