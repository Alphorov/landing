import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lending/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      const MainWidget(),
    );

class MainWidget extends StatefulWidget {
  /// {@macro main}
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (_) => ValueNotifier(ThemeMode.light),
        child: Builder(builder: (context) {
          return MaterialApp(
            themeMode: context.watch<ValueNotifier<ThemeMode>>().value,
            theme: ThemeData(
              primaryColor: const Color(
                0xFFc4a35a,
              ),
              textTheme: TextTheme(
                labelLarge: GoogleFonts.fredokaOne(
                  letterSpacing: 2.5,
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            darkTheme: ThemeData(
              primaryColor: const Color.fromARGB(255, 132, 108, 57),
              textTheme: TextTheme(
                labelLarge: GoogleFonts.fredokaOne(
                  letterSpacing: 2.5,
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 200, 200, 200),
                ),
              ),
            ),
            home: HomePage(),
            builder: (context, child) {
              return child ?? const SizedBox.shrink();
            },
          );
        }),
      );
} // MainWidget
