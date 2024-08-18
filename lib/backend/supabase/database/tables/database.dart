import '../database.dart';

class DatabaseTable extends SupabaseTable<DatabaseRow> {
  @override
  String get tableName => 'database';

  @override
  DatabaseRow createRow(Map<String, dynamic> data) => DatabaseRow(data);
}

class DatabaseRow extends SupabaseDataRow {
  DatabaseRow(super.data);

  @override
  SupabaseTable get table => DatabaseTable();

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  List<String> get name => getListField<String>('name');
  set name(List<String> value) => setListField<String>('name', value);
}
