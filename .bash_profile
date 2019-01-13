if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# Make sure you are under the vagrant folder.  Consider this as public_html
cd /vagrant
