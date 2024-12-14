import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../common/services/calender_config.dart';
import '../controller/dashboard_controller.dart';

class CalenderBodyViewWidget extends StatelessWidget {
  final DashboardController controller;

  const CalenderBodyViewWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      controller: controller.calendarController,
      view: controller.calendarController.view!,
      allowViewNavigation: true,
      headerDateFormat: "",
      headerHeight: 0.0,
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
    );
  }
}
