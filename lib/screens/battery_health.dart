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
      body: SafeArea(
        child: Center(
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
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class BatteryHealthPage extends StatefulWidget {
//   const BatteryHealthPage({Key? key}) : super(key: key);

//   @override
//   State<BatteryHealthPage> createState() => _BatteryHealthPageState();
// }

// class _BatteryHealthPageState extends State<BatteryHealthPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Battery'),
//       ),
//       body: const Center(
//         child: Text(
//           'Battery Health Page',
//           style: TextStyle(fontSize: 40.0),
//         ),
//       ),
//     );
//   }
// }

// class _BatteryHealthData {
//   final List<int> _currentCharge = [100, 90, 80, 70, 60, 50, 40, 30, 20, 10];
//   final List<int> _numberOfCharges = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// }
