package com.QLDVSpringMVC.controller.dv;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.QLDVSpringMVC.model.CtHoatdong;
import com.QLDVSpringMVC.model.Diemdv;
import com.QLDVSpringMVC.model.DiemdvId;
import com.QLDVSpringMVC.model.Hoatdong;
import com.QLDVSpringMVC.model.Loaidiem;
import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.model.Tieuchi;
import com.QLDVSpringMVC.model.Tintuc;
import com.QLDVSpringMVC.service.DiemdvService;
import com.QLDVSpringMVC.service.HoatdongService;
import com.QLDVSpringMVC.service.LoaidiemService;
import com.QLDVSpringMVC.service.PasswordService;
import com.QLDVSpringMVC.service.TaikhoanService;
import com.QLDVSpringMVC.service.TieuchiService;
import com.QLDVSpringMVC.service.TintucService;
import com.QLDVSpringMVC.service.ctHoatdongSer;
import com.QLDVSpringMVC.service.testSer;
import com.QLDVSpringMVC.util.SecurityUtils;

@Controller
public class dvController {
	@Autowired
	HoatdongService hdSer;
	@Autowired
	TintucService ttSer;
	@Autowired
	TaikhoanService tkSer;
	@Autowired
	ctHoatdongSer cthdSer;
	@Autowired
	DiemdvService ddvdSer;
	@Autowired
	TieuchiService tcSer;
	@Autowired
	LoaidiemService ldSer;
	@Autowired
	testSer tSer;
	@Autowired
	SecurityUtils security;
	@Autowired
	PasswordService passSer;

	@RequestMapping(value = "/dv/trang-chu", method = RequestMethod.GET)
	public ModelAndView main_dv() {
		List<Hoatdong> listHD = hdSer.findAll();
		List<Tintuc> listTT = ttSer.findAll();
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("dv/main_dv");
		mav.addObject("listHD", listHD);
		mav.addObject("listTT", listTT);
		mav.addObject("tk", tk);
		return mav;
	}

	@RequestMapping(value = "/dv/thong-tin-tai-khoan", method = RequestMethod.GET)
	public ModelAndView account_dv() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("dv/account_dv");
		mav.addObject("tk", tk);
		return mav;
	}

