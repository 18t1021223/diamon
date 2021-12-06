package DiamonShop.Entity;

import java.util.Date;

public class bill {
	private int bill_id, bill_quanty, user_id;

	public int getUser_id() {
		return user_id;
	}

	private String bill_name, bill_address, bill_phone, bill_note;
	private double bill_price;
	private Date bill_date;

	public bill() {
		// TODO Auto-generated constructor stub
	}

	public int getBill_id() {
		return bill_id;
	}

	public void setBill_id(int bill_id) {
		this.bill_id = bill_id;
	}

	public int getBill_quanty() {
		return bill_quanty;
	}

	public void setBill_quanty(int bill_quanty) {
		this.bill_quanty = bill_quanty;
	}

	public String getBill_name() {
		return bill_name;
	}

	public void setBill_name(String bill_name) {
		this.bill_name = bill_name;
	}

	public String getBill_address() {
		return bill_address;
	}

	public void setBill_address(String bill_address) {
		this.bill_address = bill_address;
	}

	public String getBill_phone() {
		return bill_phone;
	}

	public void setBill_phone(String bill_phone) {
		this.bill_phone = bill_phone;
	}

	public String getBill_note() {
		return bill_note;
	}

	public void setBill_note(String bill_note) {
		this.bill_note = bill_note;
	}

	public double getBill_price() {
		return bill_price;
	}

	public void setBill_price(double bill_price) {
		this.bill_price = bill_price;
	}

	public Date getBill_date() {
		return bill_date;
	}

	public void setBill_date(Date bill_date) {
		this.bill_date = bill_date;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
