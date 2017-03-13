#!/usr/bin/env bash

while true
do
        # Change this to whatever.
        java -d64 -Xmx12G -Xms12G -Dfile.encoding=UTF-8 -jar spigot*.jar

        echo -e "\n\n[Reboot] Starting automated reboot process"
        printf "[Reboot] "

        for i in 3 2 1
        do

                printf "$i..."
                sleep 1

        done

        echo -e "\n[Reboot] Clearing console and running Java process"
        sleep 1
	clear

done
