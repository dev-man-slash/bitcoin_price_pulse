import 'package:get_it/get_it.dart';

class ServiceLocator {
  const ServiceLocator._();

  static T resolve<T extends Object>({
    String? instanceName,
  }) =>
      GetIt.instance<T>(
        instanceName: instanceName,
      );
}