//	@RequestMapping(value = "/dv/thong-tin-tai-khoan/mat-khau", method = RequestMethod.GET)
//	public ModelAndView MatKhau() {
//		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
//		ModelAndView mav = new ModelAndView("dv/changePass");
//		mav.addObject("tk", tk);
//		return mav;
//	}

	@RequestMapping(value = "/dv/doi-mat-khau")
	public RedirectView change_password(HttpServletRequest request) throws UnsupportedEncodingException 
	{
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		String oldPass = request.getParameter("oldPassword");
		
		String NewPass = request.getParameter("newPassword");

		String RePass = request.getParameter("rePassword");

		if (passSer.doPasswordsMatch(oldPass, tk.getPassword()) == true) 
		{
			if (NewPass.equals(RePass)) 
			{
				tk.setPassword(passSer.bcryptEncryptor(NewPass));
				tkSer.save(tk);
				return new RedirectView("/QLDVSpringMVC/Logout");
			} 
			else 
			{
				String mess = "nhập lại mật khẩu sai";
				return new RedirectView("thong-tin-tai-khoan?passwordnotmatch");
			}
		} 
		else 
		{
			String mess = "nhập lại mật khẩu sai";
			return new RedirectView("thong-tin-tai-khoan?wrongpassword");
		}
	}

	@RequestMapping(value = "/dv/cap-nhat-thong-tin-tai-khoan", method = RequestMethod.POST)
	public RedirectView update__account(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		String ma = request.getParameter("maTK").trim();
		Taikhoan tk = tkSer.findByUsername(ma);
		tk.setDiachi(request.getParameter("dc").trim());
		tk.setSdt(request.getParameter("sdt").trim());
		tkSer.save(tk);
		return new RedirectView("thong-tin-tai-khoan?changesuccess");

	}

	@RequestMapping(value = "/dv/lich-su-hoat-dong", method = RequestMethod.GET)
	public ModelAndView activity_dv() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<CtHoatdong> listHD = cthdSer.findAllBytaikhoan(tk);
		ModelAndView mav = new ModelAndView("dv/activity_dv");
		mav.addObject("listHD", listHD);
		mav.addObject("tk", tk);
		return mav;
	}

	@RequestMapping(value = "/dv/diem-ca-nhan", method = RequestMethod.GET)
	public ModelAndView mark_dv() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Diemdv> ddv = ddvdSer.findAllBytaikhoan(tk);
		List<Loaidiem> ld = ldSer.findAll();
		ModelAndView mav = new ModelAndView("dv/mark_dv");
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		mav.addObject("ld", ld);
		return mav;
	}

	@RequestMapping(value = "/dv/chi-tiet-diem", method = RequestMethod.GET)
	public ModelAndView markDetail_dv() {

		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Diemdv> ddv = ddvdSer.findAllBytaikhoan(tk);
		List<Tieuchi> tc = tcSer.findAll();
		ModelAndView mav = new ModelAndView("dv/markDetail_dv");
//		new
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		mav.addObject("tc", tc);
		return mav;
	}

	@RequestMapping(value = "/dv/danh-gia-diem", method = RequestMethod.GET)
	public ModelAndView markNow_dv() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Diemdv> ddv = ddvdSer.findAllBytaikhoan(tk);
		List<Tieuchi> tc = tcSer.findAll();
		ModelAndView mav = new ModelAndView("dv/markNow_dv");
		mav.addObject("tk", tk);
		mav.addObject("tc", tc);
		mav.addObject("ddv", ddv);
		return mav;
	}

	@RequestMapping(value = "/dv/cap-nhat-diem-ca-nhan", method = RequestMethod.POST)
	public RedirectView create__MarkNow(HttpServletRequest request) {
//		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		DiemdvId dv = new DiemdvId();
		for (int i = 1; i < 11; i++) {
			dv.setIdPhieuTc(10 + i);
			dv.setMachucvu(4);
			dv.setMaTk(security.getPrincipal().getUsername());
			Diemdv ddv = new Diemdv();
			ddv.setSodiem(Integer.parseInt(request.getParameter("diem" + i)));
			ddv.setId(dv);
			ddvdSer.save(ddv);
		}

		return new RedirectView("danh-gia-diem");

	}
	
	@RequestMapping(value = "/dv/khai-bao-y-te", method = RequestMethod.GET)
	public ModelAndView medical_dv() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("dv/medical_dv");
		mav.addObject("tk", tk);
		return mav;
	}

	@RequestMapping(value = "/dv/ho-tro", method = RequestMethod.GET)
	public ModelAndView support_dv() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("dv/support_dv");
		mav.addObject("tk", tk);
		return mav;
	}
	
	
	
//	@RequestMapping(value = "/dv/test", method = RequestMethod.GET)
//	public ModelAndView test() {
//		List<Loaidiem> ld  = tSer.findAll();
//		ModelAndView mav = new ModelAndView("dv/test");
//		mav.addObject("ld", ld);
//		return mav;
//	}
	
//	@RequestMapping(value = "/dv/test", method = RequestMethod.GET)
//	public ModelAndView test() {
//		List<Loaidiem> ld = ldSer.findDESC();
//		ModelAndView mav = new ModelAndView("dv/test");
//		mav.addObject("ld", ld);
//		return mav;
//	}
	
//	@RequestMapping(value = "/dv/update-test", method = RequestMethod.POST)
//	public RedirectView update(HttpServletRequest request) {
//		int ma =Integer.parseInt(request.getParameter("ma")) ;
//		Loaidiem loaidiem = tSer.find(ma);
//	
//		loaidiem.setTengoi(request.getParameter("t2").trim());
//		tSer.save(loaidiem);
//		 return new RedirectView("test");
//		
//	}
//	@RequestMapping(value = "/dv/create-test", method = RequestMethod.POST)
//	public RedirectView create(HttpServletRequest request) {
//		Loaidiem loaidiem = new Loaidiem();
//		loaidiem.setMaloaidiem(Integer.parseInt(request.getParameter("t1")) );
//		loaidiem.setTengoi(request.getParameter("t2").trim());
//		tSer.save(loaidiem);
//		 return new RedirectView("test");
//		
//	}
//	@RequestMapping(value = "/dv/delete-test", method = RequestMethod.POST)
//	public RedirectView delete(HttpServletRequest request) {
//		int ma =Integer.parseInt(request.getParameter("ma")) ;
//		tSer.delete(ma);
//		 return new RedirectView("test");
//		
//	}

}
