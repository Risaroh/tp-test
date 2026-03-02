import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_test/home/bloc/app_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _showErrorDialog(BuildContext context, String errorText) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                Text('Возникла ошибка: $errorText'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                  },
                  child: Text('ОК'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc()..add(InitialAppEvent()),
      child: BlocConsumer<AppBloc, AppState>(
        listener: (context, state) {
          if (state.error != null) {
            _showErrorDialog(context, state.error ?? '');
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(title: Text('Домашний экран')),
                body: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/create_order');
                    },
                    child: Text('Переход на создание заказа'),
                  ),
                ),
              ),
              if (state.isLoading)
                SizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black54),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
