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
    this.parentComment, required String postId, required String text, required String userId, required String id, required body, required timestamp,
  });

  get body => null;

  Object? toMap() {
    return null;
  }

  static fromMap(Object? data, String id) {}
}
