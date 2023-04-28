package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public boolean save(MemberDTO memberDTO) {
        try{
            sql.insert("Member.save",memberDTO);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;

        }
    }

//    public MemberDTO login(String memberEmail, String memberPassword) {
//
////        매개변수는 하나만 넘길 수 있어서 이 식은 안됨
//         return sql.selectOne("Member.login",memberEmail,memberPassword);
//    }

    public MemberDTO login(MemberDTO memberDTO) {
        //로그인 조회결과는 하나니깐 selectOne를 해줌
         return sql.selectOne("Member.login",memberDTO);
    }
}
