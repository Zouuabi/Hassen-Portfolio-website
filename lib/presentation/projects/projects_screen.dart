import 'package:flutter/material.dart';
import 'package:oubeid/presentation/projects/widgets/screen_decoration.dart';

import 'widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List a = [
      'fsdf',
      'fsdf',
      'fsdf',
      'fsdf',
      'fsdf',
    ];
    return SecondPageDecoration(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My work',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              ...(a.map((e) {
                return const ProjectCard();
              }).toList())
            ],
          ),
        ],
      ),
    ));
  }
}
