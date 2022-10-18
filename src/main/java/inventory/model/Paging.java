package inventory.model;

public class Paging {
	private long totalRows;//tổng số bản ghi
	private int totalPages;//tổng số trang
	private int indexPage;//trang hiện tại
	private int recordPerPage =10;//tổng số bản ghi trên 1 trang
	private int offset;//số thứ tự ta query 0 ,10-19,20-29
	  
	
	public Paging(int recordPerPage) {
		this.recordPerPage = recordPerPage;
	}

	public long getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(long totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		if(totalRows>0) {
			totalPages =(int) Math.ceil(totalRows/(double)recordPerPage);
			//tổng số trang = tổng số dòng / số dòng trên 1 trang
		}
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getIndexPage() {
		return indexPage;
	}

	public void setIndexPage(int indexPage) {
		this.indexPage = indexPage;
	}

	public int getRecordPerPage() {
		return recordPerPage;
	}

	public void setRecordPerPage(int recordPerPage) {
		this.recordPerPage = recordPerPage;
	}

	public int getOffset() {
		if(indexPage>0) {
			offset = indexPage*recordPerPage - recordPerPage ;
		}
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset; //1*10 -10 = 0 , 2*10 -10 =2
	}
	
}
