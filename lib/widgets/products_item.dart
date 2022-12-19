import 'package:flutter/material.dart';
import 'package:provider_example/utlis/routes.dart';

class ProductItem extends StatelessWidget {
  ProductItem(
      {super.key,
      required this.id,
      required this.title,
      required this.imageUrl});
  final String title;
  final String id;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Stack(alignment: Alignment.topRight, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(productdetails, arguments: [title, id]);
                },
                child: Image.network(
                  imageUrl,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.topLeft,
                child: Text(
                  title + title + title + title + title + title,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.topLeft,
                child: Text(
                  id,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  // padding: EdgeInsets.all(5),
                  width: double.infinity,
                  color: Colors.green.shade900,
                  child: const Text(
                    "Add To Cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ]),
      ),
    );
  }
}
