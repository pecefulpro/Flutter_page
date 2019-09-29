import 'package:flutter/material.dart';


void main() {
  var materialApp = MaterialApp(
  debugShowCheckedModeBanner: false,
  home:Draft()
  
 


);
  return runApp(materialApp);
}

//Icons 
String file_ext = 'kmd';

//Market Cap
String marketC = '68,610,391.00';

//24H Volume(24h change)
String start_24 = "3,737,391.97";
double in_24 = -38.12; 
String vol_24 = (in_24).toStringAsFixed(2);

//Last Price(24h change)
String starting_24 = '0.02';
double pr_24 = 17.47;
String price_24 = (pr_24).toStringAsFixed(2);

//Block height 
int Block_height = 1552076;
String Block_String = Block_height.toString();

//Last notarized block 
int LNB = 1552076;
String LNB_string = Block_height.toString();


Color getColor(int selector) {
  if (in_24 < 0 ) {
    return Colors.red;
  }
  else{
    return Colors.lightGreenAccent[400];
  }
}

Color getColor1(int selector) {
  if (pr_24 < 0 ) {
    return Colors.red;
  }
  else{
    return Colors.lightGreenAccent[400];
  }
}




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
                  backgroundImage: AssetImage('lib/assets/icons/'+ file_ext +'.png'),
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
                "\$ "+marketC,
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
                  "\$"+ starting_24 +" ("+ price_24 +"%) ",
                style: TextStyle(

                  color: getColor1(null),
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
                "\$ " + start_24 + " (" + vol_24 + "%)",
                
                style: TextStyle(
                  color: getColor(null),
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
                Block_String,
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
                LNB_string,
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

