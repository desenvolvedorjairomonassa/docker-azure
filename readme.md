# Construir a Imagem Docker
Abra um terminal e navegue até o diretório onde o seu Dockerfile está localizado. Em seguida, execute o seguinte comando para construir a imagem Docker:


````docker build -t minha-aplicacao:latest .```


# Fazer Login no Azure Container Registry
Antes de enviar a imagem para o ACR, você precisa fazer login. Use o comando abaixo para fazer login:

```az acr login --name jairomonassa```

# Marcar a Imagem Docker para o ACR
Marque a imagem Docker com o nome do seu ACR. Suponha que o nome do seu ACR seja meuacr:

```docker tag ecommerce:latest meuacr.azurecr.io/minha-aplicacao:latest```

# Enviar a Imagem para o ACR
envio da imagem para o Azure Container Registry:

``` docker push meuacr.azurecr.io/minha-aplicacao:latest ```

# Verificar a Imagem no ACR
Você pode verificar se a imagem foi enviada com sucesso acessando o portal do Azure ou usando o comando da CLI do Azure:

```az acr repository list --name ecommerce --output table ```
