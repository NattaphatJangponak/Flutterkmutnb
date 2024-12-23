import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController currentSOCTextController =
      TextEditingController();
  final TextEditingController targetSOCTextController = TextEditingController();
  final TextEditingController chargingRateTextController =
      TextEditingController();

  final TextEditingController chargingPowerTextController =
      TextEditingController();
  final TextEditingController voltageTextController = TextEditingController();
  final TextEditingController batteryCapacityTextController =
      TextEditingController();
  final TextEditingController efficiencyTextController =
      TextEditingController();
  String chargingTime = "Enter values to calculate charging time";

  void calculateChargingTime() {
    try {
      final double currentSOC = double.parse(currentSOCTextController.text);
      final double targetSOC = double.parse(targetSOCTextController.text);
      final double chargingRate = double.parse(chargingRateTextController.text);
      final double chargingPower =
          double.parse(chargingPowerTextController.text);
      final double voltage = double.parse(voltageTextController.text);
      final double batteryCapacity =
          double.parse(batteryCapacityTextController.text);
      final double efficiency = double.parse(efficiencyTextController.text);
      final double neededEnergy =
          (targetSOC - currentSOC) * batteryCapacity / 100;
      print(neededEnergy);
      final double actualChargingPower =
          neededEnergy / (chargingPower * efficiency);
      print(actualChargingPower);

      if (actualChargingPower == 0) {
        setState(() {
          chargingTime = "Charging power must be greater than zero";
        });
        return;
      }
      setState(() {
        chargingTime =
            "Charging time: ${actualChargingPower.toStringAsFixed(3)} hours";
      });
    } catch (e) {
      setState(() {
        chargingTime = "Please enter valid numbers";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 128, 197, 22)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('EV Charging Time Calculator'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text("Charging data"),
              Image.network(
                "https://i.ibb.co/H75h2bL/car-station.png",
                width: 210,
              ),
              TextField(
                controller: currentSOCTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Current SOC (%)',
                  hintText: 'Enter Current SOC in percentage',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: targetSOCTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Target SOC (%)',
                  hintText: 'Enter Target SOC in percentage',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: chargingRateTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Charging Rate (A)',
                  hintText: 'Enter Charging Rate in Amperes',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: voltageTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Voltage (V)',
                  hintText: 'Enter Voltage in Volts',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: chargingPowerTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Charging Power (kWh)',
                  hintText: 'Enter Charging Power in kWh',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: batteryCapacityTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Battery Capacity (kWh)',
                  hintText: 'Enter Battery Capacity in kWh',
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: efficiencyTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Efficiency (%)',
                  hintText: 'Enter Efficiency in percentage',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: calculateChargingTime,
                child: const Text('Calculate Charging Time'),
              ),
              const SizedBox(height: 20),
              Text(chargingTime, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
