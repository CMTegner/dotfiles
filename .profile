# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,bash_prompt,exports,git-completion}; do
    [ -r "$file" ] && source "$file"
done
unset file

touch $NODE_REPL_HISTORY_FILE

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
[ -f "$HOME/lib/google-cloud-sdk/path.bash.inc" ] && . $HOME/lib/google-cloud-sdk/path.bash.inc
[ -f "$HOME/lib/google-cloud-sdk/completion.bash.inc" ] && . $HOME/lib/google-cloud-sdk/completion.bash.inc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Populate .npm-completion file
npm completion > ~/.npm-completion
source ~/.npm-completion

npm config set init.author.name "Christian Tegnér"
npm config set init.author.email christian.tegner@gmail.com


[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[ -f "$HOME/.kube/completion.bash.inc" ] || kubectl completion bash > ~/.kube/completion.bash.inc
. $HOME/.kube/completion.bash.inc
