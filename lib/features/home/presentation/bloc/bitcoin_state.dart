part of 'bitcoin_bloc.dart';

@freezed
class BitcoinState with _$BitcoinState {
  const factory BitcoinState({
    BitcoinEntity? signUpResponse,
    required List<PriceEntity> uSDPricesList,
    required List<PriceEntity> gBPPricesList,
    required List<PriceEntity> eURPricesList,
    required List<BitcoinEntity> bitcoinList,
    required bool isLoading,
    required bool isError,
  }) = _BitcoinState;
}
