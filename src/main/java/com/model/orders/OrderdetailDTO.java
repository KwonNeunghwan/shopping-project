package com.model.orders;

//import org.springframework.web.multipart.MultipartFile;

//import com.model.member.MemberDTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
 
@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class OrderdetailDTO {
 
public int getOdno() {
		return odno;
	}
	public void setOdno(int odno) {
		this.odno = odno;
	}
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	public int getContentsno() {
		return contentsno;
	}
	public void setContentsno(int contentsno) {
		this.contentsno = contentsno;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}

@Override
public String toString() {
	return "OrderdetailDTO [odno=" + odno + ", orderno=" + orderno + ", contentsno=" + contentsno + ", quantity="
			+ quantity + ", pname=" + pname + ", size=" + size + ", getOdno()=" + getOdno() + ", getOrderno()="
			+ getOrderno() + ", getContentsno()=" + getContentsno() + ", getQuantity()=" + getQuantity()
			+ ", getPname()=" + getPname() + ", getSize()=" + getSize() + ", getClass()=" + getClass() + ", hashCode()="
			+ hashCode() + ", toString()=" + super.toString() + "]";
}
private int    odno                 ;
private int    orderno                ;
private int    contentsno             ;
private int    quantity             ;
private String pname               ;
private String size                  ;
}