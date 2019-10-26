import 'package:flutter/material.dart';
import 'package:hello_world/functions.dart';
import 'package:hello_world/widgets/code_tile.dart';
import 'package:hello_world/widgets/custom_dialog.dart';
import 'package:url_launcher/url_launcher.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3c4245),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.info_outline,
          size: 30.0,
        ),
        tooltip: 'Accept',
        backgroundColor: Color(0xff1a3e59),
        elevation: 5.0,
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) => CustomDialog(
            title: "Info",
            description: ' -> Scroll down for other languages\n\n'
                ' -> Tap on icon logo to get a cheatsheat for the language. 😃',
            buttonText: "Okay",
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  CodeTile(
                    height: 180,
                    width: 350,
                    langName: 'Swift',
                    code: 'import Swift\n\n'
                        'print(\'Hello World\');',
                    image: 'swiftlogo.png',
                    onPressed: PdfLauncher.launchURLSwift,
                  ),
                  CodeTile(
                    height: 150,
                    width: 350,
                    langName: 'Python',
                    code: 'print(Hello World)',
                    image: 'pythonlogo.png',
                    onPressed: PdfLauncher.launchURLPython,
                  ),
                  CodeTile(
                    height: 150,
                    width: 350,
                    langName: 'Ruby',
                    code: 'puts "Hello World";',
                    image: 'rubylogo.png',
                    onPressed: PdfLauncher.launchURLRuby,
                  ),
                  CodeTile(
                    height: 160,
                    width: 350,
                    langName: 'PHP',
                    code: '<?php\n'
                        'echo "Hello World";\n'
                        '?>',
                    image: 'phplogo.png',
                    onPressed: PdfLauncher.launchURLPhp,
                  ),
                  CodeTile(
                    height: 150,
                    width: 350,
                    langName: 'Javascript',
                    code: 'console.log("Hello World");',
                    image: 'jslogo.png',
                    onPressed: PdfLauncher.launchURLJs,
                  ),
                  CodeTile(
                    height: 250,
                    width: 350,
                    langName: 'Java',
                    code: 'public class HelloWorld {\n\n'
                        'public static void main(String[] args) {\n\n'
                        '    System.out.println("Hello World");\n\n'
                        '  }\n'
                        '}',
                    image: 'javalogo.png',
                    onPressed: PdfLauncher.launchURLJava,
                  ),
                  CodeTile(
                    height: 150,
                    width: 350,
                    langName: 'Kotlinn',
                    code: 'fun main(args : Array<String>) {\n'
                        '  println("Hello, World!")\n'
                        '}',
                    image: 'kotlinlogo.png',
                    onPressed: PdfLauncher.launchURLKotlin,
                  ),
                  CodeTile(
                    height: 150,
                    width: 350,
                    langName: 'Haskell',
                    code: 'main = putStrLn "Hello World"',
                    image: 'haskelllogo.png',
                    onPressed: PdfLauncher.launchURLHaskell,
                  ),
                  CodeTile(
                    height: 200,
                    width: 350,
                    langName: 'GoLang',
                    code: 'package main\n'
                        'import "fmt"\n\n'
                        'func main(){\n'
                        '  fmt.Printf("Hello Wolrd")\n'
                        '}',
                    image: 'gologo.png',
                    onPressed: PdfLauncher.launchURLGo,
                  ),
                  CodeTile(
                    height: 150,
                    width: 350,
                    langName: 'Dart',
                    code: 'void main(){\n'
                        '  print("Hello World");\n'
                        '}',
                    image: 'dartlogo.png',
                    onPressed: PdfLauncher.launchURLDart,
                  ),
                  CodeTile(
                    height: 300,
                    width: 350,
                    langName: 'C sharp',
                    code: 'using System;\n'
                        'namespace HelloWorldApp { \n'
                        '  class HelloWorld {\n\n'
                        '    static void Main(string[] args) { \n\n'
                        '      Console.WriteLine("Hello World!");\n'
                        '      Console.ReadKey();\n'
                        '    }\n'
                        '  }\n'
                        '}',
                    image: 'csharplogo.png',
                    onPressed: PdfLauncher.launchURLCsharp,
                  ),
                  CodeTile(
                    height: 250,
                    width: 350,
                    langName: 'C++',
                    code: '#include <iostream>\n'
                        'using namespace std;\n\n'
                        'int main(){\n'
                        '  cout << "Hello World" << endl;\n'
                        '  return 0;\n'
                        '}',
                    image: 'cpplogo.png',
                    onPressed: PdfLauncher.launchURLCpp,
                  ),
                  CodeTile(
                    height: 250,
                    width: 350,
                    langName: 'C',
                    code: '#include <stdio.h>\n'
                        '#include <stdlib.h>\n\n'
                        'int main(){\n'
                        '  printf("Hello World");\n'
                        '  return 0;\n'
                        '}',
                    image: 'clogo.png',
                    onPressed: PdfLauncher.launchURLC,
                  ),
                ],
              ),
              Positioned(
                top: 30,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xff1a3e59),
                  iconSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
