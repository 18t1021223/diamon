package DiamonShop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import DiamonShop.Entity.Menu;

public class mapperMenu implements RowMapper<Menu> {

	@Override
	public Menu mapRow(ResultSet rs, int rowNum) throws SQLException {
		Menu menu = new Menu();
		menu.setMenu_id(rs.getInt("menu_id"));
		menu.setMenu_name(rs.getString("menu_name"));
		menu.setMenu_url(rs.getString("menu_url"));
		return menu;
	}

}
