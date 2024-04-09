// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//   import '../../theming/assets.dart';
// import '../../theming/colors.dart';
// import '../Shimmers/image_shimmer.dart';
// import '../custom_texts.dart';
// import '../icon_widget.dart';
//  import 'drawer_item.dart';

// class CustomDrawer extends StatelessWidget {
//   CustomDrawer({Key? key}) : super(key: key);
//   final GlobalKey<ScaffoldState> _key = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       width: MediaQuery.sizeOf(context).width * 0.68,
//       backgroundColor: AppColors.scaffoldBackground,
//       shape: const ContinuousRectangleBorder(),
//       key: _key,
//       child: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric( vertical: 5.h),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               IconWidget(
//                 onPressed: () {
//                   context.pop();
//                 },
//                 iconAsset: Assets.exitIcon,
//                 size: 25.r,
//               ),
//               Center(
//                 child: Container(
//                   width: 120.r,
//                   clipBehavior: Clip.antiAliasWithSaveLayer,
//                   height: 120.r,
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                   ),
//                   child:
//                   // profileCubit.user != null
//                   //     ?
//                   CachedNetworkImage(
//                     placeholder: (context, object) {
//                       return const ImageShimmer(
//                         width: double.maxFinite,
//                         height: double.maxFinite,
//                       );
//                     },
//                     imageUrl: "https://lh3.googleusercontent.com/a/ACg8ocIos38InYxAqrU8uYJXCyZwGR_pGz33jUArC5N-aEpl9ko=s288-c-no",
//                     fit: BoxFit.cover,
//                   )
//                   //     : const ImageShimmer(
//                   //   width: double.maxFinite,
//                   //   height: double.maxFinite,
//                   // ),
//                 ),
//               ),
               
//               const SizedBox(
//                 height: 20,
//               ),
//               Center(
//                 child: Text22Ar(
//                   text: "محمد ناصر",
//                   overFlow: TextOverflow.ellipsis,
//                   maxLines: 1,
//                 ),
//               ),
//               const SizedBox(
//                 height: 35,
//               ),
//               DrawerItem(
//                 icon: Assets.saveIcon,
//                 label: "الحجوزات السابقة",
//                 onPressed: () {
//                   context.pop();
//                   context.pushNamed(Routes.pastReservationScreen);
//                 },
//               ),
//               SizedBox(
//                 height: 10.h,
//               ),
//               DrawerItem(
//                 icon: Assets.heartOutlinedIcon,
//                 label: "المفضلة",
//                 onPressed: () {
//                   context.pop();
//                   context.pushNamed(Routes.favoritesScreen);
//                 },
//               ),
//               SizedBox(
//                 height: 10.h,
//               ),
//               DrawerItem(
//                 icon: Assets.settingsIcon,
//                 label: "الإعدادات",
//                 onPressed: () {
//                   context.pop();
//                   context.pushNamed(Routes.settingsScreen);
//                 },
//               ),
//               const Spacer(),
//               BlocProvider(
//                 create: (context) => LogoutCubit(),
//                 child: BlocConsumer<LogoutCubit, LogoutStates>(
//                   listener: (context, state) {
//                     // if (state is LogoutSuccessState) {
//                     //   context.pushNamedAndRemoveUntil(
//                     //     Routes.loginScreen,
//                     //         (route) => false,
//                     //     predicate: (route) => false,
//                     //   );
//                     // }
//                   },
//                   builder: (context, state) {
//                     var logoutCubit = LogoutCubit.get(context);
//                     return DrawerItem(
//                       icon: Assets.logoutIcon,
//                       label: "تسجيل الخروج",
//                       onPressed: () {
//                         // context.pushNamedAndRemoveUntil(Routes.loginScreen, (route) => false,);
//                         // logoutCubit.logout(context: context);
//                       },
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }