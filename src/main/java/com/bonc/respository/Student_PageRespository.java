/*
 * 文件名：Student_Page.java
 * 版权：Copyright by www.bonc.com.cn
 * 描述：
 * 修改人：xiyan
 * 修改时间：2017年7月19日
 */

package com.bonc.respository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.bonc.entity.Student;

public interface Student_PageRespository extends JpaRepository<Student,Integer>  {
    
  public  Page<Student> findAll(Pageable pageable);
}
