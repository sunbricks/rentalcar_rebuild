package com.sunbrick.rentalrebuild.service;

import com.sunbrick.rentalrebuild.dto.MemberDTO;
import com.sunbrick.rentalrebuild.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;

    public int save(MemberDTO memberDTO) {
        return memberRepository.save(memberDTO);
    }
}
