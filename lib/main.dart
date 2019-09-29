import 'package:flutter/material.dart';


void main() {
  var materialApp = MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Draft()
 


);
  return runApp(materialApp);
}



String vol_24 = (-38.12).toStringAsFixed(2);



class Draft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:Colors.grey[900],
      appBar: AppBar(
        title:Text('Komodo (KMD)'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,

      ),
        body: Padding(
          padding:EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/icons/kmd.png'),
                  radius: 40,
                ),
              ),

              Divider(
                height: 10,
              ),

              Text(
                'Market Cap',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                """\$68,610,391.00 """,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Last Price(24h change)',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                """\$0.02(+17.47%) """,
                style: TextStyle(
                  color: Colors.lightGreenAccent[400],
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 15),

              Text(
                '24H Volume(24h change)',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10.0),

              Text(

                "\$ 3,737,391.97 (" + vol_24 + "%)",
                
                style: TextStyle(
                  color: Colors.red,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 15),

              Text(
                'Block height',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                """1552076""",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 15),

              Text(
                'Last notarized height',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                """1552060""",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 15),

              Text(
                'Last notarized block',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                """1552060""",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 15),


            ],

          ),
        ),
      
    );
  }
}

