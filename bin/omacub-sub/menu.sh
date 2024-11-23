if [[ $# -eq 0 ]]; then
  SUB=$(gum choose "Theme" "Font" "Quit" --height 10 --header "" | tr '[:upper:]' '[:lower:]')
else
  SUB=$1
fi

[[ -n "$SUB" ]] && [[ "$SUB" != "quit" ]] && source $OMACUB_PATH/bin/omacub-sub/$SUB.sh
