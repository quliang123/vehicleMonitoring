package com.vehicle.service;

import com.vehicle.entity.dicData;
import com.vehicle.entity.message;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 123
 * @CreateTime 2018/01/24
 * Created by 123 on 2018/01/24.
 */

public interface messageService {
    int addMessage(message message);

    List<dicData> getMessageType();

    List<message> getMessageByCondition(@Param("message") message message, Integer pageIndex, Integer pageSize);
}
