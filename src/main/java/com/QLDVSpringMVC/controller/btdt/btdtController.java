package com.QLDVSpringMVC.controller.btdt;

import java.io.UnsupportedEncodingException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.QLDVSpringMVC.model.Chidoan;
import com.QLDVSpringMVC.model.Diemdv;
import com.QLDVSpringMVC.model.DiemdvId;
import com.QLDVSpringMVC.model.Hoatdong;
import com.QLDVSpringMVC.model.Loaidiem;
import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.model.Tieuchi;
import com.QLDVSpringMVC.model.Tintuc;
import com.QLDVSpringMVC.service.ChidoanService;
import com.QLDVSpringMVC.service.DiemdvService;
import com.QLDVSpringMVC.service.HoatdongService;
import com.QLDVSpringMVC.service.LoaidiemService;
import com.QLDVSpringMVC.service.PasswordService;
import com.QLDVSpringMVC.service.TaikhoanService;
import com.QLDVSpringMVC.service.TieuchiService;
import com.QLDVSpringMVC.service.TintucService;
import com.QLDVSpringMVC.util.SecurityUtils;

@Controller
public class btdtController {
	@Autowired
	TaikhoanService tkSer;
	@Autowired
	HoatdongService hdSer;
	@Autowired
	TintucService ttSer;
	@Autowired
	PasswordService passSer;
	@Autowired
	ChidoanService cdSer;
	@Autowired
	SecurityUtils security;
	@Autowired 
	DiemdvService ddvSer;
	@Autowired
	LoaidiemService ldSer;
	@Autowired
	TieuchiService tcSer;

	
	@RequestMapping(value = "/btdt/trang-chu", method = RequestMethod.GET)
	public ModelAndView main_btdt() {
		List<Hoatdong> listHD = hdSer.findAll();
		List<Tintuc> listTT = ttSer.findAll();
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		ModelAndView mav = new ModelAndView("btdt/main_btdt");
		mav.addObject("listHD", listHD);
		mav.addObject("listTT", listTT);
		mav.addObject("tk", tk);
		return mav;
	}

