package DiamonShop.Service.Impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.cartDao;
import DiamonShop.Dto.CartDto;
import DiamonShop.Service.Icart;

@Service
public class CartImpl implements Icart {
	@Autowired
	private cartDao cartdao;

	@Override
	public HashMap<Integer, CartDto> addCart(int product_id, HashMap<Integer, CartDto> cart) {
		return cartdao.addCart(product_id, cart);
	}

	@Override
	public HashMap<Integer, CartDto> editCart(int product_id, int quanty, HashMap<Integer, CartDto> cart) {
		return cartdao.editCart(product_id, quanty, cart);
	}

	@Override
	public int totalQuanty(HashMap<Integer, CartDto> cart) {
		return cartdao.totalQuanty(cart);
	}

	@Override
	public double totalPrice(HashMap<Integer, CartDto> cart) {
		return cartdao.totalPrice(cart);
	}

	@Override
	public HashMap<Integer, CartDto> deleteCart(int product_id, HashMap<Integer, CartDto> cart) {
		// TODO Auto-generated method stub
		return cartdao.deleteCart(product_id, cart);
	}

}
