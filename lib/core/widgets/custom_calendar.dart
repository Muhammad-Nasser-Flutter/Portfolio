// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:tennis_home/features/booking/Bloc/booking_cubit.dart';
// import 'package:tennis_home/features/booking/Bloc/booking_states.dart';
//
// class CustomCalendar extends StatelessWidget {
//   const CustomCalendar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BookingCubit, BookingStates>(
//       builder: (context, state) {
//         var bookingCubit  = BookingCubit.get(context);
//         return TableCalendar(
//           startingDayOfWeek: StartingDayOfWeek.saturday,
//           shouldFillViewport: true,
//           currentDay: bookingCubit.selectedDate,
//           rangeSelectionMode: RangeSelectionMode.disabled,
//           onDaySelected: (date, day) {
//             bookingCubit.selectDate(date);
//           },
//           headerStyle: HeaderStyle(
//             headerPadding: EdgeInsets.zero,
//             titleTextStyle: GoogleFonts.inter(
//               color:Colors.white,
//               fontSize: 18.sp,
//               fontWeight: FontWeight.w500,
//             ),
//             formatButtonVisible: false,
//             titleCentered: true,
//             titleTextFormatter: (date, locale) =>
//                 DateFormat.MMMM(locale).format(date),
//             leftChevronIcon: const Icon(
//               Icons.chevron_left,
//               color: Colors.white,
//               size: 30,
//             ),
//             rightChevronIcon: const Icon(
//               Icons.chevron_right,
//               color: Colors.white,
//               size: 30,
//             ),
//           ),
//           weekendDays: const [],
//           daysOfWeekStyle: const DaysOfWeekStyle(
//             weekdayStyle: TextStyle(
//               color: Color(0xFF3C3C43),
//             ),
//             weekendStyle: TextStyle(
//               color: Color(0xFF3C3C43),
//             ),
//           ),
//           sixWeekMonthsEnforced: false,
//           daysOfWeekHeight: 20,
//           calendarStyle: CalendarStyle(
//             selectedTextStyle: TextStyle(
//               color: Colors.white,
//               fontSize: 20.sp,
//             ) ,
//             cellMargin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//             cellAlignment: Alignment.center,
//             tablePadding: const EdgeInsets.symmetric(horizontal: 5),
//             defaultTextStyle: TextStyle(
//               color: Colors.white,
//               fontSize: 20.sp,
//             ),
//             outsideDaysVisible: false,
//             todayTextStyle: TextStyle(
//               color: Colors.white,
//               fontSize: 20.sp,
//             ),
//             weekendTextStyle: TextStyle(
//               color: Colors.white,
//               fontSize: 20.sp,
//             ),
//             todayDecoration: BoxDecoration(
//               color: Colors.transparent,
//               border: Border.all(width: 1, color: Colors.white),
//               borderRadius: BorderRadius.circular(5),
//             ),
//             defaultDecoration: const BoxDecoration(color: Colors.transparent),
//           ),
//           headerVisible: true,
//           focusedDay: DateTime.now(),
//           firstDay: DateTime.utc(2000),
//           lastDay: DateTime.utc(2025),
//         );
//       },
//     );
//   }
// }
