import 'package:bitcoin_price_pulse/features/home/domain/entity/price_entity.dart';
import 'package:equatable/equatable.dart';

class CurrencyEntity extends Equatable {
  final PriceEntity? USD;
  final PriceEntity? GBP;
  final PriceEntity? EUR;

  const CurrencyEntity({
    this.USD,
    this.GBP,
    this.EUR,
  });

  @override
  List<Object?> get props => [
        USD,
        GBP,
        EUR,
      ];
}
