#!/bin/bash

# Função para checar o status do último comando
check_error() {
    if [ $? -ne 0 ]; then
        echo "Erro ao executar: $1"
        exit 1
    fi
}

echo "Criando diretórios..."

for dir in /publico /adm /ven /sec; do
    mkdir $dir
    check_error "mkdir $dir"
done

echo "Criando grupos [ADM(Administração), VEN(Vendas), SEC(Secretariado)] de usuários..."

for group in GRP_ADM GRP_VEN GRP_SEC; do
    groupadd $group
    check_error "groupadd $group"
done

echo "Criando usuários..."

declare -A usuarios_grupos=(
    [carlos]=GRP_ADM
    [maria]=GRP_ADM
    [joao]=GRP_ADM
    [debora]=GRP_VEN
    [sebastiana]=GRP_VEN
    [roberto]=GRP_VEN
    [josefina]=GRP_SEC
    [amanda]=GRP_SEC
    [rogerio]=GRP_SEC
)

for usuario in "${!usuarios_grupos[@]}"; do
    grupo=${usuarios_grupos[$usuario]}
    useradd "$usuario" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G "$grupo"
    check_error "useradd $usuario"
done

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
check_error "chown /adm"

chown root:GRP_VEN /ven
check_error "chown /ven"

chown root:GRP_SEC /sec
check_error "chown /sec"

chmod 770 /adm
check_error "chmod /adm"

chmod 770 /ven
check_error "chmod /ven"

chmod 770 /sec
check_error "chmod /sec"

chmod 777 /publico
check_error "chmod /publico"

echo "Estrutura criada com sucesso!"
