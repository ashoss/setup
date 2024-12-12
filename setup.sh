#!/bin/bash

git clone https://github.com/akhilnarang/scripts
echo "Cloned into scripts"

cd scripts

# Check the distribution
check_distro() {
  if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    if [[ "$ID" == "debian" || "$ID_LIKE" == "debian" ]]; then
      echo "debian"
    elif [[ "$ID" == "arch" || "$ID_LIKE" == "arch" ]]; then
      echo "arch"
    else
      echo "unknown"
    fi
  else
    echo "unknown"
  fi
}

# Get the user's distribution type
distro=$(check_distro)

# Run different scripts based on the distribution output
case "$distro" in
  "debian")
    sudo apt update
    sleep 5
    sudo apt upgrade -y
    bash setup/android_build_env.sh
    ;;
  "arch")
    sudo pacman -Syu --noconfirm
    bash setup/arch-manjaro.sh
    ;;
  "unknown")
    echo "Unsupported distribution. Exiting."
    exit 1
    ;;
esac

# Check if ~/bin exists and create it if it isn't
if [[ ! -d ~/bin ]]; then
  mkdir ~/bin
fi

echo "### Checking for repo ###"
# Check if repo is already installed and install it if it isn't
if [[ ! -f ~/bin/repo ]]; then
  echo "### Installing repo ###"
  curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
  chmod a+x ~/bin/repo
fi

echo "### Finished ###"


