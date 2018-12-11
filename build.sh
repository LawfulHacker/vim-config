sudo apt update -qq

sudo apt remove --purge vim vim-common vim-runtime vim-gnome vim-tiny vim-gui-common
sudo apt install -y liblua5.1-dev luajit libluajit-5.1 python-dev python3-dev libperl-dev libncurses5-dev

#Optional: so vim can be uninstalled again via `dpkg -r vim`
sudo apt install checkinstall

sudo rm -rf /usr/local/share/vim /usr/bin/vim

cd ~
git clone https://github.com/vim/vim.git
cd vim
git pull && git fetch
git checkout tags/v8.0.1402

#In case Vim was already installed
cd src
make distclean
cd ..

./configure \
  --enable-multibyte \
  --enable-perlinterp=dynamic \
  --enable-python3interp \
  --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu \
  --enable-luainterp \
  --with-luajit \
  --enable-cscope \
  --enable-gui=auto \
  --with-x \
  --with-features=huge \
  --enable-fontset \
  --enable-largefile \
  --disable-netbeans \
  --with-compiledby="LawfulHacker" \
  --enable-fail-if-missing

make && sudo checkinstall

./configure --prefix=/usr                                                   \
  --enable-multibyte                                                        \
  --enable-perlinterp=dynamic                                               \
  --enable-python3interp                                                    \
  --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu \
  --enable-luainterp                                                        \
  --with-luajit                                                             \
  --enable-cscope                                                           \
  --enable-terminal                                                         \
  --with-features=huge                                                      \
  --enable-fontset                                                          \
  --enable-largefile                                                        \
  --disable-netbeans                                                        \
  --with-compiledby="LawfulHacker <lawfulhacker@gmail.com>"                 \
  --enable-fail-if-missing

sudo checkinstall -D --fstrans=no                            \
    --maintainer=lawfulhacker@gmail.com --backup=yes         \
    --pkgname=vim8-py3.6 --pkgversion=8.0.1402

# Python 3.6 from source
sudo apt-get build-dep python3
sudo apt-get install -y make build-essential
sudo apt-get install -y  libsqlite3-dev wget curl llvm 
sudo apt-get install -y libgdbm-dev libssl-dev libsqlite3-dev           \
                        libreadline-dev libreadline6-dev                \
                        libncurses5-dev libncursesw5-dev                \
                        libbz2-dev zlib1g-dev liblzma-dev xz-utils      \
                        tcl-dev tk-dev
                        

wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
tar xvf Python-3.6.3.tgz
cd Python-3.6.3
./configure --prefix=/usr                                     \
    --enable-shared --enable-optimizations --with-lto

make -j8

sudo checkinstall -D --fstrans=no                             \
    --maintainer=lawfulhacker@gmail.com --backup=yes          \
    --pkgname=python3.6 --pkgversion=3.6.3 make altinstall
    

#
# OneDrive
#
sudo apt install -y libcurl4-openssl-dev libsqlite3-dev
wget http://downloads.dlang.org/releases/2.x/2.076.1/dmd_2.076.1-0_amd64.deb
sudo dpkg -i dmd_2.076.1-0_amd64.deb

git clone https://github.com/skilion/onedrive.git
cd onedrive
make
sudo make install
