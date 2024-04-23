import 'package:bitcoin_price_pulse/features/home/data/data_sources/bitcoin_remote_data.dart';

import '../../features/home/data/data_sources/bitcoin_remote_data_impl.dart';
import '../../features/home/data/repository/bitcoin_repository_imp.dart';
import '../../features/home/domain/repository/bitcoin_repository.dart';
import 'locator_exports.dart';

GetIt locator = GetIt.instance;

Future<void> setupDependencies() async {
  locator
    ..registerSingleton<Directory>(await getApplicationDocumentsDirectory())

    /// Connectivity
    // ..registerLazySingleton<Connectivity>(() => Connectivity())

    ///**************** DATA SOURCES *****************///
    /// Login Remote Data Source
    ..registerLazySingleton<BitcoinRemoteData>(() => BitcoinRemoteDataImpl())
    ..registerLazySingleton<BitcoinRepository>(
        () => BitcoinRepositoryImp(remoteData: locator()));

  /// VerificationCode Remote Data Source
  // ..registerLazySingleton<AuthenticationRemoteData>(() => AuthenticationRemoteDataImpl())
  //
  // /// User Resume Cubit
  // ..registerLazySingleton<UnlikedOpinionCubit>(() => UnlikedOpinionCubit(
  //       feedbackUseCase: locator(),
  //     ))
  //
  // /// User Resume Cubit
  // ..registerLazySingleton<LikedOpinionCubit>(() => LikedOpinionCubit(
  //       feedbackUseCase: locator(),
  //     ));
}
