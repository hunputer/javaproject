package com.ph4.s1.store.product.productQna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ph4.s1.store.product.ProductService;

@Controller
@RequestMapping(value = "/productQna/**")
public class ProductQnaController {
	
	@Autowired
	private ProductQnaService productQnaService;
	
	@GetMapping("productQnaList")
	public ModelAndView getList(QnaPager qnaPager) {
		ModelAndView mv = new ModelAndView();
		List<ProductQnaDTO> ar = productQnaService.getList(qnaPager);
		mv.addObject("lists", ar);
		mv.addObject("pager", qnaPager);
		mv.setViewName("product/qna/qnaList");
		return mv;
	}
	
	
}
