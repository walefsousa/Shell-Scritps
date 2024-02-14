#!/bin/bash

# Função para atualizar o sistema
update_system() {
    echo "Atualizando o sistema..."
    sudo apt update && sudo apt upgrade -y
}

# Função para atualizar os repositórios
update_repositories() {
    echo "Atualizando os repositórios..."
    sudo apt update
}

# Função para instalar o Nginx
install_nginx() {
    echo "Instalando Nginx..."
    sudo apt install nginx -y
}

# Função para instalar o Apache2
install_apache2() {
    echo "Instalando Apache2..."
    sudo apt install apache2 -y
}

# Função para instalar o MySQL
install_mysql() {
    echo "Instalando MySQL..."
    sudo apt install mysql-server -y
}

# Função para instalar o SSH
install_ssh() {
    echo "Instalando SSH..."
    sudo apt install openssh-server -y
}

# Menu principal
while true; do
    clear
    echo "=== Menu de Instalação ==="
    echo "1. Atualizar o sistema"
    echo "2. Atualizar os repositórios"
    echo "3. Instalar Nginx"
    echo "4. Instalar Apache2"
    echo "5. Instalar MySQL"
    echo "6. Instalar SSH"
    echo "7. Sair"

    read -p "Escolha uma opção: " option

    case $option in
        1)
            update_system
            ;;
        2)
            update_repositories
            ;;
        3)
            install_nginx
            ;;
        4)
            install_apache2
            ;;
        5)
            install_mysql
            ;;
        6)
            install_ssh
            ;;
        7)
            echo "Saindo..."
            exit
            ;;
        *)
            echo "Opção inválida. Tente novamente."
            ;;
    esac

    read -p "Pressione Enter para continuar..."
done