import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/entity/currency_entity.dart';
import '../../bloc/bitcoin_bloc.dart';

class CalcTab extends StatelessWidget {
  const CalcTab({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Convert',
            style: GoogleFonts.roboto().copyWith(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(child: MyCustomTextField()),
        ],
      ),
    );
  }
}

class MyCustomTextField extends StatefulWidget {
  const MyCustomTextField({super.key});

  @override
  State<MyCustomTextField> createState() => _MyCustomTextFieldState();
}

class _MyCustomTextFieldState extends State<MyCustomTextField> {
  String? dropdownValue = 'USD';
  String? convertedValue;
  String? enteredValue;
  var style = GoogleFonts.roboto();

  final List<String> dropdownItems = [
    'USD',
    'EUR',
    'GBP',
  ];
  final FocusNode focusNode = FocusNode();

  bool isFocused = false;

  final symbols = <String, IconData>{
    'USD': Icons.attach_money_rounded,
    'EUR': Icons.currency_pound_rounded,
    'GBP': Icons.euro_rounded,
  };

  void calcValue({
    required String enteredValue,
    required String selectedType,
    required CurrencyEntity currency,
  }) {
    setState(
      () {
        switch (selectedType) {
          case 'USD':
            convertedValue =
                (double.parse(enteredValue) / currency.USD!.rateFloat!)
                    .toString();
          case 'GBP':
            convertedValue =
                (double.parse(enteredValue) / currency.GBP!.rateFloat!)
                    .toString();
          case 'EUR':
            convertedValue =
                (double.parse(enteredValue) / currency.EUR!.rateFloat!)
                    .toString();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BitcoinBloc, BitcoinState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 54,
              child: TextField(
                textInputAction: TextInputAction.done,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                focusNode: focusNode,
                onChanged: (value) {
                  enteredValue = value;
                  calcValue(
                    enteredValue: value,
                    selectedType: 'USD',
                    currency: state.bitcoinList.last.bpi!,
                  );
                },
                decoration: InputDecoration(
                  hintText: 'Your Price',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                  ),
                  prefixIcon: Icon(
                    symbols[dropdownValue ?? 'USD'],
                    color: isFocused ? Colors.deepPurple : Colors.grey,
                  ),
                  suffixIcon: SizedBox(
                    width: 70,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        hint: Text(
                          'Currency',
                          style: style.copyWith(color: Colors.grey[700]),
                        ),
                        isExpanded: true,
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: isFocused ? Colors.deepPurple : Colors.grey,
                          ), // Dropdown arrow icon
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            if (newValue == null || newValue.isEmpty) {
                              convertedValue = null;
                            }
                            dropdownValue = newValue;

                            calcValue(
                              enteredValue: enteredValue ?? '0',
                              selectedType: dropdownValue ?? 'USD',
                              currency: state.bitcoinList.last.bpi!,
                            );
                          });
                        },
                        items: dropdownItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 42),
              child: Icon(Icons.currency_exchange_outlined),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.currency_bitcoin_rounded),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    convertedValue ?? '0.0',
                    style: style.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'BTC',
                    style: style.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
