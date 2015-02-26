
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ConcurrentLinkedQueue;

/**
 * Compiled for Java 7
 *
 * @author Joseph Cumbo (mooman219)
 */
public class SleepSort {

    /**
     * Adds all the elements in order from the given list to a new list. This
     * method blocks until all elements have been processed. Not guaranteed to
     * to actually sort large lists.
     *
     * @param list the list of elements that will be added to the sorted list.
     * @return A new sorted list.
     */
    public static List<Integer> sort(final List<Integer> list) {
        final ConcurrentLinkedQueue<Integer> sortedList = new ConcurrentLinkedQueue<>();
        List<Thread> runners = new ArrayList<>();
        for (final Integer item : list) {
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    try {
                        Thread.sleep(item * 500l); // Probably a good sleep time
                    } catch (InterruptedException ex) {
                    }
                    sortedList.add(item);
                }
            };
            Thread thread = new Thread(runnable);
            runners.add(thread);
            thread.start();
        }
        for (Thread runner : runners) {
            try {
                runner.join();
            } catch (InterruptedException ex) {
            }
        }
        return new ArrayList<Integer>(sortedList);
    }

    /**
     * Test case.
     *
     * @param args command line arguments.
     */
    public static void main(String[] args) {
        List<Integer> myList = new ArrayList<>();
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            myList.add(random.nextInt(10));
        }
        myList = sort(myList);
        for (Integer item : myList) {
            System.out.println(item + " ");
        }
    }

}
