import 'package:flutter/material.dart';

class IntroDialog extends StatelessWidget {
  const IntroDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Dialog.fullscreen(
      child: Container(
        width: size.width,
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close))),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Title(
                    color: Colors.black,
                    child: Text("Wilkommen",
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center)),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.handshake),
                      Expanded(
                        child: Text("Danke für das herunterladen meiner App!",
                            textAlign: TextAlign.center),
                      )
                    ]),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.location_city),
                      Expanded(
                        child: Text(
                            "Demo Day zeigt alle Versammlungen in Berlin an.",
                            textAlign: TextAlign.center),
                      )
                    ]),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.handshake),
                      Expanded(
                        child: Text(
                            "Sie können zwischen 'Heute', 'Morgen' und 'Benutzer'definiert wählen.",
                            textAlign: TextAlign.center),
                      )
                    ]),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search),
                      Expanded(
                        child: Text(
                            "Sie können auch nach Versammlungen suchen.",
                            textAlign: TextAlign.center),
                      )
                    ]),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.feedback),
                      Expanded(
                        child: Text(
                          "Verbesserungsvorschläge und neue Funktionen können über die Einstellungen eingereicht werden.",
                          textAlign: TextAlign.center,
                          maxLines: 3,
                        ),
                      )
                    ]),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.waving_hand),
                      Expanded(
                          child: Text(
                        "Viel Spaß!",
                        textAlign: TextAlign.center,
                      ))
                    ]),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.info),
                      Expanded(
                          child: Text(
                        "PS: Die App ist Open Source.",
                        textAlign: TextAlign.center,
                      ))
                    ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
