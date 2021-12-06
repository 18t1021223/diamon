package DiamonShop.Service;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.PaginatesDto;

@Service
public interface Ipaginate {
	public PaginatesDto getInfoPaginate(int totalData, int limit, int currentPage, int limitPage);

}
