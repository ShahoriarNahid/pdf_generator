import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/main_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PDF Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const MainPage(),
    );
  }
}
