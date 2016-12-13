package com.ale.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ale.entity.DataEntity;
import com.ale.entity.Pie01Entity;
import com.alibaba.fastjson.JSON;

public class ConvertJSON {

	public ConvertJSON() {
		// TODO Auto-generated constructor stub
	}
	
	public String getJSON(DataEntity data){
		
		return JSON.toJSONString(data);
		
	}
	public String getJSONPie01(Pie01Entity data){
		
		return JSON.toJSONString(data);
		
	}
	
	public String getJSON(int total,List list){
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("total", total);
        jsonMap.put("rows", list);
		return JSON.toJSONString(jsonMap);
		
	}
	
	

	/**
	 * @param args
	 */
	public static void main(String[] args) {


	}

}
