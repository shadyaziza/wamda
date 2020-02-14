import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageCont;
  int _index = 0;
  List<String> _tabs = ['Rooms', 'Schedule', 'Power'];
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
        title: Text(_tabs[_index]),
        elevation: 2.0,
        leading: Container(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
