// ignore_for_file: public_member_api_docs, sort_constructors_first
//import 'package:fl_chart/fl_chart.dart' as charts;
import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

import 'package:amazon_clone_flutter/features/admin/models/sales.dart';

class CategoryProductsChart extends StatelessWidget {
  final List<charts.Series<Sales, String>> seriesList;
  const CategoryProductsChart({
    Key? key,
    required this.seriesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: true,
    );
  }
}
