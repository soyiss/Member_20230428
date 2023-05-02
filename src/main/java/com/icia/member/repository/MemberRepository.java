package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

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

    public List<MemberDTO> findAll() {
        return sql.selectList("Member.findAll");
//      return sql.selectOne("Member.findAll");를 쓰면 리턴 타입은 리스트(객체 여러개)를 받는다 하고
//      리턴을 SelectOne로 쓰면 DTO객체 하나만 받아와서 오류가 뜬다
    }
    public MemberDTO findById(Long id) {
        return sql.selectOne("Member.findById", id);
    }
    public void delete(Long id){
        sql.delete("Member.delete", id);
    }



    public void update(MemberDTO memberDTO) {
        sql.update("Member.update",memberDTO);
    }

    public MemberDTO finByMemberEmail(String loginEmail) {
        return sql.selectOne("Member.findByMemberEmail",loginEmail);
    }


}
