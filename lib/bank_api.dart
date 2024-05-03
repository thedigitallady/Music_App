import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<Bank>> getBanks() async {
  final response =
      await http.get(Uri.parse('https://api.paystack.co/bank?country=nigeria'));
  final jsonData = jsonDecode(response.body);
  return jsonData.map((jsonBank) => Bank.fromJson(jsonBank)).toList();
}

Future<bool> verifyAccountNumber(String accountNumber, String bankCode) async {
  final response = await http.post(
    Uri.parse('https://verifyaccountnumber-7l2bkb353q-uc.a.run.app'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'account_number': accountNumber, 'bank_code': bankCode}),
  );
  return jsonDecode(response.body)['status'];
}

class Bank {
  final String code;
  final String name;

  Bank({required this.code, required this.name});

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(code: json['code'], name: json['name']);
  }
}
