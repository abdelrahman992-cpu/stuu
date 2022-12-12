import 'package:flutter/material.dart';
import 'package:students/student_detail.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StudentsState();
  }
}

class StudentsState extends State<StudentsList> {
  int count = 10;
  void navigate(String apptitle) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudentDetail(apptitle),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Students"),
        ),
        body: getStudentsList(), //يعرف ليست اسمها جيت ستيودنت
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigate("Add a student");
          },
          tooltip: 'Add Student',
          child: const Icon(Icons.add),
        ));
  }

  ListView getStudentsList() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.check),
              ),
              title: const Text("The first student"),
              subtitle: const Text("data form this Student"),
              trailing: const Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              onTap: () {
                navigate("Edit student");
              },
            ),
          );
        });
  }
}
