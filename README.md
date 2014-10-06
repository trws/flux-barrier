First build flux-core and install to $HOME/flux
```
git clone git@github.com:flux-framework/flux-core.git
cd flux-core
./autogen.sh
./configure --prefix=$HOME/flux
make
#make check
make install
PATH=$HOME/flux/bin:$PATH
```

Next build flux-barrier against the installed flux-core
```
cd ../flux-core
./autogen.sh
./configure --with-flux-core=$HOME/flux
make
```
