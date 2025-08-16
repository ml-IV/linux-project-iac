# Projeto: Infraestrutura como Código (IaC) com Shell Script

## Descrição

Este projeto tem como objetivo a criação automatizada de uma estrutura básica de diretórios, grupos e usuários em um sistema Linux, utilizando Shell Script como ferramenta de **Infraestrutura como Código (IaC)**. Ele faz parte do curso de Linux oferecido pela **DIO (Digital Innovation One)**.

Durante o script, são realizadas as seguintes operações:

- Criação de diretórios: `/publico`, `/adm`, `/ven`, `/sec`
- Criação de grupos de usuários: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`
- Criação de usuários e associação aos seus respectivos grupos
- Definição de permissões para os diretórios
- Verificação de erros após cada etapa, com validação automática

## Curso

- **Curso:** Linux - Introdução ao Shell Script e Infraestrutura como Código  
- **Instrutor:** Denilson Bonatti  
- **Plataforma:** DIO (Digital Innovation One)

## Ambiente

Este projeto foi desenvolvido e testado em uma **máquina virtual Linux**, criada para fins educacionais.  
A VM simula um ambiente de servidor real, ideal para aprendizado e prática de administração de sistemas.

## Requisitos

- Máquina Virtual Linux (Ubuntu, Debian, CentOS, etc.)
- Acesso como usuário root (ou via `sudo`)
- Bash instalado
- OpenSSL instalado (para geração das senhas com `openssl passwd`)

## Como executar

1. Clone ou copie o script para sua máquina virtual.
2. Torne o script executável:
   ```
   chmod +x nome-do-script.sh
   ```

3. Execute o script com permissões de superusuário:
   ```
   ./nome-do-script.sh
   ```
4. Estrutura Criada
   ```
   /publico      → Acesso livre a todos os usuários
   /adm          → Acesso restrito ao grupo GRP_ADM
   /ven          → Acesso restrito ao grupo GRP_VEN
   /sec          → Acesso restrito ao grupo GRP_SEC  
   ```
5. Funcionalidades

- Automação da configuração de ambiente inicial para um servidor Linux

- Validação de erros em tempo real

- Estrutura clara e reutilizável

6. Observação

Este projeto é uma atividade prática com fins educacionais, utilizando uma máquina virtual como ambiente de simulação. 
Serve como base para implementação de políticas de usuários e permissões em ambientes corporativos reais.

