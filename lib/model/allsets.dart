import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AllSets {
  final String title;
  final String route;
  final IconData icon;
 
  AllSets({
    required this.title, 
    required this.route, 
    required this.icon
  });
}

final List<AllSets> sets = [
  AllSets(
    title: "Profile", 
    route: "/", 
    icon: Ionicons.person_circle_outline,
  ),
  AllSets(
    title: "Language", 
    route: "/", 
    icon: Ionicons.language_outline,
  ),
  AllSets(
    title: "Help", 
    route: "/", 
    icon: Ionicons.help_outline,
  ),
  AllSets(
    title: "Log Out", 
    route: "/", 
    icon: Ionicons.log_out_outline,
  ),

];