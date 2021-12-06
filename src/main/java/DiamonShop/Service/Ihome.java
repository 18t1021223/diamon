package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Entity.Menu;
import DiamonShop.Entity.category;
import DiamonShop.Entity.product;
import DiamonShop.Entity.slides;

@Service
public interface Ihome {
	@Autowired
	public List<slides> getSlides();

	public List<category> getCategorys();

	public List<Menu> getMenus();

	public List<product> getProducts();
}
