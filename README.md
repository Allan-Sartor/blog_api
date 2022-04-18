<h2>
  📃 Sobre o servidor
</h2>

<i>Blog_api</i> é um servidor que armazena artigos junto com suas avaliações, dentro de um database em PostgreSQL

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
  <li>É <b>necessário</b> possuir o <a href="https://www.ruby-lang.org/pt/downloads/">Ruby 3.0.0</a> e <a href="https://rubyonrails.org/">Rails</a> em sua máquina.</li>
  <li>Também é <b>preciso</b> ter o <a href="https://docs.docker.com/get-docker/">Docker</a>.</li>
</ul>

<h3>Caso tudo esteja certo, basta seguir os passos abaixo.</h3>

1. Clone o repositório em sua maquina utilizando :

```sh
  $ git clone https://github.com/Allan-Sartor-Pontomais/blog_api.git
```
2. Instale as dependencias do projeto :
```sh
  $ docker-compose up
```
3. Rode o projeto :
```sh
  $ docker-compose up
```
3. Se tudo estiver certo, a aplicação irá iniciar no endereço http://localhost:3001/

<br />

<h3> Caso queira rodar o servidor sem o Docker, sigo o passo a passo abaixo: </h3>

1. Clone o repositório em sua maquina utilizando:
```sh
  $ git clone https://github.com/Allan-Sartor-Pontomais/blog_api.git
```
2. Instale as dependencias do projeto:
```sh
  $ bundle install
```
3. Rode o projeto :
```sh
  $ rails s -p 3001
```
3. Se tudo estiver certo, a aplicação irá iniciar no endereço http://localhost:3001/

<br />

<h3>Para testar as requisições do server acessar documentação POSTMAN</h3>

<b>Documentação</b><a href="https://www.postman.com/aerospace-pilot-75824004/workspace/articles/documentation/19698363-48162d82-ac9d-4793-b566-c680be211c67">acessar</a>.

<hr>
<h4 align="center">
    By <a href="https://www.linkedin.com/in/allan-gustavo-aa6844131/" target="_blank">Allan Sartor</a>
</h4>
