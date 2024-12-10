import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'bloc_observer.dart';
import 'portfolio_app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  try {
    // Try to load the .env file, but catch any errors
    await dotenv.load(fileName: "assets/config.env");
  } catch (e) {
    print("Error loading .env file: $e");
  }
  runApp(const PortfolioApp());
}
