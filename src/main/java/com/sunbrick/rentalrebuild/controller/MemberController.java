package com.sunbrick.rentalrebuild.controller;

import com.sunbrick.rentalrebuild.dto.MemberDTO;
import com.sunbrick.rentalrebuild.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/loginPage")
    public String loginPage() {
        return "sub/loginPage";
    } // 로그인 페이지로 이동

    @GetMapping("/memberJoin")
    public String memberJoin() {
        return "sub/memberJoin";
    } // 회원가입 폼으로 이동

    @PostMapping("/memberSave")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        int saveResult = memberService.save(memberDTO);
        if(saveResult > 0){
            return "/loginPage";
            // 가입 성공 했을 때
        } else {
            return "save";
            // 가입 실패 했을 때
        }
    } // 회원 가입
}
