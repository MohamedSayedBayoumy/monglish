import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../common/services/calender_config.dart';

class CalenderBodyViewWidget extends StatelessWidget {
  final CalendarView? calendarFormat;
  const CalenderBodyViewWidget({super.key, this.calendarFormat});

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: calendarFormat!,
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
