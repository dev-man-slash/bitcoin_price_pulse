import 'package:equatable/equatable.dart';

class FilterSchemaEntity extends Equatable {
  final int id;
  final int required;
  final String uiWidget;
  final String type;
  final String title;
  final String uiPlaceholder;
  final String uiHelp;
  final String accordingTo;
  final List<String>? schemaEnum;

  const FilterSchemaEntity({
    required this.id,
    required this.required,
    required this.uiWidget,
    required this.type,
    required this.title,
    required this.uiPlaceholder,
    required this.uiHelp,
    required this.accordingTo,
    required this.schemaEnum,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        required,
        uiWidget,
        type,
        title,
        uiPlaceholder,
        uiHelp,
        accordingTo,
        schemaEnum,
      ];
}
