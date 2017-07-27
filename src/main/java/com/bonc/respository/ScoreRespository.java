/*
 * 文件名：ScoreRespository.java
 * 版权：Copyright by www.bonc.com.cn
 * 描述：
 * 修改人：xiyan
 * 修改时间：2017年7月17日
 */

package com.bonc.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bonc.entity.Score;

public interface ScoreRespository extends JpaRepository<Score, Integer> {

}
