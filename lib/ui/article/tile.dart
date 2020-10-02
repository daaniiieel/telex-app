import 'package:flutter/material.dart';
import 'package:telex/data/models/box_item.dart';

class ArticleTile extends StatelessWidget {
  final BoxItem article;
  const ArticleTile({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(article.image);
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: InkWell(
        child: Material(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12.0)],
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                (article.image ?? "") != ""
                    ? Image.network("https://telex.hu" + article.image)
                    : Container(),
                ListTile(
                  title: Row(
                    children: [
                      Expanded(child: Text(article.title)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
