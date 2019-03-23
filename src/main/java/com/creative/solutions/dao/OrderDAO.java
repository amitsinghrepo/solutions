package com.creative.solutions.dao;
 
import java.util.List;

import com.creative.solutions.model.CartInfo;
import com.creative.solutions.model.OrderDetailInfo;
import com.creative.solutions.model.OrderInfo;
import com.creative.solutions.model.PaginationResult;
 
public interface OrderDAO {
 
    public void saveOrder(CartInfo cartInfo);
 
    public PaginationResult<OrderInfo> listOrderInfo(int page,
            int maxResult, int maxNavigationPage);
    
    public OrderInfo getOrderInfo(String orderId);
    
    public List<OrderDetailInfo> listOrderDetailInfos(String orderId);
 
}