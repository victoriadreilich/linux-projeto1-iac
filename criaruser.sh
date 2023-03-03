#!/bin/bash

#avisar que o script começará a ser executado
echo "Criando usuários do sistema ....."

#solicitando o valor inicial de i ao usuário
echo "Digite o valor inicial de i: "
read i_start

#solicitando o valor final de i ao usuário
echo "Digite o valor final de i: "
read i_end

#Definir a senha padrão
password="Senha123"

#Loop para criar usuários
for ((i=$i_start; i<=$i_end; i++))
do
	username="convidado$i"

	useradd $username -m -s /bin/bash
	echo "$username:$password" | chpasswd
	passwd -e $username

	echo "Usuário $username criado com sucesso!" 
done

echo "Finalizado!!"
