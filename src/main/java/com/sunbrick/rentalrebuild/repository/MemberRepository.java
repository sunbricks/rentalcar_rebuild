package com.sunbrick.rentalrebuild.repository;

import com.sunbrick.rentalrebuild.dto.MemberDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class MemberRepository {
    private final SqlSessionTemplate sql;

    public int memberSave(MemberDTO memberDTO) {
        System.out.println("memberDTO : " + memberDTO);
        return sql.insert("Member.memberSave", memberDTO);
    }

    public Map<Object, Object> checkedId(String id) {
        Map<Object, Object> result = sql.selectOne("Member.checkedId", id);
        if (result == null) {
            return new HashMap<>();
        }
        return result;
    }
}
