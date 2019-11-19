package tw.com.javaworld.CH8;

public class Counter {

    private int count = 0;

    public Counter() {
    }

    public int getCount() {
        count++;
        return count;
    }

    public void setCount(int newCount) {
        count = newCount;
    }
}
