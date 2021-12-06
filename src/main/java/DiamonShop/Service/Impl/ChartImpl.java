package DiamonShop.Service.Impl;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.ChartDto;
import DiamonShop.Service.Ichart;

@Service
public class ChartImpl implements Ichart {
	@Autowired
	private ChartDto Chart;
	@Autowired
	private BillImpl bill;

	@Override
	public ChartDto getChartInfo(String startDate, String endDate) {
		// set ngày cho đối tượng
		setDate(startDate, endDate);
		String start = Chart.getStartDate();
		String end = Chart.getEndDate();
		if (startDate.equals(endDate)) {
			Chart.setDsData(bill.getChartRevenue(start, end));
		} else
			Chart.setDsData(bill.getChartRevenus(start, end));
		Chart.setRevenue(bill.getTextRevenue(start, end));
		Chart.setQuantity(bill.getQuantityBill(start, end));
		return Chart;
	}

	// kiểm tra 2 ngày có trùng nhau k ?
	void setDate(String startDate, String endDate) {
		LocalDate now = LocalDate.now();

		Chart.setStartDate(startDate);
		if (startDate.equals(endDate) && startDate.equals(now.toString())) {
			Chart.setEndDate(endDate + " " + LocalTime.now());
		} else
			Chart.setEndDate(endDate + " 23:59:59");
	}
}
