export (envsubst < /.env)
if status is-interactive
    # Commands to run in interactive sessions can go here
	set -g fish_greeting
	alias mountwin='sudo mount /dev/nvme0n1p3 /run/mount'
	alias dslr_capture="gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video1"
	alias hdmion="xrandr --output 'eDP1' --auto --output 'HDMI1' --auto --right-of 'eDP1' | wal -R"
	alias hdmioff="xrandr --output 'eDP1' --auto --output 'HDMI1' --off"
	alias walr="wal -R"
	alias yay="print you idiot use paru"
	alias discordasar="sudo cp Downloads/app.asar /opt/discord/resources/app.asar"
	alias pywal-obsidian="pkill obsidian & /home/melon/pywal-obsidianmd/pywal-obsidianmd.sh "/home/melon/obsidian/Uni""
	alias iwdwifion="iwctl device wlan0 set-property Powered on"
	alias iwdwifioff="iwctl device wlan0 set-property Powered off"
	alias l="ls -lah"
	alias vi='vim'
	alias fkmk='make NSFK=1'
	alias fkmkprg='make program NSFK=1'
	alias dslr-webcam='gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video9'
	alias phone-webcam='scrcpy --video-source=camera --camera-size=1920x1080 --camera-facing=back --v4l2-sink=/dev/video10 --no-playback'
	alias vim='nvim'
	alias pacwoman='pacman'
	cat ~/.cache/wal/sequences
	meowfetch
end
zoxide init --cmd cd fish | source

function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item

# Created by `pipx` on 2024-02-29 09:07:23
set PATH $PATH /home/melon/.local/bin

# thefuck --alias | source
