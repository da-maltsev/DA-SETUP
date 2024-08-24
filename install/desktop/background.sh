gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

BACKGROUND_ORG_PATH=~/.local/share/da-files/themes/eos-background.png
BACKGROUND_DEST_DIR=~/.local/share/backgrounds
BACKGROUND_DEST_PATH="$BACKGROUND_DEST_DIR/$(echo eos-background.png | tr '/' '-')"

if [ ! -d "$BACKGROUND_DEST_DIR" ]; then mkdir -p "$BACKGROUND_DEST_DIR"; fi

[ ! -f $BACKGROUND_DEST_PATH ] && cp $BACKGROUND_ORG_PATH $BACKGROUND_DEST_PATH
gsettings set org.gnome.desktop.background picture-uri $BACKGROUND_DEST_PATH
gsettings set org.gnome.desktop.background picture-uri-dark $BACKGROUND_DEST_PATH
gsettings set org.gnome.desktop.background picture-options 'zoom'
