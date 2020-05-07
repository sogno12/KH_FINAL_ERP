package com.mj.jy.businessRoom.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mj.jy.businessRoom.model.service.BusinessRoomService;
import com.mj.jy.businessRoom.model.vo.BusinessDTO;

@Controller
public class BusinessRoomController {

	@Autowired
	private BusinessRoomService bService;
	
	/** 회의실예약 입력폼 controller
	 * @return
	 */
	@RequestMapping(value="businessForm.br")
	public String BusinessRoomForm() {
		
		return "convenience/business/businessForm";
	}
	
	@ResponseBody
	@RequestMapping(value="businessList.br", produces="application/json; charset=utf-8")
	public String BusinessRoomForm(BusinessDTO bd, Model model) {
		
		ArrayList<BusinessDTO> blist = bService.selectBlist(bd);
		
		return new Gson().toJson(blist);
	}
	
	@ResponseBody
	@RequestMapping(value="selectList.br", produces="application/json; charset=utf-8")
	public String selectListBroom(int roomNo, Model model){
		
		ArrayList<BusinessDTO> selectbList = bService.selectbRoomList(roomNo);
		
		return new Gson().toJson(selectbList);
	}
	
	@RequestMapping("insertBroom.br")
	public String insertBroom(BusinessDTO bd, Model model) {
		
		int result = bService.insertBroom(bd);
	
		if(result > 0) {
			model.addAttribute("msg", "회의실이 예약되었습니다.");
			return "convenience/namecard/namecardSuccess";
		} else {
			return "common/errorPage";
		}
		
		
	}

}
