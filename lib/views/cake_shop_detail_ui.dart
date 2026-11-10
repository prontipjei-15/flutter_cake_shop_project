import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/models/cake_shop.dart';
import 'package:flutter_cake_shop_project/theme/app_colors.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class CakeShopDetailUI extends StatelessWidget {
  const CakeShopDetailUI({required this.shop, super.key});

  final CakeShop shop;

  Future<void> _openLink(BuildContext context, Uri uri) async {
    final opened = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!opened && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('ไม่สามารถเปิดลิงก์นี้ได้')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final phoneNumber = shop.phone.replaceAll(RegExp(r'\s+'), '');
    final location = LatLng(shop.latitude, shop.longitude);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          shop.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  shop.images[0],
                  width: 154,
                  height: 118,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _shopPhoto(shop.images[1]),
                const SizedBox(width: 12),
                _shopPhoto(shop.images[2]),
              ],
            ),
            const SizedBox(height: 22),
            _sectionTitle(Icons.storefront_outlined, 'ชื่อร้าน'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 2),
              child: Text(shop.name),
            ),
            const SizedBox(height: 14),
            _sectionTitle(Icons.access_time, 'เวลาเปิดปิด'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 2),
              child: Text(shop.openCloseTime),
            ),
            const SizedBox(height: 14),
            _sectionTitle(Icons.cake_outlined, 'รายละเอียดของร้าน'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 2),
              child: Text(
                shop.description,
                style: const TextStyle(height: 1.55),
              ),
            ),
            const SizedBox(height: 14),
            _sectionTitle(Icons.flag_outlined, 'ที่อยู่ของร้าน'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 2),
              child: Text(shop.address),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                onPressed: () => _openLink(
                  context,
                  Uri(scheme: 'tel', path: phoneNumber),
                ),
                icon: const Icon(Icons.call, size: 17),
                label: Text(phoneNumber),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4CAF50),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(145, 40),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            const SizedBox(height: 8),
            _linkRow(
              icon: const FaIcon(
                FontAwesomeIcons.globe,
                color: Color(0xFFFFA000),
                size: 18,
              ),
              label: shop.website,
              onTap: () => _openLink(context, Uri.parse(shop.website)),
            ),
            _linkRow(
              icon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: Color(0xFF1877F2),
                size: 20,
              ),
              label: shop.facebook,
              onTap: () => _openLink(context, Uri.parse(shop.facebook)),
            ),
            const SizedBox(height: 10),
            _sectionTitle(Icons.location_on_outlined, 'แผนที่ร้าน'),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 230,
                child: FlutterMap(
                  options: MapOptions(
                    initialCenter: location,
                    initialZoom: 14,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName:
                          'com.example.flutter_cake_shop_project',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: location,
                          width: 44,
                          height: 52,
                          child: const Icon(
                            Icons.location_pin,
                            color: cakeRed,
                            size: 42,
                          ),
                        ),
                      ],
                    ),
                    RichAttributionWidget(
                      attributions: [
                        TextSourceAttribution(
                          '© OpenStreetMap contributors',
                          onTap: () => _openLink(
                            context,
                            Uri.parse('https://www.openstreetmap.org/copyright'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => _openLink(
                  context,
                  Uri.parse(
                    'https://www.openstreetmap.org/?mlat=${shop.latitude}&mlon=${shop.longitude}#map=16/${shop.latitude}/${shop.longitude}',
                  ),
                ),
                icon: const Icon(Icons.open_in_new, size: 17),
                label: const Text('เปิดแผนที่'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _shopPhoto(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imagePath,
        width: 126,
        height: 82,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _sectionTitle(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, color: cakeRed, size: 19),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _linkRow({
    required Widget icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Row(
          children: [
            SizedBox(width: 24, child: icon),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 13),
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.link, size: 18, color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
