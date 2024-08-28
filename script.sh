#!/bin/bash

# === Colores ===
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
CYAN="\033[0;36m"
WHITE="\033[1;37m"
RESET="\033[0m"

# === Emojis ===
LOCK="🔒"
UNLOCK="🔓"
KEY="🔑"
LINK="🔗"
WARNING="⚠️"
HAMMER="🔨"
MAG="🔍"
WAVING="👋"

# === Título ===
echo -e "${CYAN}
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░███░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░█████████
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░█████████
█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███░░░░▄▀░░░░█░░▄▀░░░░░░▄▀░░█░░░░░░▄▀░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████
█░░▄▀░░█████████░░▄▀░░████░░▄▀░░█████░░▄▀░░███░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█░░▄▀░░█████████░░▄▀░░░░░░░░▄▀░░█████░░▄▀░░███░░▄▀░░░░░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█░░▄▀░░█████████░░▄▀▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█░░▄▀░░█████████░░▄▀░░░░░░▄▀░░░░█████░░▄▀░░███░░▄▀░░░░░░░░░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█░░▄▀░░█████████░░▄▀░░██░░▄▀░░███████░░▄▀░░███░░▄▀░░█████████████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░░░░░█░░░░▄▀░░░░█░░▄▀░░█████████████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█
█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀░░█████████████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░█░░░░░░░░░░█░░░░░░█████████████░░░░░░█████░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
${RESET}"
echo -e "${YELLOW}${WAVING} ${WHITE}Autor: Beatriz Fresno Naumova${RESET}"
echo -e "${LINK} ${WHITE}GitHub: https://github.com/beafn28${RESET}"
echo -e "${LINK} ${WHITE}GitBook: https://beafn28.gitbook.io/beafn28/${RESET}\n"

# === Funciones ===

# Base64 Encode/Decode
base64_tool() {
    echo -e "\n${CYAN}${LOCK} Base64 Encode/Decode ${UNLOCK}${RESET}"
    read -p "Enter text to encode/decode in Base64: " text
    read -p "Encode or Decode (e/d): " option
    if [ "$option" == "e" ]; then
        echo -e "${GREEN}Encoded: $(echo -n "$text" | base64)${RESET}\n"
    elif [ "$option" == "d" ]; then
        echo -e "${GREEN}Decoded: $(echo -n "$text" | base64 --decode)${RESET}\n"
    else
        echo -e "${RED}${WARNING} Invalid option${RESET}\n"
    fi
}

# Hex Encode/Decode
hex_tool() {
    echo -e "\n${CYAN}${LOCK} Hex Encode/Decode ${UNLOCK}${RESET}"
    read -p "Enter text to encode/decode in Hex: " text
    read -p "Encode or Decode (e/d): " option
    if [ "$option" == "e" ]; then
        echo -e "${GREEN}Encoded: $(echo -n "$text" | xxd -p)${RESET}\n"
    elif [ "$option" == "d" ]; then
        echo -e "${GREEN}Decoded: $(echo -n "$text" | xxd -r -p)${RESET}\n"
    else
        echo -e "${RED}${WARNING} Invalid option${RESET}\n"
    fi
}

# ROT13 Encode/Decode
rot13_tool() {
    echo -e "\n${CYAN}${LOCK} ROT13 Encode/Decode ${UNLOCK}${RESET}"
    read -p "Enter text to encode/decode in ROT13: " text
    echo -e "${GREEN}Result: $(echo "$text" | tr 'A-Za-z' 'N-ZA-Mn-za-m')${RESET}\n"
}

# XOR Encrypt/Decrypt
xor_tool() {
    echo -e "\n${CYAN}${LOCK} XOR Encrypt/Decrypt ${UNLOCK}${RESET}"
    read -p "Enter text to XOR: " text
    read -p "Enter key (numeric): " key
    result=$(echo -n "$text" | xxd -p | tr -d '\n' | sed "s/../& /g" | xxd -r -p | od -An -t x1 | sed "s/ /0x/g" | awk -v k=$key '{printf "%02x", strtonum($1) ^ k}')
    echo -e "${GREEN}XOR Result: $(echo "$result" | xxd -r -p)${RESET}\n"
}

