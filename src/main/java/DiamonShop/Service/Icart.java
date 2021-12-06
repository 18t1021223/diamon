package DiamonShop.Service;

import java.util.HashMap;

import DiamonShop.Dto.CartDto;

public interface Icart {
	public HashMap<Integer, CartDto> addCart(int id, HashMap<Integer, CartDto> cart);

	public HashMap<Integer, CartDto> editCart(int product_id, int quanty, HashMap<Integer, CartDto> cart);
	
	public HashMap<Integer, CartDto> deleteCart(int id, HashMap<Integer, CartDto> cart);
	
	public int totalQuanty(HashMap<Integer, CartDto> cart);

	public double totalPrice(HashMap<Integer, CartDto> cart);
}
