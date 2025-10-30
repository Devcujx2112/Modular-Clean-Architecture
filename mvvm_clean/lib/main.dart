import 'package:app_settings/provider/AppSettingsProvider.dart';
import 'package:datastore/provider/SesstionProvider.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mvvm_clean/di/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final appSetting = getIt<AppSettingProvider>();
    final sessionProvider = getIt<SesstionProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('App Language: ${appSetting.getAppLanguage()}'),
            Text("App theme: ${appSetting.getAppTheme()}"),
            Text("-----------------------------"),
            Text('Access Token: ${sessionProvider.getAccessToken()}'),
            Text('Client Id: ${sessionProvider.getCliendId()}'),
            Text('Refresh Token: ${sessionProvider.getRefreshToken()}'),
            Text('User Id: ${sessionProvider.getUserId()}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
