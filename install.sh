#!/usr/bin/env bash

# Colores para la terminal
GREEN="\033[0;32m"
BLUE="\033[0;34m"
NC="\033[0m"

echo -e "${BLUE}Iniciando la instalación de los dotfiles...${NC}"

# Definir la ruta de los dotfiles (donde se clone el repositorio)
DOTFILES_DIR="$HOME/dotfiles"

# Asegurar que existan los directorios de configuración en el sistema
mkdir -p "$HOME/.config"

echo -e "${BLUE}Creando enlaces simbólicos...${NC}"

# Enlace para Kitty
# (Elimina el directorio actual si existe para evitar conflictos con el enlace)
rm -rf "$HOME/.config/kitty"
ln -s "$DOTFILES_DIR/config/kitty" "$HOME/.config/kitty"
echo -e "${GREEN}✔ Kitty configurado.${NC}"

# Enlace para Zsh
rm -f "$HOME/.zshrc"
ln -s "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
echo -e "${GREEN}✔ .zshrc configurado.${NC}"

echo -e "${GREEN}¡Instalación completada con éxito!${NC}"
