import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetdiary/bloc/calculator_bloc/calculator_bloc.dart';
import 'package:vetdiary/bloc/dose_calculator_bloc/dose_calculator_bloc.dart';
import 'package:vetdiary/bloc/gestation_calculator/gestation_calculator_bloc.dart';
import 'package:vetdiary/widgets/age_calculator.dart';
import 'package:vetdiary/widgets/body_surface_area_calculator.dart';
import 'package:vetdiary/widgets/dosage_calculator.dart';
import 'package:vetdiary/widgets/fluid_rate_calculator.dart';
import 'package:vetdiary/widgets/gestation_calculator.dart';
import 'package:vetdiary/widgets/navigation_drawer.dart';
import 'package:vetdiary/widgets/transfusion_calculator.dart';

import 'model/calculator_result.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CalculatorBloc(AgeCalculatorInitial(Duration(days: 0))),
        ),
        BlocProvider(
          create: (context) => DoseCalculatorBloc(DoseCalculatorStateLoaded(
              result: DoseCalculatorResult(
            amount: UnitWithValue(value: "0", unit: ""),
            frequency: UnitWithValue(value: "0", unit: ""),
          ))),
        ),
        BlocProvider(
          create: (context) => GestationCalculatorBloc(),
        ),
      ],
      child: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            elevation: 2.0,
            backgroundColor: Theme.of(context).backgroundColor,
            title: Text("Calculator"),
            leading: Builder(builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }),
            bottom: TabBar(
              labelColor: Colors.black,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  text: "Dosage Calculator",
                ),
                Tab(
                  text: "Fluid Rate Calculator",
                ),
                Tab(
                  text: "Gestation Calculator",
                ),
                Tab(
                  text: "Transfusion Calculator",
                ),
                Tab(
                  text: "Age Calculator",
                ),
                Tab(
                  text: "Body Surface Area Calculator",
                ),
                Tab(
                  text: "Energy Requirement Calculator",
                ),
              ],
            ),
          ),
          drawer: NavigationDrawer(),
          body: Container(
            child: SafeArea(
              child: TabBarView(
                children: <Widget>[
                  //Dosage Calculator
                  // DosageCalculator(),
                  // FluidRateCalculator(),
                  Container(),
                  Container(),
                  GestatationCalculator(),
                  Container(),
                  // TransfusionCalculator(),
                  AgeCalculator(),
                  Container(),
                  // BodySurfaceAreaCalculator(),
                  Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
