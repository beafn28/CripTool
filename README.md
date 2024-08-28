# 🔍 CripTool: CTF Crypto Toolkit

![Security Banner](https://img.shields.io/badge/security-tool-green.svg) ![Bash](https://img.shields.io/badge/bash-v5.0-blue.svg)

## 📜 Descripción

**CripTool**, desarrollado por **Beatriz Fresno Naumova**, es un poderoso script en Bash diseñado para ayudarte en retos de CTF (Capture The Flag) y tareas de ciberseguridad relacionadas con criptografía y cracking. Esta herramienta proporciona una serie de funciones útiles para la codificación, cifrado, descifrado, y ataque de fuerza bruta sobre distintos algoritmos.

### ⚙️ Funcionalidades:

1. **Codificación/Decodificación:**
   - **Base64**
   - **Hexadecimal**
   - **ROT13**
2. **Cifrado/Descifrado:**
   - **XOR**
   - **Cifrado César**
   - **Cifrado Vigenère**
3. **Cracking de Hashes:**
   - **MD5**
   - **SHA1**
   - **SHA256**
4. **Cracking de RSA**
5. **Ataques de Fuerza Bruta** usando `Hydra`.

### 🌐 Diseño:

El script está diseñado para ser fácil de usar, con un menú interactivo que guía al usuario a través de las distintas funciones. Además, incorpora colores y emojis para hacer la experiencia más visualmente atractiva.

## 🚀 Ejecución del Script

### 1. **Requisitos Previos**

- **Sistemas Operativos Compatibles:** Linux / MacOS.
- **Dependencias:**

  | Distribución                      | Comando de Instalación                  |
  |-----------------------------------|-----------------------------------------|
  | Basadas en `apt` (Debian, Ubuntu) | `sudo apt-get install nmap hydra hashcat`  |
  | Basadas en `yum` (CentOS, RHEL)   | `sudo yum install nmap hydra hashcat`      |

### 2. **Cómo Ejecutar**

Para ejecutar este script, sigue los pasos a continuación:

1. **Clonar el Repositorio:**
   ```bash
   git clone https://github.com/beafn28/CripTool
   cd CripTool
2. **Dar Permisos de Ejecución:**
    ```bash
    chmod +x script.sh
3. **Ejecutar el Script:**
    ```bash
    ./script.sh
4. **Uso del Script**
Al ejecutar el script, se presentará un menú interactivo que te permitirá elegir entre las diferentes opciones de codificación, cifrado, cracking, y fuerza bruta. Simplemente ingresa el número correspondiente a la función que deseas utilizar y sigue las instrucciones en pantalla.

### 3. **Ejemplo**
Un ejemplo de cómo se utiliza la función de codificación y decodificación en Base64:
```bash
🔒 Base64 Encode/Decode 🔓
Enter text to encode/decode in Base64: HelloWorld
Encode or Decode (e/d): e
Encoded: SGVsbG9Xb3JsZA==
