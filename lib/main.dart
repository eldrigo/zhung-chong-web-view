import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './scoped_model/utility.dart';
import './pages/home.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UtilityModel>(
        model: UtilityModel(), child: MaterialApp(home: Home()));
  }
}
