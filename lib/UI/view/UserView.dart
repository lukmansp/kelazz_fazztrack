import 'package:fazztrack_batch1/UI/viewModel/userViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatefulWidget {
  UserView({Key key}) : super(key: key);

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  UserViewModel _viewModel = Get.put(UserViewModel());

  @override
  void initState() {
    _viewModel.getDataFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: GetBuilder<UserViewModel>(builder: (modelView) {
        return modelView.isBUsy
            ? Container(
                child: Center(child: CircularProgressIndicator()),
              )
            : Container(
                child: Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                      itemCount: modelView.setData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              left: 8, top: 5, bottom: 5, right: 5),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Text("${modelView.setData[index]['name']}"),
                        );
                      },
                    ))
                  ],
                ),
              );
      }),
    );
  }
}
