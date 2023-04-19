# aliases
alias mv='mv -v'
alias cp='cp -v'
alias ll='ls -la'
alias ipa='ip -c a'
alias zshrc='/usr/bin/vim ~/.zshrc'
alias vim=nvim
alias projects='nvim ~/Desktop/projects'
alias configs='nvim ~/.config'

# M1 mac aliases 
alias funcx86='/usr/bin/arch -x86_64 /usr/local/bin/func'

# Mac setup for pomo
alias work="timer 60m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"
