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
    // TODO: implement toString
    return 'TrackInfo{id: $id, tracker: $tracker, tracked: $tracked, '
        'location: $location, interval: $interval, end: $end';
  }
  
}
