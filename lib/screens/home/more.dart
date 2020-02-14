import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          bottom: MediaQuery.of(context).size.height / 32,
          child: Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.blueGrey[800],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                )),
            height: 280.0,
            width: MediaQuery.of(context).size.width,
            // height: double.infinity,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.mode_edit),
                  title: Text('Edit Rooms'),
                ),
                ListTile(
                  leading: Icon(Icons.edit_attributes),
                  title: Text('Edit Devices'),
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 64.0,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage(
                  'assets/imgs/avataaars.png',
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'Fola Lola',
                style: Theme.of(context).textTheme.title,
              ),
              Text('fola.lola@gmail.com'),
            ],
          ),
        ),
      ],
    );
  }
}
