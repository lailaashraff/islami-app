import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int sebhaCounter = 0;
  double rotationAngle = 0;
  int maxCount = 33;
  int tasbehIndex = 0;
  List<String> tasabeh = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا إله إلا الله',
    'أستغفر الله',
    'سبحان الله وبحمده',
    'سبحان الله العظيم',
    'لا حول ولا قوة إلا بالله',
    'اللهم صل على محمد',
    'اللهم اغفر لي',
    'رضيت بالله رباً',
    'رضيت بالإسلام ديناً',
    'رضيت بمحمد نبياً ورسولاً',
    'لا إله إلا الله وحده لا شريك له',
    'له الملك وله الحمد وهو على كل شيء قدير',
    'حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم',
    'اللهم ارزقني الجنة',
    'اللهم أجرني من النار',
    'اللهم ارحمني',
    'اللهم تقبل مني',
    'اللهم اهدني',
    'اللهم اشفني وعافني',
    'اللهم اجعلني من الذاكرين',
    'اللهم اجعل القرآن ربيع قلبي',
    'اللهم إني أعوذ بك من الشيطان الرجيم',
    'اللهم إني أسألك العفو والعافية',
  ];

  String tasbehText = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: InkWell(
              onTap: () {
                onSebhaTap();
              },
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.07),
                      child: Transform.rotate(
                          angle: rotationAngle,
                          child:
                              Image.asset('assets/images/body_sebha_logo.png')),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: Image.asset('assets/images/head_sebha_logo.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
            child: Text('$sebhaCounter',
                style: Theme.of(context).textTheme.titleSmall),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01,
                horizontal: MediaQuery.of(context).size.width * 0.05),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25)),
            child: Text(tasbehText,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white)),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Initialize tasbehText with the first item in tasabeh
    tasbehText = tasabeh[0];
  }

  void onSebhaTap() {
    sebhaCounter++;
    rotationAngle += (90 * 3.14 / 180); // Convert 90 degrees to radians
    if (sebhaCounter == maxCount) {
      sebhaCounter = 0;
      tasbehIndex++;
      tasbehText = tasabeh[tasbehIndex];
      if (tasbehIndex > tasabeh.length) {
        tasbehIndex = 0;
      }
    }
    setState(() {});
  }
}
