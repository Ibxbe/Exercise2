import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'style.dart';
import 'color.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Result: Jimbo',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple.shade200,
        flexibleSpace: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.purpleAccent, Colors.deepPurple.shade400],
      ),
    ),
    ),
      ),
    body: Stack(
      children :[
      Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.topCenter,
              height: size.height - 500,
              width: size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/44.png'))),
            ),
          ),


          Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(11)),
                child: Image.asset('assets/icon.png'),
              )),
          Positioned(
            top: 150,
            right: 24,
            child: Container(
              height: 276,
              width: 73,
              decoration: BoxDecoration(
                  gradient: AppColor.gradient,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  height: 61,
                  width: 61,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColor.primary, width: 2),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/44.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  height: 61,
                  width: 61,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/2.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  height: 61,
                  width: 61,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/33.png'))),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  height: 61,
                  width: 61,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/1.png'))),
                ),
              ]),
            ),
          ),

          Positioned(
              bottom: 0,
            child: Container(

                height: size.height/2.2,
                width: size.width,
                decoration: BoxDecoration(
                  color: AppColor.secondary,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          height: 5,
                          width: 32 * 1.5,
                          decoration: BoxDecoration(
                            gradient: AppColor.gradient,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                      const ProductNameAndPrice(),
                      const SizedBox(
                        height: 16,
                      ),
                      Text('Sex',
                          style: AppStyle.text
                              .copyWith(color: Colors.white.withOpacity(.8))),
                      const Spacing(),
                      const Row(
                        children: [
                          RectButtonSelected(
                            label: 'M',
                          ),
                          RectButton(
                            label: 'F',
                          )
                        ],
                      ),
                      const Spacing(),
                      Row(
                        children: const [
                          TabTitle(label: 'Details', selected: true),
                          SizedBox(width: 8),
                        ],
                      ),
                      const Spacing(),
                      Text(
                        'Jimbo is currently being taken care at the Muhuhu PetOrg. However, he looks forward to being adopted. He is always hungry and the organization cannot take care of him as much as they could in the long term.',
                        style: AppStyle.bodyText.copyWith(color: Colors.white),
                      ),
                      const Spacing(),
                      Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColor.primary),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16))),
                                  minimumSize: MaterialStateProperty.all(
                                      Size(size.width / 1.4, 37))),
                              onPressed: () {},
                              child: Text('Contact the Adoption Centre',
                                  style: AppStyle.h3
                                      .copyWith(color: Colors.white))))



    ],
                  ),
                ),
              ),
          ),



        ],

    ),

    );
  }
}

class TabTitle extends StatelessWidget {
  final String label;
  final bool selected;
  const TabTitle({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            label,
            style: AppStyle.text.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          if (selected)
            Container(
              width: 21,
              height: 2,
              decoration: const BoxDecoration(color: AppColor.primary),
            )
        ])
      ],
    );
  }
}

class Spacing extends StatelessWidget {
  const Spacing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
    );
  }
}

class RectButtonSelected extends StatelessWidget {
  final String label;
  const RectButtonSelected({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), gradient: AppColor.gradient),
      child: Center(
          child: Text(
        label,
        style: AppStyle.text,
      )),
    );
  }
}

class RectButton extends StatelessWidget {
  final String label;
  const RectButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: AppColor.primary)),
      child: Center(
          child: Text(
        label,
        style: AppStyle.text.copyWith(color: Colors.white),
      )),
    );
  }
}

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Jimbo',
          style: AppStyle.h1Light,
        ),
        Text(
          '...',
          style: AppStyle.h1Light
              .copyWith(color: AppColor.primary, fontWeight: FontWeight.w600),
        ),
      ],

    );
  }
}

