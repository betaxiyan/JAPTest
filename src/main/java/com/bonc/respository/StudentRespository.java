/*
 * 文件名：StudentRespository.java
 * 版权：Copyright by www.bonc.com.cn
 * 描述：
 * 修改人：xiyan
 * 修改时间：2017年7月17日
 */

package com.bonc.respository;

import java.sql.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.mapping.Table;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.bonc.entity.Student;

public interface StudentRespository extends JpaRepository<Student,Integer> {
    
    @Query(value = "select * from student limit 1,3",nativeQuery=true)
    public  List<Student> findOneToThree();
    
    //当属性少的时候会报错
    @Query(value="select id,name,department FROM student ",nativeQuery=true)
    public List three(); 
    
    @Query(value=" SELECT * FROM student WHERE department IN (?1,?2)",nativeQuery=true)
    public List<Student> jisuanji(String v1,String v2);
    
    public List<Student> findStudentByBirthBetween(Date d1,Date d2);
    
    @Query(value=" SELECT department, COUNT(id) FROM student GROUP BY department",nativeQuery=true)
    public List yuanxi();
    
    @Query(value="SELECT c_name,MAX(grade) FROM score GROUP BY c_name",nativeQuery=true)
    public List Bestgeade();
    
    @Query(value="SELECT c_name, grade FROM score WHERE stu_id= (SELECT id FROM student WHERE name= ?1 )",nativeQuery=true)
    public List namegrade(String str);
    
    @Query(value="SELECT student.id,name,sex,birth,department,address,c_name,grade FROM student,score WHERE student.id=score.stu_id",nativeQuery=true)
    public Set all();
    
    @Query(value="SELECT c_name,AVG(grade) FROM Score GROUP BY c_name")
    public List avgScore();
   
    @Query(value="FROM Student s1 WHERE s1.id IN (SELECT stu_id FROM Score sc1 WHERE sc1.c_name=?1 and sc1.grade<95)")
    public List<Student> off95(String s1);
}