import 'package:flutter/material.dart';
import 'package:wamda/common/image_card.dart';
import 'package:wamda/models/schedules.dart';

class SchedulesScreen extends StatelessWidget {
  const SchedulesScreen({Key key}) : super(key: key);
  static final _shcedules = [
    Schedule(
        isActive: true,
        devices: 5,
        days: ['Sun', 'Mon', 'Tue', ' Wed', 'Thu'],
        endDate: '12 PM',
        startDate: '7:00 AM',
        name: 'Morning',
        photoUrl: 'assets/imgs/living.jpeg'),
    Schedule(
        isActive: false,
        devices: 5,
        days: ['Sun', 'Mon'],
        endDate: '12 PM',
        startDate: '7:00 AM',
        name: 'After Noon',
        photoUrl: 'assets/imgs/living.jpeg'),
    Schedule(
        isActive: false,
        devices: 5,
        days: ['Sun', 'Mon'],
        endDate: '12 PM',
        startDate: '7:00 AM',
        name: 'Evening',
        photoUrl: 'assets/imgs/living.jpeg'),
    Schedule(
        isActive: true,
        devices: 5,
        days: ['Sun', 'Mon'],
        endDate: '12 PM',
        startDate: '7:00 AM',
        name: 'Night',
        photoUrl: 'assets/imgs/living.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: _shcedules.length,
        itemBuilder: (_, int index) {
          return ImageCard(
            photoUrl: _shcedules[index].photoUrl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      _shcedules[index].name,
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    Switch(
                      onChanged: (_) {},
                      value: _shcedules[index].isActive,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Icon(Icons.timer),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                        '${_shcedules[index].startDate} - ${_shcedules[index].endDate}'),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // textBaseline: TextBaseline.ideographic,
                  children: <Widget>[
                    Icon(Icons.date_range),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(_shcedules[index].days.join(', ')),
                    Spacer(),
                    Text('${_shcedules[index].devices} Devices')
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
