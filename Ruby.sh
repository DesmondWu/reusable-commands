Ruby
----

brew install rbenv
brew install ruby-build

Add to .profile:
```
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
```
Re-source profile: `source ~/.profile`

brew install openssl
CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl`" rbenv install 2.0.0-p247
rbenv global 2.0.0-p247

gem install bundle rails redis pry pry-doc
rbenv rehash