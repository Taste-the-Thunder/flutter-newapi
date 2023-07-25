class Article{
  final String author;
  final String title;
  final String description;
  final String urlToImage;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
        author: json['author'] == null ? null : json['author'],
        title: json['title'] == null ? null : json['title'], 
        description:json['description'] == null ? null : json['description'],
        urlToImage: json['urlToImage'] == null ? null : json['urlToImage']);
  }
}