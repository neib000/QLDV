package com.QLDVSpringMVC.controller.btdk;

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
public class btdkController {
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

	@RequestMapping(value = "/btdk/trang-chu", method = RequestMethod.GET)
	public ModelAndView main_btdk() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Hoatdong> listHD = hdSer.findAll();
		List<Tintuc> listTT = ttSer.findAll();
		ModelAndView mav = new ModelAndView("btdk/main_btdk");
		mav.addObject("listHD", listHD);
		mav.addObject("listTT", listTT);
		mav.addObject("tk", tk);
		return mav;
	}

	@RequestMapping(value = "/btdk/thong-tin-tai-khoan", method = RequestMethod.GET)
	public ModelAndView account_btdk() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("btdk/account_btdk");
		mav.addObject("tk", tk);
		return mav;
	}

	@RequestMapping(value = "/btdk/doi-mat-khau")
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
				String mess = "nhập lại mật khẩu sai";
				return new RedirectView("thong-tin-tai-khoan?passwordnotmatch");
			}
		} else {
			String mess = "nhập lại mật khẩu sai";
			return new RedirectView("thong-tin-tai-khoan?wrongpassword");
		}
	}

	@RequestMapping(value = "/btdk/cap-nhat-thong-tin-tai-khoan", method = RequestMethod.POST)
	public RedirectView update__account(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		String ma = request.getParameter("maTK").trim();
		Taikhoan tk = tkSer.findByUsername(ma);
		tk.setDiachi(request.getParameter("dc").trim());
		tk.setSdt(request.getParameter("sdt").trim());
		tkSer.save(tk);
		return new RedirectView("thong-tin-tai-khoan?changesuccess");

	}

	@RequestMapping(value = "/btdk/ho-tro", method = RequestMethod.GET)
	public ModelAndView ho_tro() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("btdk/support_btdk"); // mav.addObject("tk", tk);
		mav.addObject("tk", tk);
		return mav;
	}


	@RequestMapping(value = "/btdk/khai-bao-y-te", method = RequestMethod.GET)
	public ModelAndView medical_btdk() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("btdk/medical_btdk");
		mav.addObject("tk", tk);
		return mav;
	}

	@RequestMapping(value = "/btdk/quan-ly-tin-tuc", method = RequestMethod.GET)
	public ModelAndView CRUD_news() {

		List<Tintuc> tt = ttSer.findAll();
		long count = ttSer.count();
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("btdk/CRUD_news");
		mav.addObject("tk", tk);
		mav.addObject("tt", tt);
		mav.addObject("count", count);

		return mav;
	}

	@RequestMapping(value = "/btdk/them-tin-tuc", method = RequestMethod.POST)
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

	@RequestMapping(value = "/btdk/sua-tin-tuc", method = RequestMethod.POST)
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

	@RequestMapping(value = "/btdk/xoa-tin-tuc", method = RequestMethod.POST)
	public RedirectView delete_new(HttpServletRequest request) {
		int ma = Integer.parseInt(request.getParameter("ma"));
		ttSer.delete(ma);
		return new RedirectView("quan-ly-tin-tuc");

	}

	@RequestMapping(value = "/btdk/quan-ly-hoat-dong", method = RequestMethod.GET)
	public ModelAndView CRUD_activity() {
		List<Hoatdong> listHD = hdSer.findDest();
		long count = hdSer.count();
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		ModelAndView mav = new ModelAndView("btdk/CRUD_activity");
		mav.addObject("tk", tk);
		mav.addObject("hd", listHD);
		mav.addObject("count", count);
		return mav;
	}

	@RequestMapping(value = "/btdk/them-hoat-dong", method = RequestMethod.POST)
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

	@RequestMapping(value = "/btdk/sua-hoat-dong", method = RequestMethod.POST)
	public RedirectView update_activity(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		int ma = Integer.parseInt(request.getParameter("ma"));
		Hoatdong hoatdong = hdSer.find(ma);
		hoatdong.setTenHd(request.getParameter("tieude").trim());
		hoatdong.setTrangthai(Boolean.parseBoolean(request.getParameter("trangthai").trim()));
		hdSer.save(hoatdong);
		return new RedirectView("quan-ly-hoat-dong");

	}

	@RequestMapping(value = "/btdk/xoa-hoat-dong", method = RequestMethod.POST)
	public RedirectView delete_activity(HttpServletRequest request) {
		int ma = Integer.parseInt(request.getParameter("ma"));
		hdSer.delete(ma);
		return new RedirectView("quan-ly-hoat-dong");

	}
	/* ==============================Thông tin các lớp============================== */
	//Hiển thị danh sách lớp
	@RequestMapping(value = "/btdk/danh-sach-lop", method = RequestMethod.GET)
	public ModelAndView danh_sach_lop() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Chidoan> listCD = cdSer.findAllMakhoa(1);
		ModelAndView mav = new ModelAndView("btdk/classes");
		mav.addObject("tk", tk);
		mav.addObject("listCD", listCD);
		return mav;
	}
	//Lấy mã chi toàn của từng lớp để hiển thi thành viên lớp
	@RequestMapping(value = "/GetChidoan", method = RequestMethod.POST)
	public RedirectView redirect(@RequestParam("chidoan") int chidoan, RedirectAttributes redirectAttributes) {
		redirectAttributes.addAttribute("chidoan", chidoan);	
		return new RedirectView("btdk/thanh-vien-lop");
	}
	//Hiển thị danh sách thành viên của lớp
	@RequestMapping(value = "/btdk/thanh-vien-lop", method = RequestMethod.GET)
	public ModelAndView thanh_vien_lop(@RequestParam("chidoan") String chidoan) {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(Integer.parseInt(chidoan), 4);
		ModelAndView mav = new ModelAndView("btdk/classmember");
		mav.addObject("tk", tk);
		mav.addObject("listTK", listTK);
		return mav;
	}
	/* ==============================Điểm Đoàn Viên============================== */
	//Hiển thị học kì chấm điểm
	@RequestMapping(value = "/btdk/hk-danh-gia", method = RequestMethod.GET)
	public ModelAndView hk_danh_gia() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Diemdv> ddv = ddvSer.findAllBytaikhoan(tk);
		List<Loaidiem> ld = ldSer.findAll();
		ModelAndView mav = new ModelAndView("btdk/mark_btdk");
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		return mav;
	}
	
	//--------Học kì đánh gia chưa xong--------//
	//****Học kì 1 năm 2020-2021****//
	//Hiển thị danh sách lớp
	@RequestMapping(value = "/btdk/danh-sach-lop-danh-gia-lop", method = RequestMethod.GET)
	public ModelAndView danh_sach_lop_danh_gia_lop() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Chidoan> listCD = cdSer.findAllMakhoa(1);
		ModelAndView mav = new ModelAndView("btdk/markNow_classes");
		mav.addObject("tk", tk);
		mav.addObject("listCD", listCD);
		return mav;
	}
	
	
	//Lấy mã chi đoàn để hiển thị thành viên của lớp
	@RequestMapping(value = "/getchidoandanhgianow", method = RequestMethod.POST)
	public RedirectView redirect4(@RequestParam("chidoan") int chidoan, RedirectAttributes redirectAttributes) {
		redirectAttributes.addAttribute("chidoan", chidoan);	
		return new RedirectView("btdk/danh-gia-lop");
	}
	//Hiển thị danh sách thành viên lớp và hiển thị điểm 
	@RequestMapping(value = "/btdk/danh-gia-lop", method = RequestMethod.GET)
	public ModelAndView danh_gia_lop(@RequestParam("chidoan") String chidoan) {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(Integer.parseInt(chidoan), 4);
		List<Diemdv> listDiemdv = ddvSer.findAll();
		List<Loaidiem> ld = ldSer.findAll();
		ModelAndView mav = new ModelAndView("btdk/markNow_class");
		mav.addObject("tk", tk);
		mav.addObject("ld", ld);
		mav.addObject("listTK", listTK);
		mav.addObject("listDiemdv", listDiemdv);
		return mav;
	}
	//Lấy username của thành viên để chấm
	@RequestMapping(value="/Getusernamenowdk", method = RequestMethod.POST)
	public RedirectView redirect3(@RequestParam("username") int username, RedirectAttributes redirectAttributes) {
	    redirectAttributes.addAttribute("username", username);
	    return new RedirectView("btdk/chi-tiet-diem-bay-gio");
	 }
	//Hiển thị tiêu chí và nhập điểm
	@RequestMapping(value = "/btdk/chi-tiet-diem-bay-gio", method = RequestMethod.GET)
	public ModelAndView chi_tiet_diem_bay_gio(@RequestParam("username") String username) {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		Taikhoan dtk = tkSer.findOneByUsernameAndKhaitru(username,true);
		List<Diemdv> ddv = ddvSer.findAllBytaikhoan(dtk);
		List<Tieuchi> tc = tcSer.findAll();
		ModelAndView mav = new ModelAndView("btdk/markNowDetail_btdk");
		mav.addObject("dtk", dtk);
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		mav.addObject("tc", tc);				
		return mav;
	}
	//Cập nhật điểm chấm
	@RequestMapping(value = "/btdk/cap-nhat-diem-thanh-vien-lop", method = RequestMethod.POST)
	public RedirectView create__MarkNow(HttpServletRequest request, @RequestParam("username") int username, RedirectAttributes redirectAttributes) {
		redirectAttributes.addAttribute("username", username);
		DiemdvId dv = new DiemdvId();
		for (int i = 1; i < 11; i++) {
			dv.setIdPhieuTc(10+i);
			dv.setMachucvu(2);
			dv.setMaTk(request.getParameter("username"));
			Diemdv ddv = new Diemdv();
			ddv.setSodiem(Integer.parseInt(request.getParameter("diem"+i)));	
			ddv.setId(dv);
			ddvSer.save(ddv);
		}	
		 return new RedirectView("chi-tiet-diem-bay-gio");
		
	}
	
	//--------Học kì đánh gia đã xong--------//
	//****Học kì 1 năm 2020-2021****//
	//Hiển thị danh sách lớp đã chấm xong
	@RequestMapping(value = "/btdk/danh-sach-lop-chi-tiet-danh-gia", method = RequestMethod.GET)
	public ModelAndView danh_sach_lop_chi_tiet_danh_gia() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(), true);
		List<Chidoan> listCD = cdSer.findAllMakhoa(1);
		ModelAndView mav = new ModelAndView("btdk/mark_classes");
		mav.addObject("tk", tk);
		mav.addObject("listCD", listCD);
		return mav;
	}
	//Lấy mã chidoan
	@RequestMapping(value = "/getchidoandanhgia", method = RequestMethod.POST)
	public RedirectView redirect1(@RequestParam("chidoan") int chidoan, RedirectAttributes redirectAttributes) {
		redirectAttributes.addAttribute("chidoan", chidoan);	
		return new RedirectView("btdk/chi-tiet-danh-gia-lop");
	}
	//Hiển thị danh sách các thành viên của lớp 
	@RequestMapping(value = "/btdk/chi-tiet-danh-gia-lop", method = RequestMethod.GET)
	public ModelAndView chi_tiet_danh_gia_lop(@RequestParam("chidoan") String chidoan) {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(Integer.parseInt(chidoan),4);
		List<Diemdv> listDiemdv = ddvSer.findAll();
		List<Loaidiem> ld = ldSer.findAll();
		ModelAndView mav = new ModelAndView("btdk/mark_class");
		mav.addObject("tk", tk);
		mav.addObject("ld", ld);
		mav.addObject("listTK", listTK);
		mav.addObject("listDiemdv", listDiemdv);
		return mav;
	}
	//Lấy username 
	@RequestMapping(value="/Getusernamedk", method = RequestMethod.POST)
	public RedirectView redirect2(@RequestParam("username") int username, RedirectAttributes redirectAttributes) {
	    redirectAttributes.addAttribute("username", username);
	    return new RedirectView("btdk/chi-tiet-diem");
	 }
	//Hiển thị điểm chi tiết điểm của thành viên lớp
	@RequestMapping(value = "/btdk/chi-tiet-diem", method = RequestMethod.GET)
	public ModelAndView chi_tiet_diem(@RequestParam("username") String username) {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		Taikhoan dtk = tkSer.findOneByUsernameAndKhaitru(username,true);
		List<Diemdv> ddv = ddvSer.findAllBytaikhoan(dtk);
		List<Tieuchi> tc = tcSer.findAll();
		ModelAndView mav = new ModelAndView("btdk/markDetail_btdk");
//		new
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		mav.addObject("tc", tc);				
		return mav;
	}
}

