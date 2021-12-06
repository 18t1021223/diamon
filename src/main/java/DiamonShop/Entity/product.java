package DiamonShop.Entity;

import java.sql.Date;

public class product {
	private int Product_id, Category_id;
	private String Product_name, Product_title, Product_detail, product_img;
	private double Product_price;
	private float Product_sale;
	private boolean Product_hightlight, Product_new;
	private Date Product_created_at, Product_update_at;

	public product() {
		// TODO Auto-generated constructor stub
	}

	public product(int product_id, int category_id, String product_name, String product_title, String product_detail,
			String product_img, double product_price, float product_sale, boolean product_hightlight,
			boolean product_new, Date product_created_at, Date product_update_at) {
		super();
		Product_id = product_id;
		Category_id = category_id;
		Product_name = product_name;
		Product_title = product_title;
		Product_detail = product_detail;
		this.product_img = product_img;
		Product_price = product_price;
		Product_sale = product_sale;
		Product_hightlight = product_hightlight;
		Product_new = product_new;
		Product_created_at = product_created_at;
		Product_update_at = product_update_at;
	}

	public int getProduct_id() {
		return Product_id;
	}

	public void setProduct_id(int product_id) {
		Product_id = product_id;
	}

	public int getCategory_id() {
		return Category_id;
	}

	public void setCategory_id(int category_id) {
		Category_id = category_id;
	}

	public String getProduct_name() {
		return Product_name;
	}

	public void setProduct_name(String product_name) {
		Product_name = product_name;
	}

	public String getProduct_title() {
		return Product_title;
	}

	public void setProduct_title(String product_title) {
		Product_title = product_title;
	}

	public String getProduct_detail() {
		return Product_detail;
	}

	public void setProduct_detail(String product_detail) {
		Product_detail = product_detail;
	}

	public String getProduct_img() {
		return product_img;
	}

	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}

	public double getProduct_price() {
		return Product_price;
	}

	public void setProduct_price(double product_price) {
		Product_price = product_price;
	}

	public float getProduct_sale() {
		return Product_sale;
	}

	public void setProduct_sale(float product_sale) {
		Product_sale = product_sale;
	}

	public boolean isProduct_hightlight() {
		return Product_hightlight;
	}

	public void setProduct_hightlight(boolean product_hightlight) {
		Product_hightlight = product_hightlight;
	}

	public boolean isProduct_new() {
		return Product_new;
	}

	public void setProduct_new(boolean product_new) {
		Product_new = product_new;
	}

	public Date getProduct_created_at() {
		return Product_created_at;
	}

	public void setProduct_created_at(Date product_created_at) {
		Product_created_at = product_created_at;
	}

	public Date getProduct_update_at() {
		return Product_update_at;
	}

	public void setProduct_update_at(Date product_update_at) {
		Product_update_at = product_update_at;
	}

}
