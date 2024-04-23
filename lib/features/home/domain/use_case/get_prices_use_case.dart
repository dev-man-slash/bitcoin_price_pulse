import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';
import 'package:bitcoin_price_pulse/features/home/domain/repository/bitcoin_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failures.dart';

// @injectable
class GetPricesUseCase {
  final BitcoinRepository repository;

  GetPricesUseCase({
    required this.repository,
  });

  Future<Either<Failure, BitcoinEntity>> getPrices() async {
    return await repository.getPrices();
  }
}
