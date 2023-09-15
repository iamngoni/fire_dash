import 'package:fire_dash/l10n/l10n.dart';
import 'package:flutter/material.dart';

import '../../shared/theme/colors.dart';
import 'tools.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: FDColors.dark,
        ),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: FDColors.darkAccent,
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const FireDashToolsPage(),
    );
  }
}
