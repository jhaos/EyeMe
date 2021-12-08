import 'package:equatable/equatable.dart';


class NotificationModel extends Equatable{
  const NotificationModel({
    required this.id,
    required this.userName,
    required this.userId,
    required this.description,
    required this.kind
  });

  final String id;
  final String userName;
  final String userId;
  final String description;
  final String kind;

  @override
  List<Object?> get props => [id, userName, userId, description, kind];
}
