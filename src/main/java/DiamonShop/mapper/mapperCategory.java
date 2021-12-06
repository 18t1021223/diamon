package DiamonShop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import DiamonShop.Entity.category;

public class mapperCategory implements RowMapper<category> {
	@Override
	public category mapRow(ResultSet rs, int rowNum) throws SQLException {
		category c = new category();
		c.setCategory_id(rs.getInt("category_id"));
		c.setCategory_name(rs.getString("category_name"));
		c.setCategory_description(rs.getString("category_description"));
		return c;
	}

}
