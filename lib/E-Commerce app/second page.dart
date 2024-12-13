import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class orderstore extends StatefulWidget {
  const orderstore({super.key});

  @override
  State<orderstore> createState() => _orderstoreState();
}

class _orderstoreState extends State<orderstore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: Align(
              alignment: Alignment.bottomCenter,
              child: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(top: 30),
                title: Center(child: Text("Order")),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 14,
                  ),
                  Expanded(child: Text("Back"))
                ],
              ),
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
                      child: Container(decoration: BoxDecoration( color: Colors.green,
                          border: Border.all(
                              width: 2,color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "All(72)",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.green,
                          border: Border.all(
                              width: 2,color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pending",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.green,
                          border: Border.all(
                              width: 2,color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Processing",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.green,
                          border: Border.all(
                              width: 2,color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Whishlist",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.green,
                          border: Border.all(
                              width: 2,color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "All(72)",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration: BoxDecoration( color: Colors.green,
                          border: Border.all(
                              width: 2,color: Colors.green
                          ),
                          borderRadius: BorderRadius.circular(30)
                      ),

                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "All(72)",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                  return Card(
                      child: ListTile(
                        leading: Image(image: AssetImage("assets/images/carrot.jpeg")),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("Banana (2 Pcs",style: TextStyle(fontSize: 14),),
                              Text("\$ 11.50",style: TextStyle(fontSize: 12)),
                              Text("Pending",style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        trailing: Text("sooon",style: TextStyle(fontSize: 10),),
                      )
                  );
                }),
          )
        ],
      ),
    );
  }
}
