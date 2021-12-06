package DiamonShop.Service;

import java.util.List;

import DiamonShop.Entity.product;

public interface Iproduct {
	product getProductById(int id);
	List<product> getProductByCategoryId(int id, int limit);
}
