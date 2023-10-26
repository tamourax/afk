import 'package:equatable/equatable.dart';

class newitem extends Equatable {
  newitem({
    required this.itemId,
  });

  final int? itemId;

  factory newitem.fromJson(Map<String, dynamic> json) {



    
    var jsonData = json['data'][0]['itemsList'][0];
    return newitem(
      itemId: jsonData["itemId"],
    );
  }

  @override
  String toString() {
    return " $itemId ";
  }

  @override
  List<Object?> get props => [itemId];
}



