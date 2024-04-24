import 'dart:async';

import 'package:bitcoin_price_pulse/features/home/presentation/screens/tabs/calc_tab.dart';
import 'package:bitcoin_price_pulse/features/home/presentation/screens/tabs/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/locator/service_locator.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../domain/repository/bitcoin_repository.dart';
import '../../domain/use_case/get_prices_use_case.dart';
import '../bloc/bitcoin_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BitcoinBloc(
        GetPricesUseCase(repository: locator.get<BitcoinRepository>()),
      )..add(const BitcoinEvent.updatedPrice()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(minutes: 1),
      (timer) {
        context.read<BitcoinBloc>().add(const BitcoinEvent.updatedPrice());
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  int _selectedIndex = 0;

  final tabs = [
    HomeTab(),
    const CalcTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var style = GoogleFonts.roboto();

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            elevation: 30,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.currency_bitcoin_outlined),
                label: 'Bitcoin',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.currency_exchange_outlined),
                label: 'Convert',
              ),
            ],
            currentIndex: _selectedIndex,
            // selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ),
        body: BlocListener<BitcoinBloc, BitcoinState>(
          listener: (context, state) {
            state.updatePriceResult?.fold(
              (l) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      l.response,
                      style: style.copyWith(
                        color: AppColors.lightGray4,
                      ),
                    ),
                    backgroundColor: AppColors.red,
                  ),
                );
              },
              (r) {},
            );
          },

          // if (state.signUpResponse != null &&
          //     state.signUpResponse!.isLeft()) {
          //   return Center(
          //     child: Column(
          //       children: [
          //         const Spacer(),
          //         // Assets.images.networkError.svg(width: 256),
          //         const SizedBox(height: 26),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(
          //             horizontal: 16,
          //           ),
          //           child: Text(
          //             'Check your connection',
          //             textAlign: TextAlign.center,
          //             style:
          //                 style.copyWith(color: AppColors.red, fontSize: 20),
          //           ),
          //         ),
          //         const Spacer(),
          //         Padding(
          //           padding: const EdgeInsets.all(16),
          //           child: ElevatedButton(
          //             // key: WidgetsKeys.retryButton,
          //             onPressed: () {
          //               context
          //                   .read<BitcoinBloc>()
          //                   .add(const BitcoinEvent.updatedPrice());
          //             },
          //             child: const Text('Try Again'),
          //           ),
          //         ),
          //       ],
          //     ),
          //   );
          // }
          // if (state.isLoading || state.signUpResponse == null) {
          //   return const Center(child: CircularProgressIndicator());
          // }
          // final tabs = [
          //   HomeTab(bitcoinList: state.bitcoinList),
          //   CalcTab(
          //     bitcoinEURRate: state.bitcoinList.last.bpi?.EUR?.rateFloat ?? 1,
          //     bitcoinGBPRate: state.bitcoinList.last.bpi?.GBP?.rateFloat ?? 1,
          //     bitcoinUSDRate: state.bitcoinList.last.bpi?.USD?.rateFloat ?? 1,
          //   ),
          // ];
          child: tabs[_selectedIndex],
        ),
      ),
    );
  }
}
