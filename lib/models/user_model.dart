import 'package:location/location.dart';
import 'package:equatable/equatable.dart';


class UserModel extends Equatable{
  const UserModel({
    required this.id,
    required this.image,
    required this.name,
    required this.friendlist,
  });

  final String id;
  final String image;
  final String name;
  final List<dynamic> friendlist;


  @override
  List<Object?> get props => [id, image, name, friendlist, interval, end];

  @override
  String toString() {
    return 'TrackInfo{id: $id, tracker: $image, tracked: $name, '
        'location: $friendlist';
  }

  factory UserModel.fromJson(Map<String, dynamic> json){
    if (json == null){
      throw StateError("Tracks data cannot be null");
    }
    return UserModel(
        id: json["id"] as String,
        image: json["image"] as String,
        name: json["name"] as String ,
        friendlist: json["friendlist"] as List<dynamic>,
    );
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
    'id': id,
    'image': image,
    'name': name,
    'friendlist': friendlist,
  };
}
