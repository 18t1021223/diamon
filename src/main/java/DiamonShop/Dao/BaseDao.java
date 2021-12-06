package DiamonShop.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

// MUỐN SỬ DỤNG JDBC THÌ THÊM ANOTATION @@Repository
public class BaseDao {
	@Autowired
	JdbcTemplate _jdbc;
}
