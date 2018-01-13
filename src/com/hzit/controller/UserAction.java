package com.hzit.controller;

import java.util.Collection;

import com.hzit.entity.User;
import com.hzit.utils.Userutils;

public class UserAction {
	private User user;
	private Collection<User> users;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Collection<User> getUsers() {
		return users;
	}
	public void setUsers(Collection<User> users) {
		this.users = users;
	}
	public String queryAll(){
		users = Userutils.getAll();
		return "qureyAll_ok";
	}
	public String delete(){
		Userutils.deleteById(user.getId());
		return "queryAll";
	}
	public String queryUserById(){
		user = Userutils.getById(user.getId());
		return "queryUserById_ok";
	}
	public String savaOrUpdate(){
		Userutils.savaOrUpdate(user);
		return "queryAll";
	}
}
