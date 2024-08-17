import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(super.data);

  @override
  SupabaseTable get table => UserTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String get firstName => getField<String>('firstName')!;
  set firstName(String value) => setField<String>('firstName', value);

  String get lastName => getField<String>('lastName')!;
  set lastName(String value) => setField<String>('lastName', value);

  String get university => getField<String>('university')!;
  set university(String value) => setField<String>('university', value);

  List<String> get interests => getListField<String>('interests');
  set interests(List<String> value) => setListField<String>('interests', value);

  List<String> get friends => getListField<String>('friends');
  set friends(List<String>? value) => setListField<String>('friends', value);

  int get age => getField<int>('age')!;
  set age(int value) => setField<int>('age', value);

  DateTime get joined => getField<DateTime>('joined')!;
  set joined(DateTime value) => setField<DateTime>('joined', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
