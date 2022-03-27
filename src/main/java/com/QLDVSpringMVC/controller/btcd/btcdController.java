package com.QLDVSpringMVC.controller.btcd;



import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.QLDVSpringMVC.model.CtHoatdong;
import com.QLDVSpringMVC.model.Diemdv;
import com.QLDVSpringMVC.model.DiemdvId;
import com.QLDVSpringMVC.model.Doanphi;
import com.QLDVSpringMVC.model.Hoatdong;
import com.QLDVSpringMVC.model.Loaidiem;
import com.QLDVSpringMVC.model.Taikhoan;
import com.QLDVSpringMVC.model.Tieuchi;
import com.QLDVSpringMVC.model.Tintuc;
import com.QLDVSpringMVC.service.DiemdvService;
import com.QLDVSpringMVC.service.DoanphiService;
import com.QLDVSpringMVC.service.HoatdongService;
import com.QLDVSpringMVC.service.LoaidiemService;
import com.QLDVSpringMVC.service.PasswordService;
import com.QLDVSpringMVC.service.TaikhoanService;
import com.QLDVSpringMVC.service.TieuchiService;
import com.QLDVSpringMVC.service.TintucService;
import com.QLDVSpringMVC.service.ctHoatdongSer;
import com.QLDVSpringMVC.util.SecurityUtils;


