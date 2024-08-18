import '../database.dart';

class ChatTable extends SupabaseTable<ChatRow> {
  @override
  String get tableName => 'chat';

  @override
  ChatRow createRow(Map<String, dynamic> data) => ChatRow(data);
}

class ChatRow extends SupabaseDataRow {
  ChatRow(super.data);

  @override
  SupabaseTable get table => ChatTable();

  List<String> get msg => getListField<String>('msg');
  set msg(List<String> value) => setListField<String>('msg', value);

  List<String> get msdId => getListField<String>('msdId');
  set msdId(List<String>? value) => setListField<String>('msdId', value);

  List<DateTime> get sentAt => getListField<DateTime>('sentAt');
  set sentAt(List<DateTime>? value) => setListField<DateTime>('sentAt', value);

  List<String> get sender => getListField<String>('sender');
  set sender(List<String>? value) => setListField<String>('sender', value);
}
