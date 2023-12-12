import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../search_result.dart';

class ErrorPage extends ConsumerWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error_outline,
          color: Colors.red,
          size: 80,
        ),
        const SizedBox(height: 16),
        const Text('search to'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            ref.invalidate(searchResultProvider);
          },
          child: const Text('retry'),
        ),
      ],
    );
  }
}
