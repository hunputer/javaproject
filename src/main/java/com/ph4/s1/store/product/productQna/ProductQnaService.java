package com.ph4.s1.store.product.productQna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ph4.s1.store.product.productQnaReply.ProductQnaReplyDAO;
import com.ph4.s1.store.product.productQnaReply.ProductQnaReplyDTO;

@Service
public class ProductQnaService {
	
	@Autowired
	private ProductQnaDAO productQnaDAO;
	
	@Autowired
	private ProductQnaReplyDAO productQnaReplyDAO;
	
	public List<ProductQnaDTO> getList(QnaPager qnaPager){
		qnaPager.makeRow();
		qnaPager.setTotalCount(productQnaDAO.getCount(qnaPager));
		qnaPager.makePage();
		List<ProductQnaDTO> ar = productQnaDAO.getList(qnaPager);
		for(ProductQnaDTO dto : ar) {
			ProductQnaReplyDTO productQnaReplyDTO = productQnaReplyDAO.getOne(dto);
			dto.setProductQnaReplyDTO(productQnaReplyDTO);
		}
		return ar;
	}
}
