import 'package:world_holidays/models/holiday_data.dart';
import 'package:world_holidays/models/holiday_reminder.dart';
import 'calendarific_provider.dart';
import 'sqlite_provider.dart';

class Repository {
  final _calendarificProvider = CalendarificProvider();
  final _sqliteProvider =SQLiteProvider.db;

  Future<HolidayData> getHolidays(String countryCode) =>
      _calendarificProvider.getHolidays(countryCode);

  Future<List<HolidayReminder>> getAllHolidayReminders() => 
    _sqliteProvider.getAllHolidays();

  deleteAllHolidayReminders() =>
    _sqliteProvider.deleteAllHolidays();

  deleteHolidayReminder(String id) => 
    _sqliteProvider.deleteHoliday(id);

  addNewHolidayReminder(HolidayReminder holidayReminder) =>
    _sqliteProvider.addNewHoliday(holidayReminder);
  
  Future<bool> isHolidayInReminderList(String id) =>
    _sqliteProvider.isHolidayInReminderList(id);

}
