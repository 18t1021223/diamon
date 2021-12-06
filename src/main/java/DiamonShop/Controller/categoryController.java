package DiamonShop.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.PaginatesDto;
import DiamonShop.Service.Impl.categoryServiceImpl;
import DiamonShop.Service.Impl.paginateImpl;
import DiamonShop.systemConst.systemConst;

@Controller
public class categoryController extends BaseController {
	@Autowired
	private categoryServiceImpl cat;
	@Autowired
	private paginateImpl pag;
	private int limit = systemConst.limit;
	private int limitPage = systemConst.limitPage;

	@RequestMapping("/san-pham/{id}")
	public ModelAndView product(@PathVariable("id") int id) {
		_mav.setViewName("user/products/categorys");

		PaginatesDto pagDto = pag.getInfoPaginate(cat.getSizeAllProduct(id), limit, 1 ,limitPage);
		_mav.addObject("paginateInfo", pagDto);
		_mav.addObject("category_id", id);
		_mav.addObject("productByCategory", cat.getProductPaginateByCategoryId(id, pagDto.getOffset(), limit));
		return _mav;
	}

	@RequestMapping("/san-pham/{id}/{currentPage}")
	public ModelAndView product(@PathVariable("id") int id, @PathVariable("currentPage") int currentPage) {
		_mav.setViewName("user/products/categorys");

		PaginatesDto pagDto = pag.getInfoPaginate(cat.getSizeAllProduct(id), limit, currentPage,limitPage);
		_mav.addObject("paginateInfo", pagDto);
		_mav.addObject("category_id", id);
		_mav.addObject("productByCategory", cat.getProductPaginateByCategoryId(id, pagDto.getOffset(), limit));
		return _mav;
	}
}
