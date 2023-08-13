+------------------+               +-------------------+               +-----------------+               +------------------+
|     Cliente      |               |      Roteador     |               |   Servidor Web  |               |     Aplicação    |
+------------------+               +-------------------+               +-----------------+               +------------------+
|                  |               |                   |               |                 |               |                  |
| 1. Digita o URL  | -- HTTP ----> |                   | --- HTTP ---> |                 | -- HTTP ----> |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
|                  |               |                   |               |                 |               |                  |
| 6. Exibe a página| <--- HTTP --- |                   | <--- HTTP --- |                 | <--- HTTP --- |                  |
|                  |               |                   |               |                 |               |                  |
+------------------+               +-------------------+               +-----------------+               +------------------+


Descrição das etapas:

O cliente digita o URL (Uniform Resource Locator) no navegador da web.
O navegador faz uma solicitação HTTP (Hypertext Transfer Protocol) para o servidor web através da internet.
A solicitação passa pelo roteador que encaminha os dados na rede.
A solicitação chega ao servidor web.
O servidor web encaminha a solicitação para a aplicação web relevante.
A aplicação web processa a solicitação e envia uma resposta HTTP com a página solicitada.
A resposta HTTP passa pelo servidor web novamente.
A resposta passa pelo roteador que a encaminha de volta para o cliente na rede.
A resposta HTTP chega ao cliente.
O navegador do cliente interpreta a resposta e exibe a página da web solicitada.

Essa sequência de protocolos envolve principalmente o HTTP para a comunicação entre o cliente e o servidor web. 
No entanto, durante o processo de comunicação, outros protocolos podem ser usados em camadas subjacentes da pilha de protocolos de rede, 
como o DNS para resolver o nome do servidor, 
o TCP para estabelecer uma conexão confiável e o 
IP para rotear os pacotes entre os dispositivos na internet.



+------------------+             +-------------------+             +-----------------+             +------------------+             +------------------+
|     Cliente      |             |      Roteador     |             |   Servidor Web  |             |   Servidor DNS   |             |     Aplicação    |
+------------------+             +-------------------+             +-----------------+             +------------------+             +------------------+
|                  |             |                   |             |                 |             |                  |             |                  |
| 1. Digita o URL  | - DNS Query>|                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |    DHCP Offer     |             |                 |             |                  |             |                  |
|                  |             | <------- DHCP Discover ---->    |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
| 4. DHCP Request  | - DHCP ACK >|                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  | - TCP SYN > |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
| 6. TCP SYN/ACK   | <- TCP SYN/ACK -                |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
| 8. TCP ACK       | - TCP ACK > |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   | - DNS Response ->             |             |                  |             |                  |
|                  |             |             | <----DNS Query -- |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
| 10. Exibe a      | <-- HTTP -- |                   | <-- HTTP -- |                 |             |                  | <--- HTTP - |                  |
|    página        |             |                   |             |                 |             |                  |             |                  |
|                  |             |                   |             |                 |             |                  |             |                  |
+------------------+             +-------------------+             +-----------------+             +------------------+             +------------------+


Descrição das etapas:

O cliente digita o URL no navegador da web.
O cliente envia uma consulta DNS (DNS Query) para o servidor DNS para resolver o nome do servidor web em um endereço IP.
O roteador encaminha a consulta DNS para o servidor DNS.
O cliente envia uma solicitação DHCP (DHCP Discover) para obter um endereço IP do servidor DHCP.
O servidor DHCP oferece um endereço IP ao cliente (DHCP Offer).
O cliente inicia a conexão TCP enviando um pacote SYN (TCP SYN) para o servidor web.
O roteador encaminha o pacote SYN para o servidor web.
O servidor web responde com um pacote SYN/ACK (TCP SYN/ACK) para estabelecer a conexão TCP.
O roteador encaminha o pacote SYN/ACK de volta para o cliente.
O cliente responde com um pacote ACK (TCP ACK) para confirmar a conexão TCP estabelecida.
O cliente envia uma solicitação HTTP para o servidor web.
O servidor DNS responde à consulta DNS com o endereço IP do servidor web (DNS Response).
O cliente envia uma solicitação HTTP para o servidor web, incluindo o endereço IP obtido na etapa 12.
O servidor web processa a solicitação e envia a página da web solicitada ao cliente através de uma resposta HTTP.
O cliente recebe a resposta HTTP com a página da web e exibe-a no navegador.

Nesse esquema,  
DNS é usado para resolver o nome do servidor web em um endereço IP, 
o DHCP é usado para fornecer um endereço IP ao cliente e 
o TCP é usado para estabelecer uma conexão confiável entre o cliente e o servidor web para a comunicação HTTP.







