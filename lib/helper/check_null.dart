




dynamic checkNull({required dynamic data , required String title}){


// String temp = data.toString();

  if(data.toString().toLowerCase() == "null"){

    print("eorr there is null value $title");
    throw FormatException;
  }

  return data;

}