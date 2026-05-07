package my.model;

import java.util.Date;

public class Flower {
	private int flowerId;
	private String name;
	private String origin;
	private int price;
	private Date registerDate;
	private String image;
	
	public Flower() {
	}

	public Flower(int flowerId, String name, String origin, int price, Date registerDate, String image) {
		super();
		this.flowerId = flowerId;
		this.name = name;
		this.origin = origin;
		this.price = price;
		this.registerDate = registerDate;
		this.image = image;
	}

	public int getFlowerId() {
		return flowerId;
	}

	public void setFlowerId(int flowerId) {
		this.flowerId = flowerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}

