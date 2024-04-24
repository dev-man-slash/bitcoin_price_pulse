part of 'bitcoin_bloc.dart';

@freezed
class BitcoinState with _$BitcoinState {
  const factory BitcoinState({
    Either<Failure, BitcoinEntity>? updatePriceResult,
    required List<BitcoinEntity> bitcoinList,
    required bool isLoading,
    required bool isError,
  }) = _BitcoinState;
}
