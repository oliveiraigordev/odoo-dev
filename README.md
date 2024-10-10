# ODOO DEVELOPMENT

## INSTALAÇÃO DE DEPENDENCIAS E APLICAÇÕES NECESSÁRIAS PARA DESENVOLVER NO VSCODE COM DOCKER.

Os passos abaixo para configuração funcionam tanto para sistemas operacionais Windows, Linux e MacOS.

Instale as extensões minímas necessárias a seguir no seu vscode. abra os links abaixo e clique em instalar/install.

  - [ms-vscode-remote.remote-containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) 
  - [ms-azuretools.vscode-docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) 



## ABRIR O PROJETO NO VSCODE DENTRO CONTAINER DOCKER PARA INICIAR O DESENVOLVIMENTO.
1. Clique no icone com <b>[><]</b> na barra de status, no canto inferior (em baixo) esquerdo do vscode.
2. Na caixa que irá aparecer, selecione a opção <b>Reopen in Container/Abrir no Container</b>.
3. Aguarde o processo finalizar. isso pode levar alguns minutos dependendo do hardware da sua máquina.
    - Irá baixar a imagem do banco de dados postgresql caso ainda não tenha baixado.
    - Irá abrir uma nova instancia do vscode dentro do docker container.
