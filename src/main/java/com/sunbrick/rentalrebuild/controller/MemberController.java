package com.sunbrick.rentalrebuild.controller;

import com.sunbrick.rentalrebuild.dto.MemberDTO;
import com.sunbrick.rentalrebuild.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

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

    @GetMapping("/idCheck")
    @ResponseBody
    public Map<String, String> checkedId(@RequestParam String id) {
        Map<String, String> response = new HashMap<>();
        // 입력값이 비어 있는지 확인
        if (id == null || id.trim().isEmpty()) {
            response.put("str", "사용할 아이디를 입력해 주세요."); // 경고 메시지
            return response; // 빈 아이디에 대한 응답 반환
        }

        if (id.length() < 4) {
            response.put("str", "아이디는 최소 4자 이상이어야 합니다."); // 4자 미만에 대한 메시지
            return response; // 4자 미만에 대한 응답 반환
        }

        boolean checkedId = memberService.checkedId(id);
        if (checkedId) {
            response.put("str", "사용 가능한 아이디입니다.");
        } else {
            response.put("str", "이미 사용 중인 아이디입니다.");
        }
        return response;
    }

    // 회원 가입 컨트롤러
    @PostMapping("/memberSave")
    public String memberSave(@ModelAttribute MemberDTO memberDTO) {
        System.out.println("로그인 로직0");
        int saveResult = memberService.memberSave(memberDTO);
        System.out.println("로그인 로직1");
        if(saveResult > 0){
            return "sub/loginPage"; // 가입 성공 시 로그인 페이지로 리다이렉트
        } else {
            return "sub/loginPage"; // 가입 실패 했을 때
        }
    }
}
