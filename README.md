LEMBRE-SE:

- Fazer alteração das informações no main.tf, para declarar corretamente seu bucket, region e tags

- Criar as chaves "aws-key" e "aws-key.pub", os arquivos aqui são só de exemplo do que é usado na estrutura em questão. 
Para a criação, caso esteja usando o VS Code, utilizando o comando "ssh-keygen -f aws-key" já irá criar na devida formatação (para isso remova os 2 arquivos de exemplo para evitar duplicidade de nome).

OBS: se fizer alterações nos nomes dos blocos, precisará alterar também as chamadas de id que mencionem os blocos alterados e também ajusta-los no outputs.tf.

Outro ponto: Essa criação irá utilizar uma VPC já criada, com isso valide as regras da VPC em questão.
