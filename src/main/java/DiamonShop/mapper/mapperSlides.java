package DiamonShop.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import DiamonShop.Entity.slides;

public class mapperSlides implements RowMapper<slides> {

	@Override
	public slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		slides slide = new slides();
		slide.setSlides_id(rs.getInt("slides_id"));
		slide.setSlides_img(rs.getString("slides_img"));
		slide.setSlides_caption(rs.getString("slides_caption"));
		slide.setslides_content(rs.getString("slides_content"));
		return slide;
	}

}
