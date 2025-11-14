package com.example.app.domain.googlebooks;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class VolumeInfo {

	private String title;
	private List<String> authors;
	private String publisher;
	private String publishedDate;
	private String description;
	private ImageLinks imageLinks;
	private String previewLink;
	private String canonicalVolumeLink;
}
