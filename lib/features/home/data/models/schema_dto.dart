class SchemaDto {
  final int id;
  final List<String?>? value;
  final int? from;
  final int? to;

  SchemaDto({
    required this.id,
     this.value,
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'value':value ,
      'from': from,
      'to': to,
    };
  }

  factory SchemaDto.fromJson(Map<String, dynamic> json) {
    return SchemaDto(
      id: int.parse(json["id"]),
      value: List<String?>.from(json["value"].map((item) => item as String?)),
      from: int.parse(json["from"]),
      to: int.parse(json["to"]),
    );
  }
}
