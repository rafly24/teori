// lib/app/routes/app_pages.dart

import 'package:get/get.dart';
import '../modules/chats/view/chat_view.dart';
import '../modules/not_paid_bills/view/not_paid_bills_view.dart';
import '../modules/paid_bills/view/paid_bills_view.dart';
import '../modules/personal_info/view/personal_info_view.dart';
import '../modules/profile/view/profile_view.dart';
import '../modules/riwayat_kost/view/riwayat_kost_view.dart';
import '../modules/riwayat_kost_none/view/riwayat_kost_none_view.dart';
import 'app_routes.dart';

// Import semua views


// Import semua bindings
import '../modules/not_paid_bills/bindings/not_paid_bills_binding.dart';
import '../modules/paid_bills/bindings/paid_bills_binding.dart';
import '../modules/chats/bindings/chat_binding.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/personal_info/bindings/personal_info_binding.dart';
import '../modules/riwayat_kost_none/bindings/riwayat_kost_none_binding.dart';
import '../modules/riwayat_kost/bindings/riwayat_kost_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.NOT_PAID_BILLS,
      page: () => NotPaidBillsView(),
      binding: NotPaidBillsBinding(),
    ),
    GetPage(
      name: AppRoutes.PAID_BILLS,
      page: () => PaidBillsView(),
      binding: PaidBillsBinding(),
    ),
    GetPage(
      name: AppRoutes.CHATS,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: AppRoutes.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.PERSONAL_INFO,
      page: () => PersonalInfoView(),
      binding: PersonalInfoBinding(),
    ),
    GetPage(
      name: AppRoutes.RIWAYAT_KOST_NONE,
      page: () => RiwayatKostNoneView(),
      binding: RiwayatKostNoneBinding(),
    ),
    GetPage(
      name: AppRoutes.RIWAYAT_KOST,
      page: () => RiwayatKostView(),
      binding: RiwayatKostBinding(),
    ),
  ];
}