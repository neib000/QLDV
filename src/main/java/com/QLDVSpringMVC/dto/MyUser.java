package com.QLDVSpringMVC.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

//Do User mặc định chỉ cho lưu các biến dưới đây mà chúng ta còn cần nhiều thông tin hơn nên chung ta sẽ phải custom lại Class User 
//Thêm Hoten để có thể hiện thị tên Tk lúc đăng nhập
public class MyUser extends User {

	public MyUser(String username, String password, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		// TODO Auto-generated constructor stub
	}
	//Added attribute
	private String hoten;

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

}
