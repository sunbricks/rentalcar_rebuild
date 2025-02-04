package com.sunbrick.rentalrebuild.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
    private int memberNo;
    private String memberId;
    private String memberPassword;
    private String memberName;
    private String memberBirth;
    private String memberPhone;
    private String memberEmail;
    private int memberAge;
    private String memberStatus;
}
