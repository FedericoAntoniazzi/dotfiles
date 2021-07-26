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
