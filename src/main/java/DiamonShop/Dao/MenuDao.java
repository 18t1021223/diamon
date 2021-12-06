package DiamonShop.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.Menu;
import DiamonShop.mapper.mapperMenu;

@Repository
public class MenuDao extends BaseDao{

	public List<Menu> getMenus() {
		List<Menu> ds = _jdbc.query("select * from menu", new mapperMenu());
		return ds;
	}
	
}
