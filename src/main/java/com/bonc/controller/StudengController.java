/*
 * 文件名：StudengController.java
 * 版权：Copyright by www.bonc.com.cn
 * 描述：
 * 修改人：xiyan
 * 修改时间：2017年7月17日
 */

package com.bonc.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.mapping.Table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.bonc.entity.Student;
import com.bonc.respository.StudentRespository;
import com.bonc.respository.Student_PageRespository;

@Controller
public class StudengController {
   @Autowired 
   private StudentRespository studentRespository;
   @Autowired
   private Student_PageRespository student_PageRespository;
   @ResponseBody
   @GetMapping("/AllStu")
   public JSON getAllStudents() {
       Map<String,Object> map = new HashMap<String,Object>();
       map.put("data",studentRespository.findAll());
       return (JSON)JSON.toJSON(map);
    
   }
   @ResponseBody
   @GetMapping("/AllStu1_3")
   public List<Student> get1_3() {
       
       return studentRespository.findOneToThree();
    
   }
   
   
   @ResponseBody
   @GetMapping("/sanxiang")
   public List sanxiang() {
       
       return studentRespository.three();
    
   }
   
   @ResponseBody
   @GetMapping("/computer")
   public List<Student> computer() {
       
       return studentRespository.jisuanji("计算机系","英语系");
    
   }
   
   @ResponseBody
   @GetMapping("/age18_22")
   public List<Student> age18_22() {
       
      
       return studentRespository.findStudentByBirthBetween(new Date(84,0,1),new Date(90,0,1));
    
   }
   
   @ResponseBody
   @GetMapping("/yuanxi")
   public List yuanxi() {
       
       return studentRespository.yuanxi();
    
   }
   
   @ResponseBody
   @GetMapping("/grade")
   public List grade() {
       
       return studentRespository.Bestgeade();
    
   }
   

   @ResponseBody
   @GetMapping("/namegrade/{name}")
   public List namegrade(@PathVariable("name") String name) {
       
       return studentRespository.namegrade(name);
    
   }
   
   @ResponseBody
   @GetMapping("/ALL")
   public Set all() {
       
       return studentRespository.all();
    
   }
   
   @ResponseBody
   @GetMapping("/avgScore")
   public List avgScore() {
       
       return studentRespository.avgScore();
    
   }
   @ResponseBody
   @GetMapping("/off95")
   public List<Student> off95() {
       
       return studentRespository.off95("计算机");
    
   }
   
   
   @PostMapping("/params")
   @ResponseBody
   public JSON getEntryByParams(@RequestParam("start") Integer pageNo,@RequestParam(value="length") Integer pageSize) {
       Sort sort = new Sort(Direction.ASC, "id");
       Pageable pageable = new PageRequest(pageNo/pageSize , pageSize, sort);
       
       Page<Student> sPage= student_PageRespository.findAll(pageable);
       Map<String,Object> map = new HashMap();
       map.put("recordsTotal",sPage.getTotalElements());
       map.put("recordsFiltered",sPage.getTotalElements());
       map.put("data",sPage.getContent());
       return (JSON)JSON.toJSON(map);
   }
   
}
