package dao;

import com.dao.DeveloperMapper;
import com.dao.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
public class DaoTest {

    //private UserMapper userMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private DeveloperMapper developerMapper;


    /**
     * 1、登录时通过用户名来确认用户名是否存在
     * <p>
     * 提示：如果username是中文，则查询为null
     * 解决方法：在jdbc.url后面添加  useUnicode=true&characterEncoding=utf-8  即可解决
     */

//    @Test
//    public void selectUserByUserName() {
//        System.out.println("dao测试开始。。。。");
//        System.out.println(userMapper.selectUserByUserName("123"));
//        System.out.println("dao测试结束。。。。");
//    }
    @Test
    public void selectdeveloper() {
        System.out.println("dao测试开始。。。。");
        System.out.println(developerMapper.login("zjut", "123"));
        System.out.println("dao测试结束。。。。");
    }
}