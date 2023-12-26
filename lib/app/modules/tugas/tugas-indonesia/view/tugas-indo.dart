import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/navigator_helper.dart';
import '../../../../shared/custom_modal.dart';
import '../../../nilai_exam/view/nilai_exam.dart';
import '../../../personal_info/view/personal_info.dart';

class TugasIndo extends StatefulWidget {
  const TugasIndo({super.key});

  @override
  State<TugasIndo> createState() => _TugasIndoState();
}

class _TugasIndoState extends State<TugasIndo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Bahasa Indonesia",
          style: TextStyle(
              fontSize: size / 20,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              goBack();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: size / 20,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
          child: Expanded(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height / 30),
              child: Container(
                height: height / 4,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg-indo.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 4),
              child: Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height / 30, horizontal: width / 20),
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "23 Januari",
                              style: TextStyle(
                                  fontSize: size / 27,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "tenggat senin, 06 maret 2022",
                              style: TextStyle(
                                  fontSize: size / 27,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size / 18,
                        ),
                        Text(
                          "Bahasa Indonesia",
                          style: TextStyle(
                              fontSize: size / 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: size / 10,
                        ),
                        Text(
                          "Buatlah Teks Deskripsi",
                          style: TextStyle(
                              fontSize: size / 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: size / 30,
                        ),
                        Text(
                          "Buatlah text deskripsi tentang alam minimal 3 paragraf!",
                          style: TextStyle(
                              fontSize: size / 26, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: height / 3.6,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // goPush(AddTask());
                                goPush(AddLink());
                              },
                              //   child: Text("Add Task"),
                              //   style: ElevatedButton.styleFrom(
                              //       elevation: 0,
                              //       fixedSize: Size(width / 1.198, height / 16),
                              //       padding: EdgeInsets.all(10),
                              //       primary: primaryColor,
                              //       shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.circular(12))),
                              // ),
                              child: Text("Add Link"),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: Size(width / 1.5, height / 16),
                                  padding: EdgeInsets.all(10),
                                  primary: primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                            SizedBox(
                              width: width / 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                goPush(AddFile());
                              },
                              child: Icon(
                                Icons.upload_rounded,
                                color: primaryColor,
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: Size(width / 16, height / 16),
                                  padding: EdgeInsets.all(10),
                                  primary: Colors.white,
                                  side: BorderSide(color: primaryColor),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
