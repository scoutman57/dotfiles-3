# docker.sh: install docker-machine, docker, and docker-compose
# Source: http://stackoverflow.com/questions/32744780/install-docker-toolbox-on-a-mac-via-command-line

# Install Docker
brew cask install dockertoolbox

# Create a Docker Machine
docker-machine create --driver virtualbox default

# Start the Docker Machine
docker-machine start default

# Checkout .extra for the last piece that loads the Docker CLI when a shell starts.
