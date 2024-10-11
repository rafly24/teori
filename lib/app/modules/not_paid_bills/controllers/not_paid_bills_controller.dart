import 'package:get/get.dart';

class Bill {
  final String dueDate;
  final double amount;
  final String status;
  final bool isPayButtonEnabled;

  Bill({
    required this.dueDate,
    required this.amount,
    required this.status,
    required this.isPayButtonEnabled,
  });
}

class NotPaidBillsController extends GetxController {
  final bills = <Bill>[].obs;

  @override
  void onInit() {
    super.onInit();
    bills.addAll([
      Bill(dueDate: '05 October', amount: 500000, status: 'Due Now', isPayButtonEnabled: true),
      Bill(dueDate: '05 October', amount: 500000, status: 'Late Payment', isPayButtonEnabled: false),
      Bill(dueDate: '05 October', amount: 500000, status: 'Late Payment', isPayButtonEnabled: false),
      Bill(dueDate: '05 October', amount: 500000, status: 'Late Payment', isPayButtonEnabled: false),
      Bill(dueDate: '05 October', amount: 500000, status: 'Late Payment', isPayButtonEnabled: false),
    ]);
  }

  void toggleFilter(bool isPaid) {
    // Implement filter logic here
  }
}