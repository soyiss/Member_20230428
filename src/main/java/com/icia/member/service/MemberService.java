package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) {
        return memberRepository.save(memberDTO);
    }

//    public void login(String memberEmail, String memberPassword) {
//        memberRepository.login(memberEmail,memberPassword);
//    }
    public boolean login(MemberDTO memberDTO){
        MemberDTO dto = memberRepository.login(memberDTO);
        if(dto != null){
            return true;
        }else{
            return false;
        }
    }

    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }
   public void delete(Long id){
        memberRepository.delete(id);
   }
}
