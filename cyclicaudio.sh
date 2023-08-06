#! /bin/bash
# Infinite looping, cyclic audio recording.
while :
do
#ensure audio-recorder starts without recording
audio-recorder -c stop
#initiates recording
audio-recorder -c start
#adjust this to how long you want each audio recording to be, default is 10 minutes.
sleep 10m
#stops the recording after the above time.
audio-recorder -c stop
#this is optional, but I find sleeping for a few seconds helps the program index and finish off the recorded file.
sleep 2
#quit the program so as to close the 'open files', this is to avoid reaching the 'open file limit' of your system.
audio-recorder -c quit
#change directory to where you are recording to, must match your directory set in 'audio-recorder'. Change 'username' to your own.
cd /home/username/audiofiles
#remove or delete files over 150, keeping the newest files. You may change this number to your liking.
rm `ls -t | awk 'NR>150'`
#changes back before looping around.
cd
done
