import 'package:flutter/material.dart';

class ProductService {
  static List products = [
    {
      "id": "1",
      "productName": "Baju Wanita",
      "photo":
          "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dCUyMHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "price": 23.10,
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": "2",
      "productName": "Baju Wanita Dewasa",
      "photo":
          "https://images.unsplash.com/photo-1583744946564-b52ac1c389c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dCUyMHNoaXJ0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "price": 25.0,
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    }
  ];
  static List color = [
    {
      "color": Colors.white,
      "text_color": Colors.black,
      "label": "White",
      "value": "White",
    },
    {
      "color": Colors.black,
      "text_color": Colors.white,
      "label": "Black",
      "value": "Black",
    },
    {
      "color": Colors.brown,
      "text_color": Colors.white,
      "label": "Brown",
      "value": "Brown",
    },
    {
      "color": Colors.green,
      "text_color": Colors.white,
      "label": "Green",
      "value": "Green",
    },
    {
      "color": Colors.blue,
      "text_color": Colors.white,
      "label": "Blue",
      "value": "Blue",
    },
  ];
  static List size = [
    {
      "label": "XS",
      "value": "XS",
    },
    {
      "label": "S",
      "value": "S",
    },
    {
      "label": "M",
      "value": "M",
    },
    {
      "label": "L",
      "value": "L",
    },
    {
      "label": "XL",
      "value": "XL",
    },
    {
      "label": "XXL",
      "value": "XXL",
    },
    {
      "label": "XXXL",
      "value": "XXXL",
    }
  ];
}
