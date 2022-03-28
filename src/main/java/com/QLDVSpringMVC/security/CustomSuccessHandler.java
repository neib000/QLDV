package com.QLDVSpringMVC.security;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.QLDVSpringMVC.util.SecurityUtils;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException {
		String targetUrl = determineTargetUrl(authentication);
		if (response.isCommitted()) {
			return;
		}
		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	public String determineTargetUrl(Authentication authentication) {
		String url = "";
		List<String> chucvus = SecurityUtils.getAuthorities();
		if(isBTDT(chucvus)==true)
		{
			url = "/btdt/trang-chu";
		}
		if(isBTDK(chucvus)==true)
		{
			url = "/btdk/trang-chu";
		}
		if(isBTCD(chucvus)==true)
		{
			url = "/btcd/trang-chu";
		}
		if(isDV(chucvus)==true)
		{
			url = "/dv/trang-chu";
		}
		return url;
	}
	//Check cac chuc vu de redirect den cac trang tuong ung theo chuc vu
	//KT Bi thu doan truong
	private boolean isBTDT(List<String> chucvus) 
	{
		if(chucvus.contains("BTDT"))
		{
			return true;
		}
		return false;
	}
	//KT Bi thu doan khoa
	private boolean isBTDK(List<String> chucvus) 
	{
		if(chucvus.contains("BTDK"))
		{
			return true;
		}
		return false;
	}
	//KT Bi thu chi doan 
	private boolean isBTCD(List<String> chucvus) 
	{
		if(chucvus.contains("BTCD"))
		{
			return true;
		}
		return false;
	}
	//KT Doan Vien
	private boolean isDV(List<String> chucvus) 
	{
		if(chucvus.contains("DV"))
		{
			return true;
		}
		return false;
	}
}