	@RequestMapping(value = "/btdt/thong-tin-tai-khoan", method = RequestMethod.GET)
	public ModelAndView account_btdt() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		ModelAndView mav = new ModelAndView("btdt/account_btdt");
		mav.addObject("tk", tk);
		return mav;
	}
	
	@RequestMapping(value = "/btdt/doi-mat-khau")
	public RedirectView change_password(HttpServletRequest request) throws UnsupportedEncodingException {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		String oldPass = request.getParameter("oldPassword");

		String NewPass = request.getParameter("newPassword");

		String RePass = request.getParameter("rePassword");

		if (passSer.doPasswordsMatch(oldPass, tk.getPassword()) == true) {
			if (NewPass.equals(RePass)) {
				tk.setPassword(passSer.bcryptEncryptor(NewPass));
				tkSer.save(tk);
				return new RedirectView("/QLDVSpringMVC/Logout");
			} else {
				return new RedirectView("thong-tin-tai-khoan?passwordnotmatch");
			}
		} else {
			return new RedirectView("thong-tin-tai-khoan?wrongpassword");
		}
	}

	@RequestMapping(value = "/btdt/cap-nhat-thong-tin-tai-khoan", method = RequestMethod.POST)
	public RedirectView update__account(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		String ma = request.getParameter("maTK").trim();
		Taikhoan tk = tkSer.findByUsername(ma);
		tk.setDiachi(request.getParameter("dc").trim());
		tk.setSdt(request.getParameter("sdt").trim());
		tkSer.save(tk);
		return new RedirectView("thong-tin-tai-khoan?changesuccess");

	}

	@RequestMapping(value = "/btdt/quan-ly-tin-tuc", method = RequestMethod.GET)
	public ModelAndView CRUD_news() {

		List<Tintuc> tt = ttSer.findAll();
		long count = ttSer.count();
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("btdt/CRUD_news");
		mav.addObject("tk", tk);
		mav.addObject("tt", tt);
		mav.addObject("count", count);

		return mav;
	}

	@RequestMapping(value = "/btdt/them-tin-tuc", method = RequestMethod.POST)
	public RedirectView create_new(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDateTime now = LocalDateTime.now();
		String date = dtf.format(now);
		Tintuc tintuc = new Tintuc();
		tintuc.setMatin(Integer.parseInt(request.getParameter("ma")));
		tintuc.setTenNd(request.getParameter("tieude").trim());
		tintuc.setNoidung(request.getParameter("noidung").trim());
		tintuc.setHinhanh(request.getParameter("hinhanh").trim());
		tintuc.setNgaytao(date);
		ttSer.save(tintuc);
		return new RedirectView("quan-ly-tin-tuc");
	}

	@RequestMapping(value = "/btdt/sua-tin-tuc", method = RequestMethod.POST)
	public RedirectView update_new(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		int ma = Integer.parseInt(request.getParameter("ma"));
		Tintuc tintuc = ttSer.find(ma);
		tintuc.setTenNd(request.getParameter("tieude").trim());
		tintuc.setNoidung(request.getParameter("noidung").trim());
		if (request.getParameter("hinhanh").trim() != "") {
			tintuc.setHinhanh(request.getParameter("hinhanh").trim());
		} else {
			tintuc.setHinhanh(request.getParameter("hinhanh2").trim());
		}

		ttSer.save(tintuc);
		return new RedirectView("quan-ly-tin-tuc");

	}

	@RequestMapping(value = "/btdt/xoa-tin-tuc", method = RequestMethod.POST)
	public RedirectView delete_new(HttpServletRequest request) {
		int ma = Integer.parseInt(request.getParameter("ma"));
		ttSer.delete(ma);
		return new RedirectView("quan-ly-tin-tuc");

	}

	@RequestMapping(value = "/btdt/quan-ly-hoat-dong", method = RequestMethod.GET)
	public ModelAndView CRUD_activity() {
		List<Hoatdong> listHD = hdSer.findDest();
		long count = hdSer.count();
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("btdt/CRUD_activity");
		mav.addObject("tk", tk);
		mav.addObject("hd", listHD);
		mav.addObject("count", count);
		return mav;
	}

	@RequestMapping(value = "/btdt/them-hoat-dong", method = RequestMethod.POST)
	public RedirectView create_activity(HttpServletRequest request) throws UnsupportedEncodingException {

		request.setCharacterEncoding("UTF-8");
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDateTime now = LocalDateTime.now();
		String date = dtf.format(now);
		Hoatdong hoatdong = new Hoatdong();
		hoatdong.setMaHd(Integer.parseInt(request.getParameter("ma")));
		hoatdong.setTenHd(request.getParameter("tieude").trim());
		hoatdong.setTrangthai(Boolean.parseBoolean(request.getParameter("trangthai").trim()));
		hoatdong.setNgaytao(date);
		hdSer.save(hoatdong);
		return new RedirectView("quan-ly-hoat-dong");
	}

	@RequestMapping(value = "/btdt/sua-hoat-dong", method = RequestMethod.POST)
	public RedirectView update_activity(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		int ma = Integer.parseInt(request.getParameter("ma"));
		Hoatdong hoatdong = hdSer.find(ma);
		hoatdong.setTenHd(request.getParameter("tieude").trim());
		hoatdong.setTrangthai(Boolean.parseBoolean(request.getParameter("trangthai").trim()));
		hdSer.save(hoatdong);
		return new RedirectView("quan-ly-hoat-dong");

	}

	@RequestMapping(value = "/btdt/xoa-hoat-dong", method = RequestMethod.POST)
	public RedirectView delete_activity(HttpServletRequest request) {
		int ma = Integer.parseInt(request.getParameter("ma"));
		hdSer.delete(ma);
		return new RedirectView("quan-ly-hoat-dong");

	}

	@RequestMapping(value = "/btdt/danh-gia-diem", method = RequestMethod.GET)
	public ModelAndView markNow_btdt() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru("1811063001",true);
		ModelAndView mav = new ModelAndView("btdt/markNow_btdt");
		mav.addObject("tk", tk);
		return mav;
	}
	@RequestMapping(value = "/btdt/khai-bao-y-te", method = RequestMethod.GET)
	public ModelAndView medical_btdt() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		ModelAndView mav = new ModelAndView("btdt/medical_btdt");
		mav.addObject("tk", tk);	
		return mav;
	}
	@RequestMapping(value = "/btdt/danh-sach-lop", method = RequestMethod.GET)
	public ModelAndView danh_sach_lop(){
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Chidoan> listCD = cdSer.findAllByChidoantruongIsNotNull();
		ModelAndView mav = new ModelAndView("btdt/classes");
		mav.addObject("tk", tk);
		mav.addObject("listCD", listCD);
		return mav;
	}
