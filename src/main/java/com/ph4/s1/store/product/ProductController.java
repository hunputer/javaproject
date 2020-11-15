package com.ph4.s1.store.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ph4.s1.store.storeFile.StoreFileDTO;
import com.ph4.s1.store.storeFile.StoreFileService;

@Controller
@RequestMapping(value = "/product/**")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private StoreFileService storeFileService;
	
	@GetMapping("goodsSelect")
	public ModelAndView getGoodsSelect(ProductDTO productDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		ProductDTO dto = productService.getOne(productDTO);
		List<StoreFileDTO> files = storeFileService.getFiles(productDTO);
		System.out.println(dto.getProduct_num());
		mv.addObject("dto", dto);
		mv.addObject("files", files);
		mv.setViewName("product/goodsSelect");
		return mv;
	}
	
	@GetMapping("goodsList")
	public ModelAndView getGoodsList()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/goodsList");
		return mv;
	}

}
