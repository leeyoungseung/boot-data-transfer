package com.web.transfer.dto;

public class MainPageExListDTO {

	private String exName;     // 예제명
	private String exUri;      // 예제 URI
	private String exContent;  // 예제설명
	
	
	
	public MainPageExListDTO(String exName, String exUri, String exContent) {
		super();
		this.exName = exName;
		this.exUri = exUri;
		this.exContent = exContent;
	}
	
	
	public String getExName() {
		return exName;
	}
	public void setExName(String exName) {
		this.exName = exName;
	}
	public String getExUri() {
		return exUri;
	}
	public void setExUri(String exUri) {
		this.exUri = exUri;
	}
	public String getExContent() {
		return exContent;
	}
	public void setExContent(String exContent) {
		this.exContent = exContent;
	}
	@Override
	public String toString() {
		return "MainPageExListDTO [exName=" + exName + ", exUri=" + exUri + ", exContent=" + exContent + "]";
	}
	
	
	
}
