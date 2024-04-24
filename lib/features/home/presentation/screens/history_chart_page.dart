import 'package:bitcoin_price_pulse/features/home/domain/entity/bitcoin_entity.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/entity/price_entity.dart';

enum CurrencyType {
  USD,
  GBP,
  EUR,
}

class HistoryChartPage extends StatelessWidget {
  HistoryChartPage({
    super.key,
    required this.bitcoins,
    required this.currencyType,
    required this.onBackButton,
  })  : _rates = currencyType == CurrencyType.USD
            ? bitcoins.map((e) => e.bpi!.USD!).toList()
            : currencyType == CurrencyType.EUR
                ? bitcoins.map((e) => e.bpi!.EUR!).toList()
                : bitcoins.map((e) => e.bpi!.GBP!).toList(),
        _times = bitcoins.map((e) => e.time!.updatedISO!).toList();

  final List<BitcoinEntity> bitcoins;
  final List<PriceEntity> _rates;
  final List<String> _times;
  final CurrencyType currencyType;
  final void Function() onBackButton;

  @override
  Widget build(BuildContext context) {
    var style = GoogleFonts.roboto();

    return ColoredBox(
      color: Colors.white,
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: onBackButton,
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 32,
                  ),
                ),
                const Spacer(),
                Text(
                  'BTC / ${currencyType.name}',
                  style: GoogleFonts.roboto().copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _rates.last.rate!,
                        style: style.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$ ${bitcoins.length > 1 ? _rates[bitcoins.length - 2].rate! : _rates.last.rate!}',
                        style: style.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).width * .8,
              padding: const EdgeInsets.all(16),
              width: MediaQuery.sizeOf(context).width,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: _rates.map(
                        (item) {
                          final rate = item.rateFloat!;
                          return FlSpot(
                            _rates.indexOf(item).toDouble(),
                            rate,
                          );
                        },
                      ).toList(),
                      isCurved: false,
                      dotData: const FlDotData(
                        show: false,
                      ),
                      color: Colors.blue,
                    ),
                  ],
                  borderData: FlBorderData(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade500,
                        width: 2,
                      ),
                      right: BorderSide(
                        color: Colors.grey.shade500,
                        width: 2,
                      ),
                      top: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                      left: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  gridData: const FlGridData(
                    show: true,
                    // horizontalInterval:
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: _rates.length < 5 ? 1 : 5,
                        getTitlesWidget: (index, meta) {
                          return SideTitleWidget(
                            axisSide: AxisSide.bottom,
                            child: FittedBox(
                              child: Text(
                                _times[index.toInt()].substring(
                                  _times[index.toInt()].indexOf('T') + 1,
                                  _times[index.toInt()].indexOf('T') + 6,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        reservedSize: 42,
                        // interval: 50,
                        showTitles: true,
                        getTitlesWidget: (index, meta) {
                          return SideTitleWidget(
                            axisSide: AxisSide.top,
                            child: FittedBox(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                child: Text(index.toString()),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
