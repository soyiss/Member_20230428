package com.icia.member.Controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(){
        return "save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO){
        boolean result = memberService.save(memberDTO);
        if(result) {
            return "success";
        }else{
            return "errorPage";
        }
    }

    @GetMapping("/login")
    public String loginForm(){
        return "login";
    }

/*
* 모델은 일회용이기 때문에 모델로 로그인 정보를 담으면 다른 페이지를 들어가면 로그인 했던 정보가 사라진다
* 세션을 사용하면 계속 정보가 따라온다
* 세션(session): 로그인 정보를 주로 담아놓는다 또는 모든 활동영역에서 다쓰는걸 담아놓음
* 서버가 죽기전까진 세션이 살아있고 강제적으로 없애거나 브라우저를 다 닫으면 세션은 사라진다
* */

    //    @RequestParam으로 이메일 비번을 따로 받지않고 @ModelAttribute로 받아도 다른값들은 널이됨
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO , Model model, HttpSession session){
        boolean loginResult = memberService.login(memberDTO);
        if(loginResult){
//            model.addAttribute("loginEmail", memberDTO.getMemberEmail());
            session.setAttribute("loginEmail", memberDTO.getMemberEmail());
            return "memberMain";
        }else{
            return "login";
        }

    }

    @GetMapping("/mypage")
    public String myPage(){
        return"memberMain";
    }


    @GetMapping("/logout")
    public String logout(HttpSession session){
        //(방법1) 세션에 담긴 값 전체 삭제하는 방법
        session.invalidate();
        //(방법2) 특정 파라미터만 삭제하는 방법
//        session.removeAttribute("loginEmail");
        return "redirect:/";

    }

    @GetMapping("/list")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList",memberDTOList);
        return "list";
    }

    @GetMapping("/detail")
    public String findById(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member", memberDTO);
        return "detail";
    }


    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id){
        memberService.delete(id);
//        리다이렉트로 목록 출력을 위한 주소요청을 함
        return "redirect:/list";
    }

    @GetMapping("/update")
    // 세션에 담겨있는 로그인 이메일값을 꺼내야됨
    public String updateForm(HttpSession session, Model model){
        //session.getAttribute는 오브젝트로 리턴을 주고 우리가 받고싶은 타입은 string이기 때문에 형변환필요
        String loginEmail = (String)session.getAttribute("loginEmail");
        MemberDTO memberDTO = memberService.findByMemberEmail(loginEmail);
        model.addAttribute("member", memberDTO);
        return "memberUpdate";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO) {
        memberService.update(memberDTO);
        return "redirect:/detail?id="+memberDTO.getId();
    }
}
