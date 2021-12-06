package DiamonShop.Dto;

import org.springframework.stereotype.Repository;

@Repository
public class PaginatesDto {
	private int currentPage, limit, start, end, totalPage, offset;

	public PaginatesDto() {
		// TODO Auto-generated constructor stub
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getStart() {
		return start;
	}

	public int getEnd() {
		return end;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public void setStartEnd(int ...number) {
		this.start = number[0];
		this.end = number[1];
	}
}
