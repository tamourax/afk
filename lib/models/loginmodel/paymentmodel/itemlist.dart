import 'package:equatable/equatable.dart';

class ItemsList extends Equatable {
  final int? groupId;
  final int? itemId;
  final String? itemCode;
  final String? itemName;
  final bool? mainUnit;
  final bool? defaultUnit;
  final bool? defaultUnitSales;
  final int? unitId;
  final String? unitName;
  final String? barCode;
  final String? barcodeSeparator;
  final bool? exempt;
  final bool? hidePrice;
  final int? salesValue;
  final int? minimumSaleValue;
  final int? taxRate;
  final int? tableTaxRate;
  final int? salesDiscountType;
  final int? salesDiscountValue;
  final bool? automaticDiscountS;
  final bool? useTaxOnTableFees;

  const ItemsList(
      {this.groupId,
      this.itemId,
      this.itemCode,
      this.itemName,
      this.mainUnit,
      this.defaultUnit,
      this.defaultUnitSales,
      this.unitId,
      this.unitName,
      this.barCode,
      this.barcodeSeparator,
      this.exempt,
      this.hidePrice,
      this.salesValue,
      this.minimumSaleValue,
      this.taxRate,
      this.tableTaxRate,
      this.salesDiscountType,
      this.salesDiscountValue,
      this.automaticDiscountS,
      this.useTaxOnTableFees});

  factory ItemsList.fromJson(Map<String, dynamic> json) => ItemsList(
      groupId: json['groupId'] as int?,
      itemId: json['itemId'] as int?,
      itemCode: json['itemCode'] as String?,
      itemName: json['itemName'] as String?,
      mainUnit: json['mainUnit'] as bool?,
      defaultUnit: json['defaultUnit'] as bool?,
      defaultUnitSales: json['defaultUnitSales'] as bool?,
      unitId: json['unitId'] as int?,
      unitName: json['unitName'] as String?,
      barCode: json['barCode'] as String?,
      barcodeSeparator: json['barcodeSeparator'] as String?,
      exempt: json['exempt'] as bool?,
      hidePrice: json['hidePrice'] as bool?,
      salesValue: json['salesValue'] as int?,
      minimumSaleValue: json['minimumSaleValue'] as int?,
      taxRate: json['taxRate'] as int?,
      tableTaxRate: json['tableTaxRate'] as int?,
      salesDiscountType: json['salesDiscountType'] as int?,
      salesDiscountValue: json['salesDiscountValue'] as int?,
      automaticDiscountS: json['automaticDiscountS'] as bool?,
      useTaxOnTableFees: json['useTaxOnTableFees'] as bool?);

  Map<String, dynamic> toJson() => {
        'groupId': groupId,
        'itemId': itemId,
        'itemCode': itemCode,
        'itemName': itemName,
        'mainUnit': mainUnit,
        
        'defaultUnit': defaultUnit,
        'defaultUnitSales': defaultUnitSales,
        'unitId': unitId,
      };

  @override
  List<Object?> get props {
    return [
      groupId,
      itemId,
      itemCode,
      itemName,
      mainUnit,
      
    ];
  }
}
