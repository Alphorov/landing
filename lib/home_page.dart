import 'package:flutter/material.dart';
import 'package:lending/gen/assets.gen.dart';
import 'package:lending/genius_name_view.dart';
import 'package:lending/link_model.dart';
import 'package:lending/links_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  /// {@macro main}
  HomePage({super.key});

  void _changeTheme(BuildContext context) {
    final themeMode = context.read<ValueNotifier<ThemeMode>>().value;
    context.read<ValueNotifier<ThemeMode>>().value =
        themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  final List<LinkModel> _list = [
    LinkModel(
      url: 'https://github.com/Alphorov',
      title: 'GitHub',
      image: Assets.images.githubLogo.path,
    ),
    LinkModel(
      url: 'https://t.me/DachXf',
      title: 'Telegram',
      image: Assets.images.telegramLogo.path,
    ),
    LinkModel(
      url: 'https://www.linkedin.com/in/platon-alphorov-47a049244/',
      title: 'LinkedIn',
      image: Assets.images.linkedinLogo.path,
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          child: Switch(
              activeColor: Colors.black54,
              value: !(context.read<ValueNotifier<ThemeMode>>().value ==
                  ThemeMode.light),
              onChanged: (_) {
                _changeTheme(context);
              }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 6,
                ),
                const GeniusNameView(
                  firstName: 'Platon',
                  lastName: 'Alphorov',
                ),
                const Spacer(
                  flex: 1,
                ),
                LinksList(
                  linkItems: _list,
                ),
                const Spacer(
                  flex: 5,
                ),
              ],
            ),
          ),
        ),
      );
} // HomePage