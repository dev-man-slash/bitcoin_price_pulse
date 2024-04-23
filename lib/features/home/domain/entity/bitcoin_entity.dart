import 'package:bitcoin_price_pulse/features/home/domain/entity/update_time_entity.dart';
import 'package:equatable/equatable.dart';

import 'currency_entity.dart';

class BitcoinEntity extends Equatable {
  final UpdateTimeEntity? time;
  final String? disclaimer;
  final String? chartName;
  final CurrencyEntity? bpi;

  const BitcoinEntity({
    this.time,
    this.disclaimer,
    this.chartName,
    this.bpi,
  });

  @override
  List<Object?> get props => [
        time,
        disclaimer,
        chartName,
        bpi,
      ];
}
