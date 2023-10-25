import 'package:flutter/material.dart';

class ItemsList2 {
  int? groupId;
  int? itemId;
  String? itemCode;
  String? itemName;
  bool? mainUnit;

  bool? defaultUnitSales;
  int? unitId;

  ItemsList2(
      {required this.groupId,
      required this.itemId,
      required this.itemCode,
      required this.itemName});

  factory ItemsList2.fromJson(dynamic data) {
    var jsonData = data['data'][0]['itemsList'][0];

    return ItemsList2(
        groupId: jsonData['groupId'],
        itemId: jsonData['itemId'],
        itemCode: jsonData['itemCode'],
        itemName: jsonData['itemName']);
  }

  @override
  String toString() {
    return 'groupid = $groupId  itemid = $itemId  itemcode = $itemCode';
  }
}
