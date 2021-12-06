package DiamonShop.Service;

import DiamonShop.Entity.user;

public interface Iaccount {
	int addAccount(user u);

	user getUserByAcc(user u);
}
