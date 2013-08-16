#                      .x+=:.
#                     z`    ^%    .uef^"
#             ..         .   <k :d88E          .u    .
#           .@88i      .@8Ned8" `888E        .d88B :@8c        .
#          ""%888>   .@^%8888"   888E .z8k  ="8888f8888r  .udR88N
#            '88%   x88:  `)8b.  888E~?888L   4888>'88"  <888'888k
#          ..dILr~` 8888N=*8888  888E  888E   4888> '    9888 'Y"
#         '".-%88b   %8"    R88  888E  888E   4888>      9888
#    .     @  '888k   @8Wou 9%   888E  888E  .d888L .+   9888
#  .@8c   8F   8888 .888888P`    888E  888E  ^"8888*"    ?8888u../
# '%888" '8    8888 `   ^"F     m888N= 888>     "Y"       "8888P'
#   ^*   '8    888F              `Y"   888                  "P'
#         %k  <88F                    J88"
#          "+:*%`                     @%
#                                   :"

SetLocaleToUTF8 () {
  export LC_ALL=en_US.UTF-8
  export LANG=en_US.UTF-8
}

SetupOhMyZsh () {
  export DISABLE_CORRECTION=true
  export ZSH=$HOME/.oh-my-zsh
  plugins=(autojump)
  source $ZSH/oh-my-zsh.sh
}

ExportPaths () {
  paths=(
    /Applications/Postgres.app/Contents/MacOS/bin
    $HOME/Dropbox/Applications/Postgres.app/Contents/MacOS/bin
    /usr/local/bin
    /usr/bin
    /bin
    /usr/sbin
    /sbin
    /usr/X11/bin
    /usr/local/sbin
    /usr/local/share/python
    /usr/local/share/npm/bin
    $HOME/Code/bin
    $HOME/Library/Python/2.7/bin/
  )

  export PATH=$(IFS=: ; echo "${paths[*]}")
}

SetupPowerline () {
  . ~/.powerline/powerline/bindings/zsh/powerline.zsh
}

SetupZshCorrect () {
  if [ -f ~/.zsh_nocorrect ]; then
      while read -r COMMAND; do
          alias $COMMAND="nocorrect $COMMAND"
      done < ~/.zsh_nocorrect
  fi
}

LoadAliases () {
  . ~/.config/zsh/aliases.zsh
}

SetupVim () {
  # Set as default editor
  export EDITOR='vim'
  # Keep vim up-to-date
  export FRESH_VIM='mvim -v'
  # Allow to use <c-s>
  alias vim="stty stop '' -ixoff ; $FRESH_VIM"
}

SetupRbenv () {
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
}

export TERM='xterm-256color'

SetLocaleToUTF8
SetupOhMyZsh
ExportPaths
SetupZshCorrect
SetupPowerline
LoadAliases
SetupVim
SetupRbenv
