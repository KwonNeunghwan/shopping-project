package com.model.orders;
 
import java.util.List;

//import org.springframework.web.multipart.MultipartFile;

//import com.model.member.MemberDTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
 


public class OrdersDTO{
  public int getOrderno() {
		return orderno;
	}

	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getOdate() {
		return odate;
	}

	public void setOdate(String odate) {
		this.odate = odate;
	}

	public String getOstate() {
		return ostate;
	}

	public void setOstate(String ostate) {
		this.ostate = ostate;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getReqtext() {
		return reqtext;
	}

	public void setReqtext(String reqtext) {
		this.reqtext = reqtext;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public List<OrderdetailDTO> getList() {
		return list;
	}

	public void setList(List<OrderdetailDTO> list) {
		this.list = list;
	}

private int   orderno              ;
  @Override
public String toString() {
	return "OrdersDTO [orderno=" + orderno + ", id=" + id + ", mname=" + mname + ", odate=" + odate + ", ostate="
			+ ostate + ", total=" + total + ", payment=" + payment + ", reqtext=" + reqtext + ", size=" + size
			+ ", list=" + list + ", getOrderno()=" + getOrderno() + ", getId()=" + getId() + ", getMname()="
			+ getMname() + ", getOdate()=" + getOdate() + ", getOstate()=" + getOstate() + ", getTotal()=" + getTotal()
			+ ", getPayment()=" + getPayment() + ", getReqtext()=" + getReqtext() + ", getSize()=" + getSize()
			+ ", getList()=" + getList() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
			+ super.toString() + "]";
}

private String id                  ;
  private String mname               ;
  private String odate               ;
  private String ostate              ;
  private int    total                ;
  private String payment             ;
  private String reqtext             ;
  private String size                 ;
 
  private List<OrderdetailDTO> list  ;
}




