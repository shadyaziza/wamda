import 'package:flutter/material.dart';
import 'package:wamda/screens/home/rooms.dart';
import 'package:wamda/screens/home/schdeules.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageCont;
  int _index = 0;
  List<_TabData> _tabs = [
    _TabData(
      label: 'Rooms',
      iconData: Icons.room,
    ),
    _TabData(
      label: 'Schedule',
      iconData: Icons.schedule,
    ),
    _TabData(
      label: 'Power',
      iconData: Icons.power,
    )
  ];
  @override
  void initState() {
    _pageCont = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_tabs[_index].label),
        elevation: 2.0,
        leading: Container(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: PageView(
        controller: _pageCont,
        onPageChanged: _onPageChanged,
        children: <Widget>[
          RoomsScreen(),
          SchedulesScreen(),
          Container(
            color: Colors.red,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onTap,
        items: _tabs
            .map((_TabData data) => BottomNavigationBarItem(
                icon: Icon(data.iconData), title: Text(data.label)))
            .toList(),
      ),
    );
  }

  void _onPageChanged(int newPage) {
    setState(() {
      _index = newPage;
    });
  }

  void _onTap(int newIndex) {
    setState(() {
      _index = newIndex;
    });
    _pageCont.animateToPage(_index,
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}

class _TabData {
  final String label;
  final IconData iconData;

  _TabData({@required this.label, @required this.iconData});
}
