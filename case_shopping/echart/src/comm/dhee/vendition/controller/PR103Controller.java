package comm.dhee.vendition.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import comm.dhee.vendition.business.PR103Business;
import comm.dhee.vendition.business.impl.PR103BusinessImpl;

@Controller
public class PR103Controller {

	@RequestMapping("/pr10301.action")	
	public String pr10301(HttpServletRequest request, HttpServletResponse response) throws IOException {
          return "PR10301";
	}
	
	
	
	@RequestMapping("/pr10302.action")
	public String pr10302(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		PR103Business pr103Business = new PR103BusinessImpl();
		List<Double> dataList = pr103Business.shouhinkingakuSummingSelect();
		request.setAttribute("dataList", dataList);
		 return "PR10302";
		
	}
}
