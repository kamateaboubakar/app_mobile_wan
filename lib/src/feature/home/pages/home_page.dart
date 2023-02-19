import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:wan/src/feature/home/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final horizontalMargin = EdgeInsets.symmetric(horizontal: 4.w);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(2.w),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade500,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          "WAN",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 8.w,
          ),
          Gap(4.w),
          Icon(
            Icons.chat_bubble_outline,
            color: Colors.black,
            size: 8.w,
          ),
          Gap(2.w),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Gap(2.h),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.w),
                    topRight: Radius.circular(4.w),
                  ),
                  color: const Color.fromRGBO(237, 247, 250, 1),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Gap(0.5.h),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 8.w,
                          height: 1.w,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4.w),
                          ),
                        ),
                      ),
                      Gap(1.5.h),
                      Padding(
                        padding: horizontalMargin,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2.w),
                          child: Image.asset(
                            'assets/images/uberwoman.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 30.w,
                          ),
                        ),
                      ),
                      Gap(1.5.h),
                      SectionMenu(
                        title: "Transaction Financière",
                        margin: 4.w,
                        items: [
                          SectionMenuItem(
                            title: 'Scan & Pay',
                          ),
                          SectionMenuItem(
                            title: 'Vers contact',
                          ),
                          SectionMenuItem(
                            title: 'Paiement',
                          ),
                          SectionMenuItem(
                            title: 'Tontine',
                          ),
                        ],
                      ),
                      Gap(1.5.h),
                      SectionMenu(
                        margin: 4.w,
                        items: [
                          SectionMenuItem(
                            title: 'Bank',
                          ),
                          SectionMenuItem(
                            title: 'Solde & History',
                          ),
                          SectionMenuItem(
                            title: 'Wan\nWallet',
                          ),
                          SectionMenuItem(
                            title: 'Bank\nCard',
                          ),
                        ],
                      ),
                      Gap(1.5.h),
                      Padding(
                        padding: horizontalMargin,
                        child: Row(
                          children: [
                            Expanded(
                              child: YellowSection(
                                title: 'Job',
                              ),
                            ),
                            Gap(2.w),
                            Expanded(
                              child: YellowSection(
                                title: 'Points de fidélité',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(1.5.h),
                      SectionMenu(
                        title: "Recharge et facture",
                        margin: 4.w,
                        items: [
                          SectionMenuItem(
                            title: 'Crédit de\ncommunication',
                          ),
                          SectionMenuItem(
                            title: 'CIE',
                          ),
                          SectionMenuItem(
                            title: 'SODECI',
                          ),
                          SectionMenuItem(
                            title: 'Loyer',
                          ),
                          SectionMenuItem(
                            title: 'Canal+',
                          ),
                          SectionMenuItem(
                            title: 'TV',
                          ),
                          SectionMenuItem(
                            title: 'Netflix',
                          ),
                          SectionMenuItem(
                            title: 'Amazon',
                          ),
                          SectionMenuItem(
                            title: 'Assurance',
                          ),
                          SectionMenuItem(
                            title: 'Gaz',
                          ),
                        ],
                      ),
                      Gap(1.5.h),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(208, 250, 251, 1),
                        ),
                        padding: EdgeInsets.all(4.w),
                        height: 34.h, // set the w
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Prêt",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                            Gap(1.h),
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width: 60.w,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: ContainerShadow(),
                                      borderRadius: BorderRadius.circular(4.w),
                                    ),
                                    child: GridView(
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                                      physics: NeverScrollableScrollPhysics(),
                                      children: [
                                        Container(
                                          child: SectionMenuItem(
                                            title: "Prêt",
                                          ),
                                          padding: EdgeInsets.all(2.w),
                                          decoration: _borderSideDecoration(right: true, bottom: true),
                                        ),
                                        Container(
                                          child: SectionMenuItem(
                                            title: 'Carte de credit',
                                          ),
                                          padding: EdgeInsets.all(2.w),
                                          decoration: _borderSideDecoration(bottom: true, left: true),
                                        ),
                                        Container(
                                          child: SectionMenuItem(
                                            title: 'Cinema',
                                          ),
                                          padding: EdgeInsets.all(2.w),
                                          decoration: _borderSideDecoration(top: true, right: true),
                                        ),
                                        Container(
                                          child: SectionMenuItem(
                                            title: "Evénement",
                                          ),
                                          padding: EdgeInsets.all(2.w),
                                          decoration: _borderSideDecoration(left: true, top: true),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(4.w),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(4.w),
                                    child: Image.asset(
                                      'assets/images/avatar.webp',
                                      fit: BoxFit.cover,
                                      height: double.infinity,
                                      width: 60.w,
                                    ),
                                  ),
                                  Gap(4.w),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(4.w),
                                    child: Image.asset(
                                      'assets/images/yango.png',
                                      fit: BoxFit.cover,
                                      height: double.infinity,
                                      width: 60.w,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(1.5.h),
                      Container(
                        height: 31.h,
                        margin: horizontalMargin,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SectionMenu(
                              width: 65.w,
                              title: "Ticket & Transport",
                              items: [
                                SectionMenuItem(
                                  title: 'Taxi',
                                ),
                                SectionMenuItem(
                                  title: "Billet\nd'avion",
                                ),
                                SectionMenuItem(
                                  title: 'Bus',
                                ),
                                SectionMenuItem(
                                  title: 'Cinema',
                                ),
                                SectionMenuItem(
                                  title: 'Evénement',
                                ),
                                SectionMenuItem(
                                  title: 'Metro',
                                ),
                              ],
                            ),
                            Gap(4.w),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.w),
                              child: Image.asset(
                                'assets/images/pickup.webp',
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: 70.w,
                              ),
                            ),Gap(4.w),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.w),
                              child: Image.asset(
                                'assets/images/yango.png',
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: 70.w,
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(1.5.h),
                      Container(
                        height: 18.h,
                        margin: horizontalMargin,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SectionMenu(
                              width: 50.w,
                              title: "Food",
                              items: [
                                SectionMenuItem(
                                  title: 'Restaurant',
                                ),
                                SectionMenuItem(
                                  title: 'Livraisons',
                                ),
                              ],
                            ),
                            Gap(2.w),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4.w),
                              child: Image.asset(
                                'assets/images/pub.jpg',
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: 50.w,
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(2.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

BoxDecoration _borderSideDecoration({
  Color? color,
  bool left = false,
  bool right = false,
  bool top = false,
  bool bottom = false,
}) {
  var blueBorderSide = BorderSide(color: color ?? Color.fromRGBO(93, 195, 249, 1), width: 0.5);
  return BoxDecoration(
    border: Border(
      top: top ? blueBorderSide : BorderSide.none,
      left: left ? blueBorderSide : BorderSide.none,
      right: right ? blueBorderSide : BorderSide.none,
      bottom: bottom ? blueBorderSide : BorderSide.none,
    ),
  );
}
