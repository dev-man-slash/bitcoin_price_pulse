import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failures.dart';

abstract class BitcoinRepository {
  Future<Either<Failure, BitcoinEntity>> getPrices();
}
