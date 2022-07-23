import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:real_tor_app/presentation/pages/agent_profile_page.dart';
import 'package:real_tor_app/presentation/pages/chat_history_page.dart';
import 'package:real_tor_app/presentation/pages/conversation_page.dart';
import 'package:real_tor_app/presentation/pages/login_page.dart';
import 'package:real_tor_app/presentation/pages/notification_page.dart';
import 'package:real_tor_app/presentation/pages/post_property_start_page.dart';
import 'package:real_tor_app/presentation/pages/property_listing_page.dart';
import 'package:real_tor_app/presentation/pages/property_search_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Realtor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ConversationPage(),
    );
  }
}
