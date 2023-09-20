import 'package:dream_job/widgets/offerlist_widget.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Ionicons.arrow_back)),
                const Text(
                  "Special Offers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Ionicons.ellipsis_vertical_outline))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(height: 400, child: OfferListWidget()),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      textAlign: TextAlign.start,
                      "Tanya, 34 ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.amberAccent,
                  ),
                  Text(
                    "5.0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Data Analyst",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "ion-icon. Icon is a simple component made available through the Ionicons library, which comes pre-packaged by default with all Ionic Framework applications.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Send message",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Ionicons.logo_instagram,
                  color: Colors.white,
                )),
            const SizedBox(
              width: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Ionicons.logo_linkedin,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
