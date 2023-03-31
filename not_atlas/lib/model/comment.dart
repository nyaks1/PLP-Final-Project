import 'user.dart';

class Comment {
  final String content;
  final User author;
  final DateTime createdAt;
  final Comment? parentComment;

  Comment({
    required this.content,
    required this.author,
    required this.createdAt,
    this.parentComment,
  });
}
