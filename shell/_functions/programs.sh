function export_apps() {
  #apt
  apt list --installed > "$DOTFILES_PATH/so/linux/apt/apt-installed.txt"
  echo "APT apps exported!"

  #python
  pip freeze > "$DOTFILES_PATH/langs/python/requirements.txt"
  echo "Python apps exported!"

  #NPM
  #ls -1 /usr/local/lib/node_modules | grep -v npm >"$DOTFILES_PATH/langs/js/global_modules.txt"
  #echo "NPM apps exported!"
}

function import_apps() {
  #apt

  #python
  pip install -r "$DOTFILES_PATH/langs/python/requirements.txt"
  echo "Python apps imported!"

  #NPM
  #xargs -I_ npm install -g “_” <"$DOTFILES_PATH/langs/js/global_modules.txt"
  #echo "NPM apps imported!"

}