import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Ble1Page extends StatelessWidget {
  const Ble1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> reducedDegredation = [
      100,
      99,
      97,
      93,
      90,
      85,
      80,
      72,
      68,
      61,
      57,
      50,
      45,
      40,
      35,
      30,
      25,
      20
    ];

    final List<ChartData> data = List.generate(
      reducedDegredation.length,
      (index) => ChartData(index, reducedDegredation[index]),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('BLE1'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
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
                          'Charge Level: 50%',
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
              title: ChartTitle(text: 'Reduced Degredation'),
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
      // body: const Center(
      //   child: Text(
      //     'BLE1 Page',
      //     style: TextStyle(fontSize: 40.0),
      //   ),
      // ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final int y;
}
