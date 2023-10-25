class item3 {
  final String? id;
  final DateTime? createdAt;
  final String? name;
  final String? avatar;

  item3({this.id, this.createdAt, this.name, this.avatar});

  factory item3.fromJson(Map<String, dynamic> json) {
    return item3(
      id: json["id"],
      createdAt:
          json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      name: json["name"],
      avatar: json["avatar"],
    );
  }

  static List<item3> fromJsonList(List list) {
  
    return list.map((item) => item3.fromJson(item)).toList();
  }

  ///this method will prevent the override of toString
  String userAsString() {
    return '#${this.id} ${this.name}';
  }

  ///this method will prevent the override of toString
  bool userFilterByCreationDate(String filter) {
    return this.createdAt.toString().contains(filter);
  }

  ///custom comparing function to check if two users are equal
  bool isEqual(item3 model) {
    return this.id == model.id;
  }

  @override
  String toString() => name.toString();
}
