// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:syriamaksab/common/enums.dart';
// import 'package:syriamaksab/features/ads_registration/zone/domain/entitiy/zone_model_entity.dart';
// import 'package:syriamaksab/features/category/domain/entity/category_entity.dart';
// import 'package:syriamaksab/features/filters/data/models/filter_ads_item_dto.dart';
// import 'package:syriamaksab/features/filters/data/models/schema_dto.dart';
// import 'package:syriamaksab/features/filters/domain/entity/filter_item_entity.dart';
//
// import '../../../../core/exceptions/failures.dart';
// import '../../domain/entity/filter_schema_entity.dart';
// import '../../domain/use_case/call_filter_schema_use_case.dart';
//
// part 'filter_event.dart';
// part 'filter_state.dart';
//
// class FilterBloc extends Bloc<FilterEvent, FilterState> {
//   CallFilterSchemaUseCase filterSchemaUseCase;
//
//   FilterBloc({required this.filterSchemaUseCase})
//       : super(FilterState(filterSchemaState: FilterApplySuccess())) {
//     on<LoadFilterSchemaEvent>((event, emit) async {
//       emit(state.copyWith(filterSchemaState: FilterSchemaInProgress()));
//       CategoryEntity? categoryEntity =
//           event.initialFilter?.where((e) => e.type == FilterType.category).firstOrNull?.category;
//       final Either<Failure, List<FilterSchemaEntity>> result =
//           await filterSchemaUseCase.call(categoryId: categoryEntity?.id ?? -1);
//       result.fold(
//         (error) {
//           emit(state.copyWith(filterSchemaState: FilterSchemaFailed()));
//         },
//         (data) {
//           emit(state.copyWith(
//               filterSchemaState: FilterSchemaSuccess(filterSchema: data),
//               tempSelectedFilters: event.initialFilter));
//         },
//       );
//     });
//
//     on<SelectFilterItem>((event, emit) async {
//       List<FilterItemEntity> filters = [...state.tempSelectedFilters ?? []];
//       FilterItemEntity? filterItemEntity = filters
//           .where((e) => event.filterItem.type == FilterType.schema ||
//                   event.filterItem.type == FilterType.number
//
//               /// detect filter by id or type , it depends on type because static items like zone item or notifi me does not id
//               ? e.id == event.filterItem.id
//               : e.type == event.filterItem.type)
//           .firstOrNull;
//       if (filterItemEntity != null) {
//         filters.remove(filterItemEntity);
//       }
//
//       ///when an item once select and then unselect , we set null value for it and we do not add it to list if its value be null
//       if (event.filterItem.value != null) {
//         filters.add(event.filterItem);
//       }
//       emit(state.copyWith(tempSelectedFilters: filters));
//     });
//
//     on<RemoveAllFiltersExceptCategoryEvent>((event, emit) async {
//       List<FilterItemEntity> filters = [...state.tempSelectedFilters ?? []];
//       filters.removeWhere((e) => e.type != FilterType.category);
//       emit(state.copyWith(
//         tempSelectedFilters: filters,
//       ));
//     });
//
//     on<ApplyFilterEvent>((event, emit) async {
//       List<FilterItemEntity> filters = [...state.tempSelectedFilters ?? []];
//
//       /// set schema parameter according to filters item
//       List<SchemaDto> schemaDto = [];
//       filters
//           .where((e) => e.type == FilterType.schema || e.type == FilterType.number)
//           .toList()
//           .forEach((e) {
//         ///if  exist a number filter with empty value we should not add to schema
//         /// schema for number inputs
//         if (e.type == FilterType.number &&
//             ((e.value?['from'] as String).trim().isNotEmpty ||
//                 (e.value?['to'] as String).trim().isNotEmpty)) {
//           schemaDto.add(SchemaDto(
//               id: e.id ?? -1,
//
//               ///send value according to schema type for inputs this is ["0"]
//               value: ["0"],
//
//               ///"from" is just for input schema , its type should be integer
//               from:
//                   (e.value?['from'] as String).trim().isNotEmpty ? int.parse(e.value?['from']) : 0,
//
//               ///"to" is just for input schema , its type should be integer
//               to: (e.value?['to'] as String).trim().isNotEmpty ? int.parse(e.value?['to']) : 0));
//         } else if (e.type == FilterType.schema) {
//           schemaDto.add(SchemaDto(id: e.id ?? -1, value: [e.value.toString()], from: 0, to: 0));
//         }
//       });
//
//       /// set zones parameter
//       List<int> zones = [];
//       (filters.where((e) => e.type == FilterType.zone).firstOrNull?.value as List<ZoneEntity>?)
//           ?.forEach((e) => zones.add(e.id!));
//       FilterAdsListDto filterDto = FilterAdsListDto(
//           categoryId: (filters.where((e) => e.type == FilterType.category).firstOrNull?.value
//                   as CategoryEntity)
//               .id,
//           citiesId: event.citiesId,
//           havePhoto:
//               filters.where((e) => e.type == FilterType.justWithPhoto).firstOrNull?.value ?? false,
//           notifyMe: filters.where((e) => e.type == FilterType.notifMe).firstOrNull?.value ?? false,
//           zonesId: zones,
//           schemas: schemaDto);
//       emit(state.copyWith(
//           initialFilters: filters,
//           tempSelectedFilters: filters,
//           filterSchemaState: FilterApplySuccess(),
//           filterAdsListDto: filterDto));
//     });
//   }
// }
