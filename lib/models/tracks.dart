import 'package:location/location.dart';
import 'package:equatable/equatable.dart';


class TrackModel extends Equatable{
  const TrackModel({
   required this.id,
   required this.tracker,
   required this.tracked,
   required this.location,
   required this.interval,
   required this.end
  });

  final String id;
  final String tracker;
  final String tracked;
  final Location location;
  final int interval;
  final String end;

  @override
  List<Object?> get props => [id, tracker, tracked, location, interval, end];

  @override
  String toString() {
    return 'TrackInfo{id: $id, tracker: $tracker, tracked: $tracked, '
        'location: $location, interval: $interval, end: $end';
  }

  factory TrackModel.fromJson(Map<String, dynamic> json){
    if (json == null){
      throw StateError("Tracks data cannot be null");
    }
    return TrackModel(
        id: json["id"] as String,
        tracker: json["tracker"] as String,
        tracked: json["tracked"] as String ,
        location: json["location"] as Location,
        interval: json["interval"] as int,
        end: json["end"] as String
    );
  }

  Map<String, dynamic> toMap() => <String, dynamic>{
    'id': id,
    'fullName': tracker,
    'email': tracked,
    'level': location,
    'tlf': interval,
    'image': end,
  };
}
