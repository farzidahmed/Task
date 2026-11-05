import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_auth/common/custom_button.dart';
import 'package:task_auth/helpers/all_routes.dart';
import 'package:task_auth/helpers/loading_helper.dart';
import 'package:task_auth/helpers/navigation_service.dart';
import 'package:task_auth/networks/api_access.dart';
import 'package:task_auth/networks/stream_cleaner.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _logout() async {
    await _doLogout().waitingForSucess();
    NavigationService.navigateToReplacementUntil(Routes.loginScreen);
  }

  Future<void> _doLogout() async {
    try {
      await logoutRxObj.logout();
    } catch (_) {
      // Even if the server call fails (e.g. expired token), clear the local session.
    }
    await clearSession();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: CustomButton(onTap: _logout, btnName: 'Logout'),
          ),
        ),
      ),
    );
  }
}
