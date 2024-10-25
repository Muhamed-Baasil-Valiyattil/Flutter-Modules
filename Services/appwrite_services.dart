import 'package:appwrite/appwrite.dart';


Client client = Client()
  .setProject('671a34fc00156b4a4603')
  .setEndpoint('https://cloud.appwrite.io/v1')
  .setSelfSigned(
    status: true
  );

Account account = Account(client);

Future<String> createUser( String email, String password) async {


  try {

    await account.create(userId: ID.unique(), email: email, password: password);
    return "Success";
    
  }on AppwriteException catch (e) {

    return e.message.toString();
    
  }
}

Future<String> logInUser(String email, String password) async{
  
  try {

     await account.createEmailPasswordSession(email: email, password: password);
     return "Log In Success";
    
  }on AppwriteException catch (e) {

    return e.message.toString();
    
  }
 
}      

  

