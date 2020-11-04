import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../surveys.dart';

class SurveyItem extends StatelessWidget {
  final SurveyViewModel viewModel;

  const SurveyItem(this.viewModel, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<SurveysPresenter>(context, listen: false);
    return GestureDetector(
      onTap: () => presenter.goToSurveyResult(viewModel.id),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: viewModel.didAnswer
                  ? Theme.of(context).secondaryHeaderColor
                  : Theme.of(context).primaryColorDark,
              boxShadow: const [BoxShadow(offset: Offset(0, 1), blurRadius: 2)],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel.date,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                viewModel.question,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
