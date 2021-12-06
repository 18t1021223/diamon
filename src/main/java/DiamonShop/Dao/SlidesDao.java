package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.slides;
import DiamonShop.mapper.mapperSlides;

@Repository
public class SlidesDao extends BaseDao {

	public List<slides> getSlides() {
		List<slides> ds = new ArrayList<slides>();
		ds = _jdbc.query("select * from slides", new mapperSlides());
		return ds;
	}

}
