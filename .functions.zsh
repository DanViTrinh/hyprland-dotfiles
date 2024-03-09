# exit where the cursor is in yazi
function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		__zoxide_z "$cwd"
	fi
	rm -f -- "$tmp"
}

function code() {
  command code "$@" && exit;
}
