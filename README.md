# cyclic-audio-recording
Bash script for using audio-recorder as a cyclic recorder. Automatically delete older files, and record audio in chunks.
Record audio in a similar fashion to a dashcam, but just audio.

## Usage ideas
- Monitoring your dog barking while you are away.
- etc.

# Usage
## Initial setup
- Make sure to install and start 'audio-recorder'. This installation will be different per distribution.
  - I am using this one on my Arch-based distro: https://aur.archlinux.org/packages/audio-recorder
- Once started, edit your settings to your liking in the app, making sure to note where you are saving the recordings to.
- Then, edit the bash script to match your recording folder.
- Place this script in your home folder.

Now you can make the script executable using: `chmod +x cyclicaudio.sh` (using a terminal from your home folder)

- Run the script: `./cyclicaudio.sh` (From your home folder)
- Double-check that your input device is still set to what you want it to be. Let it run and check regularly that you have not run into errors and that the files are being deleted correctly.

## Credit where credit is due:
This Script is based on the work by Ephestione at https://www.ephestione.it/cyclic-sound-mp3-audio-recording-in-ubuntu/

## Notes:
- Stop the loop in the terminal with `ctrl+c'.
- The program will not start minimized, on every loop it will start where your mouse pointer is, starting it minimized resulted in the `audio-recorder -c start` line failing.
- I omitted the `--display=:0.0` flag as it was giving errors when trying to start a cronjob, in the end, I still could not get cron to run this without the display error. Launching it manually works just fine.
- Since we are starting and stopping this manually, you may at times find more files in your recording folder than what you set. This is due to the script not always being allowed to finish when we quit it using `ctrl+c`. It will delete the excess on the next full loop.

## Disclaimer
- I will not accept responsibility for loss of data, use this at your own risk.
- Unless you edit the script, there will be a 2-second or so gap in between recordings, I have implemented this to allow the program to finish off the audio file after the 'stop' command has run.
- Always consider the rights of others and the legalities of recording for what purposes you are using this.
