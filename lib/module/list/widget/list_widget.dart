import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/product_service.dart';
import '../../product_detail/view/product_detail_view.dart';

class listProduct extends StatefulWidget {
  const listProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<listProduct> createState() => _listProductState();
}

class _listProductState extends State<listProduct> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ProductService.products.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        Map item = ProductService.products[index];
        return InkWell(
          onTap: () => Get.to(ProductDetailView(item: item)),
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                  "${item['photo']}",
                ),
              ),
              title: Text("${item['productName'] ?? "_"}"),
              subtitle: Text("${item['price']}"),
            ),
          ),
        );
      },
    );
  }
}
