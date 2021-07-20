package com.work.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Board {
	private String title;
	private String memberId;
	private String bDate;
	private int views;
	private int thumbs;
	private String contents;
}