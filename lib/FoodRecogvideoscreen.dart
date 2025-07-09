import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(home: FoodRecogVideoScreen()));
}

class FoodRecogVideoScreen extends StatelessWidget {
  const FoodRecogVideoScreen({super.key});

  final List<String> beginnerVideos = const [
    'https://youtu.be/Fwcv4Wcs4XU?si=E4NLo0jxBGH3U6Z0',
    'https://youtu.be/ZW84Fr_rYq4?si=F9ocp7SVt-Ym-NRO',
    'https://youtu.be/Gij7CHbjNZY?si=Tivk5ao1LWIO4jlu',
    'https://youtu.be/dtfTCqyuH84?si=ugjjqsXlWhct_09e',
    'https://youtu.be/Ry2di3qJzzM?si=Ux-vXIntfiDMb5k9',
  ];

  final List<String> intermediateVideos = const [
    'https://youtu.be/zMnrXFVHPPA?si=ne-bi0azY-gHujb-',
    'https://youtu.be/W6Cw-6Aji4A?si=VpLAUCgoLCD1ITZF',
    'https://youtu.be/eP3BP341wx4?si=ZMDkZiebO_AhX0Xu',
    'https://youtu.be/IgW4R-avn78?si=1AePz7dMegimD61G',
    'https://youtu.be/L9ZuTQGPTnI?si=AxBUBJJXyaOXGdOU',
    'https://youtu.be/SpI3QF_Iauc?si=BptqfC1m98qWk97D',
  ];

  final List<String> expertVideos = const [
    'https://youtu.be/n8ygP0UC11c?si=eOA_Do-VFlJl4mZX',
    'https://youtu.be/948mcYdlhRk?si=zrlkP8NtoJvX0rGW',
    'https://youtu.be/j8ZK_1m54Eo?si=vtvIowMEcnGH99W_',
    'https://youtu.be/VJY8Vcz5ki0?si=bZgtN_n3PaAhC7_U',
    'https://youtu.be/epIdjMaHa_w?si=jtklBU9ggBEIv8nZ',
    'https://youtu.be/GZm7cmKK1bk?si=SYo0Bcp76tj6F462',
    'https://youtu.be/mJ1iIiVV0mM?si=urj6IpNR49Y2ntun',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Food Recognition Videos"),
          backgroundColor: Colors.green[200],
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: "Beginner"),
              Tab(text: "Intermediate"),
              Tab(text: "Expert"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            VideoList(urls: beginnerVideos),
            VideoList(urls: intermediateVideos),
            VideoList(urls: expertVideos),
          ],
        ),
      ),
    );
  }
}

class VideoList extends StatelessWidget {
  final List<String> urls;

  const VideoList({super.key, required this.urls});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: urls.length,
      itemBuilder: (context, index) {
        final url = urls[index];
        final videoId = YoutubePlayer.convertUrlToId(url);

        if (videoId == null) return const SizedBox();

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => FullScreenPlayer(videoId: videoId)),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: videoId,
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                  mute: false,
                  controlsVisibleAtStart: true,
                ),
              ),
              showVideoProgressIndicator: true,
            ),
          ),
        );
      },
    );
  }
}

class FullScreenPlayer extends StatefulWidget {
  final String videoId;
  const FullScreenPlayer({super.key, required this.videoId});

  @override
  State<FullScreenPlayer> createState() => _FullScreenPlayerState();
}

class _FullScreenPlayerState extends State<FullScreenPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        controlsVisibleAtStart: true,
        forceHD: true,
        enableCaption: false,
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        bottomActions: [
          CurrentPosition(),
          ProgressBar(isExpanded: true),
          PlaybackSpeedButton(),
          FullScreenButton(),
        ],
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(child: Center(child: player)),
        );
      },
    );
  }
}
