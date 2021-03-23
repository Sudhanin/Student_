package student;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
public class Student {
	public String Name,roll_number,year,gender,Department,Program;
	public Student() {
		
	}
	public String add() {
		if(!ispresent())
		{
			try {
				File myObj = new File("C:\\Users\\91866\\eclipse-workspace\\Student_\\student.txt");
				FileWriter myWriter = new FileWriter(myObj,true);
				BufferedWriter out = new BufferedWriter(myWriter);
				out.write(this.roll_number+','+this.Name+','+this.year+','+this.gender+','+this.Department+','+this.Program);
				out.newLine();
				out.close();
				myWriter.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "Added";
		}
		else {
		return "Roll";}
	}
	public boolean ispresent() {
		try {
		      File myObj = new File("C:\\Users\\91866\\eclipse-workspace\\Student_\\student.txt");
		      Scanner myReader = new Scanner(myObj);
		      while (myReader.hasNextLine()) {
		        String data = myReader.nextLine();
		        System.out.println(data);
		        String data1[]=data.split(",");
		        if (data1[0].equalsIgnoreCase(this.roll_number))
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
