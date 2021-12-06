package DiamonShop.Dto;

import DiamonShop.Entity.product;

public class CartDto {
	private int quanty;
	private double totalPrice;
	private product prod;
	public CartDto(int quanty, double totalPrice, product prod) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.prod = prod;
	}
	public CartDto() {
		// TODO Auto-generated constructor stub
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public product getProd() {
		return prod;
	}
	public void setProd(product prod) {
		this.prod = prod;
	}
	
	
}
