import 'package:bitcoin_price_pulse/features/home/domain/repository/filter_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failures.dart';
import '../entity/filter_schema_entity.dart';


class CallFilterSchemaUseCase {
  final FilterRepository repository;

  CallFilterSchemaUseCase({
    required this.repository,
  });

  Future<Either<Failure, List<FilterSchemaEntity>>> call(
      {required int categoryId}) async {
    return await repository.getFilterSchema(categoryId);
  }
}
