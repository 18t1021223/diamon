package DiamonShop.Service;

import DiamonShop.Dto.ChartDto;

public interface Ichart {
	ChartDto getChartInfo(String startDate, String endDate);
}
