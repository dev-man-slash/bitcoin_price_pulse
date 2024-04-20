import 'package:bitcoin_price_pulse/features/home/domain/entity/price_entity.dart';
import 'package:equatable/equatable.dart';

class BitcoinEntity extends Equatable {
  final UpdateTime? time;
  final String? disclaimer;
  final String? chartName;
  final BitcoinEntity? bpi;

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
