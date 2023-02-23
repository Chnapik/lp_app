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
    final List<int> chargeLevels = [80, 60, 50, 30, 90, 75, 40, 65, 85];

    final List<ChartData> data = List.generate(
      chargeLevels.length,
      (index) => ChartData(index, chargeLevels[index]),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Battery Health'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: const [
              Card(color: Colors.red, child: Text('Battery Health: 80%')),
              Card(color: Colors.blue, child: Text('Current Charge: 80%')),
            ],
          ),
          // const SizedBox(height: 40.0),
          // const Padding(
          //   padding: EdgeInsets.all(10.0),
          //   child: Text(
          //     'Battery Health: 80%',
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 30.0,
          //     ),
          //   ),
          // ),
          Expanded(
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
