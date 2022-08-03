10.times do
  Article.create([
    {
      title: "Artigo lorem ipsum ",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor iaculis dapibus. Maecenas egestas rhoncus mauris eu fermentum. 
      Pellentesque sed augue a libero lobortis tincidunt sed ut ex. Pellentesque dapibus, mauris id rutrum suscipit, augue enim varius sapien, 
      egestas iaculis justo velit ac massa. Pellentesque sed porttitor dui. Vivamus ac diam ex. Curabitur non pulvinar justo, at scelerisque sem. 
      Integer eleifend porta mauris eget tincidunt. Ut eu molestie odio, quis placerat tellus. 
      Nullam nec magna nec massa posuere ullamcorper ut quis mauris. Pellentesque vel enim non ligula maximus commodo. 
      Ut a sem lacinia, hendrerit augue ac, gravida ligula. Proin libero est, tristique eu tristique vel, facilisis sed metus. 
      Nullam id dolor in nulla porttitor aliquet non id erat. Aenean ac ipsum non mauris tincidunt molestie id id dolor."
    }
  ])
end

reviews = Review.create([
  {
    title: "Ótimo artigo!!",
    description: "Muito interessante, gostei da abordagem em realção ao tema!!",
    score: 5,
    article: Article.first
  },
  {
    title: "Artigo fraco",
    description: "Muito sem conteúdo, não gostei da forma que foi desenvolvida, ficou muito confuso!",
    score: 1,
    article: Article.first
  }
])