# Caesar Cipher Encrypt/Decrypt
caesar_tool() {
    echo -e "\n${CYAN}${LOCK} Caesar Cipher Encrypt/Decrypt ${UNLOCK}${RESET}"
    read -p "Enter text: " text
    read -p "Enter shift value: " shift
    echo -e "${GREEN}Encoded/Decoded: $(echo "$text" | tr $(echo {a..z} {A..Z} | sed -r "s/ //g;s/(.{$shift})(.*)/\2\1/g") $(echo {a..z} {A..Z} | sed -r "s/ //g"))${RESET}\n"
}

# Crack Hash (MD5, SHA1, SHA256)
crack_hash() {
    echo -e "\n${CYAN}${LOCK} Crack Hash ${UNLOCK}${RESET}"
    read -p "Enter hash: " hash
    read -p "Enter hash type (md5/sha1/sha256): " type
    case $type in
        md5)
            hashcat -m 0 -a 0 "$hash" /usr/share/wordlists/rockyou.txt
            ;;
        sha1)
            hashcat -m 100 -a 0 "$hash" /usr/share/wordlists/rockyou.txt
            ;;
        sha256)
            hashcat -m 1400 -a 0 "$hash" /usr/share/wordlists/rockyou.txt
            ;;
        *)
            echo -e "${RED}${WARNING} Invalid hash type${RESET}\n"
            ;;
    esac
}

# Cracking RSA
rsa_crack() {
    echo -e "\n${CYAN}${LOCK} Crack RSA ${UNLOCK}${RESET}"
    read -p "Enter public key file (PEM format): " pubkey
    read -p "Enter encrypted file: " encfile
    read -p "Enter private key file (if available, else press enter): " privkey
    if [ -n "$privkey" ]; then
        openssl rsautl -decrypt -inkey "$privkey" -in "$encfile" -out decrypted_file
        echo -e "${GREEN}${UNLOCK} Decryption complete. Check 'decrypted_file'.${RESET}\n"
    else
        python3 rsa_tool.py "$pubkey" "$encfile"
    fi
}

# Vigenère Cipher Encrypt/Decrypt
vigenere_tool() {
    echo -e "\n${CYAN}${LOCK} Vigenère Cipher Encrypt/Decrypt ${UNLOCK}${RESET}"
    read -p "Enter text to encode/decode in Vigenère Cipher: " text
    read -p "Enter key: " key
    echo -e "${GREEN}Result: $(echo "$text" | python3 -c "
import sys
from itertools import cycle
key = sys.argv[1]
text = sys.stdin.read().strip()
encoded = ''.join(chr((ord(c) ^ ord(k)) % 256) for c,k in zip(text, cycle(key)))
print(encoded)
" $key)${RESET}\n"
}

# Fuerza Bruta con Hydra
brute_force() {
    echo -e "\n${CYAN}${HAMMER} Brute Force Passwords with Hydra ${HAMMER}${RESET}"
    read -p "Enter target IP/URL: " target
    read -p "Enter service (e.g., ssh, ftp): " service
    read -p "Enter username: " user
    echo -e "${GREEN}Starting brute force attack...${RESET}\n"
    hydra -l "$user" -P /usr/share/wordlists/rockyou.txt "$target" "$service"
    echo -e "${GREEN}Brute force attack complete.${RESET}\n"
}

# === Mostrar Menú ===
show_menu() {
    echo -e "${CYAN}============================"
    echo -e "  ${MAG} CTF Crypto Toolkit"
    echo -e "============================${RESET}"
    echo -e "${YELLOW}1) Base64 Encode/Decode"
    echo -e "2) Hex Encode/Decode"
    echo -e "3) ROT13 Encode/Decode"
    echo -e "4) XOR Encrypt/Decrypt"
    echo -e "5) Caesar Cipher Encrypt/Decrypt"
    echo -e "6) Crack Hash (MD5, SHA1, SHA256)"
    echo -e "7) Crack RSA"
    echo -e "8) Vigenère Cipher Encrypt/Decrypt"
    echo -e "9) Brute Force Passwords with Hydra"
    echo -e "10) Exit${RESET}\n"
}

# === Bucle Principal ===
while true; do
    show_menu
    read -p "Choose an option: " choice
    case $choice in
        1) base64_tool ;;
        2) hex_tool ;;
        3) rot13_tool ;;
        4) xor_tool ;;
        5) caesar_tool ;;
        6) crack_hash ;;
        7) rsa_crack ;;
        8) vigenere_tool ;;
        9) brute_force ;;
        10) echo -e "${GREEN}${WAVING} Goodbye!${RESET}"; exit 0 ;;
        *) echo -e "${RED}${WARNING} Invalid choice, please try again.${RESET}\n" ;;
    esac
done
