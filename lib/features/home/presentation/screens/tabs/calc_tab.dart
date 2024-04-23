import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/bitcoin_bloc.dart';

class CalcTab extends StatelessWidget {
  const CalcTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BitcoinBloc, BitcoinState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

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
                height: 8,
              ),
              MyCustomTextField(),
            ],
          ),
        );
      },
    );
  }
}

class MyCustomTextField extends StatefulWidget {
  @override
  _MyCustomTextFieldState createState() => _MyCustomTextFieldState();
}

class _MyCustomTextFieldState extends State<MyCustomTextField> {
  String? dropdownValue;
  final List<String> dropdownItems = ['One', 'Two', 'Three', 'Four'];
  final FocusNode focusNode = FocusNode();
  bool isFocused = false;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (focusNode.hasFocus != isFocused) {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    }
  }

  @override
  void dispose() {
    focusNode.removeListener(_handleFocusChange);
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      onFocusChange: (hasFocus) {
        setState(() {
          isFocused = hasFocus;
        });
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(focusNode);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: isFocused ? Colors.blue : Colors.grey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dropdownValue,
              hint: Row(
                children: <Widget>[
                  Icon(Icons.access_alarm, color: isFocused ? Colors.blue : Colors.grey), // Prefix icon
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Select an option',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
              isExpanded: true,
              icon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.arrow_drop_down, color: isFocused ? Colors.blue : Colors.grey), // Dropdown arrow icon
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue;
                  focusNode.unfocus();
                });
              },
              items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}