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
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${RED}                                                 ${NC}"
  echo -e "${RED}                AUTO INSTALLER PANEL             ${NC}"
  echo -e "${RED}                  MUDAH BY THOMZ                 ${NC}"
  echo -e "${RED}                                                 ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e ""
  echo -e ""
  sleep 4
}

#Check user token
check_token() {
  echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${RED}              CEK TOKEN AUTO INSTAL              ${NC}"
  echo -e "${RED}                  DI SALURANNYA                  ${NC}"
  echo -e "${RED}                      THOMZ                      ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e "                                                       "

  echo -e "${RED}TOKEN :${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "Thomvelz" ]; then
    echo -e "${GREEN}WOKEH COMPLETE${NC}}"
  else
    echo -e "${GREEN}GAGAL COBA LAGI${NC}"
    exit 1
  fi
  clear
}

create_node() {
  echo -e "                                                       "
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BLUE}[+]                    CREATE NODE                     [+]${NC}"
  echo -e "${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  #!/bin/bash
#!/bin/bash

# Minta input dari pengguna
read -p "Input Domain Panel Yang Tadi Sudah Terinstak: " location_name

# Ubah ke direktori pterodactyl
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

# Membuat lokasi baru
php artisan p:location:make <<EOF
Thomvelz
Autoinstaller Thomvelz
EOF

# Membuat node baru
php artisan p:node:make <<EOF
NODE JS
Autoinstaller By Thomz
1
https
$domain
yes
no
no
160000000
0
160000000
0
100
8080
2022
/var/lib/pterodactyl/volumes
EOF

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]        CREATE NODE & LOCATION SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  exit 0
}
# Install theme
install_theme() {
  while true; do
    echo -e "                                                       "
    echo -e "${RED} =============================================== ${NC}"
    echo -e "${RED}            APAKAH INGIN MELANJUTKAN             ${NC}"
    echo -e "${RED} =============================================== ${NC}"
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
read Domain <<EOF
bash <(curl -s https://raw.githubusercontent.com/rafiadrian1/kuliah/main/autoinstall.sh)  $Domain true admin@gmail.com thomz ganteng admin thomz true
EOF
# Ubah ke direktori pterodactyl
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

# Membuat lokasi baru
php artisan p:location:make <<EOF
Thomvelz
Autoinstaller Thomvelz
EOF

# Membuat node baru
php artisan p:node:make <<EOF
NODE JS
Autoinstaller By Thomz
1
https
$Domain
yes
no
no
160000000
0
160000000
0
100
8080
2022
/var/lib/pterodactyl/volumes
EOF

  echo -e "                                                       "
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${GREEN}[+]        CREATE NODE & LOCATION SUKSES             [+]${NC}"
  echo -e "${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 2
  clear
  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e ""
  sleep 2
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
    
  echo -e "                                                       "
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e "${GREEN}                   INSTALL SUCCESS               ${NC}"
  echo -e "${GREEN} =============================================== ${NC}"
  echo -e ""
  sleep 2
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
  }

# Main script
display_welcome
check_token

while true; do
  clear
  echo -e "                                                       "
  echo -e "${RED} =============================================== ${NC}"
  echo -e "${RED}                   SELECT OPTION                 ${NC}"
  echo -e "${RED} =============================================== ${NC}"
  echo -e "                                                       "
  echo -e "SELECT OPTION :"
  echo "1. Install panel"
  echo "2. Create Node"
  echo "x. Exit"
  echo -e "Masukkan pilihan (1/x):"
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    1)
      install_theme
      ;;
    2)
      create_node
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
