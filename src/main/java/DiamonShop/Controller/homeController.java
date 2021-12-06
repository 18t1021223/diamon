package DiamonShop.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class homeController extends BaseController {

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView index() {

		_mav.addObject("slides_list", _home.getSlides());
		_mav.addObject("category_list", _home.getCategorys());
		_mav.addObject("product_list", _home.getProducts());
		_mav.setViewName("user/home");
		return _mav;
	}
}
