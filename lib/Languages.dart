import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations{

    @override
    Map<String, Map<String, String>> get keys => {
      'en_US' :{
        'message': 'what is your name',
        'name': 'Farwa Khan'
      },
      'ur_PK' :{
        'message': 'آپ کا نام کیا ہے',
        'name': 'فروا خان'
      }
    } ;
}