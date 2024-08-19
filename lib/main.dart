import 'package:flutter/material.dart';
import 'package:resturant_app/core/routing/app_router.dart';
import 'package:resturant_app/core/routing/routes.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  //   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp( MyApp(appRouter:AppRouter(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,required this.appRouter});

 final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resturant App',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: ColorManager.white,
      // ),
      initialRoute: Routes.onboarding,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
