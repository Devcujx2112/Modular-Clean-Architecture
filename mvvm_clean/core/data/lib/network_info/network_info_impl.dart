import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data/network_info/network_info.dart';

class NetworkInfoImpl implements NetworkInfo{
  @override
  Future<bool> get isConnected async {
    final connectivityResult = await Connectivity().checkConnectivity();
    final isConnectedToNetwork = connectivityResult == ConnectivityResult.wifi || connectivityResult == ConnectivityResult.mobile;
    return isConnectedToNetwork;
  }
}