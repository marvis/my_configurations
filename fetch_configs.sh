#! /bin/sh -x
mkdir -p home
mkdir -p home/.ssh
mkdir -p home/.vim

cp ~/.newsbeuter/* ./newsbeuter
cp ~/.rem/* ./reminder
cp ~/.reminders ./reminder
cp 
cp -r ~/.certs ./mutt
cp ~/.msmtprc ./mutt
cp ~/.muttrc ./mutt
cp -r  ~/.mutt ./mutt

cp ~/.profile ./home/.profile
cp ~/.bashrc ./home/.bashrc
cp ~/.vimrc ./home/.vimrc
cp ~/.myshell.sh ./home/.myshell.sh
cp -r ~/.vim ./home/

cp ~/.ssh/id_rsa.pub ./home/.ssh/
cp ~/.ssh/id_rsa ./home/.ssh/

mkdir -p Local/bin
cp ~/Local/bin/addpassword ./Local/bin/
cp ~/Local/bin/ctags ./Local/bin/
cp ~/Local/bin/des_decrypt ./Local/bin/
cp ~/Local/bin/des_encrypt ./Local/bin/
cp ~/Local/bin/ruhr_in.sh ./Local/bin/
cp ~/Local/bin/ruhr_out.sh ./Local/bin/
cp ~/Local/bin/show_password ./Local/bin/
cp ~/Local/bin/v3d ./Local/bin/
cp ~/Local/bin/v3d_convert ./Local/bin/
cp ~/Local/bin/fetch_mail.sh ./Local/bin/
cp ~/Local/bin/youtube-dl ./Local/bin/
cp ~/Local/bin/youku.py ./Local/bin/
cp ~/Local/bin/cgal_create_cmake_script ./Local/bin/
cp ~/Local/bin/cgal_make_macosx_app ./Local/bin/

mkdir -p Local/include
cp ~/Local/include/lp_Hash.h ./Local/include/
cp ~/Local/include/lp_lib.h ./Local/include/
cp ~/Local/include/lp_matrix.h ./Local/include/
cp ~/Local/include/lp_mipbb.h ./Local/include/
cp ~/Local/include/lp_SOS.h ./Local/include/
cp ~/Local/include/lp_types.h ./Local/include/
cp ~/Local/include/lp_utils.h ./Local/include/

mkdir -p Local/lib
cp ~/Local/lib/liblpsolve55.a ./Local/lib/
cp ~/Local/lib/liblpsolve55.so ./Local/lib/

mkdir -p Local/Applications/shell_scripts
cp -r /home/mar/Local/Applications/shell_scripts/* Local/Applications/shell_scripts/

# delete unnecessary files
find . -name "\._*" -exec rm {} \;
find . -name "\.DS_Store" -exec rm {} \;
