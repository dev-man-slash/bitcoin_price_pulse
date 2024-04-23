import 'package:bitcoin_price_pulse/features/home/presentation/bloc/bitcoin_bloc.dart';
import 'package:bitcoin_price_pulse/features/home/presentation/widgets/price_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BitcoinBloc, BitcoinState>(
      builder: (context, state) {
        if (state.isLoading || state.signUpResponse == null) {
          return const Center(child: CircularProgressIndicator());
        }
        const divider = Divider(
          indent: 16,
          height: 1,
          thickness: 2,
        );

        return Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'Bitcoin',
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Last Update: ${state.signUpResponse?.time?.updated ?? ''}',
              ),
              const SizedBox(
                height: 20,
              ),
              PriceItemWidget(
                onTab: () {},
                currency: state.bitcoinList.last.bpi!.USD!.code!,
                rate: state.bitcoinList.last.bpi!.USD!.rate!,
                symbol: state.bitcoinList.last.bpi!.USD!.symbol!,
                oldRate: state.bitcoinList.length > 1
                    ? state.bitcoinList[state.bitcoinList.length - 2].bpi!.USD!
                        .rate!
                    : state.bitcoinList.last.bpi!.USD!.rate!,
              ),
              divider,
              PriceItemWidget(
                onTab: () {},
                currency: state.bitcoinList.last.bpi!.GBP!.code!,
                rate: state.bitcoinList.last.bpi!.GBP!.rate!,
                symbol: state.bitcoinList.last.bpi!.GBP!.symbol!,
                oldRate: state.bitcoinList.length > 1
                    ? state.bitcoinList[state.bitcoinList.length - 2].bpi!.GBP!
                        .rate!
                    : state.bitcoinList.last.bpi!.GBP!.rate!,
              ),
              divider,
              PriceItemWidget(
                onTab: () {},
                currency: state.bitcoinList.last.bpi!.EUR!.code!,
                rate: state.bitcoinList.last.bpi!.EUR!.rate!,
                symbol: state.bitcoinList.last.bpi!.EUR!.symbol!,
                oldRate: state.bitcoinList.length > 1
                    ? state.bitcoinList[state.bitcoinList.length - 2].bpi!.EUR!
                        .rate!
                    : state.bitcoinList.last.bpi!.EUR!.rate!,
              ),
            ],
          ),
        );
      },
    );
  }
}
