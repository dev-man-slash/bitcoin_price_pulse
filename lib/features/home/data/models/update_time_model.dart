import 'package:bitcoin_price_pulse/features/home/domain/entity/update_time_entity.dart';

class UpdateTimeModel extends UpdateTimeEntity {
  const UpdateTimeModel({
    super.updated,
    super.updatedISO,
    super.updateduk,
  });

  Map<String, dynamic> toJson() {
    return {
      'updated': updated,
      'updatedISO': updatedISO,
      'updateduk': updateduk,
    };
  }

  factory UpdateTimeModel.fromJson(Map<String, dynamic> json) {
    return UpdateTimeModel(
      updated: json['updated'],
      updatedISO: json['updatedISO'],
      updateduk: json['updateduk'],
    );
  }
}
