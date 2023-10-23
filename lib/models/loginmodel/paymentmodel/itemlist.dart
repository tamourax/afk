import 'package:equatable/equatable.dart';

class ItemsList extends Equatable {
  ItemsList({
    required this.groupId,
    required this.itemId,
    required this.itemCode,
    required this.itemName,
    required this.mainUnit,
    required this.defaultUnit,
    required this.defaultUnitSales,
    required this.unitId,
    required this.unitName,
    required this.barCode,
    required this.barcodeSeparator,
    required this.exempt,
    required this.hidePrice,
    required this.salesValue,
    required this.minimumSaleValue,
    required this.taxRate,
    required this.tableTaxRate,
    required this.salesDiscountType,
    required this.salesDiscountValue,
    required this.automaticDiscountS,
    required this.useTaxOnTableFees,
  });

  final int groupId;
  final int itemId;
  final String itemCode;
  final String itemName;
  final bool mainUnit;
  final bool defaultUnit;
  final bool defaultUnitSales;
  final int unitId;
  final String unitName;
  final String barCode;
  final String barcodeSeparator;
  final bool exempt;
  final bool hidePrice;
  final int salesValue;
  final int minimumSaleValue;
  final int taxRate;
  final int tableTaxRate;
  final int salesDiscountType;
  final int salesDiscountValue;
  final bool automaticDiscountS;
  final bool useTaxOnTableFees;

  ItemsList copyWith({
    int? groupId,
    int? itemId,
    String? itemCode,
    String? itemName,
    bool? mainUnit,
    bool? defaultUnit,
    bool? defaultUnitSales,
    int? unitId,
    String? unitName,
    String? barCode,
    String? barcodeSeparator,
    bool? exempt,
    bool? hidePrice,
    int? salesValue,
    int? minimumSaleValue,
    int? taxRate,
    int? tableTaxRate,
    int? salesDiscountType,
    int? salesDiscountValue,
    bool? automaticDiscountS,
    bool? useTaxOnTableFees,
  }) {
    return ItemsList(
      groupId: groupId ?? this.groupId,
      itemId: itemId ?? this.itemId,
      itemCode: itemCode ?? this.itemCode,
      itemName: itemName ?? this.itemName,
      mainUnit: mainUnit ?? this.mainUnit,
      defaultUnit: defaultUnit ?? this.defaultUnit,
      defaultUnitSales: defaultUnitSales ?? this.defaultUnitSales,
      unitId: unitId ?? this.unitId,
      unitName: unitName ?? this.unitName,
      barCode: barCode ?? this.barCode,
      barcodeSeparator: barcodeSeparator ?? this.barcodeSeparator,
      exempt: exempt ?? this.exempt,
      hidePrice: hidePrice ?? this.hidePrice,
      salesValue: salesValue ?? this.salesValue,
      minimumSaleValue: minimumSaleValue ?? this.minimumSaleValue,
      taxRate: taxRate ?? this.taxRate,
      tableTaxRate: tableTaxRate ?? this.tableTaxRate,
      salesDiscountType: salesDiscountType ?? this.salesDiscountType,
      salesDiscountValue: salesDiscountValue ?? this.salesDiscountValue,
      automaticDiscountS: automaticDiscountS ?? this.automaticDiscountS,
      useTaxOnTableFees: useTaxOnTableFees ?? this.useTaxOnTableFees,
    );
  }

  factory ItemsList.fromJson(Map<String, dynamic> json) {
    return ItemsList(
      groupId: json["groupId"] ?? 0,
      itemId: json["itemId"] ?? 0,
      itemCode: json["itemCode"] ?? "",
      itemName: json["itemName"] ?? "",
      mainUnit: json["mainUnit"] ?? false,
      defaultUnit: json["defaultUnit"] ?? false,
      defaultUnitSales: json["defaultUnitSales"] ?? false,
      unitId: json["unitId"] ?? 0,
      unitName: json["unitName"] ?? "",
      barCode: json["barCode"] ?? "",
      barcodeSeparator: json["barcodeSeparator"] ?? "",
      exempt: json["exempt"] ?? false,
      hidePrice: json["hidePrice"] ?? false,
      salesValue: json["salesValue"] ?? 0,
      minimumSaleValue: json["minimumSaleValue"] ?? 0,
      taxRate: json["taxRate"] ?? 0,
      tableTaxRate: json["tableTaxRate"] ?? 0,
      salesDiscountType: json["salesDiscountType"] ?? 0,
      salesDiscountValue: json["salesDiscountValue"] ?? 0,
      automaticDiscountS: json["automaticDiscountS"] ?? false,
      useTaxOnTableFees: json["useTaxOnTableFees"] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        "groupId": groupId,
        "itemId": itemId,
        "itemCode": itemCode,
        "itemName": itemName,
        "mainUnit": mainUnit,
        "defaultUnit": defaultUnit,
        "defaultUnitSales": defaultUnitSales,
        "unitId": unitId,
        "unitName": unitName,
        "barCode": barCode,
        "barcodeSeparator": barcodeSeparator,
        "exempt": exempt,
        "hidePrice": hidePrice,
        "salesValue": salesValue,
        "minimumSaleValue": minimumSaleValue,
        "taxRate": taxRate,
        "tableTaxRate": tableTaxRate,
        "salesDiscountType": salesDiscountType,
        "salesDiscountValue": salesDiscountValue,
        "automaticDiscountS": automaticDiscountS,
        "useTaxOnTableFees": useTaxOnTableFees,
      };

  @override
  String toString() {
    return "$groupId, $itemId, $itemCode, $itemName, $mainUnit, $defaultUnit, $defaultUnitSales, $unitId, $unitName, $barCode, $barcodeSeparator, $exempt, $hidePrice, $salesValue, $minimumSaleValue, $taxRate, $tableTaxRate, $salesDiscountType, $salesDiscountValue, $automaticDiscountS, $useTaxOnTableFees, ";
  }

  @override
  List<Object?> get props => [
        groupId,
        itemId,
        itemCode,
        itemName,
        mainUnit,
        defaultUnit,
        defaultUnitSales,
        unitId,
        unitName,
        barCode,
        barcodeSeparator,
        exempt,
        hidePrice,
        salesValue,
        minimumSaleValue,
        taxRate,
        tableTaxRate,
        salesDiscountType,
        salesDiscountValue,
        automaticDiscountS,
        useTaxOnTableFees,
      ];
}
