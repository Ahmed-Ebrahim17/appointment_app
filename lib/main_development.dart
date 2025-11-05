import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // Ensure Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();
  
  setupGetIt();
  
  //! To fix the texts hidden bug in screen_utils release mode
  await ScreenUtil.ensureScreenSize();
  
  runApp(DocApp(appRouter: AppRouter()));
}