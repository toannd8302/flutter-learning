import 'package:flutter/material.dart';
import 'package:grid_view_learning/category.dart';
import 'package:grid_view_learning/category_item.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    var fakeCategories = [
      const Categories(
          id: 1, nameOfCategory: 'Món ăn Việt', color: Colors.blue),
      const Categories(id: 2, nameOfCategory: 'Món ăn Nhật', color: Colors.red),
      const Categories(
          id: 3, nameOfCategory: 'Món ăn Hàn', color: Colors.green),
      const Categories(
          id: 4, nameOfCategory: 'Món ăn Trung', color: Colors.blue),
      const Categories(id: 5, nameOfCategory: 'Món ăn Ý', color: Colors.amber),
      const Categories(
          id: 6, nameOfCategory: 'Món ăn Pháp', color: Colors.deepPurpleAccent),
      const Categories(
          id: 7, nameOfCategory: 'Món ăn Đức', color: Colors.indigo),
      const Categories(
          id: 8, nameOfCategory: 'Món cay Thái', color: Colors.lime),
      const Categories(
          id: 9, nameOfCategory: 'Ẩm thực chay', color: Colors.greenAccent),
      const Categories(
          id: 10, nameOfCategory: 'Ẩm thực Miền Bắc', color: Colors.green),
      const Categories(
          id: 11, nameOfCategory: 'Ẩm thực miền Trung', color: Colors.orange),
      const Categories(
          id: 12, nameOfCategory: 'Ẩm thực Miền Nam', color: Colors.indigo),
    ];
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child:
            // GridView(
            //   children: fakeCategories
            //       .map((eachCategory) => CategoryItems(
            //             category: eachCategory,
            //           ))
            //       .toList(),
            //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //     maxCrossAxisExtent: 300, //max width of each item
            //     childAspectRatio: 4 / 2.5, //width/height
            //     crossAxisSpacing: 10, //spacing between each item
            //     mainAxisSpacing: 10, //spacing between each row
            //   ),
            // ),
            //Todo: Cách đơn giản nhất để tạo Grid
            //     GridView.count(
            //   children: fakeCategories
            //       .map((eachCategory) => CategoryItems(
            //             category: eachCategory,
            //           ))
            //       .toList(),
            //   crossAxisCount: 2, //number of columns
            //   crossAxisSpacing: 10, //spacing between each item
            //   mainAxisSpacing: 10, //spacing between each row
            //   childAspectRatio: 4 / 2.5,
            //   scrollDirection: Axis.vertical, //Chiều cuộn của các phần tử
            //   reverse: true, //Đảo ngược thứ tự của các phần tử nếu true
            // )
            //Todo: GridView động
            GridView.builder(
                itemCount: fakeCategories.length, //số lượng phần tử
                //gridDelegate xác định cách hiển thị các phần tử trong grid
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300, //max width of each item
                  childAspectRatio: 4 / 2.5, //width/height
                  crossAxisSpacing: 10, //spacing between each item
                  mainAxisSpacing: 10, //spacing between each row
                ),
                itemBuilder: (context, index) => fakeCategories
                    .map((eachCategory) => CategoryItems(
                          category: eachCategory,
                        ))
                    .toList()[index]));
  }
}
