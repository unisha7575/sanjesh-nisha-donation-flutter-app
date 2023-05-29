import 'package:flutter/material.dart';

import 'colors.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);


  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        bottomSheet: SizedBox(
          height: MediaQuery.of(context).size.height*0.07,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(container),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),

                    ))),

            child: Text("Add Payment Method",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Colors.black87),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.arrow_back_sharp),
                Spacer(),
                Text("Done",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
              ],),
              SizedBox(height: 10,),
              Text("Payment Method",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w800,color: Colors.purple[900]),),
              SizedBox(height: 10,),
              Text("This includes debit cards, credit cards, electronic funds transfers, direct credits, direct debits, internet banking and e-commerce payment systems."
                ,style: TextStyle(fontFamily: "Libre Baskerville",fontSize: 14,fontWeight: FontWeight.w400,color: Colors.purple[900]),),
           SizedBox(height: 20,),
           Column(
             children: List.generate(5, (index) {
               return  Padding(
                 padding: const EdgeInsets.only(bottom: 20),
                 child: Card(
                   elevation: 10,
                   child: Padding(
                     padding: const EdgeInsets.all(10),
                     child: Row(
                       children: [
                         Image.network("https://logos-world.net/wp-content/uploads/2020/09/Mastercard-Logo.png",height: 30,),
                         Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("**** **** ****5967" ,style: TextStyle(fontFamily: "Libre Baskerville",fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black87),),
                               Text("Expires 09/25" ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.purple[900]),),

                             ],
                           ),
                         )

                       ],
                     ),
                   ),
                 ),
               );

             }
           )
           ) ],
          ),
        ),
      ),
    );
  }
}
