// import 'package:equatable/equatable.dart';
//
// class FilterItemEntity<T> extends Equatable {
//   final int? id;
//   final T? value;
//   final String? title;
//   final CategoryEntity? category;
//   final FilterType? type;
//
//   const FilterItemEntity({this.id, this.value, this.title, this.type, this.category});
//
//   @override
//   List<Object?> get props => [id, value, type, category];
//
//   FilterItemEntity copyWith(T? value, CategoryEntity? category) {
//     return FilterItemEntity(
//         id: id, type: type, title: title, value: value, category: category ?? this.category);
//   }
// }
