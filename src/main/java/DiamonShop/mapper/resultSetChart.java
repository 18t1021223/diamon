package DiamonShop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

public class resultSetChart implements ResultSetExtractor<Map<String, Double>> {

	@Override
	public Map<String, Double> extractData(ResultSet rs) throws SQLException, DataAccessException {
		Map<String, Double> dsData = new LinkedHashMap<String, Double>();
		while (rs.next())
			dsData.put(rs.getString(1), rs.getDouble(2));
		return dsData;
	}

}
