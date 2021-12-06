package DiamonShop.Dao;

import java.util.List;

import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import DiamonShop.Entity.product;
import DiamonShop.mapper.mapperProduct;

@Repository
public class ProductDao extends BaseDao {
	// lấy tất cả sản phẩm ngẫu nhiên
	public List<product> getProducts() {
		List<product> ds = _jdbc.query("select * from product ORDER BY NEWID()", new mapperProduct());
		return ds;
	}

	// lấy tất cả sản phẩm theeo thể loại
	// sắp xếp tăng dần theo giá
	public List<product> getProductPaginateByCategoryId(int id, int offset, int limit) {
		List<product> ds = _jdbc.query(
				"select * from product where category_id = ? order by product_price  offset ? row fetch next ? rows only;",
				(ps) -> {
					ps.setInt(1, id);
					ps.setInt(2, offset);
					ps.setInt(3, limit);
				}, new mapperProduct());

		return ds;
	}

	// lấy số lượng sản phẩm theo thể loại
	public int getSizeAllProductByCategoryId(int id) {
		// "select count(*) from product where category_id = ? "
		int size = _jdbc.query("select count(*) from product where category_id = ? ", (ps) -> {
			ps.setInt(1, id);
		}, (ResultSetExtractor<Integer>) rs -> {
			if (rs.next())
				return rs.getInt(1);
			return null;
		});
		return size;
	}

	// lấy sản phẩm theo id sản phẩm
	public product getProductById(int id) {
		return _jdbc.query("select * from product where product_id = ? ", (ps) -> {
			ps.setInt(1, id);
		}, new mapperProduct()).get(0);
	}

	public List<product> getProductByCategoryId(int id, int limit) {
		String sql = " SELECT top (?) * FROM Product WHERE Category_id = ? order by NEWID() ";
		List<product> ds = _jdbc.query(sql, (ps) -> {
			ps.setInt(1, limit);
			ps.setInt(2, id);
		}, new mapperProduct());
		return ds;
	}
	// kiểm tra san pham
	public product findProduct(int id){
		String sql="select * from product where product_id = ? ";
		return _jdbc.queryForObject(sql, new Object[]{ id }, new mapperProduct());
	}
}
