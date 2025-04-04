class Recipe {
  final String image;
  final String title;
  final String time;
  final String tag;
  String description;
  final String author;
  final String ingredients;
  final String steps;
  double rating;
  List<String> likes;

  Recipe({
    required this.image,
    required this.title,
    required this.time,
    required this.tag,
    this.description = '',
    required this.author,
    required this.ingredients,
    required this.steps,
    this.rating = 0.0,
    List<String>? likes,
  }) : likes = likes != null ? List<String>.from(likes) : [];

  void addLike(String userID) {
    likes.add(userID);
  }

  void removeLike(String userID) {
    likes.remove(userID);
  }

  void setDescription(String description) {
    this.description = description;
  }
}