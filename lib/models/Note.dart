class Note {
  final String title;
  final String content;

  Note(
    this.title,
    this.content,
  );

  bool   isValid()  => title == '' || content == '';
  String toString() => 'Title: $title\nContent: $content\n';
}
