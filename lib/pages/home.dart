import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';
import '../scoped_model/utility.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UtilityModel>(
      builder: (BuildContext context, Widget child, UtilityModel model) {
        model.checkInternet();
        return model.isConnected
            ? WebviewScaffold(
                url: "https://bdstesting.datascientists.com",
              )
            : Scaffold(
                body: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("No Internet connection"),
                    ],
                  ),
                ),
              ));
      },
    );
  }
}
