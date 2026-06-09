package my.model;

public class Cart {
	private int flowerId;
	private int amount;
	
	public Cart() {
	}

	public Cart(int flowerId, int amount) {
		super();
		this.flowerId = flowerId;
		this.amount = amount;
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
	
}
