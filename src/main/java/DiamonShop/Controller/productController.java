package DiamonShop.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.Impl.productImpl;
import DiamonShop.systemConst.systemConst;

@Controller
public class productController extends BaseController {
	@Autowired
	private productImpl prod;
	private int productRelatedLimit = systemConst.productRelatedLimit;
	// id cua product 
	@RequestMapping("/chi-tiet-san-pham/{CategoryId}/{productId}")
	public ModelAndView getDetails(@PathVariable int CategoryId, @PathVariable int productId) {
		_mav.setViewName("user/products/details");
		_mav.addObject("productById", prod.getProductById(productId));
		_mav.addObject("category_id",CategoryId );
		_mav.addObject("category_list" ,_home.getCategorys());
		_mav.addObject("productByCategoryId" , prod.getProductByCategoryId(CategoryId, productRelatedLimit));
		return _mav;
	}
}
