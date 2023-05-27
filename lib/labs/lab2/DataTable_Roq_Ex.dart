import 'package:flutter/material.dart';
class DataTable_Roq_Ex extends StatefulWidget {
  static const rout_name = "/DataTable_Roq_Ex";

  @override
  _DataTableExample createState() => _DataTableExample();
}
class _DataTableExample extends State<DataTable_Roq_Ex> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text( 'DataTable Roq Example '),
  ),
  body: ListView(children: <Widget>[
  Center(
  child: Text(
  'People-Chart',
  style: TextStyle(fontSize: 25, fontWeight:
  FontWeight.bold),
  )
  ) ,
  DataTable(
  columns: [
  DataColumn(label: Text('ID ',
  style: TextStyle(fontSize: 18, fontWeight:
  FontWeight.bold)
  )
  ),
  DataColumn(label: Text(
  'Name',
  style: TextStyle(fontSize: 18, fontWeight:
  FontWeight.bold)
  ) ) ,
  DataColumn(label: Text(
  '1 Profession',
  style: TextStyle(fontSize: 18, fontWeight:
  FontWeight.bold)
  ) ) ,
  ] ,
  rows: [
  DataRow(cells: [
  DataCell(Text( '1')),
  DataCell(Text('Ruqaih Salman')),
  DataCell(Text('Doctor')),
  ]),
  DataRow(cells: [
  DataCell(Text('51')),
  DataCell(Text('Jory Salman')),
  DataCell(Text('Student')),
  ] ) ,
  DataRow(cells: [
  DataCell(Text('10')),
  DataCell(Text(' 1 Joan Salman')),
  DataCell(Text('Child')),
  ] ),
  DataRow(cells: [
  DataCell(Text('15')),
  DataCell(Text('Elias Salman')),
  DataCell(Text('Scientist')),
  ] ) ,
  ] ,
  ) ,
  ] )
  ) ;

  }
}