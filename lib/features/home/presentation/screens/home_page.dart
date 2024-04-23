import 'dart:async';

import 'package:bitcoin_price_pulse/features/home/presentation/screens/tabs/calc_tab.dart';
import 'package:bitcoin_price_pulse/features/home/presentation/screens/tabs/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/locator/service_locator.dart';
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
        body: tabs[_selectedIndex],
      ),
    );
  }
}
