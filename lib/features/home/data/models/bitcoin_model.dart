// import '../../domain/entity/filter_schema_entity.dart';
//
// class FilterSchemaModel extends FilterSchemaEntity {
//   final int id;
//   final int required;
//   final String uiWidget;
//   final String type;
//   final String title;
//   final String uiPlaceholder;
//   final String uiHelp;
//   final String accordingTo;
//   final List<String>? schemaEnum;
//
//   FilterSchemaModel({
//     required this.id,
//     required this.required,
//     required this.uiWidget,
//     required this.type,
//     required this.title,
//     required this.uiPlaceholder,
//     required this.uiHelp,
//     required this.accordingTo,
//     required this.schemaEnum,
//   }) : super(
//           id: id,
//           required: required,
//           uiWidget: uiWidget,
//           type: type,
//           title: title,
//           uiPlaceholder: uiPlaceholder,
//           uiHelp: uiHelp,
//           accordingTo: accordingTo,
//           schemaEnum: schemaEnum,
//         );
//
//   factory FilterSchemaModel.fromJson(Map<String, dynamic> json) {
//     print(json['enum'].toString().isEmpty);
//     return FilterSchemaModel(
//       id: json['id'],
//       required: json['required'] ?? "",
//       uiWidget: json['uiWidget'] ?? "",
//       type: json['type'] ?? "",
//       title: json['title'] ?? "",
//       uiPlaceholder: json['uiPlaceholder'] ?? "",
//       uiHelp: json['uiHelp'] ?? "",
//       accordingTo: json['accordingTo'] ?? "",
//       schemaEnum: json['enum'] != null && json['enum'].toString().isNotEmpty
//           ? (json['enum'] as List).map((e) => e.toString()).toList()
//           : null,
//     );
//   }
// }
