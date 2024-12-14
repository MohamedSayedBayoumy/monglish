import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/services/calender_config.dart';
import '../../../../common/utils/utils.dart';
import '../dashboard_container_widget.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      delayFadeWidget: AppUtils.handleDelayedFadeWidget(3),
      backgroundColor: Colors.white,
      boxShadow: [
        BoxShadow(
          color: AppColors.grey.withOpacity(.4),
          blurRadius: .8,
          spreadRadius: .1,
        )
      ],
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
    );
  }
}
