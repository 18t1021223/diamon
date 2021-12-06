package DiamonShop.Entity;

public class billDetail {
	private int billDetail_id ,billDetail_quanty ,product_id;
	private  double billDetail_price;
	public billDetail() {
		// TODO Auto-generated constructor stub
	}
	public int getBillDetail_id() {
		return billDetail_id;
	}
	public void setBillDetail_id(int billDetail_id) {
		this.billDetail_id = billDetail_id;
	}
	public int getBillDetail_quanty() {
		return billDetail_quanty;
	}
	public void setBillDetail_quanty(int billDetail_quanty) {
		this.billDetail_quanty = billDetail_quanty;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public double getBillDetail_price() {
		return billDetail_price;
	}
	public void setBillDetail_price(double billDetail_price) {
		this.billDetail_price = billDetail_price;
	}
}
