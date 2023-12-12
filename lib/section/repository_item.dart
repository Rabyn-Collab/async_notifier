import 'package:asyncval/movie.dart';
import 'package:flutter/material.dart';


class RepositoryItem extends StatelessWidget {
  const RepositoryItem({super.key, required this.repo});

  final Movie repo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(repo.title),

      ),
    );
  }
}
