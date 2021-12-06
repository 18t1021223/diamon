package DiamonShop.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.bill;
import DiamonShop.Entity.user;
import DiamonShop.Service.Impl.CartImpl;

@Controller
public class cartController extends BaseController {
	@Autowired
	private CartImpl cartimpl;

	@RequestMapping("/gio-hang")
	public ModelAndView cart(HttpServletRequest req, HttpSession hs) {
		_mav.setViewName("user/cart/cart");
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>) hs.getAttribute("cart");
		if (cart == null)
			cart = new HashMap<>();
		hs.setAttribute("cart", cart);
		hs.setAttribute("totalPrice", cartimpl.totalPrice(cart));
		hs.setAttribute("totalQuanty", cartimpl.totalQuanty(cart));
		return _mav;
	}

	@RequestMapping("/addCart/{product_id}")
	public String addCart(HttpServletRequest req, HttpSession hs, @PathVariable int product_id) {
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>) hs.getAttribute("cart");
		if (cart == null)
			cart = new HashMap<>();

		cart = cartimpl.addCart(product_id, cart);
		hs.setAttribute("cart", cart);
		hs.setAttribute("totalPrice", cartimpl.totalPrice(cart));
		hs.setAttribute("totalQuanty", cartimpl.totalQuanty(cart));
		return "redirect:" + req.getHeader("Referer");
	}

	@RequestMapping("/editCart/{product_id}/{quanty}")
	public String editCart(HttpServletRequest req, HttpSession hs, @PathVariable int product_id,
			@PathVariable int quanty) {
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>) hs.getAttribute("cart");
		if (cart == null)
			cart = new HashMap<>();

		cart = cartimpl.editCart(product_id, quanty, cart);
		hs.setAttribute("cart", cart);
		hs.setAttribute("totalPrice", cartimpl.totalPrice(cart));
		hs.setAttribute("totalQuanty", cartimpl.totalQuanty(cart));
		return "redirect:" + req.getHeader("Referer");
	}

	@RequestMapping("/deleteCart/{product_id}")
	public String deleteCart(HttpServletRequest req, HttpSession hs, @PathVariable int product_id) {
		HashMap<Integer, CartDto> cart = (HashMap<Integer, CartDto>) hs.getAttribute("cart");
		if (cart == null)
			cart = new HashMap<>();

		cart = cartimpl.deleteCart(product_id, cart);
		hs.setAttribute("cart", cart);
		hs.setAttribute("totalPrice", cartimpl.totalPrice(cart));
		hs.setAttribute("totalQuanty", cartimpl.totalQuanty(cart));
		return "redirect:" + req.getHeader("Referer");
	}

	// đơn hàng
	@RequestMapping(value = { "/thanh-toan" }, method = RequestMethod.GET)
	public ModelAndView checkOut(HttpServletRequest req, HttpSession hs) {
		user u = (user) hs.getAttribute("userInfo");
		bill b = new bill();
		if (u != null) {
			b.setBill_address(u.getUser_address());
			b.setBill_name(u.getUser_name());
			b.setUser_id(u.getUser_id());
		}
		_mav.setViewName("user/bills/checkout");
		_mav.addObject("bill", b);
		return _mav;
	}

	@RequestMapping(value = { "/thanh-toan" }, method = RequestMethod.POST)
	public ModelAndView checkOutBill(HttpServletRequest req, HttpSession hs, @ModelAttribute bill b) {
		_mav.setViewName("user/bills/checkout");
		
		return _mav;
	}
}
