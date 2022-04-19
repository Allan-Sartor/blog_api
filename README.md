<h2>
  📃 Sobre a API
</h2>

<i>Blog_api</i> é uma API que armazena artigos junto com suas avaliações, dentro de um database em PostgreSQL

<h2>🔧 Ferramentas utilizadas</h2>
Para o desenvolvimento do projeto, foram utilizados as principais ferramentas:
<ul>
  <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  <li><a href="https://github.com/jsonapi-serializer/jsonapi-serializer">Fast JSON</a></li>
  <li><a href="https://www.docker.com/">Docker</a></li>
  <li><a href="https://www.postman.com/">Postman</a></li>
  <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
</ul>

<h2>⚙ Rodando a aplicação</h2>
<ul>
  <li>É <b>necessário</b> possuir o <a href="https://docs.docker.com/get-docker/">Docker</a>.</li>
</ul>

<h3>Caso tudo esteja certo, siga o passo a passo abaixo:</h3>

1. Clone o repositório em sua maquina utilizando:
```sh
  $ git clone https://github.com/Allan-Sartor-Pontomais/blog_api.git
```
2. Instale as dependencias do projeto:
```sh
  $ docker-compose up
```
3. Após finalizar o comando acima feche o servidor "Ctrl+C" e rode:
```sh
  $ docker-compose run app rake db:create db:migrate
```
4. Para inserir seeds no banco de dados.
```sh
  $ docker-compose run app rake db:seed
```
5. Rode o projeto:
```sh
  $ docker-compose up
```
3. Se tudo estiver certo, a API irá iniciar no endereço http://localhost:3001/v1/api/

<hr>

<h3>Para testar as requisições do server acessar documentação POSTMAN</h3>

<b>Documentação: </b> <a href="https://www.postman.com/aerospace-pilot-75824004/workspace/articles/documentation/19698363-48162d82-ac9d-4793-b566-c680be211c67">acessar</a>.

<hr>

<h4 align="center">
    Created by <a href="https://www.linkedin.com/in/allan-gustavo-aa6844131/" target="_blank">Allan Sartor</a>
</h4>
