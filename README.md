#Objetivo
Esse projeto pretende criar um script de configuração de usuários para facilitar a configuração de usuários.

Os diretórios criados são:

/publico
/adm
/ven
/sec

os grupos criados são:
GRP_ADM
GRP_VEN
GRP_SEC

os usuários criados são:
carlos
maria
joao
debora
sebastiana
roberto
josefina
amanda
rogerio


As definições do código são as seguintes:
- Excluir diretórios, arquivos, grupos e usuários criados anteriormente
- Fazer provisionamento em um arquivo Bash Script
- O dono dos diretórios é o usuário root
- Todos os usuários terão permissão total dentro do diretório publico
- Os usuários de cada grupo terão permissão total dentro do seu respectivo diretório
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos a que eles não pertencem
