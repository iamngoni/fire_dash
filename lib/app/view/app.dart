import 'package:fire_dash/l10n/l10n.dart';
import 'package:flutter/material.dart';

import '../../core/utils/is_firebase_cli_installed.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Container(
        child: Center(
          child: MaterialButton(
            color: Colors.blue,
            onPressed: () async {
              bool firebaseInstalled = await isFirebaseCliInstalled();
              print(firebaseInstalled);
            },
            child: const Text('Test'),
          ),
        ),
      ),
    );
  }
}
