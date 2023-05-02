package com.icia.member.Controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AjaxController {
    @GetMapping("/ajax01")
    //@ResponseBody를 붙이면 index라는 텍스트가 ajax01.jsp로 넘어와서 콘솔에 찍힘
    public  @ResponseBody String ajax01(){
        System.out.println("AjaxController.ajax01");
        // 리턴을 인덱스로 줬는데 브라우저에선 인덱스로 안감
        // index.jsp로 리턴을 해서 res로 들어감
        return "index";
    }
//produces = "application/text; charset=utf-8" 한국어 안깨지게..
    @PostMapping(value = "/ajax02", produces = "application/text; charset=utf-8")
    //@ResponseBody를 붙이면 index라는 텍스트가 ajax01.jsp로 넘어와서 콘솔에 찍힘
    public  @ResponseBody String ajax02(){
        System.out.println("AjaxController.ajax02");
        // 리턴을 인덱스로 줬는데 브라우저에선 인덱스로 안감
        // index.jsp로 리턴을 해서 res로 들어감
        return "Hello i am return";
    }

    @GetMapping("/ajax03")
    //@ResponseBody를 붙이면 index라는 텍스트가 ajax01.jsp로 넘어와서 콘솔에 찍힘
    public  @ResponseBody String ajax03(@RequestParam("param1") String param1,
                                        @RequestParam("param2") String param2){
        System.out.println("param1+ = " + param1+", param2 = "+ param2);
       return "good";
    }

    @PostMapping("/ajax04")
    public @ResponseBody String ajax04(@RequestParam("param1") String param1,
                                       @RequestParam("param2") String param2,
                                       @RequestParam("qqq") String qqq){
        System.out.println("param1+ = " + param1+", param2 = "+ param2+",qqq = "+qqq);
        return "good";
    }

    @GetMapping("/ajax05")
    public @ResponseBody MemberDTO ajax05(@ModelAttribute MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        return memberDTO;
    }

    @Autowired
    private MemberService memberService;

    @GetMapping("/ajax06")
    public @ResponseBody List<MemberDTO> ajax06(){
        List<MemberDTO> memberDTOList = memberService.findAll();
        return memberDTOList;
    }
    @PostMapping("/ajax07")
    public @ResponseBody MemberDTO ajax07(@RequestBody MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        return memberDTO;
    }

    @PostMapping("/ajax08")
    public @ResponseBody List<MemberDTO> ajax08(@RequestBody MemberDTO memberDTO){
        List<MemberDTO> memberDTOList = memberService.findAll();
        memberDTOList.add(memberDTO);
        return memberDTOList;
    }

    @PostMapping("/ajax09")
    public ResponseEntity ajax09(@ModelAttribute MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        return new ResponseEntity<>(memberDTO, HttpStatus.NOT_FOUND);
    }


    // REST API , restful api
    @PostMapping("/ajax10")
    public ResponseEntity ajax10(@RequestBody MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        List<MemberDTO> memberDTOList = memberService.findAll();
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("member", memberDTO);
        resultMap.put("memberList",memberDTOList);

        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }
}
