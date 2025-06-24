class Chapter {
  final String title;
  final String pdfs;

  Chapter({required this.title, required this.pdfs});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(title: json['title'] ?? '', pdfs: json['pdfs'] ?? '');
  }

  Map<String, dynamic> toJson() => {'title': title, 'pdfs': pdfs};
}

class Subject {
  final String name;
  final String code;
  final List<Chapter> chapters;

  Subject({required this.name, required this.code, required this.chapters});

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      name: json['name'] ?? '',
      code: json['code'] ?? '',
      chapters:
          (json['chapters'] as List<dynamic>)
              .map((e) => Chapter.fromJson(e))
              .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'code': code,
    'chapters': chapters.map((e) => e.toJson()).toList(),
  };
}

class SemesterData {
  final String semester;
  final String image;
  final List<Subject> subjects;

  SemesterData({
    required this.semester,
    required this.image,
    required this.subjects,
  });

  factory SemesterData.fromJson(Map<String, dynamic> json) {
    return SemesterData(
      semester: json['semester'] ?? '',
      image: json['image'] ?? '',
      subjects:
          (json['subjects'] as List<dynamic>)
              .map((e) => Subject.fromJson(e))
              .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'semester': semester,
    'image': image,
    'subjects': subjects.map((e) => e.toJson()).toList(),
  };
}
