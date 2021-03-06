package shop.services;

import shop.model.MyException;
import shop.model.Order;

import java.util.List;

public interface OrdersService {
    List<Order> allOrders();
    void save(Order order) throws MyException;
    void delete(Order order) throws MyException;
    void update(Order order) throws MyException;
    Order find(int id) throws MyException;
    String goodsNames(List<String> goods);
    String goodsQuantity(List<Integer> value);
}
