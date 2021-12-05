package com.controller;

import com.bean.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author sushuai
 * @date 2019/03/04/6:09
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;


    /**
     * 登录的控制层
     *
     * @param username
     * @param password
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request, Model model) {
        User user = userService.userLogin(username,password);
        if (user != null) {
            if (user.getUserPassword().equals(password)) {
                System.out.println("登录成功");
                HttpSession session = request.getSession();
                session.setAttribute("username", username);

                model.addAttribute("state","登录成功");
                return "Miao/loginSuccess";
            } else {
                System.out.println("用户名或密码错误");
                model.addAttribute("failure", "用户名或密码错误！");
                return "Miao/loginError";
            }
        } else {
            System.out.println("用名不存在");
            model.addAttribute("state", "failure");
            model.addAttribute("message", "该用户不存在");
            return "Miao/loginError";
        }
    }



    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@RequestParam("username") String username, @RequestParam("password") String password,HttpServletRequest request, Model model) {
        System.out.println("输入的信息"+username+password);
        User user = new User();
        user.setUserName(username);
        user.setUserPassword(password);

        boolean flag = userService.insertUser(user);
        System.out.println(flag);
        return "registerSuccess";
    }

}
