package DiamonShop.Dao;

import java.util.Map;

import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import DiamonShop.mapper.resultSetChart;

@Repository
public class BillDao extends BaseDao {

	// Doanh thu trả về 1 số trong khoảng 2 ngày 
	public double getTextRevenue(String startDate, String endDate) {
		String sql = "SELECT SUM( bd.billDetail_quanty * bd.billDetail_price) REVENUE"
				+ " FROM bill b JOIN billDetail bd on b.bill_id = bd.bill_id"
				+ " WHERE	b.bill_date >= ? AND b.bill_date < ? ";
		return _jdbc.query(sql, (ps) -> {
			ps.setString(1, startDate);
			ps.setString(2, endDate);
		}, (ResultSetExtractor<Double>) (rs) -> {
			if (rs.next())
				return rs.getDouble(1);
			return 0d;
		});
	}

	// --- doanh thu 1 ngày ( giờ )
	public Map<String, Double> getChartRevenue(String startDate, String endDate) {
		String sql = "declare @tb table( numberTime int primary key )"
				+ " declare @startTime smalldatetime = ? "
				+ " declare @endTime smalldatetime = ? "
				+ " declare @numberTime int = DATEDIFF( hh,@startTime, @endTime)"
				+ " declare @index int = DATEPART(hh, @startTime)"
				+ " while @index <  @numberTime "
				+ "		begin insert into @tb values( @index);"
				+ "	   		 set @index = @index + 1; "
				+ "		end "
				+ " select  convert(varchar , tb1.numberTime)+':00' ,"
				+ "	 case "
				+ "		when tb2.REVENUE  is null then 0 "
				+ "	 else  tb2.REVENUE "
				+ "	 end revenue "
				+ " from @tb tb1 left join ( SELECT DATEPART(hh,b.bill_date ) numberTime, "
				+ " SUM( bd.billDetail_quanty * bd.billDetail_price) REVENUE "
				+ " FROM bill b JOIN billDetail bd on b.bill_id = bd.bill_id "
				+ " WHERE b.bill_date >= @startTime  and b.bill_date < @endTime"
				+ " GROUP BY   b.bill_date ) "
				+ " tb2 on tb1.numberTime = tb2.numberTime ";
		return _jdbc.query(sql, (ps) -> {
			ps.setString(1, startDate );
			ps.setString(2, endDate );
		}, new resultSetChart());
	}

	// --- doanh thu trong khoang 2  ngày
	public Map<String, Double> getChartRevenues(String startDate, String endDate) {
		String sql = "declare @tbOrder table( orderDate date primary key )"
				+ " declare @startDate smalldatetime = ?"
				+ " declare @endDate smalldatetime = ?"
				+ " declare @index date = @startDate"
				+ " while( @index < @endDate )"
				+ "	    begin"
				+ "		  insert into @tbOrder values( @index)"
				+ "		  set @index  = DATEADD(d,1,@index ); "
				+ "		end"
				+ " select convert(varchar , tb1.orderDate , 105) ,"
				+ "		 case when tb2.REVENUE  is null then 0"
				+ "		 else  tb2.REVENUE "
				+ "		 end revenue"
				+ " from @tbOrder tb1 "
				+ " left join ( SELECT convert(date , b.bill_date) OrderDate,"
				+ " SUM( bd.billDetail_quanty * bd.billDetail_price) REVENUE"
				+ " FROM bill b JOIN billDetail bd on b.bill_id = bd.bill_id"
				+ " WHERE	b.bill_date >= @startDate  and b.bill_date < @endDate"
				+ " GROUP BY  convert(date , b.bill_date) )"
				+ " tb2 on tb1.orderDate = tb2.OrderDate";
		return _jdbc.query(sql, (ps) -> {
			ps.setString(1, startDate);
			ps.setString(2, endDate );
		}, new resultSetChart());
	}
	
	public int getQuantityBill(String startDate , String endDate ){
		String sql = "select count(*)"
				+ " from bill"
				+ " where bill_date >= ? and bill_date <  ? ";
		return _jdbc.query(sql,ps->{
			ps.setString(1, startDate);
			ps.setString(2, endDate );
		}, (ResultSetExtractor<Integer>) rs->{
			if( rs.next())
				return rs.getInt(1);
			return 0;
		} );
	}
}
