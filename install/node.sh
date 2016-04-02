# node.sh: install nvm and node
# Source: @webpro

# Install nvm, and get the latest version (based on tags)
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`

# We're setting NVM_DIR and sourcing nvm.sh in .extra. Also doing it
# here to enable the following commands to run.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Install Node
nvm install 5
nvm use 5
nvm alias default 5
