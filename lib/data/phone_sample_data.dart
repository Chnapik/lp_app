void main() {
  final ble1 = PhoneData();
  print(ble1.charges);
  print(ble1.batteryLevel);
}

class PhoneData {
  final List<int> numberOfCharges = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final List<int> chargeLevel = [100, 90, 80, 70, 60, 50, 40, 30, 20, 10];
  int charges = 0;
  int batteryLevel = 0;

  int currentNumberOfCharges() {
    for (int i = 0; i < numberOfCharges.length; i++) {
      final charges = numberOfCharges[i];
    }
    return charges;
  }

  int currentBatteryLevel() {
    for (int i = 0; i < chargeLevel.length; i++) {
      final batteryLevel = chargeLevel[i];
    }
    return batteryLevel;
  }
}
