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
  echo -e ""
  sleep 4
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

  echo -e "${RED}TOKEN :${NC}"
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
    echo -e "${BLUE}            APAKAH INGIN MELANJUTKAN             ${NC}"
    echo -e "${BLUE} =============================================== ${NC}"
    echo -e "                                                       "
    echo -e "Ingin melanjutkan ke proses penginstalan? (y/n)"
    read -r INSTAL_THOMZ
    case "$INSTAL_THOMZ" in
      y) 
     echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${RED}              MASUKAN SUBDOMAIN KAMU             ${NC}"
  echo -e "${RED}             (panel.thomvelz.tamvan)             ${NC}"
  echo -e "${RED}                    ©Thomvelz                    ${NC}"
  echo -e "${RED} =============================================== ${NC}"
    read Domain
    
bash <(curl -s https://raw.githubusercontent.com/guldkage/Pterodactyl-Installer/main/autoinstall.sh) $Domain true admin@gmail.com admin admin admin admin true
  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e ""
  sleep 2
  clear
  return
    break
        ;;
      Y) 
     echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${RED}              MASUKAN SUBDOMAIN KAMU             ${NC}"
  echo -e "${RED}             (panel.thomvelz.tamvan)             ${NC}"
  echo -e "${RED}                    ©Thomvelz                    ${NC}"
  echo -e "${RED} =============================================== ${NC}"
    read Domain
    
bash <(curl -s https://raw.githubusercontent.com/guldkage/Pterodactyl-Installer/main/autoinstall.sh) $Domain true admin@gmail.com admin admin admin admin true
  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e ""
  sleep 2
  clear
  return
    break
        ;;
      n)
        return
        ;;
      *)
        echo -e "${RED}Pilihan tidak valid, silahkan coba lagi.${NC}"
        ;;
    esac
  done
  
if [ -e /root/pterodactyl ]; then
    sudo rm -rf /root/pterodactyl
  fi
  wget -q "$THEME_URL"
  sudo unzip -o "$(basename "$THEME_URL")"
  
if [ "$SELECT_THEME" -eq y ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                                   "
  read Domain
bash <(curl -s https://raw.githubusercontent.com/guldkage/Pterodactyl-Installer/main/autoinstall.sh) $Domain true admin@gmail.com admin admin admin admin true
  echo -e "                                                       "

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                   INSTALL SUCCESS               [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e ""
  sleep 2
  clear
  return

elif [ "$SELECT_THEME" -eq 2 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan billing:install stable
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/C1.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                  INSTALL SUCCESS                [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  return

elif [ "$SELECT_THEME" -eq 3 ]; then
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                  INSTALLASI THEMA               [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                                   "

    # Menanyakan informasi kepada pengguna untuk tema Enigma
    echo -e "${YELLOW}Masukkan link wa (https://wa.me...) : ${NC}"
    read LINK_WA
    echo -e "${YELLOW}Masukkan link group (https://.....) : ${NC}"
    read LINK_GROUP
    echo -e "${YELLOW}Masukkan link channel (https://...) : ${NC}"
    read LINK_CHNL

    # Mengganti placeholder dengan nilai dari pengguna
    sudo sed -i "s|LINK_WA|$LINK_WA|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_GROUP|$LINK_GROUP|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    sudo sed -i "s|LINK_CHNL|$LINK_CHNL|g" /root/pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    

  sudo cp -rfT /root/pterodactyl /var/www/pterodactyl
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  sudo npm i -g yarn
  cd /var/www/pterodactyl
  yarn add react-feather
  php artisan migrate
  yarn build:production
  php artisan view:clear
  sudo rm /root/C3.zip
  sudo rm -rf /root/pterodactyl

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                   INSTALL SUCCESS               [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
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
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    DELETE THEME                 [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  bash <(curl https://raw.githubusercontent.com/Foxstoree/pterodactyl-auto-installer/main/repair.sh)
  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]                 DELETE THEME SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
}

# Main script
display_welcome
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
