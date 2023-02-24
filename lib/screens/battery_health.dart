import 'package:flutter/material.dart';
import 'package:lp_app/screens/add_device.dart';
import 'package:lp_app/screens/ble1.dart';
import 'package:lp_app/screens/ble2.dart';
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
      body: ListView(
        children: [
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blueGrey,
              ),
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: const [
                        Icon(Icons.charging_station_rounded,
                            size: 30.0, color: Colors.white),
                        SizedBox(width: 20.0),
                        Text(
                          'Charge Level: 80%',
                          style: TextStyle(fontSize: 28.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blueGrey,
              ),
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: const [
                        Icon(Icons.battery_charging_full,
                            size: 30.0, color: Colors.white),
                        SizedBox(width: 20.0),
                        Text(
                          'Battery Health: 90%',
                          style: TextStyle(fontSize: 28.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
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
