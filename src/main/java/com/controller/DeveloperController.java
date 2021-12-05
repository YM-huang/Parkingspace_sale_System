package com.controller;

import com.bean.Developer_administrator;
import com.service.DeveloperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/developer")
public class DeveloperController {

    @Autowired
    private DeveloperService developerService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request, Model model) {
        Developer_administrator developer_administrator = developerService.login(username,password);
        if (developer_administrator != null) {
                System.out.println("登录成功");
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                model.addAttribute("state","登录成功");
                return "Qiang/addparklist";

        }
         else {
            System.out.println("用户名或密码错误");
            model.addAttribute("failure", "用户名或密码错误！");
            return "loginError";
        }

    }

}
