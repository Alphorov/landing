import 'package:flutter/material.dart';
import 'package:lending/link_model.dart';
import 'package:lending/link_view.dart';

class LinksList extends StatelessWidget {
  /// {@macro links_list}
  const LinksList({
    required this.linkItems,
    super.key,
  });

  final List<LinkModel> linkItems;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < linkItems.length; i++) ...[
            LinkView(
              link: linkItems[i],
            ),
            if (i != linkItems.length - 1)
              const SizedBox(
                width: 32,
              ),
          ],
        ],
      );
} // LinksList
