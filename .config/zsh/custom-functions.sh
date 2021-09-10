mkcdir () {
	mkdir -p $1 && cd $_
}

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
