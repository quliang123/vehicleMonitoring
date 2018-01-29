package com.vehicle.Controller;

import com.vehicle.entity.dicData;
import com.vehicle.entity.message;
import com.vehicle.service.messageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * @author 123
 * @CreateTime 2018/01/27
 * Created by 123 on 2018/01/27.
 */
@RequestMapping("/message")
@Controller
public class messageController {

    @Autowired
    private messageService messageService;

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @ResponseBody
    @RequestMapping("/getMessageByCondition")
    public Object getMessageByCondition(String messageType, String time, String vehicleCode, @RequestParam(defaultValue = "0") Integer pageIndex, @RequestParam(defaultValue = "5") Integer pageSize) throws ParseException {
        String[] date = time.split("-");

        System.out.println(messageType + "===" + time + "====" + vehicleCode + "====" + date[0] + "=====" + date[1]);
        message message = new message();
        message.setMessageType(messageType);
        message.setBeginTime(String.valueOf(sdf.parse(date[0])));
        message.setEndTime(String.valueOf(sdf.parse(date[1])));
        message.setVehicleCode(vehicleCode);

        return messageService.getMessageByCondition(message, pageIndex, pageSize);
    }

    @ResponseBody
    @RequestMapping("/messageType")
    public Object messageType() {
        // List<dicData> list =
        return messageService.getMessageType();
    }


}