import 'package:cinezone_app/core/utils/app_router.dart';
import 'package:cinezone_app/features/home/presentation/manager/cubit/movie_cubit.dart';
import 'package:cinezone_app/features/navBar/manager/cubit/nav_bar_cubit.dart';
import 'package:cinezone_app/features/profile/presentation/manager/cubit/watch_history_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CineZoneApp());
}

class CineZoneApp extends StatelessWidget {
  const CineZoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavBarCubit()),
        BlocProvider(create: (_) => MovieCubit()),
        BlocProvider(create: (_) => WatchHistoryCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            theme: ThemeData.dark(),
          );
        },
      ),
    );
  }
}
