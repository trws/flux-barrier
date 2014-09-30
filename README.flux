If the flux-core-devel RPM is not installed:

  git clone git@github.com:flux-framework/flux-core.git
  cd flux-core
  ./autogen.sh
  ./configure --prefix=$HOME/flux
  make
  make check
  make install

  cd <this repo>
  ./autogen.sh
  ./configure --with-flux-core=$HOME/flux
  make 
  make check
