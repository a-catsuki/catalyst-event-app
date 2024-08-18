import '../database.dart';

class EventsTable extends SupabaseTable<EventsRow> {
  @override
  String get tableName => 'events';

  @override
  EventsRow createRow(Map<String, dynamic> data) => EventsRow(data);
}

class EventsRow extends SupabaseDataRow {
  EventsRow(super.data);

  @override
  SupabaseTable get table => EventsTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  String get venue => getField<String>('venue')!;
  set venue(String value) => setField<String>('venue', value);

  DateTime get startDateTime => getField<DateTime>('startDateTime')!;
  set startDateTime(DateTime value) =>
      setField<DateTime>('startDateTime', value);

  DateTime get endDateTime => getField<DateTime>('endDateTime')!;
  set endDateTime(DateTime value) => setField<DateTime>('endDateTime', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  bool get adult => getField<bool>('adult')!;
  set adult(bool value) => setField<bool>('adult', value);

  List<String> get category => getListField<String>('category');
  set category(List<String> value) => setListField<String>('category', value);

  int get likes => getField<int>('likes')!;
  set likes(int value) => setField<int>('likes', value);

  double? get reviewTotal => getField<double>('reviewTotal');
  set reviewTotal(double? value) => setField<double>('reviewTotal', value);

  int get numReviews => getField<int>('numReviews')!;
  set numReviews(int value) => setField<int>('numReviews', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  List<String> get comments => getListField<String>('comments');
  set comments(List<String>? value) => setListField<String>('comments', value);

  List<String> get universities => getListField<String>('universities');
  set universities(List<String>? value) =>
      setListField<String>('universities', value);

  List<String> get sponsors => getListField<String>('sponsors');
  set sponsors(List<String>? value) => setListField<String>('sponsors', value);

  List<String> get organisers => getListField<String>('organisers');
  set organisers(List<String>? value) =>
      setListField<String>('organisers', value);
}
