# Sobre o desafio

Este desafio propõe a criação de uma imagem pequena e otimizada utilizando o multistage build do docker e com isso obtermos uma imagem bem pequena (menos de 2MB) com função de excutar o build de um binário compliado em Go lang. 
<br/>
Esta documentação irá orientar a sobre o build da imagem e criação do container remotamente através do pull da imagem no dockerhub e também será orientado sobre como criar a imagem localmente e rodar um container baseado nessa imagem

# Baixando e rodando a imagem remotamente através do Dockerhub

A imagem da aplicação está no link:

```
https://hub.docker.com/layers/246305195/felipe16sm/codeeducation/1.0.0/images/sha256-06c3a2d6cb5179f64721a67417775babab7f12312d49845d4f5f9ffb9d2cf5fc?context=repo
```

Primeiramente abra o terminal de comandos (bash, por exemplo).
Para baixar a imagem execute o comando:

```
docker pull felipe16sm/codeeducation:1.0.0
```

Em seguida para rodar a imagem em um container execute o comando:

```
docker run -it felipe16sm/codeeducation:1.0.0
```

Com isso será mostrada a seguinte mensagem no terminal:

```
Full Cycle rocks! <3
```

# Fazendo o build da imagem localmente e executando

Abra o terminal de comandos dentro da pasta do projeto.
Para fazer o build da imagem execute o seguinte comando.

```
docker build -t felipe16sm/codeeducation:1.0.0 .
```

Em seguida para rodar a imagem em um container execute o comando:

```
docker run -it felipe16sm/codeeducation:1.0.0
```

Com isso será mostrada a seguinte mensagem no terminal:

```
Full Cycle rocks! <3
```
