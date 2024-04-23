import 'package:bitcoin_price_pulse/features/home/data/models/currency_model.dart';
import 'package:bitcoin_price_pulse/features/home/data/models/update_time_model.dart';
import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';

class BitcoinModel extends BitcoinEntity {
  const BitcoinModel({
    super.time,
    super.disclaimer,
    super.chartName,
    super.bpi,
  });

  Map<String, dynamic> toJson() {
    return {
      'time': time.toString(),
      'disclaimer': disclaimer,
      'chartName': chartName,
      'bpi': bpi.toString(),
    };
  }

  factory BitcoinModel.fromJson(Map<String, dynamic> json) {
    return BitcoinModel(
      time: UpdateTimeModel.fromJson(json['time']),
      disclaimer: json['disclaimer'],
      chartName: json['chartName'],
      bpi: CurrencyModel.fromJson(json['bpi']),
    );
  }
}
