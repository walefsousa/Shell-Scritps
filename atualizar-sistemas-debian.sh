#!/bin/bash

echo "Programa para atualizar o ubuntu"

        #Função para exibit o menu
        exibir_menu() {
            echo "Escolha uma opção:"
            echo "1 - Atualização o repositório"
            echo "2 - Atualizar o sistema" 
            echo "3 - Sair"
        }

        # Lopp principal 

        while true; do
            exibir_menu

        # Ler a opção do usuario
        read -p "Opção: " opcao 

        case $opcao in
        1)
        echo "Atualizando o repositorio"
        sudo apt update
        echo "repositório atualizado com sucesso"
        ;;

        2) 
        echo "Atualizado o sistema"
        sudo apt upgrade 
        echo "Sistema atualizado com sucesso"    
        ;;

        3) 
        echo "Saindo do programa...."
        exit 0
esac

        #Adicionar uma linha em brancod para melhorar a legibilidade
done
