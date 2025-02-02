package com.sunbrick.rentalrebuild.repository;

import com.sunbrick.rentalrebuild.dto.MemberDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class MemberRepository {
    private final SqlSessionTemplate sql;

    public int save(MemberDTO memberDTO) {
        System.out.println("memberDTO : " + memberDTO);
        return sql.insert("Member.save", memberDTO);
    }
}
