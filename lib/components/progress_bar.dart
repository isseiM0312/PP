import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'dart:math';

Widget progressBar(int currentStep) {
  return CircularStepProgressIndicator(
        totalSteps: 8,
        currentStep: currentStep,
        stepSize: 24,
        selectedColor: Colors.pink,
        padding: pi / 5,
        width: 100,
        height: 100,
        startingAngle: - pi / 36,
        arcSize: pi * 2,
        gradientColor: SweepGradient(
          startAngle: - pi / 36,
            colors: [Colors.pink, Colors.pink.shade300, Colors.white],
        ),
    );
}