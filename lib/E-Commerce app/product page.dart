import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



import 'details page.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: homestore(),
  ));
}

class homestore extends StatefulWidget {
  const homestore({super.key});

  @override
  State<homestore> createState() => _homestoreState();
}

class _homestoreState extends State<homestore> {

  var storeindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text(
              "Store",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            actions: [Icon(Icons.shopping_cart)],
            bottom: AppBar(
              title: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.info),
                    hintText: "Search...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),

          SliverToBoxAdapter(
            child: Scrollbar(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.white,
                          border: Border.all(
                              width: 2,color: Colors.white38
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_sharp,color: Colors.blue,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Vegetables",
                                  style: TextStyle(fontSize: 12, color: Colors.blue),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.white,
                          border: Border.all(
                              width: 2,color: Colors.white38
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_sharp,color: Colors.blue,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Fruits",
                                  style: TextStyle(fontSize: 12, color: Colors.blue),
                                )),
                          ],
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.white,
                          border: Border.all(
                              width: 2,color: Colors.white38
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_sharp,color: Colors.blue,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Meat",
                                  style: TextStyle(fontSize: 12, color: Colors.blue),
                                )),
                          ],
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.white,
                          border: Border.all(
                              width: 2,color: Colors.white38
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_sharp,color: Colors.blue,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Powders",
                                  style: TextStyle(fontSize: 12, color: Colors.blue),
                                )),
                          ],
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.white,
                          border: Border.all(
                              width: 2,color: Colors.white38
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_sharp,color: Colors.blue,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Row meats",
                                  style: TextStyle(fontSize: 12, color: Colors.blue),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.white,
                          border: Border.all(
                              width: 2,color: Colors.white38
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),

                        child: Row(
                          children: [
                            Icon(Icons.ac_unit_sharp,color: Colors.green,),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "All(72)",
                                  style: TextStyle(fontSize: 12, color: Colors.green),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,
              ),
                itemBuilder: (context,index)
                {
                  return Card(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>cartstore()));
                      },
                      child: Column(
                        children: [
                          Container(height:100,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/tom 2.jpeg",),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          ListTile(
                            title: Center(
                              child: Text("Tomato",style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                              ),),
                            ),
                            subtitle: Column(
                              children: [
                                Text("Fresh 500 gm",style: TextStyle(
                                  fontSize: 14,color: Colors.black,),
                                ),
                                Text("\$ 70.3",style: TextStyle(
                                  fontSize: 18,color: Colors.black,),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Align(alignment: Alignment.bottomRight,
                              child: Container(
                                child: Icon(Icons.add),color: Colors.blue,),
                            ),
                          ),
                          Container(decoration: BoxDecoration(color: Colors.white10,
                              border: Border.all(width: 2,color: Colors.white12,)
                          ),
                            child: Text("Ordered"),
                          ),

                        ],
                      ),
                    ),
                  );
                },
                itemCount: 10,)
          )
        ], ), );
  }
}
