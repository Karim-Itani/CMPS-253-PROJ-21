import 'package:flutter/material.dart';

class driverregistration extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return driverregistrationState();
  }
}

class driverregistrationState extends  State <driverregistration>{
  String _FirstName;
  String _LastName;
  String _PhoneNumber;
  String _vehiclepn;
  String _vehiclecolor;
  String _vehicletype;
  String _vehiclebrand;


  final GlobalKey<FormState> _driverKey = GlobalKey<FormState>();

  Widget _buildFirstName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'First Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'First Name Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _FirstName = value;
      },
    );
  }
  Widget _buildLastName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Last Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'Last Name Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _LastName = value;
      },
    );
  }

  Widget _buildPhoneNumber(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone Number'),
      maxLength: 8,
      keyboardType: TextInputType.number ,
      validator: (String value){
        int PhoneNumber = int.tryParse(value);
        if(PhoneNumber == null || PhoneNumber<8){
          return 'Phone Number Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _PhoneNumber = value;
      },
    );
  }

  Widget _buildvehiclepn(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Vehicle Plate Number'),
      validator: (String value){
        if(value.isEmpty){
          return 'Vehicle Plate Number Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _vehiclepn = value;
      },
    );
  }
  Widget _buildvehiclecolor(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Vehicle Color'),
      validator: (String value){
        if(value.isEmpty){
          return 'Vehicle Color Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _vehiclecolor = value;
      },
    );
  }
  Widget _buildvehicletype(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Vehicle Type'),
      validator: (String value){
        if(value.isEmpty){
          return 'Vehicle Type Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _vehicletype = value;
      },
    );
  }
  Widget _buildvehiclebrand(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Vehicle Brand'),
      validator: (String value){
        if(value.isEmpty){
          return 'Vehicle Brand Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _vehiclebrand = value;
      },
    );
  }




  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: new AppBar(
            title:  new Text('Driver Registration',style: TextStyle(color: Colors.black) ),
            backgroundColor: Colors.amber
        ),
        body: new Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _driverKey,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildFirstName(),
                _buildLastName(),
                _buildPhoneNumber(),
                _buildvehicletype(),
                _buildvehiclebrand(),
                _buildvehiclecolor(),
                _buildvehiclepn(),
                SizedBox(height:100),
                RaisedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if(!_driverKey.currentState.validate()){
                      return;}
                    _driverKey.currentState.save();
                    print(_FirstName);
                    print(_LastName);
                    print(_PhoneNumber);
                    print(_vehicletype);
                    print(_vehiclebrand);
                    print(_vehiclecolor);
                    print(_vehiclepn);

                  },
                )



              ],



            ),
          ),

        )
    );
  }
}

