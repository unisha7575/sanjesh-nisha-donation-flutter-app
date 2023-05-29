import 'package:donation_app/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'colors.dart';

class AboutScreen extends StatefulWidget {
  final String text;
  final String image;
  final String targetText;

  const AboutScreen({Key? key, required this.text, required this.image, required this.targetText}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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

            child: Text("Donate Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Colors.black87),),
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: const GradientBoxBorder(
                          gradient: borderColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.menu,
                          color: iconColor,
                          size: 25,
                        ),
                      )),
                  const Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: const GradientBoxBorder(
                            gradient: borderColor,
                            width: 2,
                          )),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.notifications,
                          color: iconColor,
                          size: 25,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(widget.text,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,),),
              Text("by Smile Foundation",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black54)),
              SizedBox(height: 15,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.network(widget.image,height: 200,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,)),
              SizedBox(height: 10,),
              Text("About",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),

              ),
              SizedBox(height: 10,),
              Text("Giving to charity makes you feel good.Donating to charity "
                  "is a major mood-booster. The knowledge that you'\re helping others is hugely empowering and, in turn, can make you feel happier and more fulfilled."
                ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),
              ),
               SizedBox(
                 height: 15,
               ),
               Row(

                 children: [
                   Text(widget.targetText,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Colors.purple[900]),),
                   Spacer(),
                   Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAP0u585t6HQ4EWMKAGJLlCUyafs310FqLeg&usqp=CAU",height: 50,)
                   // ElevatedButton(onPressed: (){}, child: Row(
                   //   children: [
                   //     Image.network("https://www.clker.com/cliparts/s/b/N/c/w/g/phone-green-md.png",height: 40,width:50,fit: BoxFit.cover,),
                   //     Text("Call",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Colors.black87),),
                   //   ],
                   // ))
                   ///Checking new branch commit

                 ],
               )
            ],
          ),
        ),

      ),
    );

  }
}



