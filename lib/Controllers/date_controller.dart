import 'package:get/get.dart';
import 'package:rotino_clone_project/APIs/remote_services.dart';

class DateController extends GetxController {
  //!  I had a problem with this part. I should have paid attention to the type of photolist.
  var date = 0.obs;
  //!.................................
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getAllPhotos2();
  }

  void getAllPhotos2() async {
    isLoading(true);

    try {
      isLoading(true);
      var date = await RemoteServices.fetchDateToString();
      this.date.value = date;
    } finally {
      isLoading(false);
    }
  }
}
