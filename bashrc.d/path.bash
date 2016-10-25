pathmunge () {
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    if [ "$2" = "after" ] ; then
      PATH=$PATH:$1
    else
      PATH=$1:$PATH
    fi
  fi
}

pathmunge /usr/sbin
pathmunge /usr/bin
pathmunge /usr/bin/heroku
pathmunge /sbin after
pathmunge $HOME/bin after
pathmunge $HOME/.bin after
pathmunge $HOME/.cask/bin after

export PATH
