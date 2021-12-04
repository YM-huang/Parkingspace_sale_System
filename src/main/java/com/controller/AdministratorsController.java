package com.controller;
import com.bean.Administrators;
import com.service.AdministratorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@Controller
@RequestMapping("/administrators")
public class AdministratorsController {
    @Autowired
    private AdministratorsService administratorsService;
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam(value = "adminName") String adminName,@RequestParam(value = "adminPassword") String adminPassword, HttpServletRequest request, Model model){
        Administrators administrators=administratorsService.selectAdministratorsByName(adminName);
        System.out.println(adminName+adminPassword);
        System.out.println(administrators.getAdministratorsName()+administrators.getAdministratorsPassword());
        if(administrators !=null){
            if(administrators.getAdministratorsPassword().equals(adminPassword)){
                System.out.println("登陆成功");
                HttpSession session=request.getSession();
                session.setAttribute("adminName",adminName);
                model.addAttribute("state","登陆成功");
                return "Da/index";
            }
            else {
                System.out.println("登录失败，用户名或密码错误！");
                return "Da/login";
            }
        }
        else {
            System.out.println("用户不存在");
            return "Da/login";
        }
    }

}
