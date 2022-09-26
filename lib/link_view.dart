import 'package:flutter/material.dart';
import 'package:lending/link_model.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkView extends StatefulWidget {
  /// {@macro link_view}
  const LinkView({
    required this.link,
    super.key,
  });

  final LinkModel link;

  @override
  State<LinkView> createState() => _LinkViewState();
}

class _LinkViewState extends State<LinkView> {
  double _scaleFactor = 1.0;

  Future<void> _launchUrl() async {
    var url = Uri.parse(widget.link.url);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (event) {
              setState(() {
                _scaleFactor = 1.2;
              });
            },
            onExit: (event) {
              setState(() {
                _scaleFactor = 1.0;
              });
            },
            child: GestureDetector(
              onTap: _launchUrl,
              child: AnimatedContainer(
                height: 54 * _scaleFactor,
                width: 54 * _scaleFactor,
                duration: const Duration(milliseconds: 200),
                child: Image.asset(
                  widget.link.image,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      );
} // LinkView
