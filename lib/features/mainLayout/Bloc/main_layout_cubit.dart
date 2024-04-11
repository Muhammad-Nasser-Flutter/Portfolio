import 'package:animations/features/Portfolio/presentation/portfolio_screen.dart';
import 'package:animations/features/about/presentation/about_screen.dart';
import 'package:animations/features/mail/presentation/mail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/assets.dart';
import '../../home/presentation/home_screen.dart';
import 'main_layout_states.dart';


class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutInitial());
  static MainLayoutCubit get(context) => BlocProvider.of(context);
  List<String> navLabel = ["Home", "About", "Works", "Contact",];
  List navIcon = [
    Assets.homeIcon,
    Assets.userIcon,
    Assets.workIcon,
    Assets.mailIcon,
  ];
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    AboutScreen(),
    const PortfolioScreen(),
    const MailScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }
}
