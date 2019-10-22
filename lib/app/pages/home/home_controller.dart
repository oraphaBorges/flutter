import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends Controller {
  @override
  void initListeners() {
  }

  Future<void> facebook() async {
    const String url = "https://facebook.com/oraphaborges";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // @TODO: Criar Exceptions que retornem erros legais pro user
      throw 'Could not launch $url';
    }
  }
  Future<void> instagram() async {
    const String url = "https://instagram.com/oraphaborges";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // @TODO: Criar Exceptions que retornem erros legais pro user
      throw 'Could not launch $url';
    }
  }
  Future<void> twitter() async {
    const String url = "https://twitter.com/oraphaborges";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // @TODO: Criar Exceptions que retornem erros legais pro user
      throw 'Could not launch $url';
    }
  }
}

