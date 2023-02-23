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
        children: [
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 60.0,
                child: Card(
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        'Battery Health: \n80%',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    )),
              ),
              SizedBox(
                height: 60.0,
                child: Card(
                    color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        'Current Charge: \n80%',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
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
