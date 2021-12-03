## 映射文件描述

- Developer.xml开发商用来处理的数据库的映射文件
- Developer与xml对应的dao接口


##### xml模板
````
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//Mybatis.org/DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">

<mapper namespace="org.mybatis.spring">
    <select id="getCustomerByID" resultType="com.bean.Customer" parameterType="int">
        SELECT * from customer where customerID = #{id}
    </select>
</mapper>
```` 