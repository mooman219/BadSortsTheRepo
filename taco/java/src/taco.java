import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class taco {
	public static void main(String[] args) {
		int amount = 8;
		
		List<Integer> numbers = generateNumbers(amount);
		
		loop(numbers);
	}
	
	public static boolean isSorted(List<Integer> numbers){
		for (int i = 0; i <numbers.size()-1; i++){
			if (numbers.get(i) < numbers.get(i+1)){
				return false;
			}
		}
		return true;
	}
	
	public static void loop(List<Integer> numbers){
		int count = 0;
		while (!isSorted(numbers)){
			sort(numbers);
			count++;
			//print stuff every million iterations
			if(count%1000000 == 0){
				System.out.println("current count is: " + count);
			}
		}
		System.out.println("final count is: " + count);
	}
	
	public static void sort(List<Integer> numbers){
		int length = numbers.size();
		Random rand = new Random();
		
		//Remove a random element from the list
		int index = rand.nextInt(length);
		int number = numbers.remove(index);
		
		//Add the element to a random position in the list
		index = rand.nextInt(length);
		numbers.add(index, number);		
	}
	
	public static List<Integer> generateNumbers(int amount){
		List<Integer> numbers = new ArrayList<Integer>();
		Random rand = new Random();
		for (int i=0; i<amount; i++){
			numbers.add(rand.nextInt(100+1));
		}
		return numbers;
		
	}
}
