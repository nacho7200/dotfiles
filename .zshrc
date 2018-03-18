# シンプルな zshrc from https://gist.github.com/mollifier/4964803
# License : MIT
# http://mollifier.mit-license.org/

# 環境変数
export LANG=ja_JP.UTF-8

function precmd() {
  # カレントディレクトリを $HOME を ~ として表示
  local wname=`pwd | sed -e "s|$HOME|~|"`
  # カレントディレクトリ名
  local tname=`pwd | sed -e 's|^.*/||'`

  echo -ne "\033]2;$wname\007" # window title
  echo -ne "\033]1;$tname\007" # tab title
}

# プロンプトの設定
autoload -Uz colors
colors
PROMPT="%{$fg[green]%}---%{${reset_color}%}"

RPROMPT='%~'

# 補完機能を有効にする
autoload -Uz compinit
compinit

# cd したら自動的にpushdする
setopt auto_pushd

# cd 省略してディレクトリ移動
setopt auto_cd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups


# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000


# emacs 風キーバインドにする
bindkey -d
bindkey -e
bindkey -e '^J' backward-word
bindkey -e '^O' forward-word


# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# beep を無効にする
 setopt no_beep

# フローコントロールを無効にする
  setopt no_flow_control

# Ctrl+Dでzshを終了しない
   setopt ignore_eof

# '#' 以降をコメントとして扱う
    setopt interactive_comments

# vim:se ft=zsh :

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

export SCALA_HOME=/tmp/scala-2.11.4
export PATH=$PATH:/tmp/scala-2.11.4/bin

#port fowarding
alias portmatriel8022="ssh -N -L 8022:matriel:22 mnagao@geo-ssh2.geo.titech.ac.jp"
alias portlilin8022="ssh -N -L 8022:lilin:22 mnagao@geo-ssh2.geo.titech.ac.jp"
alias portarael8022="ssh -N -L 8022:arael:22 mnagao@geo-ssh2.geo.titech.ac.jp"
alias portalmisael8022="ssh -N -L 8022:almisael:22 mnagao@geo-ssh2.geo.titech.ac.jp"

alias sshmatriel="ssh -t mnagao@geo-ssh2.geo.titech.ac.jp ssh matriel"
alias sshlilin="ssh -t mnagao@geo-ssh2.geo.titech.ac.jp ssh lilin"
alias ssharael="ssh -t mnagao@geo-ssh2.geo.titech.ac.jp ssh arael"
alias sshalmisael="ssh -t mnagao@geo-ssh2.geo.titech.ac.jp ssh almisael"

alias coupon="python3 ~/Private/Python/scraping/coupon.py"
