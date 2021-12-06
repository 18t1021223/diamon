package DiamonShop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import DiamonShop.Entity.product;

public class mapperProduct implements RowMapper<product> {

	@Override
	public product mapRow(ResultSet rs, int rowNum) throws SQLException {
		product p = new product();
		p.setProduct_id(rs.getInt("product_id"));
		p.setCategory_id(rs.getInt("category_id"));
		p.setProduct_created_at(rs.getDate("product_created_at"));
		p.setProduct_detail(rs.getString("product_detail"));
		p.setProduct_hightlight(rs.getBoolean("product_hightlight"));
		p.setProduct_name(rs.getString("product_name"));
		p.setProduct_new(rs.getBoolean("product_new"));
		p.setProduct_price(rs.getDouble("product_price"));
		p.setProduct_sale(rs.getFloat("product_sale"));
		p.setProduct_title(rs.getString("product_title"));
		p.setProduct_update_at(rs.getDate("product_update_at"));
		p.setProduct_img(rs.getString("product_img"));
		return p;
	}

}
