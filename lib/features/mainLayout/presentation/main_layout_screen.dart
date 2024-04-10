import 'package:animations/core/theming/assets.dart';
import 'package:animations/core/theming/colors.dart';
import 'package:animations/core/widgets/Animations/fade_in_animation.dart';
import 'package:animations/core/widgets/icon_widget.dart';
import 'package:animations/features/mainLayout/Bloc/main_layout_cubit.dart';
import 'package:animations/features/mainLayout/Bloc/main_layout_states.dart';
import 'package:animations/features/mainLayout/presentation/widgets/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/drawer/custom_drawer.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainLayoutCubit, MainLayoutState>(
      builder: (context, state) {
        var cubit = MainLayoutCubit.get(context);
        return Scaffold(
          drawerEnableOpenDragGesture: false,
          drawer: CustomDrawer(),
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 980) {
                return Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                Assets.homeBG,
                              ),
                              fit: BoxFit.cover),
                        ),
                        child: cubit.screens[cubit.currentIndex]),
                    PositionedDirectional(
                      end: 20,
                      child: FadeInAnimation(
                        delay: 1.2,
                        startingOffset: const Offset(200, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: List.generate(
                            cubit.screens.length,
                            (index) => NavItem(
                              bGColor: cubit.currentIndex == index
                                  ? AppColors.primaryColor
                                  : AppColors.grey,
                              onPressed: () {
                                cubit.changeBottomNav(index);
                              },
                              title: cubit.navLabel[index],
                              iconAsset: cubit.navIcon[index],
                              index: index,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
              else {
                return Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              Assets.homeBG,
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: cubit.screens[cubit.currentIndex],
                    ),
                    PositionedDirectional(
                      top: 20,
                      end: 20,
                      child: IconWidget(
                        iconAsset: Assets.menuIcon,
                        bGColor: const Color(0xFF252525),
                        iconColor: Colors.white,
                        radius: 5,
                        size: 32,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        );
      },
    );
  }
}
