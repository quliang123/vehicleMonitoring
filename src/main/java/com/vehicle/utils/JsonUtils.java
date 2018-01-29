package com.vehicle.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class JsonUtils {
	private static final Gson gson =  new GsonBuilder().disableHtmlEscaping().create();  ;

	public static String toJSONString(Object object) {
		return gson.toJson(object);
	}

	public static Object JSONToObject(String json, Class beanClass) {
		Gson gson = new Gson();
		Object res = gson.fromJson(json, beanClass);
		return res;
	}
}
