import 'package:exam/cubit/exam_cubit.dart';
import 'package:exam/cubit/exam_state.dart';
import 'package:exam/screens/duration/duration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LessonView extends StatefulWidget {
  const LessonView({Key? key}) : super(key: key);

  @override
  State<LessonView> createState() => _LessonViewState();
}

class _LessonViewState extends State<LessonView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        child: myScaffold(),
        create: ((context) => LessonCubit()),
      ),
    );
  }

  BlocConsumer<LessonCubit, LessonState> myScaffold() {
    return BlocConsumer<LessonCubit, LessonState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LessonInitial) {
          return const Center(child: Text("Kirmoqda"),);
        } else if (state is LessonLoading) {
          return const DurationPage();
        } else if (state is LessonComplate) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return const Text("a");
            },
            itemCount: state.response.length,
          );
        } else {
          return const Text("data");
        }
      },
    );
  }
}
