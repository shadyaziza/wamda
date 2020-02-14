import 'package:flutter/material.dart';
import 'package:wamda/common/circular_button.dart';
import 'package:wamda/constants/theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);
  final _placeHolder =
      'https://pngimage.net/wp-content/uploads/2018/06/smart-home-logo-png-2.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: true,
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: ListView(
              children: <Widget>[
                Center(
                  child: Text(
                    'Sign in',
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
                Center(
                  child: Text(
                    'Sign in to your account',
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
                  child: Icon(
                    Icons.lightbulb_outline,
                    size: 100.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                // AspectRatio(
                //   aspectRatio: 8 / 2,
                //   child: Image.network(
                //     _placeHolder,
                //     fit: BoxFit.contain,
                //   ),
                // ),
                Center(
                  child: Text(
                    'Wamda',
                    style: Theme.of(context)
                        .textTheme
                        .display3
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
                SizedBox(
                  height: columnSpacer * 4,
                ),
                Center(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(cardPadding),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Email Address',
                              border: InputBorder.none,
                            ),
                          ),
                          Divider(
                            color: Theme.of(context).textTheme.body1.color,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                border: InputBorder.none,
                                suffix: Text('Forgot?')),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: columnSpacer,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'New User?',
                          style: Theme.of(context).textTheme.subtitle.copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .subhead
                                  .color
                                  .withOpacity(subtitleOpacity)),
                        ),
                        Text(
                          'REGISTER NOW',
                          style: Theme.of(context).textTheme.subtitle.copyWith(
                              fontSize:
                                  Theme.of(context).textTheme.subhead.fontSize *
                                      1),
                        ),
                      ],
                    ),
                    CircularButton(
                      iconData: Icons.chevron_right,
                      onTap: () {},
                    )
                    // MaterialButton(
                    //   onPressed: () {},
                    //   color: Theme.of(context).primaryColor,
                    //   textColor: Theme.of(context).backgroundColor,
                    //   child: Icon(
                    //     Icons.chevron_right,
                    //     size: 24,
                    //   ),
                    //   padding: EdgeInsets.all(16),
                    //   shape: CircleBorder(),
                    // )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
