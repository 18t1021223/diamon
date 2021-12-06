package DiamonShop.Service.Impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillDao;
import DiamonShop.Service.Ibill;

@Service
public class BillImpl implements Ibill {

	@Autowired
	private BillDao billdao;

	@Override
	public Map<String, Double> getChartRevenus(String startDate, String endDate) {
		// TODO Auto-generated method stub
		return billdao.getChartRevenues(startDate, endDate);
	}

	@Override
	public Map<String, Double> getChartRevenue(String startDate, String endDate) {
		// TODO Auto-generated method stub
		return billdao.getChartRevenue(startDate, endDate);
	}

	@Override
	public double getTextRevenue(String startDate, String endDate) {
		
		return billdao.getTextRevenue(startDate, endDate);
	}

	@Override
	public int getQuantityBill(String startDate, String endDate) {
		return billdao.getQuantityBill(startDate, endDate);
	}

}
