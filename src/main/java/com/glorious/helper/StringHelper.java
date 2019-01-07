package com.glorious.helper;

public class StringHelper {
	public static String replace_origin_html(String str_html){//user when selected
		  return str_html.replace( "&amp;","&").replace("&lt;","<").replace("&gt;",">").replace( "&quot;","\"").replace("&blink;","'");
		 }
	public static String replace_html_origin(String str_html){//user when inserted
		  return str_html.replace( "&","&amp;").replace("<","&lt;").replace(">","&gt;").replace( "\"","&quot;").replace("'","&blink;");
		 }

	
}
