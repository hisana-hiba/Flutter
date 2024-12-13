import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readky/E-Commerce%20app/second%20page.dart';



// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     home: cartstore(),
//   ));
// }

class cartstore extends StatefulWidget {
  const cartstore({super.key});

  @override
  State<cartstore> createState() => _cartstoreState();
}

class _cartstoreState extends State<cartstore> {
  var cartindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back_ios),
            Text(
              "Back",
            ),
          ],
        ),
        actions: [Icon(Icons.shopping_cart)],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: cartindex,
          onTap: (tapindex) {
            setState(() {
              if (tapindex==cartindex){
                return null;
              }
              else
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>orderstore()));

              }
              // cartindex = tapindex;

            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
//backgroundColor: Colors.white,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              label: " ",
              backgroundColor: Colors.green,),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              label: "Add to cart",
              backgroundColor: Colors.white,),
          ]),

      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(height: 200, width: 200,
                child: Image(image: AssetImage("assets/images/tom 2.jpeg"))),
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(alignment: Alignment.topLeft,
                child: Text("Banagala Tomato", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Deshi Products")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star, color: Colors.green,),
                    Icon(Icons.star_half, color: Colors.green,),
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    width: 100,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("_"),
                        Text("1"),
                        Text("+"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    child: Text("\$7.90", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(alignment: Alignment.topLeft,
              child: Container(child: Text("About the product",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(child: Text(
                "huygrdf,ldskh fgmysdg fvdsgnmf ndvnbcng fbdjshvcb ncbxxvcxvc xvcxvcxcmv bdcasvmfbn cvxgbnghvcv xbcngfz cxvcmgxf xvcnzxcm xvcmzg cxdfvdhgfl,dnbfvmhdsg ,fbmvs nydfgf, keslk.fz,sd,jf dnbvfjdb,c xbcv gzxcgvzxgb"),),
          )
        ],
      ),
    );
  }
}
