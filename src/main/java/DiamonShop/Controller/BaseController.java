package DiamonShop.Controller;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.Impl.HomeServiceImpl;

@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _home;

	public ModelAndView _mav = new ModelAndView();

	// CHAY HAM INIT DAU TIEN KHI VAO BASE CONTROLLER
	@PostConstruct
	public ModelAndView init() {
		this._mav.addObject("menu_list", _home.getMenus());
		return _mav;
	}
}
