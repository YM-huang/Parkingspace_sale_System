package service;

import com.bean.Administrators;
import com.bean.Developer_administrator;
import com.service.DeveloperService;
import com.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
public class ServiceTest {


    @Autowired
    private UserService userService;

    @Autowired
    private DeveloperService developerService;


    @Test
    public void loginDeveloper(){
        System.out.println("service测试开始。。。");
        Developer_administrator developer_administrator=developerService.login("zjut","123");
        System.out.println(developer_administrator);
    }


}
