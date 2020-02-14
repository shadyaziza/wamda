import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageCont;
  int _index = 0;
  List<TabData> _tabs = [
    TabData(
      label: 'Rooms',
      iconData: Icons.room,
    ),
    TabData(
      label: 'Schedule',
      iconData: Icons.schedule,
    ),
    TabData(
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
      body: PageView(),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabs
            .map((TabData data) => BottomNavigationBarItem(
                icon: Icon(data.iconData), title: Text(data.label)))
            .toList(),
      ),
    );
  }
}

class TabData {
  final String label;
  final IconData iconData;

  TabData({@required this.label, @required this.iconData});
}
