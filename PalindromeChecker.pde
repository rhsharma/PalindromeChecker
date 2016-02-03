public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int j=0; j < lines.length; j++) 
  {
    if(palindrome(lines[j])==true)
    {
      println(lines[j] + " IS a palidrome.");
    }
    else
    {
      println(lines[j] + " is NOT a palidrome.");
    }
  }
}


public boolean palindrome(String word)
{
  String a = new String();
  for (int i = 0; i<word.length(); i++) {
    if ((word.charAt(i) != ' ') && (Character.isLetter(word.charAt(i)) == true))
      a += word.charAt(i);
  }

  if (a.toLowerCase().equals(reverse(a.toLowerCase())))
    return true;
  else
    return false;
}


public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--) {
        sNew += str.charAt(i);
    }
    return sNew;
}


