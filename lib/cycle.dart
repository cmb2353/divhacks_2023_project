import 'package:flutter/material.dart';
import 'package:js_joda/js_joda.dart';


class CycleDayOverview extends StatefulWidget {
  @override
  _CycleDayOverviewState createState() => _CycleDayOverviewState();
}

class _CycleDayOverviewState extends State<CycleDayOverview> {
  CycleDay? cycleDay;
  LocalDate? currentDate;

  @override
  void initState() {
    super.initState();
    currentDate = LocalDate.now();
  }

  void updateCycleDay(LocalDate date) {
    StoreProvider.of<AppState>(context).dispatch(SetDateAction(date));
    setState(() {
      cycleDay = getCycleDay(date);
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppState state = StoreProvider.of<AppState>(context).state;
    final String date = state.date;

    final CycleModule cycleModule = CycleModule();
    final int? cycleDayNumber = cycleModule.getCycleDayNumber(date);
    final String subtitle =
        cycleDayNumber != null ? '${labels['cycleDayNumber']}$cycleDayNumber' : '';

    return AppPage(
      child: Column(
        children: <Widget>[
          SymptomPageTitle(
            reloadSymptomData: updateCycleDay,
            subtitle: subtitle,
            title: dateToTitle(date),
          ),
          Container(
            padding: EdgeInsets.all(Spacing.base),
            child: Wrap(
              spacing: Spacing.base,
              runSpacing: Spacing.base,
              children: SYMPTOMS.map((String symptom) {
                final SymptomData? symptomData =
                    cycleDay != null ? cycleDay![symptom] : null;

                final bool isSymptomEdited =
                    state.isTemperatureEditView && symptom == 'temperature';

                return SymptomBox(
                  key: Key(symptom),
                  symptom: symptom,
                  symptomData: symptomData,
                  symptomDataToDisplay: getData(symptom, symptomData),
                  updateCycleDayData: updateCycleDay,
                  isSymptomEdited: isSymptomEdited,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
