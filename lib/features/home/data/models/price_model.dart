import 'package:bitcoin_price_pulse/features/home/domain/entity/price_entity.dart';

class PriceModel extends PriceEntity {
  const PriceModel({
    super.code,
    super.description,
    super.rate,
    super.rateFloat,
    super.symbol,
  });

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'description': description,
      'rate': rate,
      'rateFloat': rateFloat,
      'symbol': symbol,
    };
  }

  factory PriceModel.fromJson(Map<String, dynamic> json) {
    return PriceModel(
      code: json['code'],
      description: json['description'],
      rate: json['rate'],
      rateFloat: json['rate_float'],
      symbol: json['symbol'],
    );
  }
}
