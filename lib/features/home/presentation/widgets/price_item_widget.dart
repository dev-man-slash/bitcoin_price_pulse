import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceItemWidget extends StatelessWidget {
  const PriceItemWidget({
    super.key,
    required this.currency,
    required this.rate,
    required this.oldRate,
    required this.symbol,
    required this.onTab,
  });

  final String currency;
  final String rate;
  final String oldRate;
  final String symbol;
  final void Function() onTab;

  @override
  Widget build(BuildContext context) {
    final style = GoogleFonts.roboto();

    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              'BTC ',
              style: style.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '/ $currency',
              style: style.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  rate,
                  style: style.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '\$ $oldRate',
                  style: style.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            const Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
