package DiamonShop.Dao;

import java.util.HashMap;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.product;

@Repository
public class cartDao extends BaseDao {
	@Autowired
	private ProductDao prod;

	// THÊM SẢN PHẨM
	public HashMap<Integer, CartDto> addCart(int product_id, HashMap<Integer, CartDto> cart) {
		CartDto item = new CartDto();
		product p = prod.findProduct(product_id);
		if (p != null && cart.containsKey(product_id)) {
			item.setProd(p);
			item.setQuanty(cart.get(p.getProduct_id()).getQuanty() + 1);
			item.setTotalPrice(item.getQuanty() * item.getProd().getProduct_price());
		} else {
			item.setProd(p);
			item.setQuanty(1);
			item.setTotalPrice(p.getProduct_price());
		}
		cart.put(product_id, item);
		return cart;
	}

	// THÊM SỐ LƯỢNG SẢN PHẨM
	public HashMap<Integer, CartDto> editCart(int product_id, int quanty, HashMap<Integer, CartDto> cart) {
		if (cart == null)
			return cart;
		CartDto item = new CartDto();
		if (cart.containsKey(product_id)) {
			item = cart.get(product_id);
			item.setQuanty(quanty);
			item.setTotalPrice(quanty * item.getProd().getProduct_price());
		}
		cart.put(product_id, item);
		return cart;
	}

	// XÓA SẢN PHẨM
	public HashMap<Integer, CartDto> deleteCart(int product_id, HashMap<Integer, CartDto> cart) {
		if (cart == null)
			return cart;
		else if (cart.containsKey(product_id)) {
			cart.remove(product_id);
		}
		return cart;
	}

	// TỔNG TIỀN
	public double totalPrice(HashMap<Integer, CartDto> cart) {
		double totalPrice = 0;
		Set<Integer> keyset = cart.keySet();
		for (Integer integer : keyset) {
			totalPrice += cart.get(integer).getTotalPrice();
		}
		return totalPrice;
	}

	// tổng số lượng
	public int totalQuanty(HashMap<Integer, CartDto> cart) {
		int totalQuanty = 0;
		Set<Integer> keyset = cart.keySet();
		for (Integer integer : keyset) {
			totalQuanty += cart.get(integer).getQuanty();
		}
		return totalQuanty;
	}
}
