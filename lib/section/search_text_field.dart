import 'package:asyncval/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

final _fieldValidationProvider = StateProvider((_) => true);
final _fieldInvalidPattern = RegExp(r'^[\s ]+$');

class SearchTextField extends ConsumerWidget {


  @override
  Widget build(BuildContext context,  ref) {
    final controller = TextEditingController(
    //  text: ref.read(searchQueryProvider),
    );
    final validated = ref.watch(_fieldValidationProvider);

    void onChange(String value) {
      ref.read(_fieldValidationProvider.notifier).state =
          value.isNotEmpty && !_fieldInvalidPattern.hasMatch(value);
    }

    void onSubmit() {

      ref.read(searchResultProvider.notifier).searchTo(search: 'lord');
      if (validated) {
        // final query = controller.value.text;
        // ref.read(searchQueryProvider.notifier).state = query;
      }
    }



    return IntrinsicHeight(
      // TextFieldとButtonの高さ揃える
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            // Buttonの横幅確保して残りの幅いっぱいまで広げる
            child: TextFormField(
              onFieldSubmitted: (val){
                ref.read(searchResultProvider.notifier).searchTo(search: val.trim());
              },

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'srch',
              ),

              textInputAction: TextInputAction.go,
            ),
          ),
          const SizedBox(width: 10),

        ],
      ),
    );
  }
}
