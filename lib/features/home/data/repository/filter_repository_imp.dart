// import 'package:dartz/dartz.dart';
// import 'package:syriamaksab/core/exceptions/failures.dart';
// import 'package:syriamaksab/core/exceptions/server_exception.dart';
// import 'package:syriamaksab/features/filters/data/data_sources/filter_remote_data.dart';
// import 'package:syriamaksab/features/filters/data/models/filter_schema_model.dart';
// import 'package:syriamaksab/features/filters/domain/entity/filter_schema_entity.dart';
// import 'package:syriamaksab/features/filters/domain/repository/filter_repository.dart';
//
//
// class FilterRepositoryImp extends FilterRepository {
//   final FilterRemoteData remoteData;
//
//   FilterRepositoryImp({required this.remoteData});
//
//   @override
//   Future<Either<Failure, List<FilterSchemaEntity>>> getFilterSchema(int categoryId) async {
//     try {
//       final response = await remoteData.getFilterSchemaByCategory(categoryId);
//
//       final List<FilterSchemaEntity> filterSchema =
//           (response.data["data"] as List).map((e) => FilterSchemaModel.fromJson(e)).toList();
//
//       return Right(filterSchema);
//     } on ServerException catch (error) {
//       return Left(ServerFailure(error));
//     }
//   }
//
//
// }
