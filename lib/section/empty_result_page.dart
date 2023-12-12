import 'package:flutter/material.dart';


class EmptyResultPage extends StatelessWidget {
  const EmptyResultPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.search_off_outlined,
          color: Colors.grey,
          size: 80,
        ),
        SizedBox(height: 16),
        Text('no-data'),
      ],
    );
  }
}