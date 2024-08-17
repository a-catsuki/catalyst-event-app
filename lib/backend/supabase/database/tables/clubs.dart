import '../database.dart';

class ClubsTable extends SupabaseTable<ClubsRow> {
  @override
  String get tableName => 'clubs';

  @override
  ClubsRow createRow(Map<String, dynamic> data) => ClubsRow(data);
}

class ClubsRow extends SupabaseDataRow {
  ClubsRow(super.data);

  @override
  SupabaseTable get table => ClubsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  bool get verified => getField<bool>('verified')!;
  set verified(bool value) => setField<bool>('verified', value);

  DateTime get joined => getField<DateTime>('joined')!;
  set joined(DateTime value) => setField<DateTime>('joined', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
