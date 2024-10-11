import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/riwayat_kost_controller.dart';
import '../widgets/kost_card_widget.dart';

class RiwayatKostView extends GetView<RiwayatKostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 32, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        leadingWidth: 48,
        title: Text(
          'Submission History',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Align(
            alignment: Alignment.centerLeft,
            child: buildTabBar(),
          ),
        ),
      ),
      body: Obx(() => buildTabContent()),
    );
  }

  Widget buildTabBar() {
    return Container(
      height: 48,
      padding: EdgeInsets.only(left: 16),
      child: Row(
        children: [
          buildTabItem('History', 0),
          SizedBox(width: 24),
          buildTabItem('Draft', 1),
          SizedBox(width: 24),
          buildTabItem('Just Viewed', 2),
        ],
      ),
    );
  }

  Widget buildTabItem(String title, int index) {
    return Obx(() {
      bool isSelected = controller.selectedTab.value == index;
      return GestureDetector(
        onTap: () => controller.changeTab(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.green : Colors.grey,
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
              ),
            ),
            if (isSelected)
              Container(
                height: 3,
                width: 40,
                color: Colors.green,
                margin: EdgeInsets.only(top: 8),
              ),
          ],
        ),
      );
    });
  }

  Widget buildTabContent() {
    switch (controller.selectedTab.value) {
      case 0:
        return ListView(
          padding: EdgeInsets.all(16),
          children: [
            KostCardWidget(
              title: 'Kos Putra BCT',
              imageUrl: 'assets/kamar1.jpg',
              isConfirmed: true,
              dateOfEntry: '22 Sep 2023',
              duration: '1 Month',
              status: 'Payment Confirmed',
              statusColor: Colors.green,
              onChatPressed: () {},
            ),
            SizedBox(height: 16),
            KostCardWidget(
              title: 'Kos Putra BCT',
              imageUrl: 'assets/kamar2.jpg',
              isConfirmed: true,
              dateOfEntry: '15 Dec 2023',
              duration: '1 Month',
              status: 'Need Payment',
              statusColor: Colors.orange,
              onPayPressed: () {},
              paymentExpiry: 'Saturday 10 DEC 2023, 9:00',
            ),
          ],
        );
      default:
        return Center(child: Text('No content for this tab yet'));
    }
  }
}