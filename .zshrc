# Created by newuser for 5.8
cd ~

alias ls="exa --icons"
alias lsa="exa -a --icons"
alias cls="clear"
alias tmux="TERM=xterm-256color tmux"

PROMPT=' %F{118}%B%~%b%f '
RPROMPT='%F{238}%T%f'

autoload -Uz compinit
compinit
_comp_options+=(globdots)

echo """
    @@@@@@ @                                             @@@@
   @@@@@@@  @@@                                   @@@@@@@@@ @@
  @ @          @@                                @@   @      @@
 @               @@         @              @        @@         @@
 @                 @        @@    @@       @        @            @@
 @                  @        @@   @@@      @        @             @
 @@                 @          @@ @ @@@   @         @             @
   @                @            @@   @@@@@          @            @
    @@@           @@                                  @@@         @
        @@@ @@@ @@                                        @@@@@@@@



welcome retar
""" | lolcat
