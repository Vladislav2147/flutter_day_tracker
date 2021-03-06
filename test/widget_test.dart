// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_day_tracker/data/model/Business.dart';
import 'package:flutter_day_tracker/data/model/BusinessType.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_day_tracker/ui/screens/home.dart';

void main() {
  Business business = Business(
    start: DateTime.now(),
    end: null,
    type: BusinessType.LUNCH
  );

  var json = business.toJson();
  print(json);
  var business1 = Business.fromJson(json);
  print(business1);
}
