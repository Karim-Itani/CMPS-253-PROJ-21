import 'package:flutter/material.dart';

class  MerchantRegistration extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MerchantRegistrationState();
  }
}

class MerchantRegistrationState extends  State <MerchantRegistration>{
  String _FirstName;
  String _LastName;
  String _PhoneNumber;
  String _ShopName;
  String _ShopLocation;

  final GlobalKey<FormState> _MerchantKey = GlobalKey<FormState>();

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

  Widget _buildShopName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Shop Name'),
      validator: (String value){
        if(value.isEmpty){
          return 'Shop Name Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _ShopName = value;
      },
    );
  }
  Widget _buildShopLocation(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Shop Location'),
      validator: (String value){
        if(value.isEmpty){
          return 'Shop Location Is Required';
        }
        return null;
      },
      onSaved: (String value){
        _ShopLocation = value;
      },
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
          title:  new Text('Merchant Registration',style: TextStyle(color: Colors.black) ),
          backgroundColor: Colors.amber
      ),
      body: new Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _MerchantKey,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildFirstName(),
            _buildLastName(),
          _buildPhoneNumber(),
          _buildShopName(),
            _buildShopLocation(),
            SizedBox(height:100),
            RaisedButton(
              child: Text('Submit'),
              onPressed: () {
                if(!_MerchantKey.currentState.validate()){
                  return;}
                _MerchantKey.currentState.save();
                print(_FirstName);
                print(_LastName);
                print(_PhoneNumber);
                print(_ShopName);
                print(_ShopLocation);
              },
            )
          ],
        ),
        ),
      )
      );

}
}