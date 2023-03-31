import 'package:not_atlas/model/user.dart';

class Post {
  final String id;
  final String title;
  final String body;
  final User author;
  final String authorId;
  final DateTime? timestamp;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.author,
    required this.authorId,
    required this.timestamp,
  });

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      title: map['title'],
      body: map['body'],
      author: User.fromMap(map['author']),
      authorId: map['author_id'],
      timestamp: map['timestamp']?.toDate(),
    );
  }
}
