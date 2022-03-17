import 'package:flutter/material.dart';
import 'package:travel/models/User.dart';

class TravelSpot {
  final String name, image;
  final DateTime date;
  final List<User> users;

  TravelSpot({
    @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "Great Indian Museum",
    image: "assets/images/mus1.jpg",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Great Britain Museum",
    image: "assets/images/mus2.jpg",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Chhatrapati Shivaji Museum .",
    image: "assets/images/mus3.jpg",
    date: DateTime(2020, 10, 15),
  ),
];

List<User> users = [user1, user2, user3];
