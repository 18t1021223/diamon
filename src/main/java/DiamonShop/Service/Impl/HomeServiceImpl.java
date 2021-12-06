package DiamonShop.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.CategoryDao;
import DiamonShop.Dao.MenuDao;
import DiamonShop.Dao.ProductDao;
import DiamonShop.Dao.SlidesDao;
import DiamonShop.Entity.Menu;
import DiamonShop.Entity.category;
import DiamonShop.Entity.product;
import DiamonShop.Entity.slides;
import DiamonShop.Service.Ihome;

@Service
public class HomeServiceImpl implements Ihome {
	@Autowired
	private SlidesDao slides;
	@Autowired
	private CategoryDao categorys;
	@Autowired
	private MenuDao menu;
	@Autowired
	private ProductDao prod;

	@Override
	public List<slides> getSlides() {
		return slides.getSlides();
	}
	@Override
	public List<category> getCategorys() {
		return categorys.getCategorys();
	}
	@Override
	public List<Menu> getMenus() {
		return menu.getMenus();
	}
	@Override
	public List<product> getProducts() {
		return prod.getProducts();
	}
}
