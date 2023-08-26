import 'package:flutter/material.dart';

class TableModel {
  late String? heading;
  late String? rowlabel;
  late Function? actions;
  TableModel({
    this.heading,
    this.rowlabel,
    this.actions,
  });
}
