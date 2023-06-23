// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:templete/Presintaions/Authantication/sign_in_screen.dart';
import 'package:templete/l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:templete/Data/Helper/cache_helper.dart';
import 'package:templete/Data/Constant/app_constant.dart';
import 'package:templete/Presintaions/dashboard_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:templete/Data/Constant/theme/dark_theme.dart';
import 'package:templete/Data/Constant/theme/light_theme.dart';
import 'package:templete/Business/AppProvider/app_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:templete/Business/LanguageProvider/l10n_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageProvider>(
          create: (_) => LanguageProvider(),
        ),
        ChangeNotifierProvider<AppProvider>(
          create: (_) => AppProvider(),
        ),
      ],
      builder: (c, w) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isWeb = kIsWeb;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _streamSubscription;
  ConnectivityResult _connectivityResult = ConnectivityResult.none;

  @override
  void initState() {
    initConnectivity();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context, listen: false);
    appProvider.connectivityResult = _connectivityResult;
    LanguageProvider language = Provider.of<LanguageProvider>(context);
    language.lang = CacheHelper.getData(key: CacheHelper.lang);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstans.appName,
        locale: language.lang != null
            ? Locale(language.lang!, '')
            : const Locale('en', ''),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: L10n.all,
        theme: lightThemes,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: const SignScreenScreen());
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log(e.toString());
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectivityResult = result;
    });
  }
}
