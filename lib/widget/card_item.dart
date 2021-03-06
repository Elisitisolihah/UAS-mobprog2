import 'package:beritasttb/model/item.dart';
import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  final Item item;

  CardItem({@required this.item});

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      margin: EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child:Image.asset(
                    'asset/image/poto.jpg',
                    height: 175,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.item.name,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.item.desc,
              style: TextStyle(fontSize: 12, color: Colors.black),
              maxLines: 3,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                widget.item.qty.toString(),
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
