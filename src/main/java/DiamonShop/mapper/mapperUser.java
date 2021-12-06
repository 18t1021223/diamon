package DiamonShop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import DiamonShop.Entity.user;

public class mapperUser implements RowMapper<user> {

	@Override
	public user mapRow(ResultSet rs, int rowNum) throws SQLException {
		if (rs.next()) {
			user u = new user();
			u.setUser_id(rs.getInt("user_id"));
			u.setUser_password(rs.getString("user_password"));
			u.setUser_email(rs.getString("user_email"));
			u.setUser_name(rs.getString("user_name"));
			u.setUser_address(rs.getString("user_address"));
			return u;
		}
		return null;
	}

}
