part of 'bitcoin_bloc.dart';

@freezed
class BitcoinEvent with _$BitcoinEvent {
  const factory BitcoinEvent.updatedPrice() = _UpdatedPrice;
}
