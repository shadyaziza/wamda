import 'package:flutter/foundation.dart';

class Schedule {
  final String name, startDate, endDate, photoUrl;
  final List<String> days;

  Schedule(
      {@required this.name,
      @required this.startDate,
      @required this.endDate,
      @required this.days,
      @required this.photoUrl});
}
