# cert-letsencrypt-indocker
Um dockerzinho para criar rápido seu Certificado Let's Encrypt


# Geração de Certificado Let's Encrypt em imagem Ubuntu com o CertBot.

 Let’s Encrypt é um projeto da Linux Foundation que tem como objetivo 
popularizar a utilização de certificados SSL, facilitando a aquisição 
e instalação de certificados SSL.

Atualmente, os certificados gratuitos da Let’s Encrypt tem validade 
de 90 dias, obrigando webmasters a atualizar seus certificados com 
frequência, devido ao tempo de expiração. 

Suba a imagem => docker-compose up -d

Acesse o Container gerado pela imagem => docker exec -it ubuntu-certbot /bin/bash

Para gerar um certificado SSL pelo terminal, basta utilizar o comando abaixo, 
alterando apenas os domínios destacados.

Comando:
sudo certbot certonly --manual -d \*.testedominio.com.br -d testedominio.com.br --agree-tos --no-bootstrap --manual-public-ip-logging-ok --preferred-challenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory

Feito isso, basta adicionar a entrada TXT com nome _acme-challenge.meusite.com.br 
para o valor gerado no terminal. 

Agora, espere alguns minutinhos até que a entrada seja propagada 
(recomendamos utilizar o site ISPTools - http://www.isptools.com.br/ para acompanhar).

Assim que a entrada estiver propagada, basta dar ENTER no terminal para gerar seu certificado SSL com Wildcard.

Certificados estarão => ls -l /etc/letsencrypt/live/testedominio/*.pem 

Bom Trampo!
