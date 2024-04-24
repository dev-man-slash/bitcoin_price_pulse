import 'dart:async';

import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/exceptions/failures.dart';
import '../../domain/use_case/get_prices_use_case.dart';

part 'bitcoin_bloc.freezed.dart';
part 'bitcoin_event.dart';
part 'bitcoin_state.dart';

// @singleton
class BitcoinBloc extends Bloc<BitcoinEvent, BitcoinState> {
  final GetPricesUseCase _getPricesUseCase;

  BitcoinBloc(this._getPricesUseCase)
      : super(
          const BitcoinState(
            isLoading: false,
            bitcoinList: [],
            isError: false,
          ),
        ) {
    on<BitcoinEvent>(
      (event, emit) async {
        await event.map<Future<void>>(
          updatedPrice: (e) async {
            emit(
              state.copyWith(
                isLoading: state.bitcoinList.isEmpty ? true : false,
                isError: false,
              ),
            );

            final Either<Failure, BitcoinEntity> result =
                await _getPricesUseCase.getPrices();

            result.fold(
              (error) {
                emit(
                  state.copyWith(
                    isError: true,
                  ),
                );
              },
              (data) {
                List<BitcoinEntity> bitcoinList = List<BitcoinEntity>.from(
                  state.bitcoinList,
                  growable: true,
                )..add(data);

                emit(
                  state.copyWith(
                    updatePriceResult: result,
                    bitcoinList: bitcoinList,
                    isLoading: false,
                    isError: false,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
