package com.model.content;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


public class ContentsDTO {
	private int contentsno;
	private int cateno;
	private String pname;
	private int price;
	private String filename;
	private MultipartFile filenameMF;
	private String detail;
	private String rdate;
	private int stock;
	@Override
	public String toString() {
		return "ContentsDTO [contentsno=" + contentsno + ", cateno=" + cateno + ", pname=" + pname + ", price=" + price
				+ ", filename=" + filename + ", filenameMF=" + filenameMF + ", detail=" + detail + ", rdate=" + rdate
				+ ", stock=" + stock + ", getContentsno()=" + getContentsno() + ", getCateno()=" + getCateno()
				+ ", getPname()=" + getPname() + ", getPrice()=" + getPrice() + ", getFilename()=" + getFilename()
				+ ", getFilenameMF()=" + getFilenameMF() + ", getDetail()=" + getDetail() + ", getRdate()=" + getRdate()
				+ ", getStock()=" + getStock() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

	public int getContentsno() {
		return contentsno;
	}

	public void setContentsno(int contentsno) {
		this.contentsno = contentsno;
	}

	public int getCateno() {
		return cateno;
	}

	public void setCateno(int cateno) {
		this.cateno = cateno;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public MultipartFile getFilenameMF() {
		return filenameMF;
	}

	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}
}
