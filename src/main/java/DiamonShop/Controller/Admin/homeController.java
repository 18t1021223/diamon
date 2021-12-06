package DiamonShop.Controller.Admin;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;

import DiamonShop.Dto.ChartDto;
import DiamonShop.Serializer.ChartSerializer;
import DiamonShop.Service.Impl.ChartImpl;

//Thêm tên để xác định với index bên user  (có 2 modelandview index)
@Controller("controller for admin")
public class homeController {
	@Autowired
	private ChartImpl chartimpl;

	@RequestMapping(value = { "/quan-tri/" }, method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/home");

		return mav;
	}

	@RequestMapping(value = { "/quan-tri/bieu-do" }, method = RequestMethod.GET)
	public ModelAndView chart() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/chart");
		return mav;
	}

	@RequestMapping(value = { "/quan-tri/bao-cao" }, method = RequestMethod.GET)
	public void baocao(@RequestParam("d1") String startDate, @RequestParam("d2") String endDate,
			HttpServletResponse resp) throws IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");

		ChartDto chart = chartimpl.getChartInfo(startDate, endDate);

		ObjectMapper mapper = new ObjectMapper();
		SimpleModule module = new SimpleModule();
		module.addSerializer( ChartDto.class	,new ChartSerializer() );
		mapper.registerModule(module);
		
		String json = mapper.writeValueAsString(chart);
		resp.getWriter().write(json);
	}
}
