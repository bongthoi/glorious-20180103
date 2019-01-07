package com.glorious.model;

public class AboutModel {

			@Override
	public String toString() {
		return "AboutModel [id=" + id + ", title=" + title + ", description="
				+ description + ", key_word=" + key_word + ", content="
				+ content + "]";
	}
			private int id;
			private String title;
			private String description;
			private String key_word;
			private String content;
			private String about_name;
			private String feature_image;
			public int getId() {
				return id;
			}
			public void setId(int id) {
				this.id = id;
			}
			public String getTitle() {
				return title;
			}
			public void setTitle(String title) {
				this.title = title;
			}
			public String getDescription() {
				return description;
			}
			public void setDescription(String description) {
				this.description = description;
			}
			public String getKey_word() {
				return key_word;
			}
			public void setKey_word(String key_word) {
				this.key_word = key_word;
			}
			public String getContent() {
				return content;
			}
			public void setContent(String content) {
				this.content = content;
			}
			public String getAbout_name() {
				return about_name;
			}
			public void setAbout_name(String about_name) {
				this.about_name = about_name;
			}
			public String getFeature_image() {
				return feature_image;
			}
			public void setFeature_image(String feature_image) {
				this.feature_image = feature_image;
			}
			
			
			
}
