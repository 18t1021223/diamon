package DiamonShop.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductDao;
import DiamonShop.Entity.product;
import DiamonShop.Service.Iproduct;

@Service
public class productImpl implements Iproduct {

	@Autowired
	private ProductDao prod;

	@Override
	public product getProductById(int id) {
		return prod.getProductById(id);
	}

	@Override
	public List<product> getProductByCategoryId(int id , int limit) {
		return prod.getProductByCategoryId(id , limit);
	}
	
}
