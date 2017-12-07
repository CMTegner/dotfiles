# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,bash_prompt,exports,git-completion}; do
    [ -r "$file" ] && source "$file"
done
unset file

touch $NODE_REPL_HISTORY_FILE

[ -f "$HOME/lib/google-cloud-sdk/path.bash.inc" ] && . $HOME/lib/google-cloud-sdk/path.bash.inc
[ -f "$HOME/lib/google-cloud-sdk/completion.bash.inc" ] && . $HOME/lib/google-cloud-sdk/completion.bash.inc

# Populate .npm-completion file
npm completion > ~/.npm-completion
source ~/.npm-completion

npm config set init.author.name "Christian Tegnér"
npm config set init.author.email christian.tegner@gmail.com

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Kubectl shell completion
[ -f "$HOME/.kube/completion.bash.inc" ] && . $HOME/.kube/completion.bash.inc
