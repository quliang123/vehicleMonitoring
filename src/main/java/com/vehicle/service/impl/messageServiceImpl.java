package com.vehicle.service.impl;

import com.vehicle.dao.messageMapper;
import com.vehicle.entity.dicData;
import com.vehicle.entity.message;
import com.vehicle.service.messageService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 123
 * @CreateTime 2018/01/26
 * Created by 123 on 2018/01/26.
 */
@Service("messageService")
public class messageServiceImpl implements messageService {

    @Autowired
    messageMapper messageMapper;

    @Override
    public int addMessage(message message) {
        return messageMapper.addMessage(message);
    }

    @Override
    public List<dicData> getMessageType() {
        return messageMapper.getMessageType();
    }

    @Override
    public List<message> getMessageByCondition(@Param("message") message message, Integer pageIndex, Integer pageSize) {
        return messageMapper.getMessageByCondition(message, pageIndex, pageSize);
    }
}
