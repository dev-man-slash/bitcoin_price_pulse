import 'package:bitcoin_price_pulse/features/home/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bitcoin Price Pulse',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    // return MaterialApp.router(
    //   title: 'Syriamaksab',
    //   // darkTheme: AppTheme().darkTheme,
    //   // theme: AppTheme().lightTheme,
    //   // themeMode: themeMode ?? ThemeMode.light,
    //   locale: locale,
    //   debugShowCheckedModeBanner: false,
    //   // localizationsDelegates: const [
    //   //   AppLocalizations.delegate,
    //   //   GlobalMaterialLocalizations.delegate,
    //   //   GlobalWidgetsLocalizations.delegate,
    //   //   GlobalCupertinoLocalizations.delegate,
    //   // ],
    //   routerDelegate: AppRouter().router.routerDelegate,
    //   routeInformationProvider: AppRouter().router.routeInformationProvider,
    //   routeInformationParser: AppRouter().router.routeInformationParser,
    // );
  }
}
