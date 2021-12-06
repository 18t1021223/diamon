package DiamonShop.Dto;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class ChartDto {
	private String startDate, endDate;
	private Map<String, Double> dsData;
	private double revenue;
	private int quantity;

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getRevenue() {
		return revenue;
	}

	public void setRevenue(double revenue) {
		this.revenue = revenue;
	}

	public ChartDto() {
		// TODO Auto-generated constructor stub
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Map<String, Double> getDsData() {
		return dsData;
	}

	public void setDsData(Map<String, Double> dsData) {
		this.dsData = dsData;
	}

}
