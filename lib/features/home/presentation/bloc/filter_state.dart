// part of 'filter_bloc.dart';
//
// @immutable
// abstract class FilterSchemaState {}
//
// class FilterApplySuccess extends FilterSchemaState {}
//
// class FilterSchemaInitial extends FilterSchemaState {}
//
// class FilterSchemaInProgress extends FilterSchemaState {}
//
// class FilterSchemaSuccess extends FilterSchemaState {
//   final List<FilterSchemaEntity> filterSchema;
//
//   FilterSchemaSuccess({required this.filterSchema});
// }
//
// class FilterSchemaFailed extends FilterSchemaState {
//   final Failure? error;
//
//   FilterSchemaFailed({this.error});
// }
//
// class FilterState extends Equatable {
//   final List<FilterItemEntity>? tempSelectedFilters;
//   final FilterSchemaState? filterSchemaState;
//   final FilterAdsListDto? filterAdsListDto;
//
//   const FilterState(
//       {this.tempSelectedFilters,
//       this.filterSchemaState,
//       this.filterAdsListDto});
//
//   @override
//   List<Object?> get props => [filterSchemaState, tempSelectedFilters];
//
//   FilterState copyWith(
//       {List<FilterItemEntity>? initialFilters,
//       List<FilterItemEntity>? tempSelectedFilters,
//       FilterAdsListDto? filterAdsListDto,
//       FilterSchemaState? filterSchemaState}) {
//     return FilterState(
//         tempSelectedFilters: tempSelectedFilters ?? this.tempSelectedFilters,
//         filterAdsListDto: filterAdsListDto ?? this.filterAdsListDto,
//         filterSchemaState: filterSchemaState ?? this.filterSchemaState);
//   }
// }
