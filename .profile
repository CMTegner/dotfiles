
# MacPorts Installer addition on 2012-08-23_at_15:10:57: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
npm completion > ~/.npm-completion
for file in ~/.{aliases,bash_prompt,exports,git-completion,npm-completion,path}; do
	[ -r "$file" ] && source "$file"
done
unset file

