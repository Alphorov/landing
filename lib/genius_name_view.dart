import 'package:flutter/material.dart';

class GeniusNameView extends StatelessWidget {
  /// {@macro genius_name_view}
  const GeniusNameView({
    required this.firstName,
    required this.lastName,
    super.key,
  });

  final String firstName;

  final String lastName;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text(
            firstName.toUpperCase(),
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            lastName.toUpperCase(),
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontSize: 24,
            ),
          ),
        ],
      );
} // GeniusNameView
