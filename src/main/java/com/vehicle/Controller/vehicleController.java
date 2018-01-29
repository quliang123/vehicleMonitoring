package com.vehicle.Controller;

import com.vehicle.dao.VehicleMonitor;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author 123
 * @CreateTime 2018/01/23
 * Created by 123 on 2018/01/23.
 * 车辆控制
 */
@RequestMapping("/vehicleControl")
@Controller
public class vehicleController {

    Logger logger = Logger.getLogger(vehicleController.class);

    /**
     * @描述
     * @参数 [Vin]
     * @返回值 java.lang.Object
     * @创建人 123
     * @创建时间 2018/01/23 16:50
     * @修改人和其它信息 123
     */

   /* @Autowired
    JedisCluster jedisCluster;*/

   /* @Autowired  */
 /*   VehicleRealTime vehicleRealTime;*/
    @ResponseBody
    @RequestMapping("/getVehicleByVin")
    public Object realTimeVehicleData(String Vin) {

        String data = null;
        try {
            data = VehicleMonitor.getVehicleRealData("Main0", Vin);

        } catch (Exception e) {
            logger.error(e.getMessage());
            e.printStackTrace();
        } finally {
            if (data == null) {
                return "不好意思,不存在你查询的车辆";
            }
            return data;
        }
    }

}
