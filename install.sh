#!/bin/bash

# Color
BLUE='\033[0;34m'       
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

# Display welcome message
display_welcome() {
  echo -e ""
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "${BLUE}                                                 ${NC}"
  echo -e "${BLUE}                AUTO INSTALLER PANEL             ${NC}"
  echo -e "${BLUE}                  MUDAH BY THOMZ                 ${NC}"
  echo -e "${BLUE}                                                 ${NC}"
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e ""
  echo -e "WA THOMZ :"
  echo -e "083834510927"
  echo -e "Pembuat :"
  echo -e "@Thomvelz"
  sleep 4
  clear
}

#Check user token
check_token() {
  echo -e "                                                       "
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "${BLUE}                CEK TOKEN BY THOMZ               ${NC}"
  echo -e "${BLUE}                  TOKEN ADA DI                   ${NC}"
  echo -e "${BLUE}                     SALURAN                     ${NC}"
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "                                                       "

  echo -e "${YELLOW}TOKEN :${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "thomvelz" ]; then
    echo -e "${GREEN}WOKEH COMPLETE${NC}}"
  else
    echo -e "${GREEN}GAGAL COBA LAGI${NC}"
    exit 1
  fi
  clear
}

# Install theme
install_theme() {
  while true; do
    echo -e "                                                       "
    echo -e "${BLUE} =============================================== ${NC}"
    echo -e "${BLUE}                   SELECT THEME                  ${NC}"
    echo -e "${BLUE} =============================================== ${NC}"
    echo -e "                                                       "
    echo -e "PILIH THEME YANG INGIN DI INSTALL"
    echo "0. panel"
    echo "2. wings"
    echo "x. kembali"
    echo -e "masukan pilihan (1/2/3/x) :"
    read -r INSTAL_THOMZ
    case "$INSTAL_THOMZ" in
      1)
       echo -e "${YELLOW}Masukkan link wa (https://wa.me...) : ${NC}"
    read LINK_WA
        break
        ;;
      2)
        bash <(curl -s https://pterodactyl-installer.se)
        break
        ;;
      x)
        return
        ;;
      *)
        echo -e "${RED}Pilihan tidak valid, silahkan coba lagi.${NC}"
        ;;
    esac
  done
    
    
if [ "$INSTAL_THOMZ" -eq 1 ]; then
  echo -e "                                                       "
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "${BLUE}                  INSTALLASI THEMA               ${NC}"
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "                                                                   "
  0


  admin
  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e ""
  sleep 2
  clear
  return

elif [ "$INSTAL_THOMZ" -eq 2 ]; then
  echo -e "                                                       "
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "${BLUE}                  INSTALLASI THEMA               ${NC}"
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "                                                       "
  

  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                  INSTALL SUCCESS                ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  return

elif [ "$INSTAL_THOMZ" -eq 3 ]; then
  echo -e "                                                       "
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "${BLUE}                  INSTALLASI THEMA               ${NC}"
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "                                                                   "

 

  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e ""
  sleep 5
else
  echo ""
  echo "Pilihan tidak valid. silahkan pilih 1/2/3."
fi
}


# Uninstall theme
uninstall_theme() {
  echo -e "                                                       "
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "${BLUE}                    DELETE THEME                 ${NC}"
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "                                                       "
  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                 DELETE THEME SUKSES             ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "                                                       "
  sleep 2
  clear
}

# Main script
display_welcome
bash <(curl -s https://pterodactyl-installer.se)
check_token

while true; do
  clear
  echo -e "                                                       "
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "${BLUE}                   SELECT OPTION                 ${NC}"
  echo -e "${BLUE} =============================================== ${NC}"
  echo -e "                                                       "
  echo -e "SELECT OPTION :"
  echo "1. Install panel"
  echo "x. Exit"
  echo -e "Masukkan pilihan (1/x):"
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    1)
      install_theme
      ;;
    2)
      uninstall_theme
      ;;
    x)
      echo "Keluar dari skrip."
      exit 0
      ;;
    *)
      echo "Pilihan tidak valid, silahkan coba lagi."
      ;;
  esac
done
