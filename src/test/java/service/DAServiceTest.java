package service;

import com.bean.Administrators;
import com.bean.Developer_administrator;
import com.bean.Order;
import com.bean.ParkingSpace;
import com.service.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @RunWith就是一个运行器
 * SpringJUnit4ClassRunner.class 就是指用SpringJUnit4ClassRunner来运行，让测试运行于spring测试环境
 *@ContextConfiguration Spring整合JUnit4测试时，使用注解引入多个配置文件
 *
 * @author sushuai
 * @date 2019/03/03/22:36
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class DAServiceTest {


    @Autowired
    private AdministratorsService administratorsService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ParkingSpaceService parkingSpaceService;

    @Test
    public void selectAdministratorsByName(){
        System.out.println("service测试开始。。。");
        Administrators administrators =administratorsService.selectAdministratorsByName("lihua");
        System.out.println(administrators.getAdministratorsName()+administrators.getAdministratorsPassword());
    }
    @Test
    public void registerAdministrators(){
        System.out.println("service测试开始。。。");
        if(administratorsService.registerAdministrators("hanyu","123456")){
            System.out.println("插入成功");
        }
        else {
            System.out.println("插入失败");
        }
    }
    //修改管理员余额
    @Test
    public void updateAdministratorsMoney(){
        System.out.println("service测试开始。。。");
        Administrators administrators =administratorsService.selectAdministratorsByName("lihua");
        double moneys=administrators.getMoney()+1000;
        System.out.println(moneys);
        if(administratorsService.updateAdministratorsMoney(moneys,"lihua")){
            System.out.println("修改成功");
        }
    }
    //生成订单
    @Test
    public void insertOrder(){
        System.out.println("service测试开始。。。");
        String parkingSpaceId="004";
        String contractSignatory="001";
        String contractInitiator="001";
        if(orderService.insertOrder(parkingSpaceId,contractSignatory,contractInitiator)){
            System.out.println("插入成功");
        }
    }
    //查询车位价格
    @Test
    public void selectParkingSpaceById(){
        System.out.println("service测试开始。。。");
        ParkingSpace parkingSpace =parkingSpaceService.selectParkingSpaceById("001");
        System.out.println(parkingSpace.getAddress());
    }
    @Test
    public void addDevelopers(){
        System.out.println("service测试开始。。。");
        if(administratorsService.addDevelopers("001","恒大")){
            System.out.println("插入成功");
        }
    }
    @Test
    public void addDeveloper_administrator(){
        System.out.println("service测试开始。。。");
        if(administratorsService.addDeveloper_administrator("001")){
            System.out.println("插入成功");
        }

    }
    @Test
    public void cancelOrder(){
        System.out.println("service测试开始。。。");
        if(administratorsService.cancelOrder("001","lihua")){
            System.out.println("订单取消成功");
        }
        else {
            System.out.println("订单取消失败");
        }
    }
    @Test
    public void updateDevelopersState(){
        System.out.println("service测试开始。。。");
        if(administratorsService.unseal("014")){
            System.out.println("修改成功");
        }
    }




}