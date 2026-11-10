import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cake_shop_project/data/cake_shop_data.dart';
import 'package:flutter_cake_shop_project/theme/app_colors.dart';
import 'package:flutter_cake_shop_project/views/cake_shop_detail_ui.dart';

class CakeShopListUI extends StatelessWidget {
  const CakeShopListUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'สายด่วนกินเค้ก',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 6),
          CarouselSlider.builder(
            itemCount: cakeShopBanners.length,
            itemBuilder: (context, index, realIndex) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  cakeShopBanners[index],
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
            options: CarouselOptions(
              height: 188,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              enlargeCenterPage: true,
              enlargeFactor: 0.08,
              viewportFraction: 0.88,
              pauseAutoPlayOnTouch: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 8, 18, 6),
            child: Row(
              children: [
                const Icon(Icons.cake_outlined, color: cakeRed, size: 21),
                const SizedBox(width: 8),
                const Text(
                  'ร้านเค้กแนะนำ',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  '${cakeShops.length} ร้าน',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: cakeShops.length,
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                thickness: 1,
                indent: 18,
                endIndent: 18,
                color: Color(0xFFFFD7DB),
              ),
              itemBuilder: (context, index) {
                final shop = cakeShops[index];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 7,
                  ),
                  minLeadingWidth: 68,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      shop.images.first,
                      width: 68,
                      height: 64,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    shop.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      shop.phone,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.info,
                    color: cakeRed,
                    size: 21,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => CakeShopDetailUI(shop: shop),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
