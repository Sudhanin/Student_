package student;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
public class Subject {
	  public String  name,code,credits,theory;
	  public String add() {
			if(!ispresent())
			{
				try {
					File myObj = new File("C:\\Users\\91866\\eclipse-workspace\\Student_\\subject.txt");
					FileWriter myWriter = new FileWriter(myObj,true);
					BufferedWriter out = new BufferedWriter(myWriter);
					out.write(this.code+','+this.name+','+this.credits+','+this.theory);
					out.newLine();
					out.close();
					myWriter.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "Added successfully";
			}
			else {
			return "Already added";}
		}
		public boolean ispresent() {
			try {
			      File myObj = new File("C:\\Users\\91866\\eclipse-workspace\\Student_\\subject.txt");
			      Scanner myReader = new Scanner(myObj);
			      while (myReader.hasNextLine()) {
			        String data = myReader.nextLine();
			        String data1[]=data.split(",");
			        if (data1[0].equalsIgnoreCase(this.code))
			        {    
			        	return true;
			        }
			      }
			      myReader.close();
			      return false;
			      }
			catch (FileNotFoundException e) {
			      System.out.println(e);
			      e.printStackTrace();
			    }
			
			return false;
		}
}
