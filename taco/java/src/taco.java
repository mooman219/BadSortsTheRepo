import java.util.List;
import java.util.Random;

public class taco {
	public static void main(String[] args) {
		int amount = 8;
		
		List<Integer> numbers = generateNumbers(amount);
		
		loop(numbers);
	}
	
	public static boolean isSorted(List<Integer> numbers){

		for (Integer number : numbers){
			if (number > numbers.get(number+1)) {
				return false;
			}
		}
		return true;
	}
	
	public static void loop(List<Integer> numbers){
		int count = 0;
		while (!isSorted(numbers)){
			//TODO
		}
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
		//TODO
		return null;
		
	}
}
