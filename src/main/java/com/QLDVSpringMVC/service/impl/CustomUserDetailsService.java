package com.QLDVSpringMVC.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.QLDVSpringMVC.dto.MyUser;
import com.QLDVSpringMVC.model.Chucvu;
import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.repository.TaikhoanRepository;

@Service
public class CustomUserDetailsService  implements UserDetailsService{

	
	@Autowired
	private TaikhoanRepository taikhoanRepository;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Taikhoan tk = taikhoanRepository.findOneByUsernameAndKhaitru(username, true);
		if (tk == null)
		{
			throw new UsernameNotFoundException("User not found!");
		}
		
		List<GrantedAuthority> authorities = new ArrayList<>();
		String tenCV = tk.getChucvu().getTenchucvu();
		authorities.add(new SimpleGrantedAuthority(tenCV));
		//Lay du lieu cua User khi da login vao trong he thong
		MyUser user = new MyUser((String) tk.getusername(),(String)tk.getPassword(), true, true, true, true, authorities);
		user.setHoten(tk.getHoten().toString());
		return user;
	}
}
