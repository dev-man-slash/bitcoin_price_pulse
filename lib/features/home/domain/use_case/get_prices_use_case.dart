import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';
import 'package:bitcoin_price_pulse/features/home/domain/repository/bitcoin_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failures.dart';


class CallFilterSchemaUseCase {
  final FilterRepository repository;

  CallFilterSchemaUseCase({
    required this.repository,
  });

  Future<Either<Failure, BitcoinEntity>> call({required int categoryId}) async {
    return await repository.getPrices();
  }
}
