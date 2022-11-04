// ignore_for_file: must_be_immutable

import 'package:apis_getx_statemanagement/Ui/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomeController dataController = Get.put(HomeController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Rest API Using GetX',
          ),
          centerTitle: true,
        ),
        body: Obx(
          () => dataController.isDataLoading.value
              // ignore: prefer_const_constructors
              ? Center(child: CircularProgressIndicator())
              : SizedBox(
                  height: double.infinity,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: dataController.user_model?.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.only(left: 10, right: 10),
                                padding: const EdgeInsets.only(left: 20),
                                height: 80,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundImage: NetworkImage(
                                          dataController.user_model!
                                              .data![index].picture!),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          dataController
                                              .user_model!.data![index].title!
                                              .toUpperCase(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        Text(
                                            dataController.user_model!
                                                .data![index].firstName!,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                        Text(
                                            dataController.user_model!
                                                .data![index].lastName!,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ],
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        );
                      }),
                ),
        ));
  }
}
