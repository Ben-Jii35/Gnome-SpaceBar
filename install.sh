#!/bin/bash

# Configuration
UUID="spacebar@ben-j.documents.dev"
DEST_DIR="$HOME/.local/share/gnome-shell/extensions/$UUID"

echo "Installation de l'extension SpaceBar..."

# Créer le répertoire de destination s'il n'existe pas
mkdir -p "$DEST_DIR"

# Copier les fichiers de l'extension
cp metadata.json extension.js stylesheet.css "$DEST_DIR/"

echo "Fichiers installés dans $DEST_DIR"
echo ""
echo "Pour activer l'extension :"
echo "1. Redémarrez GNOME Shell :"
echo "   - Sur X11 : Alt+F2, tapez 'r', puis Entrée."
echo "   - Sur Wayland : Déconnectez-vous puis reconnectez-vous à votre session."
echo "2. Activez l'extension :"
echo "   - Via la commande : gnome-extensions enable $UUID"
echo "   - Ou via l'application 'Extensions' ou 'Extension Manager'."
echo ""
echo "Installation terminée avec succès !"
