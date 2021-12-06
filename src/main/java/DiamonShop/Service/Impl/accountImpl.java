package DiamonShop.Service.Impl;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.userDao;
import DiamonShop.Entity.user;
import DiamonShop.Service.Iaccount;

@Service
public class accountImpl implements Iaccount {

	@Autowired
	private userDao userdao;

	@Override
	public int addAccount(user u) {
		u.setUser_password(BCrypt.hashpw(u.getUser_password(), BCrypt.gensalt(12)));
		return userdao.addAccount(u);
	}

	@Override
	public user getUserByAcc(user u) {
		String pass = u.getUser_password();
		u = userdao.getUserByAcc(u);
		if (u != null) {
			if (BCrypt.checkpw(pass, u.getUser_password()))
				return u;
		}
		return null;
	}

}
