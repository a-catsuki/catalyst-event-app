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

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  double? get avgRating => getField<double>('avgRating');
  set avgRating(double? value) => setField<double>('avgRating', value);

  bool get verified => getField<bool>('verified')!;
  set verified(bool value) => setField<bool>('verified', value);

  DateTime get joined => getField<DateTime>('joined')!;
  set joined(DateTime value) => setField<DateTime>('joined', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double get interestRate => getField<double>('interestRate')!;
  set interestRate(double value) => setField<double>('interestRate', value);

  double get clickRate => getField<double>('clickRate')!;
  set clickRate(double value) => setField<double>('clickRate', value);

  List<dynamic> get currentEvents => getListField<dynamic>('currentEvents');
  set currentEvents(List<dynamic>? value) =>
      setListField<dynamic>('currentEvents', value);

  List<dynamic> get pastEvents => getListField<dynamic>('pastEvents');
  set pastEvents(List<dynamic>? value) =>
      setListField<dynamic>('pastEvents', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get followers => getField<int>('followers');
  set followers(int? value) => setField<int>('followers', value);
}
