package com.work.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int num;
	private String title;
	private String memberId;
	private String bDate;
	private int views;
	private int thumbs;
	private String contents;
	
	
}
