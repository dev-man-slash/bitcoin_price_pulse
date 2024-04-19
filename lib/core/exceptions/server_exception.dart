class ServerException implements Exception {
  String? message;
  int? statusCode;
  ServerException({this.message, this.statusCode});
}


class LocalException implements Exception {

  String? message;
  int? statusCode;
  LocalException({this.message, this.statusCode});


}