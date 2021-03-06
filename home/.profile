alias tools="cd /home/mar/Sites/Sites/vimwiki/tools/commands"
alias wiki="cd /home/mar/Sites/Sites/vimwiki"
alias data="cd $V3D_CONVERT_PATH/data/wormdata"
alias v="$HOME/Local/bin/v3d_convert"
#alias clewn="$HOME/Local/bin/clewn -ga \"--args v3d_convert\" -va"
alias picb='ssh xiaohang@gate1.picb.ac.cn'
alias ruhr='ssh -p 3333 -Y hanxia@localhost'
alias proxy='echo sshpass -p "11SldPdW12" && ssh -Y -f -N -L 3333:pure21.bph.rub.de:22 sshgw@ssh-gw.bph.rub.de'
alias open='gnome-open'
alias work='cd $V3D_CONVERT_PATH'
alias study='cd /home/mar/Sites/Sites/vimwiki/study'
#alias dic='sdcv --data-dir $HOME/Local/dict -n'
alias fbi='sudo fbi'
alias top='htop'
alias ctp='cd $HOME/work/git_projs/ctp'

export V3D_CONVERT_PATH="$HOME/work/git_projs/v3d_convert"

export ITK_DIR="$HOME/Local/Applications/ITK/build"
export EDITOR="vim"
export vimdir=$HOME/.vim
export PATH=$HOME/Local/Applications/Fiji.app:$HOME/Local/Applications/shell_scripts:$HOME/Local/bin:/home/mar/Local/Applications/qt4.7/bin:$PATH
export LIBRARY_PATH=/home/mar/Local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/home/mar/Local/lib:/home/mar/work/v3d_external/v3d_main/common_lib/lib:$LD_LIBRARY_PATH
#export CPLUS_INCLUDE_PATH=/home/mar/Local/include:$CPLUS_INCLUDE_PATH
export LANG="en_GB.utf8"
source /home/mar/.v3d_convert_alias
source $HOME/.myshell.sh

