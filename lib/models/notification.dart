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

  factory NotificationModel.fromJson(Map<String, dynamic> json){
    if (json == null){
      throw StateError("Notification data cannot be null");
    }
    return NotificationModel(
        id: json["id"] as String,
        userName: json["userName"] as String,
        userId: json["userId"] as String ,
        description: json["description"] as String,
        kind: json["kind"] as String
    );
  }

  @override
  String toString() {
    return 'TrackInfo{id: $id, userName: $userName, userId: $userId, '
        'description: $description, kind: $kind';
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
    'id': id,
    'userName': userName,
    'userId': userId,
    'description': description,
    'kind': kind,
  };}
