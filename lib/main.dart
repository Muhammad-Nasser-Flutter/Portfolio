import 'package:animations/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'core/routing/routes.dart';
import 'features/mainLayout/Bloc/main_layout_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: BlocProvider(
        create: (context) => MainLayoutCubit(),
        child: MaterialApp(
          title: 'My Animations',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFF111111),
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.mainLayoutScreen,
        ),
      ),
    );
  }
}
