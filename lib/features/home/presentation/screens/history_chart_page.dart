// import 'dart:ffi';
//
// import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../bloc/bitcoin_bloc.dart';
//
// class CalcTab extends StatelessWidget {
//   const CalcTab({super.key, required this.bitcoins, required this.currency});
//
//   final List<BitcoinEntity> bitcoins;
//   final String currency;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BitcoinBloc, BitcoinState>(
//       builder: (context, state) {
//         if (state.isLoading) {
//           return const Center(child: CircularProgressIndicator());
//         }
//
//         return Align(
//           alignment: Alignment.topCenter,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 height: 16,
//               ),
//               Text(
//                 'BTC / $currency',
//                 style: GoogleFonts.roboto().copyWith(
//                   fontSize: 26,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               AspectRatio(
//                 aspectRatio: 2,
//                 child: LineChart(
//                   LineChartData(
//                     lineBarsData: [
//                       LineChartBarData(
//                           spots: bitcoins.map(
//                             (bitcoin) {
//                               final rate = double.parse(bitcoin.bpi!.USD!.rate!.replaceAll(',', ""));
//                               return FlSpot(rate, rate);
//                             },
//                           ).toList(),
//                           isCurved: false,
//                           dotData: FlDotData(
//                             show: false,
//                           ),
//                           color: Colors.red),
//                     ],
//                     borderData: FlBorderData(
//                         border: const Border(
//                             bottom: BorderSide(), left: BorderSide())),
//                     gridData: FlGridData(show: false),
//                     titlesData: FlTitlesData(
//                       bottomTitles: AxisTitles(sideTitles: _bottomTitles),
//                       leftTitles:
//                           AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                       topTitles:
//                           AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                       rightTitles:
//                           AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
