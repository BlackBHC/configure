########### BinHui Chen Custome Settings ##########
#
### environmental variables
#
export MODULEPATH=$MODULEPATH:$HOME/Software/modulefiles
#
#
### alias
#
### functions
mkcd(){
    mkdir $1 && cd $_
}
#


########## System configuration
#
### environmental variables and settings
set -o emacs
# using vim style for editting command lines
export HISTSIZE=1000
# the history size of command lines
export LS_COLORS="rs=0:di=38;5;27:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arc=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lha=38;5;9:*.lz4=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.tzo=38;5;9:*.t7z=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lrz=38;5;9:*.lz=38;5;9:*.lzo=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.bz=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.war=38;5;9:*.ear=38;5;9:*.sar=38;5;9:*.rar=38;5;9:*.alz=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.cab=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.webm=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.axv=38;5;13:*.anx=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.axa=38;5;45:*.oga=38;5;45:*.spx=38;5;45:*.xspf=38;5;45"
export LS_COLORS=$LS_COLORS:'*.py=00;36:*.c=00;36:*.cpp=00;36:*.qsub=01;31'
# color maps
#
### alias
#
alias vi="vim"
alias mv="mv -i" # prompt if there is same name file
alias ls="exa" # ls with colors
alias cd="z"
# ordinary operations
alias psme="ps -eo pid,tty,user,command,lstart,etime | grep $USER"
alias psall="ps -eo pid,tty,user,command,lstart,etime"
alias topme="htop -u $USER"
alias kill="kill -9"
alias killme="pkill -u $USER"
# process control
alias ed_zshrc="vim $HOME/.zshrc"
alias up_zshrc="source $HOME/.zshrc"
# .zshrc
alias ed_vimrc="vim $HOME/.vimrc"
# .vimrc
alias ed_cbh_set="vi $HOME/.cbh_set/cbh_set.sh"
# configuration files
#



########## Gravity work flow
#
### environmental variables and settings
export PATH=$PATH:/home/bhchen/Software/SimSoft/GALAXY16.04/bin
# path for GALAXY16
export VMG=$HOME/FeGradient
export VMGIC=$VMG/IC
export VMGFig=$VMG/Fig
export VMGNbody=$VMG/Nbody
export Agama=$HOME/Pipeline/Python/Simulation/Agama_IC
export Snap=$HOME/Pipeline/Python/Simulation/Snapshot
export INI=$HOME/Pipeline/Python/Simulation/INI
#
### alias
alias myjob="qstat -n -u $USER"
alias disk="icfsquota $USER"
alias cpu="cpuquota"
alias topme="htop -u $USER"
alias delall="qselect -u $USER | xargs qdel"
alias delqueue="qselect -u $USER -s Q | xargs qdel"
alias delrun="qselect -u $USER -s R | xargs qdel"
alias debug="qsub -I -l nodes=1:ppn=1,mem=30gb,walltime=3:00:00 -q debug"
alias debug16="qsub -I -l nodes=1:ppn=16,mem=100gb,walltime=3:00:00 -q debug"
alias debug72="qsub -I -l nodes=1:ppn=72,mem=360gb,walltime=3:00:00 -q debug"
#
### functions
load_gadget() {
	module load compiler/gcc-6.5.0 mpi/mpich-3.2.1-gcc fftw/3.3.8 hdf5/1.12.0
	module load gsl/2.5
}

load_dice() {
	module load compiler/gcc-12.2.0
	module load package/gsl-2.7.1
	module load package/fftw-3.3.10
	module load compiler/cmake-3.25.1
	module load mpi/openmpi-4.0.3
	module load soft/dice-4.8
}

load_galaxy() {
	module load mpi/openmpi-3.1.1
}
