import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class RefugeeAssistantScreen extends StatefulWidget {
  const RefugeeAssistantScreen({super.key});

  @override
  State<RefugeeAssistantScreen> createState() => _RefugeeAssistantScreenState();
}

class _RefugeeAssistantScreenState extends State<RefugeeAssistantScreen> {
  final PanelController _panelController = PanelController();
  final TextEditingController _messageController = TextEditingController();
  MaplibreMapController? _mapController;

  static const LatLng _center = LatLng(12.8628, 30.2176); // Sudan

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      body: SlidingUpPanel(
        controller: _panelController,
        minHeight: 60,
        maxHeight: MediaQuery.of(context).size.height * 0.65,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        panelBuilder: (scrollController) => _buildMapPanel(scrollController),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hidayah Guide",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "How can we help you today?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buildInputBar(),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 90,
              left: 0,
              right: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () => _panelController.open(),
                  child: const Icon(Icons.keyboard_arrow_up, size: 32, color: Colors.orange),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: "Type your message...",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.blue),
            onPressed: () {
              // TODO: Add chat logic
            },
          ),
          IconButton(
            icon: const Icon(Icons.mic, color: Colors.orange),
            onPressed: () {
              // TODO: Add voice input
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMapPanel(ScrollController scrollController) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            "Nearby Resources",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: MaplibreMap(
            styleString: 'asset://assets/style.json',
            initialCameraPosition: const CameraPosition(
              target: _center,
              zoom: 5.0,
            ),

            onMapCreated: (controller) {
              setState(() {
                _mapController = controller;
              });
            },
          ),
        ),
      ],
    );
  }
}
