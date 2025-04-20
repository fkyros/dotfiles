alias rm="rm -i"
alias vi="vim"
alias ls="ls -G"
alias ll="ls -Gla"
alias l="ls -Gla"
alias ytdlp='f() { yt-dlp -x --audio-format "${2:-mp3}" --embed-thumbnail --embed-metadata --add-metadata --no-mtime --parse-metadata "title:%(title)s" -o "%(title)s.%(ext)s" "$1"; }; f'

alias linux='docker run -it -v $PWD:/tmp -w /tmp valgrind:1.0' #only for macos to run and debug C programs
alias neofetch='fastfetch'

# https://github.com/wting/autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
