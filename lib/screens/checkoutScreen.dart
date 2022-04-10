import 'package:flutter/material.dart';
import 'package:monkey_app_demo/const/colors.dart';
import 'package:monkey_app_demo/screens/changeAddressScreen.dart';
import 'package:monkey_app_demo/screens/homeScreen.dart';
import 'package:monkey_app_demo/utils/helper.dart';
import 'package:monkey_app_demo/widgets/customNavBar.dart';
import 'package:monkey_app_demo/widgets/customTextInput.dart';

class CheckoutScreen extends StatelessWidget {
  static const routeName = "/checkoutScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Checkout",
                        style: Helper.getTheme(context).headline5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Direccion de entrega"),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Helper.getScreenWidth(context) * 0.4,
                        child: Text(
                          "Amealco #154",
                          style: Helper.getTheme(context).headline3,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ChangeAddressScreen.routeName);
                        },
                        child: Text(
                          "Cambiar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: AppColor.placeholderBg,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Metodo de pago"),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              isScrollControlled: true,
                              isDismissible: false,
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: Helper.getScreenHeight(context) * 0.7,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: Icon(
                                              Icons.clear,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Agregar tarjeta",
                                              style: Helper.getTheme(context)
                                                  .headline3,
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Divider(
                                          color: AppColor.placeholder
                                              .withOpacity(0.5),
                                          thickness: 1.5,
                                          height: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: CustomTextInput(
                                            hintText: "Numero"),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Expiry"),
                                            SizedBox(
                                              height: 50,
                                              width: 100,
                                              child: CustomTextInput(
                                                hintText: "MM",
                                                padding: const EdgeInsets.only(
                                                    left: 35),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 50,
                                              width: 100,
                                              child: CustomTextInput(
                                                hintText: "YY",
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: CustomTextInput(
                                            hintText: "Codigo de seguridad"),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: CustomTextInput(
                                            hintText: "Primer Nombre"),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: CustomTextInput(
                                            hintText: "Ultimo Nombre"),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: Helper.getScreenWidth(
                                                      context) *
                                                  0.4,
                                              child: Text(
                                                  "Puedes modificarla cualquier momento"),
                                            ),
                                            Switch(
                                              value: false,
                                              onChanged: (_) {},
                                              thumbColor:
                                                  MaterialStateProperty.all(
                                                AppColor.secondary,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: SizedBox(
                                          height: 50,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.add,
                                                  ),
                                                  SizedBox(width: 40),
                                                  Text("Agregar"),
                                                  SizedBox(width: 40),
                                                ],
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            Text(
                              "Agregar Tarjeta",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                PaymentCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dinero"),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: AppColor.orange),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PaymentCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            child: Image.asset(
                              Helper.getAssetName(
                                "visa2.png",
                                "real",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("**************"),
                        ],
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: AppColor.orange),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PaymentCard(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 30,
                            child: Image.asset(
                              Helper.getAssetName(
                                "paypal.png",
                                "real",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("marcobec@mail.com"),
                        ],
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(color: AppColor.orange),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: AppColor.placeholderBg,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub Total"),
                          Text(
                            "\$68",
                            style: Helper.getTheme(context).headline3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Costo de entrega"),
                          Text(
                            "\$2",
                            style: Helper.getTheme(context).headline3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Descuento"),
                          Text(
                            "-\$4",
                            style: Helper.getTheme(context).headline3,
                          )
                        ],
                      ),
                      Divider(
                        height: 40,
                        color: AppColor.placeholder.withOpacity(0.25),
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total"),
                          Text(
                            "\$66",
                            style: Helper.getTheme(context).headline3,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  width: double.infinity,
                  color: AppColor.placeholderBg,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            isScrollControlled: true,
                            isDismissible: false,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: Helper.getScreenHeight(context) * 0.7,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(Icons.clear),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      Helper.getAssetName(
                                        "vector4.png",
                                        "virtual",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Gracias!",
                                      style: TextStyle(
                                        color: AppColor.primary,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "por tu orden",
                                      style: Helper.getTheme(context)
                                          .headline4
                                          .copyWith(color: AppColor.primary),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Text(
                                          "Tu orden esta en progreso gracias"),
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text("Rastrear mi orden"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushReplacementNamed(
                                                  HomeScreen.routeName);
                                        },
                                        child: Text(
                                          "Regreso a casa",
                                          style: TextStyle(
                                            color: AppColor.primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text("Enviar orden"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(),
          ),
        ],
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key key,
    Widget widget,
  })  : _widget = widget,
        super(key: key);

  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 30,
            right: 20,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: AppColor.placeholder.withOpacity(0.25),
              ),
            ),
            color: AppColor.placeholderBg,
          ),
          child: _widget),
    );
  }
}
