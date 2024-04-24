
import 'locator_exports.dart';

GetIt locator = GetIt.instance;

Future<void> setupDependencies() async {
  locator
    ..registerLazySingleton<BitcoinRemoteData>(() => BitcoinRemoteDataImpl())
    ..registerLazySingleton<BitcoinRepository>(
        () => BitcoinRepositoryImp(remoteData: locator()));
}
