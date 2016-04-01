# bash.sh: install bash, set it as the default, install completions
# Source: @mathiasbynens, @webpro

# Install latest bash
brew install bash

# Change shell to bash
grep "/usr/local/bin/bash" /private/etc/shells &>/dev/null || sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
chsh -s /usr/local/bin/bash

# Install bash completions
brew install bash-completion2
