package DiamonShop.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.user;
import DiamonShop.Service.Impl.accountImpl;

@Controller
public class userController extends BaseController {

	@Autowired
	private accountImpl accountimpl;

	@RequestMapping(value = { "/dang-ky" }, method = RequestMethod.GET)
	public ModelAndView register(Model m) {
		_mav.setViewName("user/account/register");
		m.addAttribute("user", new user());
		return _mav;
	}

	@RequestMapping(value = { "/dang-ky" }, method = RequestMethod.POST)
	public ModelAndView creatAccount(@ModelAttribute  @Valid user u, BindingResult b) {
		_mav.setViewName("user/account/register");
		if (b.hasErrors()){	
			return _mav;
		}
		if (accountimpl.addAccount(u) != 0) {
			_mav.addObject("userInfo", u);
		} else {
			_mav.addObject("status", "Tạo tài khoản thất bại!");
		}

		return _mav;
	}

	@RequestMapping(value = { "/dang-nhap" }, method = RequestMethod.POST)
	public ModelAndView login(HttpSession hs, @ModelAttribute user u) {
		u = accountimpl.getUserByAcc(u);
		if (u != null) {
			hs.setAttribute("userInfo", u);
			_mav.setViewName("redirect:trang-chu");
			return _mav;
		} else {
			_mav.addObject("statusLogin", "Đăng nhập thất bại!");
			_mav.setViewName("user/account/register");
		}
		return _mav;
	}

	@RequestMapping(value = { "/dang-xuat" })
	public ModelAndView logout(HttpServletRequest req, HttpSession hs) {
		hs.removeAttribute("userInfo");
		_mav.setViewName("redirect:" + req.getHeader("Referer"));
		return _mav;
	}

}
