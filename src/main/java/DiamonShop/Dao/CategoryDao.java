package DiamonShop.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.category;
import DiamonShop.mapper.mapperCategory;

@Repository
public class CategoryDao extends BaseDao{
	
	public List<category> getCategorys() {
		List<category> ds = _jdbc.query("select * from category", new mapperCategory());
		return ds;
	}
	
	
}
