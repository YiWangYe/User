package com.hzit.utils;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.hzit.entity.User;

public class Userutils {
	private static Map<Integer, User> map;
	static{
		map = new HashMap<Integer, User>();
		User user = new User(1, "zhangsan", 11);
		User user2 = new User(2, "lisi", 11);
		User user3 = new User(3, "zhaoliu", 11);
		map.put(user.getId(), user);
		map.put(user2.getId(), user2);
		map.put(user3.getId(), user3);
	}
	public static User getById( int id){
		return map.get(id);
	}
	//删除
	public static void deleteById(int id){
		map.remove(id);
	}
	//
	public static void savaOrUpdate(User user){
		map.put(user.getId(), user);
	}
	//获取所有人员信息
	public static Collection<User> getAll(){
		return map.values();
	}
}
