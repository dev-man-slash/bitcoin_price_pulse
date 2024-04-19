import 'schema_dto.dart';

class FilterAdsListDto {
  final int? categoryId;
  final String? searchTitle;
  final List<int>? citiesId;
  final bool? havePhoto;
  final bool? notifyMe;
  final List<int>? zonesId;
  final List<SchemaDto>? schemas;

  FilterAdsListDto({
    this.categoryId,
    this.searchTitle,
    this.citiesId,
    this.havePhoto,
    this.notifyMe,
    this.zonesId,
    this.schemas,
  });

  Map<String, dynamic> toJson() {
    return {
      'categoryid': categoryId,
      'searchtitle': searchTitle,
      'cityid': citiesId?.map((e) => e.toInt()).toList(),
      'havephoto': havePhoto,
      'notifyme': notifyMe,
      'zoneid': zonesId,
      'schemas': schemas?.map((e) => e.toJson()).toList(),
    };
  }

  factory FilterAdsListDto.fromJson(Map<String, dynamic> json) {
    return FilterAdsListDto(
      categoryId: json["categoryId"] ?? 0,
      searchTitle: json["searchtitle"],
      citiesId: List.of(json["cityId"] ?? []).map((i) => int.parse(i)).toList(),
      havePhoto: json["havePhoto"] ?? false,
      notifyMe: json["notifyMe"] != null ? json["notifyMe"].toLowerCase() == 'true' : false,
      zonesId:
          json["zoneId"] != null ? List.of(json["zoneId"]).map((i) => int.parse(i)).toList() : [],
      schemas: List<SchemaDto>.from(
        json['schemas'].map((schema) => SchemaDto.fromJson(schema)),
      ),
    );
  }

  FilterAdsListDto copyWith(
      {int? categoryId,
      List<int>? citiesId,
      bool? havePhoto,
      String? searchTitle,
      bool? notifyMe,
      List<int>? zonesId,
      List<SchemaDto>? schemas}) {
    return FilterAdsListDto(
        citiesId: citiesId ?? this.citiesId,
        searchTitle: searchTitle??this.searchTitle,
        zonesId: zonesId ?? this.zonesId,
        havePhoto: havePhoto ?? this.havePhoto,
        categoryId: categoryId ?? this.categoryId,
        notifyMe: notifyMe ?? this.notifyMe,
        schemas: schemas ?? this.schemas);
  }

//
}
