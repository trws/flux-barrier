First build flux-core and install to $HOME/flux
```
git clone git@github.com:flux-framework/flux-core.git
cd flux-core
./autogen.sh
./configure --prefix=$HOME/flux
make
#make check
make install
```

Next build flux-barrier against the installed flux-core
```
cd ../flux-core
./autogen.sh
./configure --with-flux-core=$HOME/flux
make
```

Finally read the man page, load the module, and run the executable.
```
PATH=$HOME/flux/bin:$PATH
flux -c flux.conf help xbarrier
...
flux -c flux.conf start
cmbd: 0-0: starting shell
$ flux -c flux.conf module load xbarrier
cmbd: [1412627424.741373] cmbd.info[0] insmod xbarrier /tmp/flux-modctl-aXUvqF
flux-module: module loaded
$ flux -c flux.conf xbarrier foo
cmbd: [1412627431.492176] xbarrier.debug[0] create foo.0 nprocs 1
cmbd: [1412627431.492423] xbarrier.debug[0] destroy foo.0 nprocs 1 count 1 errnum 0 clients 1
xbarrier name=foo.0 nprocs=1 time=0.759 ms
```
