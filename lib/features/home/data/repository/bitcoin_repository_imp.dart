import 'package:bitcoin_price_pulse/core/exceptions/failures.dart';
import 'package:bitcoin_price_pulse/features/home/data/data_sources/bitcoin_remote_data.dart';
import 'package:bitcoin_price_pulse/features/home/data/models/bitcoin_model.dart';
import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';
import 'package:bitcoin_price_pulse/features/home/domain/repository/bitcoin_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/server_exception.dart';

class BitcoinRepositoryImp extends BitcoinRepository {
  final BitcoinRemoteData remoteData;

  BitcoinRepositoryImp({required this.remoteData});

  @override
  Future<Either<Failure, BitcoinEntity>> getPrices() async {
    try {
      final response = await remoteData.getPrice();

      return Right(BitcoinModel.fromJson(response.data));
    } on ServerException catch (error) {
      return Left(ServerFailure(error));
    }
  }
}
