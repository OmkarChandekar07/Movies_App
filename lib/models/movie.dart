class Movie {
  final String title;
  final String summary;
  final String imageUrl;

  Movie({required this.title, required this.summary, required this.imageUrl});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['show']['name'] ?? 'No Title',
      summary: json['show']['summary'] ?? 'No Summary',
      imageUrl: json['show']['image']?['medium'] ?? '',
    );
  }
}
