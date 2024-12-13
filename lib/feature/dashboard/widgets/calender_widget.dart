import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/services/calender_config.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(.4),
              blurRadius: .8,
              spreadRadius: .1,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SfCalendar(
          view: CalendarView.month,
          allowViewNavigation: true,
          headerDateFormat: "",
          monthCellBuilder: (context, details) {
            return Center(
              child: Text(
                details.date.day.toString(),
              ),
            );
          },
          dataSource: MeetingDataSource(CalenderConfig.getDataSource()),
          monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
          ),
        ),
      ),
    );
  }
}
