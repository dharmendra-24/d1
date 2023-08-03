class Program {
  String title;
  String category;
  String image;
  int? lessons;
  String? date;
  String? time;

  Program(
      {required this.title,
      required this.category,
      required this.image,
      this.date,
      this.time,
      this.lessons});
  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
        title: json['title'],
        category: json['category'],
        image: json['image'],
        lessons: json['lessons']);
  }
}
