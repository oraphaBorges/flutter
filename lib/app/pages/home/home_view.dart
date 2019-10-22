import 'package:flutter/material.dart';
import 'package:BorgitozApp/app/pages/blank/blank_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:BorgitozApp/components/appdrawer,component.dart';
import 'Package:BorgitozApp/app/pages/home/home_controller.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeView extends View {
 
  @override
  State<StatefulWidget> createState() {
    return HomeViewState(HomeController());
  }

}

class HomeViewState extends ViewState<HomeView,HomeController> {
   HomeViewState(Controller controller) : super(controller);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.only(top: 20,left: 20,right: 20,),
          children: <Widget>[
            Text(
              "Seja bem-vindo ao",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "@OBorgesApp",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            Text(
              "Um canal oficial de conteúdo extra para os Borgitoz, para que você posso ter em primeira mão todas as informações e conteúdos produzido pelo incrível Raphael Borges!",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              "Funções Disponíveis",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () =>{
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => BlankView(),),
                      ),
                    },
                    child: Icon(
                      FontAwesomeIcons.images,
                      color: Colors.pink,
                      size: 34,
                    ),
                  ),
                  FlatButton(
                    onPressed: () =>{
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => BlankView(),
                        ),
                      ),
                    },
                    child: Icon(
                      FontAwesomeIcons.addressCard,
                      color: Colors.pink,
                      size: 34,
                    ),
                  ),
                  FlatButton(
                    onPressed: () =>{
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => BlankView(),
                        ),
                      ),
                    },
                    child: Icon(
                      FontAwesomeIcons.music,
                      color: Colors.pink,
                      size: 34,
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    onPressed: () =>{
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => BlankView(),
                        ),
                      ),
                    },
                    child: Icon(
                      FontAwesomeIcons.envelopeOpenText,
                      color: Colors.pink,
                      size: 34,
                    ),
                  ),
                  FlatButton(
                    onPressed: () =>{
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => BlankView(),
                        ),
                      ),
                    },
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.pink,
                      size: 34,
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 30),
            Text(
              "Redes Sociais",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 15),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: controller.facebook,
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blueAccent,
                    ),
                  ),
                  FlatButton(
                    onPressed: controller.instagram,
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pink,
                    ),
                  ),
                  FlatButton(
                    onPressed: controller.twitter,
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}
