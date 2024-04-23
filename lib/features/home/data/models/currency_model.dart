import 'package:bitcoin_price_pulse/features/home/data/models/price_model.dart';

import '../../domain/entity/currency_entity.dart';

class CurrencyModel extends CurrencyEntity {
  const CurrencyModel({
    super.USD,
    super.GBP,
    super.EUR,
  });

  Map<String, dynamic> toJson() {
    return {
      'USD': USD,
      'GBP': GBP,
      'EUR': EUR,
    };
  }

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      USD: PriceModel.fromJson(json['USD']),
      GBP: PriceModel.fromJson(json['GBP']),
      EUR: PriceModel.fromJson(json['EUR']),
    );
  }
}
