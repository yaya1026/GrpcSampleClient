import 'package:flutter/material.dart';
import 'package:grpcsampleclient/main.dart';
import 'package:grpcsampleclient/screen/detail_screen.dart';
import 'package:grpcsampleclient/store/fetch_data_store.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => ChangeNotifierProvider(
              create: (context) => FetchDataStore(),
              child: HomeScreen(),
            ),
        AppRoutes.detail: (context) => DetailScreen(),
      },
    );
  }
}
