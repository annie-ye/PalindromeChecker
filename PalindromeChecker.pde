public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = noCapitals(noSpaces(onlyLetters(word)));
  if (word2.equals(reverse(noSpaces(onlyLetters(noCapitals(word))))))
  {
    return true;
  }
  return false;
}

public String reverse(String str)
{
  String answer = "";
  for (int i = str.length(); i > 0; i--)
  {
    answer = answer + str.substring(i-1, i);
  }
  return answer;
}

public String noCapitals(String str)
{
  String answer = new String(str.toLowerCase());
  return answer;
}

public String noSpaces(String str)
{
  String answer = new String("");
  for (int i = 0; i < str.length(); i++)
  {
    if (str.charAt(i) != ' ')
    {
      answer = answer + str.substring(i, i+1);
    }
  }
  return answer;
}

public String onlyLetters(String str)
{
  String answer = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if (Character.isLetter(str.charAt(i)))
    {
      answer = answer + str.substring(i, i+1);
    }
  }
  return answer;
}
