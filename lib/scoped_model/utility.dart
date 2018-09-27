import 'package:scoped_model/scoped_model.dart';
import 'dart:io';

class UtilityModel extends Model{
  bool _isConnected = false;

  bool get isConnected => _isConnected;
  
  void checkInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        _isConnected = true;
        notifyListeners();
      }
    } on SocketException catch (_) {
      _isConnected = false;
      notifyListeners();
    }
  }   
}