@Controller
public class btcdController {
	@Autowired
	TaikhoanService tkSer;
	@Autowired
	HoatdongService hdSer;
	@Autowired
	TintucService ttSer;
	@Autowired
	ctHoatdongSer cthdSer;
	@Autowired
	DiemdvService ddvdSer;
	@Autowired
	TieuchiService tcSer;
	@Autowired
	LoaidiemService ldSer;
	@Autowired
	DoanphiService dpSer;
	@Autowired
	PasswordService passSer;
	//@Autowired
	//ChidoanService cdSer;
	@Autowired
	SecurityUtils security;
	@RequestMapping(value = "/btcd/trang-chu", method = RequestMethod.GET)
	public ModelAndView main_btcd() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Hoatdong> listHD = hdSer.findAll();
		List<Tintuc> listTT = ttSer.findAll();
		ModelAndView mav = new ModelAndView("btcd/main_btcd");
		mav.addObject("listHD", listHD);
		mav.addObject("listTT", listTT);
		mav.addObject("tk", tk);
		return mav;
	}
	@RequestMapping(value = "/btcd/thong-tin-tai-khoan", method = RequestMethod.GET)
	public ModelAndView account_btcd() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);	
		ModelAndView mav = new ModelAndView("btcd/account_btcd");
		mav.addObject("tk", tk);
		return mav;
	}
	@RequestMapping(value = "/btcd/doi-mat-khau")
	public RedirectView change_password_btcd(HttpServletRequest request) throws UnsupportedEncodingException 
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
				return new RedirectView("thong-tin-tai-khoan?passwordnotmatch");
			}
		} 
		else 
		{	
			return new RedirectView("thong-tin-tai-khoan?wrongpassword");
		}
	}

	@RequestMapping(value = "/btcd/cap-nhat-thong-tin-tai-khoan", method = RequestMethod.POST)
	public RedirectView update__account_btcd(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		String ma = request.getParameter("maTK").trim();
		Taikhoan tk = tkSer.findByUsername(ma);
		tk.setDiachi(request.getParameter("dc").trim());
		tk.setSdt(request.getParameter("sdt").trim());
		tkSer.save(tk);
		return new RedirectView("thong-tin-tai-khoan?changesuccess");

	}
	@RequestMapping(value = "/btcd/ho-tro", method = RequestMethod.GET)
	public ModelAndView ho_tro() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);	
		ModelAndView mav = new ModelAndView("btcd/support_btcd");
		//mav.addObject("tk", tk);
		mav.addObject("tk", tk);
		return mav;
	}
	@RequestMapping(value = "/btcd/thanh-vien-lop", method = RequestMethod.GET)
	public ModelAndView thanh_vien_lop() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(tk.getChidoan().getMachidoan(), 4);
		List<Doanphi> listDP = dpSer.findAllByNamhoc("2021");
		ModelAndView mav = new ModelAndView("btcd/classmember");
		mav.addObject("tk", tk);
		mav.addObject("listTK", listTK);
		mav.addObject("listDP", listDP);
		return mav;
	}
	@RequestMapping(value = "/btcd/khai-bao-y-te", method = RequestMethod.GET)
	public ModelAndView medical_dv() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		ModelAndView mav = new ModelAndView("btcd/medical_btcd");
		mav.addObject("tk", tk);		
		return mav;
	}
	/* ==============================Hoạt động============================== */
	@RequestMapping(value = "/btcd/danh-sach-hoat-dong", method = RequestMethod.GET)
	public ModelAndView activity_btcd() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(tk.getChidoan().getMachidoan(), 4);
		ModelAndView mav = new ModelAndView("btcd/activitylist_btcd");
		mav.addObject("listTK", listTK);
		mav.addObject("tk", tk);
		return mav;
	}
	@RequestMapping(value = "/btcd/chi-tiet-hoat-dong", method = RequestMethod.POST)
	public ModelAndView act_detail(HttpServletRequest request) {
		String username = request.getParameter("username");
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<CtHoatdong> listCTHD = cthdSer.findAllByTaikhoanUsername(username);
		ModelAndView mav = new ModelAndView("/btcd/activities_detail");
		mav.addObject("tk", tk);
		mav.addObject("listCTHD", listCTHD);
		return mav;
	}
	/* ==============================Điểm Đoàn Viên============================== */
	//Hiện thị danh sách học kì
	@RequestMapping(value = "/btcd/hk-danh-gia", method = RequestMethod.GET)
	public ModelAndView hk_danh_gia() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Diemdv> ddv = ddvdSer.findAllBytaikhoan(tk);
		List<Loaidiem> ld = ldSer.findAll();
		ModelAndView mav = new ModelAndView("btcd/semester_btcd");
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		mav.addObject("ld", ld);
		return mav;
	}
	//--------Học kì đánh gia chưa xong--------//
	//****Học kì 1 năm 2020-2021****//
	//Hiển thị danh sách thành viên lớp
	@RequestMapping(value = "/btcd/danh-gia-lop-chua-xong", method = RequestMethod.GET)
	public ModelAndView danh_gia_lop() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(tk.getChidoan().getMachidoan(),4);
		List<Diemdv> listDiemdv = ddvdSer.findAll();
		List<Loaidiem> ld = ldSer.findAll();
		ModelAndView mav = new ModelAndView("btcd/markNow_class");
		mav.addObject("tk", tk);
		mav.addObject("ld", ld);
		mav.addObject("listTK", listTK);
		mav.addObject("listDiemdv", listDiemdv);
		return mav;
	}
	//Lấy username trong  danh sách lớp
	@RequestMapping(value="/Getusernamenow", method = RequestMethod.POST)
	public RedirectView redirect2(@RequestParam("username") int username, RedirectAttributes redirectAttributes) {
	    redirectAttributes.addAttribute("username", username);
	    return new RedirectView("btcd/chi-tiet-diem-bay-gio");
	 }
	//Hiểm thị tiêu chí chấm điểm
	@RequestMapping(value = "/btcd/chi-tiet-diem-bay-gio", method = RequestMethod.GET)
	public ModelAndView thanh_vien_lop_bay_gio(@RequestParam("username") String username) {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		Taikhoan dtk = tkSer.findOneByUsernameAndKhaitru(username,true);
		List<Diemdv> ddv = ddvdSer.findAllBytaikhoan(dtk);
		List<Tieuchi> tc = tcSer.findAll();
		ModelAndView mav = new ModelAndView("btcd/markNow_btcd");
		mav.addObject("dtk", dtk);
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		mav.addObject("tc", tc);				
		return mav;
	}
	//Cập nhật điểm chấm
	@RequestMapping(value = "/btcd/cap-nhat-diem-thanh-vien-lop", method = RequestMethod.POST)
	public RedirectView create__MarkNow(HttpServletRequest request, @RequestParam("username") int username, RedirectAttributes redirectAttributes) {
		redirectAttributes.addAttribute("username", username);
		DiemdvId dv = new DiemdvId();
		for (int i = 1; i < 11; i++) {
			dv.setIdPhieuTc(10+i);
			dv.setMachucvu(3);
			dv.setMaTk(request.getParameter("username"));
			Diemdv ddv = new Diemdv();
			ddv.setSodiem(Integer.parseInt(request.getParameter("diem"+i)));	
			ddv.setId(dv);
			ddvdSer.save(ddv);
		}	
		 return new RedirectView("chi-tiet-diem-bay-gio");
	}
	//==========Học kì đánh gia đã xong==========//
	//****Học kì 2 năm 2019-2020****//
	//Hiểm thị danh sách thành viên lớp
	@RequestMapping(value = "/btcd/danh-gia-lop-da-xong", method = RequestMethod.GET)
	public ModelAndView danh_gia_lop_hoan_thanh() {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		List<Taikhoan> listTK = tkSer.findAllByMachidoanAndChucvuMachucvu(tk.getChidoan().getMachidoan(),4);
		List<Diemdv> listDiemdv = ddvdSer.findAll();
		List<Loaidiem> ld = ldSer.findAll();
		ModelAndView mav = new ModelAndView("btcd/mark_class");
		mav.addObject("tk", tk);
		mav.addObject("ld", ld);
		mav.addObject("listTK", listTK);
		mav.addObject("listDiemdv", listDiemdv);
		return mav;
	}
	//Lấy username trong  danh sách lớp đã chấm xong
	@RequestMapping(value="/Getusername", method = RequestMethod.POST)
	public RedirectView redirect(@RequestParam("username") int username, RedirectAttributes redirectAttributes) {
	    redirectAttributes.addAttribute("username", username);
	    return new RedirectView("btcd/chi-tiet-diem");
	 }
	//Hiển thị điểm đã chấm không quyền chỉnh sửa
	@RequestMapping(value = "/btcd/chi-tiet-diem", method = RequestMethod.GET)
	public ModelAndView thanh_vien_lop(@RequestParam("username") String username) {
		Taikhoan tk = tkSer.findOneByUsernameAndKhaitru(security.getPrincipal().getUsername(),true);
		Taikhoan dtk = tkSer.findOneByUsernameAndKhaitru(username,true);
		List<Diemdv> ddv = ddvdSer.findAllBytaikhoan(dtk);
		List<Tieuchi> tc = tcSer.findAll();
		ModelAndView mav = new ModelAndView("btcd/markDetail_btcd");
//		new
		mav.addObject("tk", tk);
		mav.addObject("ddv", ddv);
		mav.addObject("tc", tc);				
		return mav;
	}
	
}

