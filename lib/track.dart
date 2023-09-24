import 'package:flutter/material.dart';
class SymptomEditView extends StatelessWidget {
  final String symptom;
  final Map<String, dynamic> symptomData;
  final Function() onClose;
  SymptomEditView({
    required this.symptom,
    required this.symptomData,
    required this.onClose,
  });
  @override
  Widget build(BuildContext context) {
    // Implement your edit view UI here
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Symptom: $symptom'),
      ),
      body: Column(
        children: [
          // Add your input fields, buttons, and UI components for editing symptoms here
          // Example:
          TextFormField(
            initialValue: symptomData['value'] ?? '',
            decoration: InputDecoration(labelText: 'Enter Symptom Data'),
            onChanged: (newValue) {
              // Update symptomData when the text field changes
              symptomData['value'] = newValue;
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Save the edited data and close the edit view
              onClose();
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}

class SymptomBox extends StatefulWidget {
  final String date;
  final bool isSymptomEdited;
  final String symptom;
  final Map<String, dynamic> symptomData;
  final String symptomDataToDisplay;
  final Function(String) updateCycleDayData;
  SymptomBox({
    required this.date,
    this.isSymptomEdited = false,
    required this.symptom,
    required this.symptomData,
    required this.symptomDataToDisplay,
    required this.updateCycleDayData,
  });
  @override
  _SymptomBoxState createState() => _SymptomBoxState();
}
class _SymptomBoxState extends State<SymptomBox> {
  bool isSymptomEdited = false;
  @override
  void initState() {
    super.initState();
    isSymptomEdited = widget.isSymptomEdited;
  }
  void onFinishEditing() {
    final date = widget.date;
    widget.updateCycleDayData(date);
    setState(() {
      isSymptomEdited = false;
    });
  }
  void onEditSymptom() {
    setState(() {
      isSymptomEdited = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    final date = widget.date;
    final symptom = widget.symptom;
    final symptomData = widget.symptomData;
    final symptomDataToDisplay = widget.symptomDataToDisplay;
    final isSymptomDisabled = false; // Replace with your logic for disabling
    // Your DripIcon widget (not provided) goes here
    final dripIcon = Icon(Icons.ac_unit); // Replace with your actual DripIcon
    // Your AppText widgets (not provided) go here
    final symptomNameText = Text(
      symptom,
      style: TextStyle(fontSize: 18),
    );
    // Your AppText widgets (not provided) go here
    final symptomDataText = Text(
      symptomDataToDisplay,
      style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
    );
    return Column(
      children: [
        if (isSymptomEdited)
          SymptomEditView(
            symptom: symptom,
            symptomData: symptomData,
            onClose: onFinishEditing,
          ),
        GestureDetector(
          onTap: onEditSymptom,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
              color: Colors.white,
            ),
            height: 110,
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                dripIcon,
                SizedBox(width: 16), // Add some spacing between icon and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    symptomNameText,
                    if (symptomDataToDisplay.isNotEmpty) symptomDataText,
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: SymptomBox(
          date: '2023-09-25',
          symptom: 'Example Symptom',
          symptomData: {},
          symptomDataToDisplay: 'This is some symptom data to display.',
          updateCycleDayData: (date) {
            // Add your logic for updating cycle day data here
          },
        ),
      ),
    ),
  ));
}
