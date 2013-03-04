# Populate .npm-completion file
npm completion > ~/.npm-completion

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{aliases,bash_prompt,exports,git-completion,npm-completion,path}; do
    [ -r "$file" ] && source "$file"
done
unset file
