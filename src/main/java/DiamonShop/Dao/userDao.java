package DiamonShop.Dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import DiamonShop.Entity.user;

@Repository
public class userDao extends BaseDao {

	@Transactional
	public int addAccount(user u) {
		String sql = " insert into [user] values(?,?,?,?) ";
		int kq = _jdbc.update(sql, (ps) -> {
			ps.setString(1, u.getUser_name());
			ps.setString(2, u.getUser_email());
			ps.setString(3, u.getUser_password());
			ps.setString(4, u.getUser_address());
		});
		return kq;
	}

	public user getUserByAcc(user u) {
		String sql = "select * from [user] where user_email = ?";
		List<user> ds = _jdbc.query(sql, (ps) -> {
			ps.setString(1, u.getUser_email());
		}, new BeanPropertyRowMapper<user>(user.class));
		return ds.size() == 0 ? null : ds.get(0);
	}
}
