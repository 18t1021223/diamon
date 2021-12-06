package DiamonShop.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.PaginatesDto;
import DiamonShop.Service.Ipaginate;

@Service
public class paginateImpl implements Ipaginate {
	@Autowired
	private PaginatesDto pag;

	@Override
	public PaginatesDto getInfoPaginate(int totalData, int limit, int currentPage, int limitPage) {
		pag.setLimit(limit);
		pag.setTotalPage(getTotalPage(totalData, limit));
		pag.setCurrentPage(checkCurrentPage(currentPage, pag.getTotalPage()));
		pag.setOffset((pag.getCurrentPage() - 1) * pag.getLimit());
		pag.setStartEnd(getStartEnd(currentPage, limitPage, pag.getTotalPage()));
		return pag;
	}

	// int 0 = start // int 1 = end
	private int[] getStartEnd(int currentPage, int limitPage, int totalPage) {
		int[] ds = new int[2] ;
		if (limitPage >= totalPage) {
			ds[0] = 1;
			ds[1] = totalPage;
		} else if (currentPage - 2 < 1) {
			ds[0] = 1;
			ds[1] = limitPage;
		} else if (currentPage + 2 > totalPage) {
			ds[0] = currentPage - 2;
			ds[1] = totalPage;
		} else {
			ds[0] = currentPage - 2;
			ds[1] = currentPage + 2;
		}
		return ds;
	}

	private int getTotalPage(int totalData, int limit) {
		float totalPage = 1;
		totalPage = (float) totalData / (float) limit;
		// nếu totalPage có dư thì + 0.5 để làm tròn lên
		// nếu totalPage không dư thì in ra
		// nếu totalPage = 0 thì in ra 1;
		return (int) (totalPage - (int) totalPage == 0 ? (totalPage == 0 ? 1 : totalPage)
				: Math.round(totalPage + 0.5));
	}

	private int checkCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1)
			return 1;
		else if (currentPage > totalPage)
			return totalPage;
		return currentPage;
	}
}
