import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wamda/common/image_card.dart';
import 'package:wamda/constants/theme.dart';
import 'package:wamda/models/room.dart';

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({Key key}) : super(key: key);

  @override
  _RoomsScreenState createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabCont;
  @override
  void initState() {
    _tabCont = TabController(vsync: this, length: 3);
    super.initState();
  }

  List<_TabData> _tabs = [
    _TabData(iconData: Icons.home, label: 'Home'),
    _TabData(iconData: Icons.do_not_disturb, label: 'Away'),
    _TabData(iconData: Icons.people_outline, label: 'Guest'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      // alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Flexible(
          //   child: ListView(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     children: _tabs
          //         .map((_TabData data) => Card(
          //               color: Colors.white,
          //               shape: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(4.0),
          //               ),
          //               child: Padding(
          //                 padding: const EdgeInsets.all(24.0),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   children: <Widget>[
          //                     Icon(
          //                       data.iconData,
          //                       color: Theme.of(context).primaryColor,
          //                     ),
          //                     Text(
          //                       data.label,
          //                       style: Theme.of(context)
          //                           .textTheme
          //                           .title
          //                           .copyWith(
          //                               color: Theme.of(context).primaryColor),
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ))
          //         .toList(),
          //   ),
          // ),
          TabBar(
            isScrollable: true,
            indicatorColor: Colors.transparent,
            controller: _tabCont,
            tabs: _tabs
                .map((_TabData data) => Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: Alignment(-1.0, -2.0),
                              end: Alignment(1.0, 2.0),
                              colors: [kPink, kYellow]),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 32.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              data.iconData,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              data.label,
                              textScaleFactor: 0.7,
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
          SizedBox(height: columnSpacer * 2),
          Expanded(child: RoomsList()),
        ],
      ),
    );
  }
}

class _TabData {
  final String label;
  final IconData iconData;

  _TabData({@required this.label, @required this.iconData});
}

class RoomsList extends StatelessWidget {
  const RoomsList({Key key}) : super(key: key);

  static List<Room> _rooms = [
    Room(name: 'Living Room', photoUrl: 'assets/imgs/living.jpeg', temp: 22),
    Room(name: 'Kitchen', photoUrl: 'assets/imgs/kitchen.jpeg', temp: 22),
    Room(name: 'Bedroom', photoUrl: 'assets/imgs/bedroom.jpeg', temp: 22),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _rooms.length,
      itemBuilder: (BuildContext context, int index) {
        return ImageCard(
          photoUrl: _rooms[index].photoUrl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                _rooms[index].name,
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              Row(
                //
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '${_rooms[index].temp} °C',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.switch_video),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.star),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.library_music),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.lightbulb_outline),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
