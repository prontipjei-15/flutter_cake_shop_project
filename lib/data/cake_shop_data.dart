import 'package:flutter_cake_shop_project/models/cake_shop.dart';

const List<String> cakeShopBanners = [
  'assets/images/ck01.png',
  'assets/images/ck02.png',
  'assets/images/ck03.png',
  'assets/images/ck04.png',
  'assets/images/ck05.png',
  'assets/images/ck06.png',
  'assets/images/ck07.png',
];

const List<CakeShop> cakeShops = [
  CakeShop(
    name: 'Yellow Spoon Pastry',
    address: 'โครงการเอกมัย คอมเพล็กซ์ (ระหว่างเอกมัย 19 และ 21)',
    phone: '0854822842',
    images: [
      'assets/images/s11.jpg',
      'assets/images/s12.jpg',
      'assets/images/s13.jpg',
    ],
    description:
        'คาเฟ่ขนมหวานที่มีเบเกอรี่โฮมเมดสูตรน้ำตาลน้อย สำหรับคนที่ไม่ชอบรสหวานจนเกินไป มีชีสเค้ก ทาร์ต บานอฟฟี่ ช็อตเค้ก ครัมเบิ้ล และเค้กวันเกิดให้เลือกทั้งแบบชิ้นและแบบปอนด์',
    openCloseTime: 'ทุกวัน 10.00-20.00 น.',
    website: 'https://www.yellowspoonpastry.com/',
    facebook: 'https://www.facebook.com/yspastry',
    latitude: 13.736634,
    longitude: 100.587512,
  ),
  CakeShop(
    name: 'Vista Cafe by Verasu',
    address: 'อาคารวีรสุ ถนนวิทยุ',
    phone: '022548100',
    images: [
      'assets/images/s21.jpg',
      'assets/images/s22.jpg',
      'assets/images/s23.jpg',
    ],
    description:
        'ร้านเบเกอรี่สำหรับคนรักสุขภาพ คัดสรรวัตถุดิบสดสะอาด ใช้แป้งสเปลท์ออร์แกนิกกลูเตนต่ำ และทำขนมโดยใส่ใจเรื่องรสชาติและสุขภาพ',
    openCloseTime: 'ทุกวัน 09.00-19.00 น.',
    website: 'http://www.vistacafe.co.th/',
    facebook: 'https://www.facebook.com/vistacafe',
    latitude: 13.7403,
    longitude: 100.547417,
  ),
  CakeShop(
    name: 'Sweet Spell',
    address: 'สี่แยกเหม่งจ๋าย ประชาอุทิศ 19',
    phone: '0846666828',
    images: [
      'assets/images/s31.jpg',
      'assets/images/s32.jpg',
      'assets/images/s33.jpg',
    ],
    description:
        'ร้านเค้กเล็ก ๆ ที่เปิดบริการครั้งแรกเมื่อปี 2009 มีเค้ก เครปเค้ก ชูครีม บานอฟฟี่ ชีสพาย และเบเกอรี่หลายชนิดให้เลือกเติมความหวาน',
    openCloseTime: 'ทุกวัน 10.00-20.00 น. (หยุดทุกวันที่ 15 ของเดือน)',
    website: 'http://www.sweetspell.com/dessert-menu/',
    facebook: 'https://www.facebook.com/sweetspellcafe',
    latitude: 13.771741,
    longitude: 100.586662,
  ),
  CakeShop(
    name: 'Larna House',
    address: 'พัฒนาการ 61',
    phone: '023215995',
    images: [
      'assets/images/s41.jpg',
      'assets/images/s42.jpg',
      'assets/images/s43.jpg',
    ],
    description:
        'ขึ้นชื่อเรื่องเค้กช็อกโกแลตสูตรต้นตำรับจากสิงคโปร์ ใช้โกโก้คุณภาพและใส่ใจทุกขั้นตอน ทำให้เค้กหอม นุ่ม และชุ่มฉ่ำด้วยช็อกโกแลต',
    openCloseTime: 'ทุกวัน 09.00-21.00 น.',
    website: 'https://larnahouse.com/',
    facebook: 'https://www.facebook.com/larnahouse',
    latitude: 13.730245,
    longitude: 100.658385,
  ),
  CakeShop(
    name: 'I bake & You take',
    address: 'วิภาวดีรังสิต 60',
    phone: '0934499447',
    images: [
      'assets/images/s51.jpg',
      'assets/images/s52.jpg',
      'assets/images/s53.jpg',
    ],
    description:
        'ร้านเค้กโฮมเมดสูตรดั้งเดิมสไตล์ฝรั่งเศส ใช้วัตถุดิบสดใหม่ รับทำเค้กวันเกิด คัพเค้ก คุกกี้ และบราวนี่แบบ Made to order พร้อมบริการจัดส่งในกรุงเทพฯ',
    openCloseTime: 'ทุกวัน 07.30-19.30 น.',
    website: 'https://ibakeyoutake.com/',
    facebook: 'https://www.facebook.com/Ibakeyoutakebysine',
    latitude: 13.864575,
    longitude: 100.5823,
  ),
  CakeShop(
    name: 'Coffee bean by dao',
    address: 'ชั้น G สยามพารากอน',
    phone: '026109702',
    images: [
      'assets/images/s61.jpg',
      'assets/images/s62.jpg',
      'assets/images/s63.jpg',
    ],
    description:
        'ร้านเค้กที่มีเมนูให้เลือกหลากหลาย รสชาติกลมกล่อมไม่หวานจนเกินไป มีทั้งเรนโบว์เค้ก ช็อกโกแลตมูสเค้ก และเค้กนมสด',
    openCloseTime: 'ทุกวัน 10.00-22.00 น.',
    website: 'http://www.coffeebeans.co.th/',
    facebook: 'https://www.facebook.com/CoffeeBeansbyDao',
    latitude: 13.7469267,
    longitude: 100.5349883,
  ),
  CakeShop(
    name: 'Bake Ministry',
    address: 'สุขุมวิท 26',
    phone: '0891540474',
    images: [
      'assets/images/s71.jpg',
      'assets/images/s72.jpg',
      'assets/images/s73.jpg',
    ],
    description:
        'ร้านเค้กโฮมเมดที่มีเค้กคัพ เค้กวันเกิด เค้กแต่งงาน และเบเกอรี่อื่น ๆ เช่น คุกกี้และมาการอง',
    openCloseTime: '10.00-18.00 น. (หยุดวันอาทิตย์)',
    website: 'http://www.bakeministry.net/',
    facebook: 'https://www.facebook.com/bakeministry',
    latitude: 13.7281129,
    longitude: 100.5705757,
  ),
];
