import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_surah_by_id/get_surah_by_id_cubit.dart';
import 'package:my_al_quran_digital/theme.dart';

class AudioAlquranScreen extends StatefulWidget {
  final int id;
  const AudioAlquranScreen({super.key, required this.id});

  @override
  State<AudioAlquranScreen> createState() => _AudioAlquranScreenState();
}

class _AudioAlquranScreenState extends State<AudioAlquranScreen> {
  final audioPlayer = AudioPlayer();
  bool _isAudioPlay = false;
  double _currentSliderPrimaryValue = 0;
  Duration _maxDuration = const Duration(seconds: 1);
  double rotationAngle = 0;

  void playAudio(String url) async {
    await audioPlayer.play(
      UrlSource(
        url,
      ),
    );
    final maxDuration = await audioPlayer.getDuration();
    setState(() {
      _maxDuration = maxDuration!;
      _isAudioPlay = true;
    });
    updateSliderPosition();
  }

  void pauseAudio() async {
    await audioPlayer.pause();
    _isAudioPlay = false;
    setState(() {});
  }

  void stopAudio() async {
    await audioPlayer.stop();
    _isAudioPlay = false;
    setState(() {});
  }

  void updateSliderPosition() {
    audioPlayer.onPositionChanged.listen((Duration duration) {
      if (audioPlayer.state == PlayerState.playing && mounted) {
        setState(() {
          _currentSliderPrimaryValue = duration.inSeconds.toDouble();
          rotationAngle += 1;
        });
      } else if (audioPlayer.state == PlayerState.paused && mounted) {
        rotationAngle = 0; // Reset rotation angle when audio is paused
      }
    });
  }

  @override
  void initState() {
    super.initState();
    context.read<GetSurahByIdCubit>().fectSurahById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
                stopAudio();
              },
              icon: const Icon(Icons.arrow_back)),
          backgroundColor: bgColor,
        ),
        body: BlocBuilder<GetSurahByIdCubit, GetSurahByIdState>(
          builder: (context, state) {
            if (state is GetSurahByIdLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetSurahByIdFailure) {
              return Text(state.msg);
            } else if (state is GetSurahByIdSuccess) {
              final data = state.data;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    RotationTransition(
                      turns: AlwaysStoppedAnimation(rotationAngle / 360),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: borderColor, width: 3),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: AssetImage("assets/bg1.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Text(
                      data.namaLatin,
                      style: primaryText.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${data.jumlahAyat} Ayat",
                      style:
                          secondaryText.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              stopAudio();
                              context.read<GetSurahByIdCubit>().fectSurahById(
                                  data.suratSebelumnya?.nomor ?? 1);
                              playAudio(data.audioFull.dua!);
                            },
                            icon: const Icon(
                              Icons.skip_previous,
                              size: 30,
                            )),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: borderColor, width: 2),
                              color: Colors.white,
                              shape: BoxShape.circle),
                          child: IconButton(
                            onPressed: () {
                              if (_isAudioPlay == true) {
                                pauseAudio();
                              } else {
                                playAudio(data.audioFull.dua!);
                              }
                            },
                            icon: Icon(
                              _isAudioPlay ? Icons.pause : Icons.play_arrow,
                              size: 30,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              stopAudio();
                              context.read<GetSurahByIdCubit>().fectSurahById(
                                  data.suratSelanjutnya?.nomor ?? 144);
                              playAudio(data.audioFull.dua!);
                            },
                            icon: const Icon(
                              Icons.skip_next,
                              size: 30,
                            )),
                      ],
                    ),
                    Slider(
                        max: _maxDuration.inSeconds.toDouble(),
                        activeColor: borderColor,
                        inactiveColor: borderColor2,
                        value: _currentSliderPrimaryValue,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderPrimaryValue = value;
                          });
                          audioPlayer.seek(Duration(seconds: value.toInt()));
                        }),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: borderColor),
                          image: const DecorationImage(
                              image: AssetImage("assets/blur.png"),
                              fit: BoxFit.cover)),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: ListView.builder(
                            itemCount: data.ayat!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  data.ayat![index].teksLatin,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              );
            }
            return const SizedBox();
          },
        ));
  }
}
