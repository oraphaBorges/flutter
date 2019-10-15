import 'package:BorgesAPP/pages/funcs/info.func.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context,false),
        ),
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
                        context, 
                        MaterialPageRoute(
                          builder: (context) => InfoFuncPage(),
                        ),
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
                          builder: (context) => InfoFuncPage(),
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
                          builder: (context) => InfoFuncPage(),
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
                          builder: (context) => InfoFuncPage(),
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
                          builder: (context) => InfoFuncPage(),
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
                    onPressed: () async {
                      const url = 'https://facebook.com/oraphaborges';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blueAccent,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                      const url = 'https://instagram.com/oraphaborges';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pink,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                      const url = 'https://twitter.com/oraphaborges';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
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
