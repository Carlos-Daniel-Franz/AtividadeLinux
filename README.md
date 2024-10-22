# AtividadeLinux

Documentação: Instalação do Ubuntu 20.04

Pré-requisitos:
1- Windows 10 ou Windows 11. 
2- Windows Subsystem for Linux (WSL) habilitado.
3- Conexão com a Internet.

Instalação do WSL:
WSL: Para habilitar o WSL é necessário abrir o PowerShell como administrador. Após o isso, execute o seguinte comando "wls --install" e reinicei o computador.

Instalação do Ubuntu:
Após reiniciar, abra o PowerShell novamente como administrador e execute o comando "wsl --install -d Ubuntu-20.04" que irá realizar o download do Ubuntu. Outra maneira de instalar o Ubuntu é por meio da Microsoft Store. Após a instalação, inicie o Ubuntu, você pode achá-lo pela barra de pesquisa do Windows e iniciar o mesmo. Ao iniciar o Ubuntu pela primeira vez, será solicitado que você crie um novo usuário e senha. Siga as instruções na tela.

Configuração do Ubuntu:
Após criar um usuário e senha, é uma boa prática atualizar os pacotes do sistema. Execute os seguintes comandos "sudo apt update" e "sudo apt upgrade". Isso garante que você ternha as útlimas atualizações do sistema operacional.

Instalação do Nginx:
Pelo terminal execute o comando "sudo apt install nginx", isso realizara a instalação no subsistema Ubuntu. Para verificar se foi instalado com sucesso, abra seu navegador e informe na barra de pesquisa "localhost". Se a instalação ocorreu sem nenhum problema, o navegador mostrará a seguinte mensagem: 

"Welcome to nginx!
If you see this page, the nginx web server is successfully installed and working. Further configuration is required.

For online documentation and support please refer to nginx.org.
Commercial support is available at nginx.com.

Thank you for using nginx. "

Comandos para do Nginx:
Inicar o serviço: "sudo systemctl start nginx".
Parar o serviço: "sudo systemctl stop nginx".
Verificar se o serviço está ativo: "sudo systemctl status nginx".

Criação do Script de validação:
Crie um repostitório para arquivos de log e script serem armazendados com o comando "mkdir AtividadeLinux". Após isso execute "cd AtividadeLinux" para entrar no diretório. Execute o comando "nano nginx.sh" para criar o arquivo que será feito o script em PowerShell e informe o código e salve o arquivo. Para tornar o script executável utilize o comando "chmod +x  /home/franz/AtividadeLinux/_nginx.sh". E para automatizar a execução do script utilizaremos o comando "contrab -e" e informaremos essa linha de código "*/5 * * * * /bin/bash ~/nginx.sh" que fará com que o script execute a cada 5 minutos que irá gerar saídas informando em cada arquivo log o status do serviço Nginx.

