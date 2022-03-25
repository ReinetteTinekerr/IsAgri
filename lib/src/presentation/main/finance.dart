import 'package:editable/editable.dart';
import 'package:flutter/material.dart';

class AuditPage extends StatefulWidget {
  const AuditPage({Key? key}) : super(key: key);

  @override
  State<AuditPage> createState() => _AuditPageState();
}

class _AuditPageState extends State<AuditPage> {
  final _editableKey = GlobalKey<EditableState>();

  List rows = [
    {
      "name": 'Soil or water conservation',
      "expenses": '1000php',
      "income": '0php',
      "date": '23/09/2022',
    },
    {
      "name": ' restoration of soil fertility',
      "expenses": '1200php',
      "income": '0php',
      "date": '23/02/2022',
    },
    {
      "expenses": '100php',
      "income": '100php',
      "date": '23/1/2022',
      "name": 'The planting of windbreaks',
    },
    {
      "name": 'Fertilizer and Lime',
      "income": '100php',
      "expenses": '700php',
      "date": '23/03/2022',
    },
    {
      "name": 'Hogs breeding',
      "income": '20,000php',
      "expenses": '10,00php',
      "date": '23/09/2022',
    },
    {
      "name": 'Rent or Lease Payments',
      "income": '100php',
      "expenses": '100php',
      "date": '14/09/2021',
    },
    {
      "name": 'Supplies / Repairs and Maintenance',
      "income": '0php',
      "expenses": '800php',
      "date": '07/06/2021',
    },
    {
      "name":
          'Protection of diversion channels, drainage ditches, irrigation ditches, earthen dams, and watercourses, outlets, and ponds',
      "income": '100php',
      "expenses": '500php',
      "date": '18/03/2021',
    },
    {
      "name": 'Seeds and Plants',
      "income": '10,000',
      "expenses": '1,500php',
      "date": '01/01/2022',
    },
    {
      "name": 'Taxes',
      "income": '0php',
      "expenses": '2000php',
      "date": '01/010/2020',
    },
  ];
  List cols = [
    {"title": 'Name', 'widthFactor': 0.2, 'key': 'name', 'editable': true},
    {"title": 'Date', 'widthFactor': 0.2, 'key': 'date'},
    {
      "title": 'Expenses',
      'widthFactor': 0.2,
      'key': 'expenses',
      'editable': true
    },
    {"title": 'Income', 'key': 'income'},
  ];

  /// Function to add a new row
  /// Using the global key assigined to Editable widget
  /// Access the current state of Editable
  void _addNewRow() {
    setState(() {
      _editableKey.currentState?.createRow();
    });
  }

  ///Print only edited rows.
  void _printEditedRows() {
    List editedRows = _editableKey.currentState!.editedRows;
    print(editedRows);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Editable(
          // columnRatio: 0.3,
          key: _editableKey,
          columns: cols,
          rows: rows,
          // zebraStripe: true,
          // stripeColor1: ColorManager.white,
          // stripeColor2: ColorManager.grey,
          onRowSaved: (value) {
            print(value);
          },
          onSubmitted: (value) {
            print(value);
          },
          borderColor: Colors.blueGrey,
          tdStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          trHeight: 60,
          thStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          thAlignment: TextAlign.center,
          thVertAlignment: CrossAxisAlignment.end,
          thPaddingBottom: 3,
          // showSaveIcon: true,
          saveIconColor: Colors.black,
          showCreateButton: true,
          tdAlignment: TextAlign.left,
          tdEditableMaxLines: 200, // don't limit and allow data to wrap
          tdPaddingTop: 14,
          tdPaddingBottom: 14,
          tdPaddingLeft: 10,
          tdPaddingRight: 8,
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.blue),
          //     borderRadius: BorderRadius.all(Radius.circular(0))),
        ),
      ),
    );
  }
}
