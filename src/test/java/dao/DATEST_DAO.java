package dao;

import com.bean.Administrators;
import com.bean.Order;
import com.bean.ParkingSpace;
import com.dao.AdministratorsMapper;
import com.dao.OrderMapper;
import com.dao.ParkingSpaceMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 记住@Test前往不要忘写
 * @RunWith就是一个运行器
 * SpringJUnit4ClassRunner.class 就是指用SpringJUnit4ClassRunner来运行，让测试运行于spring测试环境
 *@ContextConfiguration Spring整合JUnit4测试时，使用注解引入多个配置文件
 *
 * @author sushuai
 * @date 2019/03/03/22:36
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class DATEST_DAO {

    //private UserMapper userMapper;
    @Autowired
    private AdministratorsMapper administratorsMapper;
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private ParkingSpaceMapper parkingSpaceMapper;

    @Test
    public void selectAdministratorsByName(){
        System.out.println("dao测试开始。。。。");
        Administrators administrators=administratorsMapper.selectAdministratorsByName("lihua");
        System.out.println(administrators.getAdministratorsName()+administrators.getAdministratorsPassword());
    }
    @Test
    public void updateAdministratorsMoney(){
        System.out.println("dao测试开始。。。。");
        Administrators administrators=administratorsMapper.selectAdministratorsByName("lihua");
        double moneys=administrators.getMoney()+1000;
        System.out.println(moneys);
        if(administratorsMapper.updateAdministratorsMoney(moneys,"lihua")){
            System.out.println("修改成功");
        }
    }
    @Test
    public void insertOrder(){
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
        String hehe = dateFormat.format(now);
        System.out.println(hehe);
        System.out.println("dao测试开始。。。。");
        Order order=new Order();
        order.setOrderId("001");
        order.setParkingSpaceId("001");
        order.setContractSignatory("001");
        order.setContractInitiator("001");
        order.setContractContent("001");
        order.setOrderTime(now);
        order.setPaymentMethod("001");
        order.setDeposit(20);
        order.setFinalPrice(50);
        order.setPurchaseMethod("001");
        order.setState(1);
        Date now1 =new Date();
        String hoho =dateFormat.format(now1);
        System.out.println(hoho);
        order.setFinalPaymentTime(now1);
        if(orderMapper.insertOrder(order)){
            System.out.println("插入成功");
        }
    }
    @Test
    public void selectParkingSpaceById(){
        System.out.println("dao测试开始。。。。");
        ParkingSpace parkingSpace =parkingSpaceMapper.selectParkingSpaceById("001");
        System.out.println(parkingSpace.getAddress());
    }
}