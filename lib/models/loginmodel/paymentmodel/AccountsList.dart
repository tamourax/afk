class AccountsList {
  AccountsList({
    required this.accountId,
    required this.accountName,
  });
  late final String accountId;
  late final String accountName;
  
  AccountsList.fromJson(Map<String, dynamic> json){
    accountId = json['accountId'];
    accountName = json['accountName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['accountId'] = accountId;
    _data['accountName'] = accountName;
    return _data;
  }
}