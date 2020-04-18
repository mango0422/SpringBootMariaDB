package com.example.demo.dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BooksDTO {
	private String title;
	private String author;
	private Date published_date;
	
	public BooksDTO() {		
	}
	
	public BooksDTO(String Title, String Author) {
		super( );
		this.title = Title;
		this.author = Author;
		this.published_date = new Date( );
	}

	public BooksDTO(String Title, String Author, String publishedDate) throws Exception {
		super( );
		this.title = Title;
		this.author = Author;
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd"); // "yyyy-MM-dd HH:mm:ss"
		this.published_date = transFormat.parse(publishedDate);
	}
	
	public String getTitle( ) {
		return (this.title);
	}
	
	public String getAuthor( ) {
		return (this.author);	
	}

	public String getPublished_Date( ) {		
		// Date date = new Date( );
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = format.format(this.published_date);
		return (dateString);	
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "title="+getTitle() +", author="+getAuthor()+", published_date="+getPublished_Date();
	}
}