//	@RequestMapping(value="/btdt/GetChidoandt")
//	public RedirectView redirect(@RequestParam("chidoan") int chidoan, RedirectAttributes redirectAttributes) {
//	    redirectAttributes.addAttribute("chidoan", chidoan);
//	    return new RedirectView("thanh-vien-lop");
//	 }
	@RequestMapping(value = "/btdt/thanh-vien-lop", method = RequestMethod.GET)
	public ModelAndView thanh_vien_lop(HttpServletRequest request) 
	{
		int chidoan = Integer.parseInt(request.getParameter("chidoan"));
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(chidoan,4);
		ModelAndView mav = new ModelAndView("btdt/classmember");
		mav.addObject("tk", tk);
		mav.addObject("listTK", listTK);
		return mav;
	}
	
	@RequestMapping(value = "/btdt/ho-tro", method = RequestMethod.GET)
	public ModelAndView support_btdt() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		ModelAndView mav = new ModelAndView("btdt/support_btdt");
		mav.addObject("tk", tk);
		return mav;
	}
	
		@RequestMapping(value = "/btdt/hk-danh-gia", method = RequestMethod.GET)
		public ModelAndView hk_danh_gia() {
			Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
			List<Diemdv> ddv = ddvSer.findAllBytaikhoan(tk);
			List<Loaidiem> ld = ldSer.findAll();
			ModelAndView mav = new ModelAndView("btdt/mark_btdt");
			mav.addObject("tk", tk);
			mav.addObject("ddv", ddv);
			return mav;
		}
		
	
		@RequestMapping(value = "/btdt/danh-sach-lop-danh-gia-lop", method = RequestMethod.GET)
		public ModelAndView danh_sach_lop_danh_gia_lop() {
			Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
			List<Chidoan> listCD = cdSer.findAllByChidoantruongIsNotNull();
			ModelAndView mav = new ModelAndView("btdt/markNow_classes");
			mav.addObject("tk", tk);
			mav.addObject("listCD", listCD);
			return mav;
		}
		
		
		//Láº¥y mÃ£ chi Ä‘oÃ n Ä‘á»ƒ hiá»ƒn thá»‹ thÃ nh viÃªn cá»§a lá»›p
