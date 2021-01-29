import 'package:fl_catalogue/screen/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 250.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width * 0.9,
        // color: Colors.white,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Home(),
                Container(
                  height: 368,
                  width: 2024,
                  child: WaveWidget(
                    config: CustomConfig(
                      gradients: [
                        [Color(0xffF1F2B5), Color(0xEE135058)],
                      ],
                      durations: [
                        15000,
                      ],
                      heightPercentages: [0.25],
                      blur: MaskFilter.blur(BlurStyle.solid, 0.0),
                      gradientBegin: Alignment.bottomLeft,
                      gradientEnd: Alignment.topRight,
                    ),
                    backgroundColor: Colors.transparent,
                    size: Size(double.infinity, double.infinity),
                    waveAmplitude: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
