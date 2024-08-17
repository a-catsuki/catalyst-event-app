import '../database.dart';

class SponsorsTable extends SupabaseTable<SponsorsRow> {
  @override
  String get tableName => 'sponsors';

  @override
  SponsorsRow createRow(Map<String, dynamic> data) => SponsorsRow(data);
}

class SponsorsRow extends SupabaseDataRow {
  SponsorsRow(super.data);

  @override
  SupabaseTable get table => SponsorsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get joined => getField<DateTime>('joined');
  set joined(DateTime? value) => setField<DateTime>('joined', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  List<String> get events => getListField<String>('events');
  set events(List<String>? value) => setListField<String>('events', value);
}
