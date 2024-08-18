import '../database.dart';

class EverythingTable extends SupabaseTable<EverythingRow> {
  @override
  String get tableName => 'everything';

  @override
  EverythingRow createRow(Map<String, dynamic> data) => EverythingRow(data);
}

class EverythingRow extends SupabaseDataRow {
  EverythingRow(super.data);

  @override
  SupabaseTable get table => EverythingTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  bool get isUni => getField<bool>('isUni')!;
  set isUni(bool value) => setField<bool>('isUni', value);

  bool get isSponsor => getField<bool>('isSponsor')!;
  set isSponsor(bool value) => setField<bool>('isSponsor', value);

  bool get isInterest => getField<bool>('isInterest')!;
  set isInterest(bool value) => setField<bool>('isInterest', value);
}
