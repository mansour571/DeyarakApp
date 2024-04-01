import 'package:flaticon_downloader/flaticon_downloader.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

abstract class PropertyModel {
  static IconData amentiesIcon({required String amentyname}) {
    if (amentyname == 'Wifi') {
      return Icons.wifi;
    } else if (amentyname == 'Pool') {
      return Icons.pool;
    } else if (amentyname == 'Gym') {
      return Icons.fitness_center_outlined;
    } else if (amentyname == 'Kitchen') {
      return Icons.kitchen;
    } else if (amentyname == 'Parking') {
      return Icons.car_repair_rounded;
    } else if (amentyname == 'TV') {
      return Icons.tv;
    } else if (amentyname == 'Washer') {
      return Icons.wash;
    } else if (amentyname == 'Iron') {
      return Icons.iron_sharp;
    } else if (amentyname == 'Heating') {
      return Icons.fireplace_sharp;
    } else if (amentyname == 'Smoke Alarm') {
      return FontAwesomeIcons.houseFire;
    } else if (amentyname == 'Air Conditioner') {
      return FontAwesomeIcons.snowflake;
    } else if (amentyname == 'Security') {
      return Icons.security;
    } else if (amentyname == 'Power Packup') {
      return Icons.power_rounded;
    } else {
      return Icons.no_photography_rounded;
    }
  }
}
