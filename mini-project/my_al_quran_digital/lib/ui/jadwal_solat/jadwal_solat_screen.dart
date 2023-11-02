import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_all_country/get_all_country_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_country_by_id/get_country_by_id_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_jadwal_solat/get_jadwal_solat_cubit.dart';
import 'package:my_al_quran_digital/ui/jadwal_solat/widget/jadwal_widget.dart';
import 'package:my_al_quran_digital/model/country_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class JadwalSolatSceen extends StatefulWidget {
  const JadwalSolatSceen({super.key});

  @override
  State<JadwalSolatSceen> createState() => _JadwalSolatSceenState();
}

class _JadwalSolatSceenState extends State<JadwalSolatSceen> {
  int id = 707;
  String tanggal = DateTime.now().toLocal().toString().split(' ')[0];
  @override
  void initState() {
    super.initState();
    context.read<GetCountryByIdCubit>().fetchBy(id);
    context
        .read<GetJadwalSolatCubit>()
        .fetchJadwalSolat(id: id, tanggal: tanggal);
    context.read<GetAllCountryCubit>().fetchAllCountry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/header.png",
                height: 150,
              ),
              Text(
                "Jadwal Solat Hari ini ",
                style: primaryText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(DateTime.now().toLocal().toString().split(' ')[0]),
              BlocBuilder<GetCountryByIdCubit, GetCountryByIdState>(
                builder: (context, state) {
                  if (state is GetCountryByIdLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is GetCountryByIdFailure) {
                    return Center(child: Text(state.msg));
                  } else if (state is GetCountryByIdSuccess) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Row(
                        children: [
                          const Icon(Icons.pin_drop),
                          const Text("Pilih Kota :   "),
                          Expanded(
                            child: BlocBuilder<GetAllCountryCubit,
                                GetAllCountryState>(builder: (context, st) {
                              if (st is GetAllCountryLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (st is GetAllCountryFailure) {
                                return Text(st.msg);
                              } else if (st is GetAllCountrySuccess) {
                                return DropdownButton(
                                  value: state.data.first.id,
                                  onChanged: (value) {
                                    setState(() {
                                      id = int.parse(value!);
                                      context
                                          .read<GetJadwalSolatCubit>()
                                          .fetchJadwalSolat(
                                              id: id, tanggal: tanggal);
                                    });
                                  },
                                  items: st.data
                                      .map((CountryModel country) =>
                                          DropdownMenuItem(
                                            value: country.id,
                                            child: ConstrainedBox(
                                              constraints: const BoxConstraints(
                                                  maxWidth:
                                                      200), // Atur lebar maksimum item
                                              child: Text(country.nama),
                                            ),
                                          ))
                                      .toList(),
                                );
                              }
                              return const SizedBox();
                            }),
                          ),
                        ],
                      ),
                    );
                    //  Text(state.data.first.nama);
                  }
                  return const SizedBox();
                },
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                child: BlocBuilder<GetJadwalSolatCubit, GetJadwalSolatState>(
                  builder: (context, state) {
                    if (state is GetJadwalSolatLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is GetJadwalSolatFailure) {
                      return Center(child: Text(state.msg));
                    } else if (state is GetJadwalSolatSuccess) {
                      return JadwalWidget(item: state.data);
                    }
                    return const SizedBox();
                  },
                ),
              )
            ],
          ),
        ));
  }
}
