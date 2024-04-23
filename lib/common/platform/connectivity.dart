import 'dart:io';

class Connectivity {
  Future<bool> isConnected() async {
    final result = await InternetAddress.lookup(
      'https://google.com',
      type: InternetAddressType.IPv4,
    );
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
