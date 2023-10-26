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

  factory ItemsList2.fromJson(Map<String,dynamic> jsonData) {
    // var jsonData = data['data'][0]['itemsList'][0];
    
    // for (var item in data['data'][0]['itemsList']) {
    //   // Do Something  
    // }
    
    return ItemsList2(
        groupId: int.tryParse(jsonData['groupId'].toString())??0,
        itemId: int.tryParse(jsonData['itemId'].toString())??0,
        itemCode: jsonData['itemCode'].toString(),
        itemName: jsonData['itemName'].toString()
    );
  }
  

  @override
  String toString() {
    return 'groupid = $groupId  itemid = $itemId  itemcode = $itemCode';
  }
  // @override
  // String toString() {
  //   return "$itemName";
  // }
}
