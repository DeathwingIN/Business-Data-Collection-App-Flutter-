import 'package:collect_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Addbuisess extends StatefulWidget {
  const Addbuisess({super.key});

  @override
  State<Addbuisess> createState() => _AddbuisessState();
}

final GlobalKey<FormState> key = GlobalKey<FormState>();

class _AddbuisessState extends State<Addbuisess> {
  TextEditingController buisnessNameController = TextEditingController();
  TextEditingController buisnessTypeController = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController mobileCotroller = TextEditingController();
  TextEditingController longitudeController = TextEditingController();
  TextEditingController latitudeController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  List<String> buisnessOwnerType = [
    "PRIVATE",
    "GOVERNMENT",
    "SOLO",
    "SEMI_GOVERNMENT",
    "NGO"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          backgroundColor: mainColor,
          title: const Text(
            "Add Buisness ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 252, 252, 252)),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          children: [
            Form(
                key: key,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null) {
                                return "Please enter buisness name";
                              }
                              return null;
                            },
                            controller: buisnessNameController,
                            decoration: const InputDecoration(
                              hintText: "Buisness Name",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 219, 219, 219))),
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 219, 219, 219))),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null) {
                                return "Please enter buisness type";
                              }
                              return null;
                            },
                            controller: buisnessTypeController,
                            decoration: const InputDecoration(
                              hintText: "Buisness Type",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 219, 219, 219))),
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 219, 219, 219))),
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            hintText: "Buisness Owner Type",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 219, 219, 219))),
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 219, 219, 219))),
                          ),
                          items: buisnessOwnerType
                              .map((ownerType) => DropdownMenuItem<String>(
                                  value: ownerType, child: Text(ownerType)))
                              .toList(),
                          onChanged: (value) {}),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFormField(
                            maxLines: 5,
                            validator: (value) {
                              if (value == null) {
                                return "Please enter buisness address";
                              }
                              return null;
                            },
                            controller: addressController,
                            decoration: const InputDecoration(
                              hintText: "Buisness Address",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 219, 219, 219))),
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 219, 219, 219))),
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: TextFormField(
                                  validator: (value) {
                                    if (value == null) {
                                      return "Please enter Latitude";
                                    }
                                    return null;
                                  },
                                  controller: latitudeController,
                                  decoration: const InputDecoration(
                                    hintText: "Latitude",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                  ))),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              flex: 4,
                              child: TextFormField(
                                  validator: (value) {
                                    if (value == null) {
                                      return "Please enter Longitude";
                                    }
                                    return null;
                                  },
                                  controller: longitudeController,
                                  decoration: const InputDecoration(
                                    hintText: "Longitude ",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                  ))),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(3)),
                            width: 35,
                            height: 55,
                            child: IconButton(
                              onPressed: () => {},
                              icon: Icon(Icons.my_location),
                            ),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null) {
                                      return "Please enter home number";
                                    }
                                    return null;
                                  },
                                  controller: homeController,
                                  decoration: const InputDecoration(
                                    hintText: "Home",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                  ))),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              flex: 4,
                              child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null) {
                                      return "Please enter mobile";
                                    }
                                    return null;
                                  },
                                  controller: mobileCotroller,
                                  decoration: const InputDecoration(
                                    hintText: "Mobile ",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 219, 219, 219))),
                                  ))),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1)),
                          height: 120,
                          width: double.infinity,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.grey,
                            ),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: MaterialButton(
                            color: mainColor,
                            onPressed: () {},
                            minWidth: double.infinity,
                            height: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ))),
                  ],
                ))
          ],
        ));
  }
}
