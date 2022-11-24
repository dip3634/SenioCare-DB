import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class DataBeautify {

	
	@SuppressWarnings("resource")
	public static void main(String[] args) throws IOException {
		List<List<String>> data=new ArrayList<>();
		List<String> fileWrite=new ArrayList<>();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter number of records...");
		int num=sc.nextInt();
		namesandAddress(data,num);
		DOB(data);
		emailCreation(data);
		phoneCreation(data);
		SSN(data);	
		for(List<String> eachData:data) {
			fileWrite.add(eachData.get(0)+"$"+eachData.get(1)+"$"+eachData.get(2)+"$"+
					eachData.get(3)+"$"+eachData.get(4)+"$"+eachData.get(5)+"$"+
					eachData.get(6)+"$"+eachData.get(7));
		}
		/*for(String eachData:fileWrite)
		System.out.println(eachData);*/
		Path file = Paths.get("StructuredDatatoWrite.txt");
		Files.write(file, fileWrite, StandardCharsets.UTF_8);
	}

	@SuppressWarnings("resource")
	static void namesandAddress(List<List<String>> data, int num) throws IOException {
		BufferedReader br;
		br = new BufferedReader(new FileReader("D:\\SQLTest\\BigDataFromGit.txt"));
		String line = "";
		String name = "", address = "";
		int i = 0;
		while (i < num) {
			String flName[];
			line = br.readLine();
			if (line.charAt(0) != '\"') {
				name = line.substring(0, line.indexOf(","));
				flName = name.split(" ");
				address = line.substring(line.indexOf(",") + 2);
			} else {
				name = line.substring(1, line.indexOf("\"", line.indexOf("\"") + 1));
				flName = name.split(", ");
				if (flName.length == 1)
					continue;
				address = line.substring(line.indexOf("\"", line.indexOf("\"") + 1) + 2);
			}
			data.add(new ArrayList<>(Arrays.asList(String.valueOf(i+1),flName[0],flName[1],address)));
			// System.out.println(i + 1 + ". " + flName[0] + " " + flName[1] + " Address: "
			// + address);
			i++;
		}
	}

	static void emailCreation(List<List<String>> data) {
		String domains[] = { "outlook.com", "gmail.com", "rediffmail.com", "hotmail.com" };
		for (int i=0;i<data.size();i++) 
			data.get(i).add(data.get(i).get(1) + "." + data.get(i).get(2) + "@" + 
		    domains[ThreadLocalRandom.current().nextInt(0, 3 + 1)]);
	}

	static void phoneCreation(List<List<String>> data) {
		for (List<String> eachData:data)
			eachData.add(String.valueOf(ThreadLocalRandom.current().nextInt(111, 1000)) + "-"
					+ String.valueOf(ThreadLocalRandom.current().nextInt(111, 1000)) + "-"
					+ String.valueOf(ThreadLocalRandom.current().nextInt(1111, 10000)));
	}

	static void SSN(List<List<String>> data) {
		for (List<String> eachData:data)
			eachData.add(String.valueOf(ThreadLocalRandom.current().nextInt(111, 1000)) + "-"
					+ String.valueOf(ThreadLocalRandom.current().nextInt(11, 100)) + "-"
					+ String.valueOf(ThreadLocalRandom.current().nextInt(1111, 10000)));
	}

	static void DOB(List<List<String>> data) {
		for (List<String> eachData:data)
			eachData.add(String.valueOf(ThreadLocalRandom.current().nextInt(1, 13)) + "-"
					+ String.valueOf(ThreadLocalRandom.current().nextInt(1, 29)) + "-"
					+ String.valueOf(ThreadLocalRandom.current().nextInt(1950, 1999)));
	}
	
	static void writetoFile() {
		
	}

}
