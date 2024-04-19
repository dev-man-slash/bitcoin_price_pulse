// import 'package:dio/dio.dart';
//
// import '../../../../../core/data/network/api_path.dart';
// import '../../../../../core/data/network/api_provider.dart';
// import '../../../../core/data/cache/cache_provider.dart';
// import '../../../../core/exceptions/server_exception.dart';
// import 'filter_remote_data.dart';
//
// class FilterRemoteDataImpl implements FilterRemoteData {
//   @override
//   Future<Response> getFilterSchemaByCategory(int categoryId) async {
//     var lang = await CacheProvider().getLanguage();
//     try {
//       Response response = await ApiProvider().httpClient.post(
//           "$getSchemaByCategoryApi?lang=$lang",
//           data: {"categoryid": categoryId});
//       return response;
//     } on DioException catch (error) {
//       String? errorMessage = error.response?.data["message"] != "" &&
//               error.response?.data["message"] != null
//           ? error.response?.data["message"]
//           : error.response?.statusMessage;
//       throw (ServerException(
//           message: errorMessage, statusCode: error.response?.statusCode!));
//     }
//   }
//
//   @override
//   Future<Response> setFilter(FilterAdsListDto dto, int page) async {
//     var lang = await CacheProvider().getLanguage();
//     try {
//       Response response = await ApiProvider()
//           .httpClient
//           .post(adFilterApi(page, lang), data: dto.toJson());
//
//       var isLogin = await CacheProvider().getLoginStatus();
//
//       if (dto.notifyMe != null) {
//         if (isLogin && dto.notifyMe!) {
//           var token = await CacheProvider().getUserToken();
//           print(token);
//           await ApiProvider().httpClient.post(filterNotifyMe,
//               data: dto.toJson(),
//               options: Options(headers: {
//                 'Authorization': 'Bearer $token',
//               }));
//         }
//       }
//
//       return response;
//     } on DioException catch (error) {
//       print(error.response);
//       String? errorMessage = error.response?.data["message"] != "" &&
//               error.response?.data["message"] != null
//           ? error.response?.data["message"]
//           : error.response?.statusMessage;
//       throw (ServerException(
//           message: errorMessage, statusCode: error.response?.statusCode!));
//     }
//   }
// }
