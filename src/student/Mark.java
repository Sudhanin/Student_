package student;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
public class Mark {
	 public String code,roll_number,mark;
	 public String add() {
			if(!ispresent())
			{
				try {
					File myObj = new File("C:\\Users\\91866\\eclipse-workspace\\Student_\\marks.txt");
					FileWriter myWriter = new FileWriter(myObj,true);
					BufferedWriter out = new BufferedWriter(myWriter);
					out.write(this.roll_number+','+this.code+','+this.mark);
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
			      File myObj = new File("C:\\Users\\91866\\eclipse-workspace\\Student_\\marks.txt");
			      Scanner myReader = new Scanner(myObj);
			      while (myReader.hasNextLine()) {
			        String data = myReader.nextLine();
			        String data1[]=data.split(",");
			        if (data1[0].equalsIgnoreCase(this.roll_number) && data1[1].equalsIgnoreCase(this.code))
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
		
		public String[] fetch() {
				try {
					File myObj = new File("C:\\Users\\91866\\eclipse-workspace\\Student_\\marks.txt");
					 Scanner myReader = new Scanner(myObj);
					 String [] result = new String [30] ;
					  int i=0;
				      while (myReader.hasNextLine()) {
				        String data = myReader.nextLine();
				        String data1[]=data.split(",");
				        if(data1[0].equalsIgnoreCase(this.roll_number)) {
				        	System.out.println(data);
				        	result[i]=data;
				        	i++;
				        }
				      }
				     
				      myReader.close();
				      if(i==0) {
				    	  
				    	  return null;
				    	 
				      }
				      return result;
				      }
				
				catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
			return null;
		} 
}
