import 'package:bitcoin_price_pulse/features/home/presentation/bloc/bitcoin_bloc.dart';
import 'package:bitcoin_price_pulse/features/home/presentation/screens/history_chart_page.dart';
import 'package:bitcoin_price_pulse/features/home/presentation/widgets/price_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  final ValueNotifier<bool> isShow = ValueNotifier<bool>(false);
  final ValueNotifier<CurrencyType?> selectedCurrencyType =
      ValueNotifier<CurrencyType?>(null);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BitcoinBloc, BitcoinState>(
      builder: (context, state) {
        if (state.isLoading || state.updatePriceResult == null) {
          return const Center(child: CircularProgressIndicator());
        }
        const divider = Divider(
          indent: 16,
          height: 1,
          thickness: 2,
        );

        final currentPrice = state.bitcoinList.last;
        final previousPrice = state.bitcoinList.length > 1
            ? state.bitcoinList[state.bitcoinList.length - 2]
            : state.bitcoinList.last;

        var style = GoogleFonts.roboto();
        return Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    currentPrice.chartName!,
                    style: style.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Last Update: ${currentPrice.time?.updated ?? ''}',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PriceItemWidget(
                    onTab: () {
                      selectedCurrencyType.value = CurrencyType.USD;
                      isShow.value = true;
                    },
                    currency: currentPrice.bpi!.USD!.code!,
                    rate: state.bitcoinList.last.bpi!.USD!.rate!,
                    symbol: Icons.attach_money_rounded,
                    oldRate: previousPrice.bpi!.USD!.rate!,
                  ),
                  divider,
                  PriceItemWidget(
                    onTab: () {
                      selectedCurrencyType.value = CurrencyType.GBP;
                      isShow.value = true;
                    },
                    currency: state.bitcoinList.last.bpi!.GBP!.code!,
                    rate: currentPrice.bpi!.GBP!.rate!,
                    symbol: Icons.currency_pound_rounded,
                    oldRate: previousPrice.bpi!.GBP!.rate!,
                  ),
                  divider,
                  PriceItemWidget(
                    onTab: () {
                      selectedCurrencyType.value = CurrencyType.EUR;
                      isShow.value = true;
                    },
                    currency: state.bitcoinList.last.bpi!.EUR!.code!,
                    rate: currentPrice.bpi!.EUR!.rate!,
                    symbol: Icons.euro_rounded,
                    oldRate: previousPrice.bpi!.EUR!.rate!,
                  ),
                ],
              ),
              ValueListenableBuilder<bool>(
                valueListenable: isShow,
                builder: (context, show, _) {
                  return ValueListenableBuilder<CurrencyType?>(
                    valueListenable: selectedCurrencyType,
                    builder: (context, currency, _) {
                      if (currency != null && show) {
                        return HistoryChartPage(
                          bitcoins: state.bitcoinList,
                          onBackButton: () {
                            isShow.value = false;
                            selectedCurrencyType.value = null;
                          },
                          currencyType: currency,
                        );
                      }
                      return const SizedBox();
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
