package com.ph4.s1.store.product.review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private String NAMESPACE = "com.ph4.s1.store.product.review.ProductReviewDAO.";
	
	public List<ProductReviewDTO> getList(ReviewPager reviewPager){
		return sqlSession.selectList(NAMESPACE+"getList", reviewPager);
	}
	
	public int setInsert(ProductReviewDTO productReviewDTO) {
		return sqlSession.insert(NAMESPACE+"setInsert", productReviewDTO);
	}
	
	public int setDelete(ProductReviewDTO productReviewDTO) {
		return sqlSession.delete(NAMESPACE+"setDelete", productReviewDTO);
	}
	
	public long getCount(ReviewPager reviewPager) {
		return sqlSession.selectOne(NAMESPACE+"getCount", reviewPager);
	}
	
}
