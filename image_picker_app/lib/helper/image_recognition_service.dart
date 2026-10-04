import 'dart:io';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';

class ImageRecognitionService {
  final ImageLabeler _labeler = ImageLabeler(
    options: ImageLabelerOptions(confidenceThreshold: 0.5),
  );

  Future<List<String>> analyzeImage(File imageFile) async {
    try {
      final inputImage = InputImage.fromFile(imageFile);
      final List<ImageLabel> labels = await _labeler.processImage(inputImage);

      if (labels.isEmpty) {
        return ['No objects detected.'];
      }

      return labels
          .map((label) => "${label.label} (${(label.confidence * 100).toStringAsFixed(1)}%)")
          .toList();
    } catch (e) {
      return ['Failed to recognize image: $e'];
    }
  }

  void dispose() {
    _labeler.close();
  }
}