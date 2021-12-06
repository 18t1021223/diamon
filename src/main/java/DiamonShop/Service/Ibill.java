package DiamonShop.Service;

import java.util.Map;

public interface Ibill {
	Map<String, Double> getChartRevenus(String startDate , String endDate);
	Map<String, Double> getChartRevenue(String startDate, String endDate);
	double getTextRevenue(String startDate , String endDate);
	int getQuantityBill(String startDate , String endDate);
}
