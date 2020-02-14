import 'package:flutter/foundation.dart';

class Schedule {
  final String name, startDate, endDate, photoUrl;
  final List<String> days;
  final num devices;
  final bool isActive;

  Schedule(
      {@required this.isActive,
      @required this.devices,
      @required this.name,
      @required this.startDate,
      @required this.endDate,
      @required this.days,
      @required this.photoUrl});
}
