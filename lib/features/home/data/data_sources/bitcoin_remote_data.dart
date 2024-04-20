import 'package:dio/dio.dart';

abstract class BitcoinRemoteData {
  Future<Response> getPrice();
}
