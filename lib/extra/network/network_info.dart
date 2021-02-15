import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NetworkInfo {
  const NetworkInfo();

  Future<bool> isConnected() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        return true;
      }
      return false;
    } on Exception catch (_) {
      return false;
    }
  }
}
