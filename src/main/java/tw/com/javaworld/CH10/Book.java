package tw.com.javaworld.CH10;

public class Book {

	public Book() {
		name = "";
		author = "";
		publisher = "";
		price = 0;
		quantity = 0;
	}

	private String name;
	private String author;
	private String publisher;
	private float price;
	private int quantity;

	public String getName() {
		return name;
	}
	public String getAuthor() {
		return author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPrice(float newPrice) {
		price = newPrice;
	}
	public float getPrice() {
		return price;
	}
	public void setQuantity(int newQuantity) {
		quantity = newQuantity;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setPublisher(String newPublisher) {
		publisher = newPublisher;
	}
	public void setAuthor(String newAuthor) {
		author = newAuthor;
	}
	public void setName(String newName) {
		name = newName;
	}
}