# $FreeBSD: releng/12.1/share/skel/dot.profile 337497 2018-08-08 19:24:20Z asomers $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH
# BLOCKSIZE=K;	export BLOCKSIZE

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export PAGER="less -R"

export SFEED_YANKER="xargs echo -n | xclip -sel clip"
export SFEED_URL_FILE="${HOME}/.sfeed/urls"
export SFEED_BOOKMARK_FILE="${HOME}/n/playlist"
[ -f "${SFEED_URL_FILE}" ] || touch "${SFEED_URL_FILE}"
[ -f "${SFEED_BOOKMARK_FILE}" ] || touch "${SFEED_BOOKMARK_FILE}"
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export LESSHISTFILE="/dev/null"

# set ENV to a file invoked each time sh is started for interactive use.
export ENV="${HOME}/.shrc"

export GOPATH="${HOME}/.local/share"

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi

# Display a random cookie on each login.
if [ -x /usr/bin/fortune ] ; then /usr/bin/fortune freebsd-tips ; fi
