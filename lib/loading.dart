import 'package:flutter/material.dart';
import 'package:task_auth/features/auth/presentation/login/login_screen.dart';
import 'package:task_auth/networks/dio/dio.dart';

import 'constants/app_constants.dart';
import 'helpers/di.dart';
import 'helpers/helpers_method.dart';
import 'splash_screen.dart';
import 'package:task_auth/features/profile/presentation/profile_screen.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    loadInitialData();
    super.initState();
  }

  bool _isLoading = true;

  bool _hasSession = false;

  loadInitialData() async {
    await setInitValue();

    final token = appData.read(kKeyAccessToken);
    final loggedIn = appData.read(kKeyIsLoggedIn) ?? false;
    _hasSession = loggedIn == true && token is String && token.isNotEmpty;

    if (_hasSession) {
      DioSingleton.instance.update(token);
    }

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SplashScreen();
    } else {
      return _hasSession ? const ProfileScreen() : const LoginScreen();
    }
  }
}
