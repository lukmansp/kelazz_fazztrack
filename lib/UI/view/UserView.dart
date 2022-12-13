import 'package:fazztrack_batch1/UI/view/SecondPage.dart';
import 'package:fazztrack_batch1/UI/viewModel/userViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatefulWidget {
  final UserViewModel viewModel;
  UserView({Key key, this.viewModel}) : super(key: key);

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  // @override
  // void initState() {
  //   widget.viewModel.getDataUser();
  //   super.initState();
  // }

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
                      itemCount: modelView.user.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            modelView.setUser(modelView.user[index].name);
                            Get.to(SecondPage(viewModel: modelView));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 8, top: 5, bottom: 5, right: 5),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(color: Colors.amber),
                            child: Text("${modelView.user[index].name}"),
                          ),
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
