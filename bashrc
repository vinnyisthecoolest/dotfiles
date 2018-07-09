# My aliases
alias vi=nvim
alias vim=nvim
alias vimrc='vi ~/.config/nvim/init.vim'
alias bashrc='vi ~/.bashrc'
alias ..='cd ..'
# alias bs="browser-sync start -s --directory -f '*.html' '*.js' '*.css'"
alias bs="browser-sync start -s --directory -f '**/*.html' '**/*.js' '**/*.css'"
alias nbconvertall="jupyter nbconvert **/*.ipynb"
alias jc='jupyter nbconvert --execute --ExecutePreprocessor.kernel_name=python3 --allow-errors'
alias bsj='browser-sync start --proxy "localhost:4000" --files "_site/**/*" --port 4001'
alias kafka='cd ~/kafka; bin/kafka-server-start.sh config/server.properties'
