package DiamonShop.Service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductDao;
import DiamonShop.Entity.product;
import DiamonShop.Service.Icategory;

@Service
public class categoryServiceImpl implements Icategory {
	@Autowired
	private ProductDao prod;

	@Override
	public List<product> getProductPaginateByCategoryId(int id, int offset, int limit) {
		return prod.getProductPaginateByCategoryId(id, offset, limit);
	}

	@Override
	public int getSizeAllProduct(int id) {
		return prod.getSizeAllProductByCategoryId(id);
	}

}
