// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:all_lectuers1/Theoretical/lecters4/stack_exemple.dart';
import 'package:all_lectuers1/labs/lab2/main_lab1.dart';
import 'package:all_lectuers1/labs/lab4/main_lab4.dart';
import 'package:all_lectuers1/labs/lab7/ex1.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Theoretical/lectuer6/Toast.dart';
import 'Theoretical/lectuer7/Image_from.dart';
import 'Theoretical/lectuer7/MainLect7.dart';
import 'Theoretical/lectuer7/Navagetor_screen.dart';
import 'Theoretical/lectuer8/1.dart';
import 'Theoretical/lectuer8/MainLect8.dart';
import 'labs/lab3/grid_view.dart';
import 'labs/lab3/grid_view_image.dart';
import 'labs/lab3/mainlab3.dart';
import 'Theoretical/lecters4/continer_exemple.dart';
import 'Theoretical/lecters4/main_lect4.dart';
import 'Theoretical/lecters4/table__deebo__ex.dart';
import 'Theoretical/lectuer5/cheack_List_ex.dart';
import 'Theoretical/lectuer5/circular_progress_indicator_app.dart';
import 'Theoretical/lectuer5/form_exemple.dart';
import 'Theoretical/lectuer5/list_view_exemple.dart';
import 'Theoretical/lectuer5/main5.dart';
import 'Theoretical/lectuer5/switch_radio.dart';
import 'Theoretical/lectuer5/timer_exemple.dart';
import 'Theoretical/lectuer6/BottomSheet_exm.dart';
import 'Theoretical/lectuer6/appbar__lead_action_ex.dart';
import 'Theoretical/lectuer6/bottomNavigationBar_exm.dart';
import 'Theoretical/lectuer6/drawer_exempl.dart';
import 'Theoretical/lectuer6/main_lect6.dart';
import 'Theoretical/lectuer6/persistentFooterButtons.dart';
import 'labs/lab2/DataTable_Roq_Ex.dart';
import 'labs/lab2/Listview_screen.dart';
import 'labs/lab2/list_view_tile.dart';
import 'labs/lab2/prodact_view.dart';
import 'labs/lab2/warb_widget_exm.dart';
import 'labs/lab3/listview_ex.dart';
import 'labs/lab3/listview_sparted.dart';
import 'labs/lab4/ex1.dart';
import 'labs/lab4/ex2.dart';
import 'labs/lab4/ex3.dart';
import 'labs/lab6/ex1.dart';
import 'labs/lab6/ex2.dart';
import 'labs/lab6/ex3.dart';
import 'labs/lab6/ex4.dart';
import 'labs/lab6/main_lab5.dart';

import 'labs/lab7/ex2.dart';
import 'labs/lab7/ex3.dart';
import 'labs/lab7/ex4.dart';
import 'labs/lab7/main_lab6.dart';
import 'labs/main_Lab.dart';
import 'main_all.dart';
import 'main_class.dart';
import 'labs/lab2/restrianScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MainClass(),
      home: MainAll(),

      initialRoute: '/',
      routes: {
        MainClass.rout_name: (context) => MainClass(),

        main_lab.rout_name: (context) => main_lab(),
        MainLect4.rout_name: (context) => MainLect4(),
        Main5.rout_name: (context) => Main5(),
        Layout_Screen.rout_name: (context) => Layout_Screen(),
        stack_exemple.rout_name: (context) => stack_exemple(),
        Table_Deebo_Ex.rout_name: (context) => Table_Deebo_Ex(),
        CheckboxListTile_ex.rout_name: (context) => CheckboxListTile_ex(),
        CircularProgress.rout_name: (context) => CircularProgress(),
        Form_Exemple.rout_name: (context) => Form_Exemple(),
        GridView_builder_Roq_EX.rout_name: (context) =>
            GridView_builder_Roq_EX(),
        GridView_builder_Roq_EX.rout_name: (context) =>
            GridView_builder_Roq_EX(),
        Switch_Button_Roq_Ex.rout_name: (context) => Switch_Button_Roq_Ex(),
        TimerExemple.rout_name: (context) => TimerExemple(),
        MainLect6.rout_name: (context) => MainLect6(),
        Appbar_LeadAction_ex.rout_name: (context) => Appbar_LeadAction_ex(),
        BottomNavigationBarExm.rout_name: (context) => BottomNavigationBarExm(),
        BottomSheetExm.rout_name: (context) => BottomSheetExm(),
        DrawerExempl.rout_name: (context) => DrawerExempl(),
        ElvatidButtonExm.rout_name: (context) => ElvatidButtonExm(),
        Toast_screen.rout_name: (context) => Toast_screen(),

        //
        HomePage_FuturBuilder_RoEx.rout_name: (context) =>
            HomePage_FuturBuilder_RoEx(),

        //
        //labs
        LIst_view_tile.rout_name: (context) => LIst_view_tile(),
        List_Screen.rout_name: (context) => List_Screen(),
        Prodcet_Screen.rout_name: (context) => Prodcet_Screen(),
        restran_Screen.rout_name: (context) => restran_Screen(),
        main_lab1.rout_name: (context) => main_lab1(),
        WarbWidgetExm.rout_name: (context) => WarbWidgetExm(),
        DataTable_Roq_Ex.rout_name: (context) => DataTable_Roq_Ex(),
        ListviewEx.rout_name: (context) => ListviewEx(),
        main_lab3.rout_name: (context) => main_lab3(),
        ListviewSparted.rout_name: (context) => ListviewSparted(),
        GridView_ex.rout_name: (context) => GridView_ex(),

        MainLect7.rout_name: (context) => MainLect7(),

        lec7.rout_name: (context) => lec7(),
        Image_screen.rout_name: (context) => Image_screen(),
        lab4.rout_name: (context) => lab4(),
        ex4_1.rout_name: (context) => ex4_1(),
        ex4_2.rout_name: (context) => ex4_2(),
        ex4_3.rout_name: (context) => ex4_3(),

        lab5.rout_name: (context) => lab5(),
        ex5_1.rout_name: (context) => ex5_1(),
        ex5_2.rout_name: (context) => ex5_2(),
        ex5_3.rout_name: (context) => ex5_3(),
        ex5_4.rout_name: (context) => ex5_4(),

        lab7.rout_name: (context) => lab7(),
        ex6_1.rout_name: (context) => ex6_1(),
        ex6_2.rout_name: (context) => ex6_2(),
        ex6_3.rout_name: (context) => ex6_3(),
        ex6_4.rout_name: (context) => ex6_4(),
      },
    );
  }
}
