import 'package:bitcoin_price_pulse/features/home/data/data_sources/bitcoin_remote_data.dart';
import 'package:dio/dio.dart';

import '../../../../../core/data/network/api_provider.dart';
import '../../../../core/exceptions/server_exception.dart';

class BitcoinRemoteDataImpl implements BitcoinRemoteData {
  @override
  Future<Response> getPrice() async {
    try {
      return await ApiProvider().httpClient.get("bpi/currentprice.json");
    } on DioException catch (error) {
      if (error is ServerException) {
        throw (
          ServerException(
            message: 'Connection error  :(',
            statusCode: error.response?.statusCode!,
          ),
        );
      } else {
        String? errorMessage = error.response?.data["message"] != "" &&
                error.response?.data["message"] != null
            ? error.response?.data["message"]
            : error.response?.statusMessage;
        throw (
          ServerException(
            message: errorMessage,
            statusCode: error.response?.statusCode!,
          ),
        );
      }
    }
  }
}