//		@RequestMapping(value = "/getchidoan2", method = RequestMethod.POST)
//		public RedirectView redirect4(@RequestParam("chidoan") int chidoan, RedirectAttributes redirectAttributes) {
//			redirectAttributes.addAttribute("chidoan", chidoan);	
//			return new RedirectView("btdt/danh-gia-lop");
//		}
		//Get username to Danh gia
		@RequestMapping(value = "/btdt/danh-gia-lop", method = RequestMethod.GET)
		public ModelAndView danh_gia_lop(HttpServletRequest request) {
			int chidoan =Integer.parseInt(request.getParameter("chidoan"));
			Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
			List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(chidoan, 4);
			List<Diemdv> listDiemdv = ddvSer.findAll();
			List<Loaidiem> ld = ldSer.findAll();
			ModelAndView mav = new ModelAndView("btdt/markNow_class");
			mav.addObject("tk", tk);
			mav.addObject("ld", ld);
			mav.addObject("listTK", listTK);
			mav.addObject("listDiemdv", listDiemdv);
			return mav;
		}
		@RequestMapping(value = "/btdt/chi-tiet-diem-bay-gio", method = RequestMethod.GET)
		public ModelAndView chi_tiet_diem_bay_gio(HttpServletRequest request) {
			String username = request.getParameter("username");
			Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
			Taikhoan dtk = tkSer.findOneByUsernameAndKhaitru(username,true);
			List<Diemdv> ddv = ddvSer.findAllBytaikhoan(dtk);
			List<Tieuchi> tc = tcSer.findAll();
			ModelAndView mav = new ModelAndView("btdt/markNowDetail_btdt");
			mav.addObject("dtk", dtk);
			mav.addObject("tk", tk);
			mav.addObject("ddv", ddv);
			mav.addObject("tc", tc);				
			return mav;
		}
		//Cap nhat diem da danh gia
		@RequestMapping(value = "/btdt/cap-nhat-diem-thanh-vien-lop", method = RequestMethod.POST)
		public RedirectView create__MarkNow(HttpServletRequest request, @RequestParam("username") int username, RedirectAttributes redirectAttributes) {
			redirectAttributes.addAttribute("username", username);
			DiemdvId dv = new DiemdvId();
			for (int i = 1; i < 11; i++) {
				dv.setIdPhieuTc(10+i);
				dv.setMachucvu(1);
				dv.setMaTk(request.getParameter("username"));
				Diemdv ddv = new Diemdv();
				ddv.setSodiem(Integer.parseInt(request.getParameter("diem"+i)));	
				ddv.setId(dv);
				ddvSer.save(ddv);
			}	
			 return new RedirectView("chi-tiet-diem-bay-gio");
			
		}
		
		
		@RequestMapping(value = "/btdt/danh-sach-lop-chi-tiet-danh-gia", method = RequestMethod.GET)
		public ModelAndView danh_sach_lop_chi_tiet_danh_gia() {
			Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
			List<Chidoan> listCD = cdSer.findAllByChidoantruongIsNotNull();
			ModelAndView mav = new ModelAndView("btdt/mark_classes");
			mav.addObject("tk", tk);
			mav.addObject("listCD", listCD);
			return mav;
		}
		@RequestMapping(value = "/btdt/chi-tiet-danh-gia-lop", method = RequestMethod.GET)
		public ModelAndView chi_tiet_danh_gia_lop(HttpServletRequest request) {
			int chidoan = Integer.parseInt(request.getParameter("chidoan"));
			Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
			List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(chidoan, 4);
			List<Diemdv> listDiemdv = ddvSer.findAll();
			List<Loaidiem> ld = ldSer.findAll();
			ModelAndView mav = new ModelAndView("btdt/mark_class");
			mav.addObject("tk", tk);
			mav.addObject("ld", ld);
			mav.addObject("listTK", listTK);
			mav.addObject("listDiemdv", listDiemdv);
			return mav;
		}
//		//Láº¥y username 
//		@RequestMapping(value="/Getusernamedt", method = RequestMethod.POST)
//		public RedirectView redirect2(@RequestParam("username") int username, RedirectAttributes redirectAttributes) {
//		    redirectAttributes.addAttribute("username", username);
//		    return new RedirectView("btdt/chi-tiet-diem");
//		 }
//		//Hiá»ƒn thá»‹ Ä‘iá»ƒm chi tiáº¿t Ä‘iá»ƒm cá»§a thÃ nh viÃªn lá»›p
//		@RequestMapping(value = "/btdt/chi-tiet-diem", method = RequestMethod.GET)
//		public ModelAndView chi_tiet_diem(@RequestParam("username") String username) {
//			Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
//			Taikhoan dtk = tkSer.findOneByUsernameAndKhaitru(username,true);
//			List<Diemdv> ddv = ddvSer.findAllBytaikhoan(dtk);
//			List<Tieuchi> tc = tcSer.findAll();
//			ModelAndView mav = new ModelAndView("btdt/markDetail_btdt");
////			new
//			mav.addObject("tk", tk);
//			mav.addObject("ddv", ddv);
//			mav.addObject("tc", tc);				
//			return mav;
}
