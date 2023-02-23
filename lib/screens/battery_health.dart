import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final int y;
}

class ChargeLevelChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _currentIndex = 0;
    final List<int> chargeLevels = [80, 60, 50, 30, 90, 75, 40, 65, 85];

    final List<ChartData> data = List.generate(
      chargeLevels.length,
      (index) => ChartData(index, chargeLevels[index]),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery Health'),
      ),
      body: Stack(
        children: [
          Positioned(
            child: SfCartesianChart(
              title: ChartTitle(text: 'Charge Level History'),
              primaryXAxis: NumericAxis(),
              primaryYAxis: NumericAxis(),
              series: <LineSeries<ChartData, int>>[
                LineSeries<ChartData, int>(
                  dataSource: data,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
