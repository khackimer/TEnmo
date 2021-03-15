package com.techelevator.tenmo.models;

import java.math.BigDecimal;

public class Transfer {
	private int transferId;
	private int transferTypeId;
	private int transferStatusId;
	private String transferType;
	private String transferStatus;
	private int accountFrom;
	private int accountTo;
	private BigDecimal amount;
	private String userFrom;
	private String userTo;
	
	public Transfer() {
	    
	}
	
	public String getUserFrom() {
		return userFrom;
	}
	
	public void setUserFrom(String userFrom) {
		this.userFrom = userFrom;
	}
	
	public String getUserTo() {
		return userTo;
	}
	
	public void setUserTo(String userTo) {
		this.userTo = userTo;
	}
	
	public int getTransferId() {
		return transferId;
	}
	public void setTransferId(int transferId) {
		this.transferId = transferId;
	}
	public int getTransferTypeId() {
		return transferTypeId;
	}
	public void setTransferTypeId(int transferTypeId) {
		this.transferTypeId = transferTypeId;
	}
	public int getTransferStatusId() {
		return transferStatusId;
	}
	public void setTransferStatusId(int transferStatusId) {
		this.transferStatusId = transferStatusId;
	}
	
	public int getAccountFrom() {
		return accountFrom;
	}
	public void setAccountFrom(int accountFrom) {
		this.accountFrom = accountFrom;
	}
	public int getAccountTo() {
		return accountTo;
	}
	public void setAccountTo(int accountTo) {
		this.accountTo = accountTo;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	
	public String getTransferType() {
		return transferType;
	}

	public void setTransferType(String transferType) {
		this.transferType = transferType;
	}

	public String getTransferStatus() {
		return transferStatus;
	}

	public void setTransferStatus(String transferStatus) {
		this.transferStatus = transferStatus;
	}

	@Override
	public String toString() {
		return "Transfer Id: " + transferId + " | " + "transferTypeId=" + transferTypeId + ", transferStatusId="
				+ transferStatusId + ", accountFrom=" + accountFrom + ", accountTo=" + accountTo + ", amount=" + amount
				+ "]";
	}
	
	
	
}
