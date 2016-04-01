# ruby.sh: install rbenv, ruby, and rails
# Sources:
#   https://gorails.com/setup/osx/10.11-el-capitan
#   http://karloespiritu.com/replacing-rvm-with-rbenv-in-os-x/

# rbenv handles switching ruby versions
# ruby-build is a rbenv plugin that lets rbenv install ruby versions
brew install rbenv ruby-build rbenv-gem-rehash

# Checkout .path and .extra for additions to $PATH and starting rbenv
# when the shell loads up.

# Install Ruby
rbenv install 2.2.3
rbenv global 2.2.3

# Update Rubygems
gem update --system

# Install Rails
gem install rails
