import 'package:adhara_socket_io/adhara_socket_io.dart';
import 'package:flutter/material.dart';
import 'package:wamda/common/circular_button.dart';
import 'package:wamda/constants/theme.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: CircularButton(
          iconData: Icons.chevron_right,
          onTap: () async {
            SocketIOManager manager = SocketIOManager();
            SocketIO socket = await manager.createInstance(
              SocketOptions("http://139.59.210.114:8000/",
                  query: {
                    "auth": "--SOME AUTH STRING---",
                    "info": "new connection from adhara-socketio",
                    "timestamp": DateTime.now().toString()
                  },
                  enableLogging: false,
                  transports: [Transports.WEB_SOCKET]),
            );
            socket.connect();
            socket.onConnect((data) {
              print("connected...");
              print(data);
              socket.emit("message", ["Hello world!"]);
              socket.emit("get_current_date", []);
            });
            socket.on("event", (data) {
              print("event");
              print(data);
            });
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Text(
                    'Sign up',
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
                Center(
                  child: Text(
                    'Create your account',
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .subhead
                            .color
                            .withOpacity(subtitleOpacity)),
                  ),
                ),
                SizedBox(
                  height: columnSpacer * 4,
                ),
                Center(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(cardPadding * 2),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            child: Icon(Icons.camera_alt),
                            radius: 32.0,
                            backgroundColor: Theme.of(context).canvasColor,
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Username',
                              prefixIcon: Icon(Icons.person),
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email Address',
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Password',
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              hintText: 'Mobile number',
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.confirmation_number),
                              hintText: 'Age',
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.flag),
                              hintText: 'Country',
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_city),
                              hintText: 'City',
                              border: InputBorder.none,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
        ));
  }
}
