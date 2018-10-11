#!/usr/bin/env bash
# Written by Matthew Hogan <matt@matthogan.co.uk>, June 2018

######### Configuration #########

NAME="helloworld"
JAR="spigot.jar"
RAM=2
COUNTDOWN=5

#################################

# Accept EULA.
# Manually beacuse "-Dcom.mojang.eula.agree=true" was added for only builds >Spigot#1544
echo "eula=true" > ./eula.txt

while true
do
        java -Dmc=${NAME} \
            -d64 \
            -XX:+UseG1GC \
            -Xmx${RAM}G \
            -Xms${RAM}G \
            -Dfile.encoding=UTF-8 \
            -DIReallyKnowWhatIAmDoingISwear \
            -jar $JAR \
            --log-strip-color \

        echo -e "\n\n[Reboot] Starting automated reboot process. CTRL+C to cancel"
        printf "[Reboot] "

        # Countdown for the restart, so that you have time to CTRL+C
        for ((i = $COUNTDOWN; i != 0; i--))
        do
                printf "$i..."
                sleep 1
        done

        echo -e "\n[Reboot] Clearing console and running Java process"
        sleep 1
    clear
done