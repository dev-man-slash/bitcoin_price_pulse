import 'package:equatable/equatable.dart';

class PriceEntity extends Equatable {
  final String? code;
  final String? symbol;
  final String? rate;
  final String? description;
  final double? rateFloat;

  const PriceEntity({
    this.code,
    this.symbol,
    this.rate,
    this.description,
    this.rateFloat,
  });

  @override
  List<Object?> get props => [
        code,
        symbol,
        rate,
        description,
        rateFloat,
      ];
}