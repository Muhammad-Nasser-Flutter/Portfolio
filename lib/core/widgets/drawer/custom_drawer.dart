import 'package:animations/core/helpers/extensions.dart';
import 'package:animations/core/widgets/separator.dart';
import 'package:animations/features/mainLayout/Bloc/main_layout_cubit.dart';
import 'package:animations/features/mainLayout/Bloc/main_layout_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../theming/assets.dart';
import '../icon_widget.dart';
import 'drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Drawer(
          width: constraints.maxWidth,
          backgroundColor: const Color(0xFF252525),
          surfaceTintColor:const Color(0xFF252525) ,
          shape: const ContinuousRectangleBorder(),
          key: _key,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric( vertical: 20,horizontal: 20),
              child: BlocBuilder<MainLayoutCubit,MainLayoutState>(
                  builder: (context, state) {
                    var cubit = MainLayoutCubit.get(context);
                    return  Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          child: IconWidget(
                            onPressed: () {
                              context.pop();
                            },
                            iconAsset: Scaffold.of(context).isDrawerOpen?Assets.exitIcon:Assets.menuIcon,
                            iconColor: Colors.white,
                            size: 25,
                          ),
                        ),
                        DrawerItem(
                          iconSize: 20,
                          icon: cubit.navIcon[0],
                          label: cubit.navLabel[0],
                          onPressed: () {
                            cubit.changeBottomNav(0);
                            context.pop();

                          },
                        ),
                        Separator(),
                        DrawerItem(
                          iconSize: 20,
                          icon: cubit.navIcon[1],
                          label: cubit.navLabel[1],
                          onPressed: () {
                            cubit.changeBottomNav(1);
                            context.pop();
                          },
                        ),
                        Separator(),
                        DrawerItem(
                          iconSize: 20,
                          icon: cubit.navIcon[2],
                          label: cubit.navLabel[2],
                          onPressed: () {
                            cubit.changeBottomNav(2);
                            context.pop();
                          },
                        ),
                        Separator(),
                        DrawerItem(
                          iconSize: 20,
                          icon: cubit.navIcon[3],
                          label: cubit.navLabel[3],
                          onPressed: () {
                            cubit.changeBottomNav(3);
                            context.pop();
                          },
                        ),
                      ],
                    );
                  }
              ),
            ),
          ),
        );
      }
    );
  }
}