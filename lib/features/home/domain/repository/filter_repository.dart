import 'package:dartz/dartz.dart';

import '../../../../core/exceptions/failures.dart';
import '../entity/filter_schema_entity.dart';

abstract class FilterRepository {
  Future<Either<Failure, List<FilterSchemaEntity>>> getFilterSchema(
      int categoryId);
}
