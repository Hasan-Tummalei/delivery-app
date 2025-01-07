import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}
@lazySingleton
class NetworkInfoImplementation implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  const NetworkInfoImplementation({required this.connectionChecker});

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
