import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/date_time_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectedTime = DateTime.now();
  final now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Boilerplate'),
        actions: [
          IconButton(
            onPressed: () {
              // showDatePicker(
              //   context: context,
              //   initialDate: DateTime.now().subtract(
              //     const Duration(days: 1),
              //   ),
              //   firstDate: DateTime(1900),
              //   lastDate: DateTime.now(),
              // );

              showCustomDateTimePicker(
                onConfirm: (date) {},
                currentTime: now,
              );

              // showCustomDateTimePicker(
              //   context: context,
              //   currentTime: DateTime.now(),
              //   onConfirm: (date) {
              //
              //   },
              // );
            },
            icon: Icon(Icons.event_available),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => setState(() {}),
        child: ListView.separated(
          separatorBuilder: (context, idx) => const Divider(),
          itemCount: /*snapshot.data!.length*/ 1,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                child: Text('snapshot.data![index].id'),
              ),
              title: Text("snapshot.data![index].title!"),
              subtitle: Text("snapshot.data![index].body!"),
            );
          },
        ),
      ),
    );
  }
}
