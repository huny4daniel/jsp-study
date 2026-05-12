package my.model;

import java.util.Date;

public class Purchase {
	private int id;
	private String userId;
	private int flowerId;
	private int amount;
	private int price;
	private int payment;
	private Date purchaseDate;
	
	public Purchase() {
	}

	public Purchase(String userId, int flowerId, int amount, int price, int payment, Date purchaseDate) {
		super();
		this.userId = userId;
		this.flowerId = flowerId;
		this.amount = amount;
		this.price = price;
		this.payment = payment;
		this.purchaseDate = purchaseDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getFlowerId() {
		return flowerId;
	}

	public void setFlowerId(int flowerId) {
		this.flowerId = flowerId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public Date getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
}
