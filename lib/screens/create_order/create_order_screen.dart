import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_test/screens/create_order/bloc/order_bloc.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({super.key});

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  String _errorText = '';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderBloc(),
      child: BlocConsumer<OrderBloc, OrderState>(
        listener: (context, state) {
          if (state.isError) {
            if (state.errorText != null) {
              _errorText = state.errorText ?? '';
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Создание заказа'),
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.arrow_left),
              ),
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            context.read<OrderBloc>().add(OrderCreateEvent(serviceId: 1, userId: 123));
                          },
                    child: state.isLoading
                        ? CircularProgressIndicator(padding: EdgeInsets.all(8))
                        : Text('Создать заказ'),
                  ),
                  Text(
                    state.isError ? _errorText : '',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
