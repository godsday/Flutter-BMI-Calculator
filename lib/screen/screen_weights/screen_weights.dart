import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmi_calculator/screen/screen_calculate/calculate_controller.dart';
import 'package:gmi_calculator/widgets/headingtext.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class WeightsScreen extends StatefulWidget {
  const WeightsScreen({Key? key}) : super(key: key);

  @override
  State<WeightsScreen> createState() => _WeightsScreenState();
}

class _WeightsScreenState extends State<WeightsScreen> {
  final calculateController = Get.put(CalculateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const HeadingText(heading: "Weight"),
          GetBuilder<CalculateController>(builder: (context) {
            return SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  axisLabelStyle: const GaugeTextStyle(color: Colors.black),
                  maximumLabels: 4,
                  majorTickStyle:
                      const MajorTickStyle(thickness: 2, color: Colors.black),
                  canRotateLabels: true,
                  showLastLabel: true,
                  minorTicksPerInterval: 2,
                  axisLineStyle: const AxisLineStyle(
                      thickness: 2.5,
                      thicknessUnit: GaugeSizeUnit.logicalPixel),
                  showLabels: true,
                  showAxisLine: true,
                  showTicks: true,
                  offsetUnit: GaugeSizeUnit.logicalPixel,
                  maximum: 150,
                  radiusFactor: 0.9,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 20,
                      endValue: 40,
                      startWidth: 10,
                      endWidth: 0,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.black12,
                    ),
                    GaugeRange(
                      startValue: 40,
                      endValue: 60,
                      startWidth: 0,
                      endWidth: 10,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.cyan.shade300.withOpacity(0.4),
                    ),
                    GaugeRange(
                      startValue: 60,
                      endValue: 80,
                      color: Colors.blueGrey.shade400.withOpacity(0.5),
                      labelStyle: const GaugeTextStyle(),
                      startWidth: 10,
                      endWidth: 0,
                      sizeUnit: GaugeSizeUnit.factor,
                    ),
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                        value: calculateController.weightValue,
                        onValueChanged: (newValue) {
                          calculateController.valueWeightChanged(newValue);
                        },
                        needleLength: 0.7,
                        enableAnimation: true,
                        enableDragging: true,
                        knobStyle: const KnobStyle(
                          knobRadius: 12,
                          sizeUnit: GaugeSizeUnit.logicalPixel,
                        ))
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Text(
                        "${calculateController.weightValue.ceilToDouble()} kg",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      positionFactor: 1.2,
                      angle: 78,
                    )
                  ],
                )
              ],
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(50, 50),
                      elevation: 5,
                      primary: Colors.lime,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black54,
                  )),
              ElevatedButton(
                  onPressed: () {
                    print(calculateController.weightValue);
                    calculateController.navigateToHeight();
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      elevation: 5,
                      primary: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text("Next",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
          )
        ],
      )),
    );
  }
}
