pacsi () {
	if [[ $# -eq 0 ]]; then
		echo "No argument provided"
		echo "Usage: pacsi <package>"
		return 1
	fi
	pacman -Si $(pacman -Ssq $@ | fzf)
}

pacqi () {
	if [[ $# -eq 0 ]]; then
		echo "No argument provided"
		echo "Usage: pacqi <package>"
		return 1
	fi
	pacman -Qi $(pacman -Qsq $@ | fzf)
}

bak () {
	if [ $# -ne 1 ]; then
		echo "Provide only 1 argument"
		echo "Usage: bak <package>"
		return 1
	fi
	cp "$1" "$1".bak
}


aur-install () {
	if [ $# -ne 1 ]; then
		echo "aur-install needs 1 argument: repository URL"
		echo "Usage: aur-install <package>"
		return 1
	fi
	package_name="$1"
	repo_dir="$HOME/dev/aur/$1"

	git clone "https://aur.archlinux.org/$1.git" "${repo_dir}" && \
		cd "${repo_dir}" &&
		extra-x86_64-build -c && \
		sudo pacman -U *.pkg.tar.zst --needed && \
		git clean -d -f
}

aur-update () {
	pull_status=$(git pull 2>&1)
	package_name=$(basename $PWD)
	echo "$package_name => ${pull_status}"

	if [[ $pull_status == *"fatal: not a git repository"* ]]; then
		echo "$pull_status"
		exit 1
	fi

	if [[ $pull_status == *"Already up to date."* ]]; then
		echo "AUR package is already up to date"
		exit 0
	fi

	extra-x86_64-build -c 
	sudo pacman -U *.pkg.tar.zst --needed
	git clean -d -f
}

aur-update-all () {
	for dir in ~/dev/aur/*/
	do
		(cd "$dir" && aur-update)
	done
}
