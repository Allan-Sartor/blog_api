# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

articles = Article.create([
  {
    title: "Artigo Cientifico1",
    body: "Mediante tal definição, um questionamento que se mostra relevante faz referência à diferença demarcada entre um artigo e uma monografia."
  },
  {
    title: "Artigo Cientifico2",
    body: "Mediante tal definição, um questionamento que se mostra relevante faz referência à diferença demarcada entre um artigo e uma monografia."
  },
  {
    title: "Artigo Cientifico3",
    body: "Mediante tal definição, um questionamento que se mostra relevante faz referência à diferença demarcada entre um artigo e uma monografia."
  },
  {
    title: "Artigo Cientifico4",
    body: "Mediante tal definição, um questionamento que se mostra relevante faz referência à diferença demarcada entre um artigo e uma monografia."
  },
  {
    title: "Artigo Cientifico5",
    body: "Mediante tal definição, um questionamento que se mostra relevante faz referência à diferença demarcada entre um artigo e uma monografia."
  },
])

reviews = Review.create([
  {
    title: "Bom",
    description: "Bom",
    score: 5,
    article: articles.first
  },
  {
    title: "Ruim",
    description: "Ruim",
    score: 1,
    article: articles.first
  }
])
