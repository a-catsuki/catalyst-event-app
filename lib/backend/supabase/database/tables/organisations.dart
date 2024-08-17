import '../database.dart';

class OrganisationsTable extends SupabaseTable<OrganisationsRow> {
  @override
  String get tableName => 'organisations';

  @override
  OrganisationsRow createRow(Map<String, dynamic> data) =>
      OrganisationsRow(data);
}

class OrganisationsRow extends SupabaseDataRow {
  OrganisationsRow(super.data);

  @override
  SupabaseTable get table => OrganisationsTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  List<String> get events => getListField<String>('events');
  set events(List<String>? value) => setListField<String>('events', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
