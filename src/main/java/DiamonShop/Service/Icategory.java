package DiamonShop.Service;

import java.util.List;

import DiamonShop.Entity.product;

public interface Icategory {
	List<product> getProductPaginateByCategoryId(int id, int offset, int limit);

	int getSizeAllProduct(int id);
}
