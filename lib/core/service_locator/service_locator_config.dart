import 'package:bitcoin_price_pulse/core/service_locator/service_locator_config.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart' as injectable;

@injectable.InjectableInit(
  initializerName: 'initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
Future<void> configureServiceLocator() async {
  // final injectableModules = _InjectableModules();

  await initGetIt(GetIt.instance);
}

// class _InjectableModules extends InjectableModules {}
