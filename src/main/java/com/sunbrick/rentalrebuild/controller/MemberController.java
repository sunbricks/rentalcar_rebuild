package com.sunbrick.rentalrebuild.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
    @GetMapping("/loginPage")
    public String loginPage() {
        return "sub/loginPage";
    }
}
