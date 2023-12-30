import '../logic/MarkerRepository.dart';
import '../models/MarkerModel.dart';

abstract class IMarkerRepository {
  Future<List<MarkerModel>> getMarker(
      {TimePeriode timePeriode = TimePeriode.today, DateTime? dateTime});
}
