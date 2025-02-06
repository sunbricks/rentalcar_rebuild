package com.sunbrick.rentalrebuild.service;

import com.sunbrick.rentalrebuild.dto.MemberDTO;
import com.sunbrick.rentalrebuild.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.Period;
import java.time.LocalDate;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;
    public int memberSave(MemberDTO memberDTO) {
        // 아이디가 'admin'인 경우 memberStatus를 'Admin'으로 설정하여 관리자 권한 부여
        if ("admin".equalsIgnoreCase(memberDTO.getMemberId())) {
            memberDTO.setMemberStatus("Admin");
        }
        return memberRepository.memberSave(memberDTO);
    }

    public boolean checkedId(String id) {
        return memberRepository.checkedId(id).isEmpty();
    }
}
