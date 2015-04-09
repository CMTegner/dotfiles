# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,bash_prompt,exports,git-completion}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Populate .npm-completion file
npm completion > ~/.npm-completion
source ~/.npm-completion

npm config set init.author.name "Christian Tegnér"
npm config set init.author.email christian.tegner@gmail.com
