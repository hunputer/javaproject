package com.ph4.s1.store.product.productQna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductQnaDAO {

	@Autowired
	private SqlSession sqlSession;
	private String NAMESPACE = "com.ph4.s1.store.product.productQna.ProductQnaDAO.";
	
	public List<ProductQnaDTO> getList(QnaPager qnaPager){
		return sqlSession.selectList(NAMESPACE+"getList", qnaPager);
	}
	
	public long getCount(QnaPager qnaPager) {
		return sqlSession.selectOne(NAMESPACE+"getCount", qnaPager);
	}
}
