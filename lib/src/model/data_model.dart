class Data {
  String? accountId;
  String? customerId;
  String? organizationId;
  String? organizationName;
  String? transactionId;
  String? completedAuthorisedPaymentType;
  String? creditDebitType;
  String? transactionName;
  String? type;
  double? amount;
  String? transactionCurrency;
  String? transactionDate;
  String? partieCnpjCpf;
  String? partiePersonType;
  String? partieCompeCode;
  String? partieBranchCode;
  String? partieNumber;
  String? partieCheckDigit;

  Data({
    accountId,
    customerId,
    organizationId,
    organizationName,
    transactionId,
    completedAuthorisedPaymentType,
    creditDebitType,
    transactionName,
    type,
    amount,
    transactionCurrency,
    transactionDate,
    partieCnpjCpf,
    partiePersonType,
    partieCompeCode,
    partieBranchCode,
    partieNumber,
    partieCheckDigit,
  });

  Data.fromJson(Map<String, dynamic> json) {
    accountId = json['accountId'];
    customerId = json['customerId'];
    organizationId = json['organizationId'];
    organizationName = json['organizationName'];
    transactionId = json['transactionId'];
    completedAuthorisedPaymentType = json['completedAuthorisedPaymentType'];
    creditDebitType = json['creditDebitType'];
    transactionName = json['transactionName'];
    type = json['type'];
    amount = json['amount'];
    transactionCurrency = json['transactionCurrency'];
    transactionDate = json['transactionDate'];
    partieCnpjCpf = json['partieCnpjCpf'];
    partiePersonType = json['partiePersonType'];
    partieCompeCode = json['partieCompeCode'];
    partieBranchCode = json['partieBranchCode'];
    partieNumber = json['partieNumber'];
    partieCheckDigit = json['partieCheckDigit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountId'] = accountId;
    data['customerId'] = customerId;
    data['organizationId'] = organizationId;
    data['organizationName'] = organizationName;
    data['transactionId'] = transactionId;
    data['completedAuthorisedPaymentType'] = completedAuthorisedPaymentType;
    data['creditDebitType'] = creditDebitType;
    data['transactionName'] = transactionName;
    data['type'] = type;
    data['amount'] = amount;
    data['transactionCurrency'] = transactionCurrency;
    data['transactionDate'] = transactionDate;
    data['partieCnpjCpf'] = partieCnpjCpf;
    data['partiePersonType'] = partiePersonType;
    data['partieCompeCode'] = partieCompeCode;
    data['partieBranchCode'] = partieBranchCode;
    data['partieNumber'] = partieNumber;
    data['partieCheckDigit'] = partieCheckDigit;
    return data;
  }
}
