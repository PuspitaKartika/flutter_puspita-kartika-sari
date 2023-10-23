import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_doa_by_id/get_doa_byid_cubit.dart';
import 'package:my_al_quran_digital/theme.dart';

class DoaIdScreen extends StatefulWidget {
  final int id;
  const DoaIdScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<DoaIdScreen> createState() => _DoaIdScreenState();
}

class _DoaIdScreenState extends State<DoaIdScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetDoaByidCubit>().fetchDoaById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDoaByidCubit, GetDoaByidState>(
      builder: (context, state) {
        if (state is GetDoaByidLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetDoaByidFailure) {
          return Scaffold(
            body: Center(child: Text(state.msg)),
          );
        } else if (state is GetDoaByidSuccess) {
          final data = state.data;
          return Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              backgroundColor: bgColor,
              centerTitle: true,
              title: Text(
                data.nama ?? "",
                style: primaryText.copyWith(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          textAlign: TextAlign.right,
                          data.ar ?? "",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    data.tr ?? "",
                    style: primaryText.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Artinya : ${data.idn}",
                    style: primaryText.copyWith(fontStyle: FontStyle.italic),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Tentang : ${data.tentang}",
                      style: primaryText,
                    ),
                  )
                ],
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
