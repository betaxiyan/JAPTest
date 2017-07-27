/*
 * 文件名：JApplication.java
 * 版权：Copyright by www.bonc.com.cn
 * 描述：
 * 修改人：xiyan
 * 修改时间：2017年7月17日
 */

package com.bonc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;


@SpringBootApplication
public class JApplicaion extends SpringBootServletInitializer {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        SpringApplication.run(JApplicaion.class,args);

    }
    @Override 
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        // TODO Auto-generated method stub
        return builder.sources(JApplicaion.class);
    }

}
