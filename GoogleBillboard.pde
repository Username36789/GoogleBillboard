public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup()  
{            
  // remove the decimal point from e
  String digitsOfE = e.replace(".", "");
  
  for (int i = 0; i <= digitsOfE.length() - 10; i++) {
    // get 10 consecutive digits by substring
    String tenDigits = digitsOfE.substring(i, i + 10);

    //conversion from string to double
    double number = Double.parseDouble(tenDigits);
    
    if (isPrime(number)) {
      println("The first ten-digit prime found in consecutive digits of e is the number: " + tenDigits);
      break;
    }
  }
  
  // exit after finding the result
  exit();
}  

public void draw()  
{   
	//not needed for this assignment
}  

public boolean isPrime(double dNum)  
{   
  // convert the double to an integer with long
  long number = (long) dNum;

  if (number < 2) return false;
  if (number == 2 || number == 3) return true;
  if (number % 2 == 0 || number % 3 == 0) return false;

  // check for factors from 5 to sqrt(number)
  for (long i = 5; i * i <= number; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false;
    }
  }

  return true;
} 
