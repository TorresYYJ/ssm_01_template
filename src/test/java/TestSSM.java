import com.alibaba.druid.pool.DruidDataSource;
import com.yyj.config.SpringMybatisConfig;
import com.yyj.entity.User;
import com.yyj.mapper.UserMapper;
import com.yyj.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.SQLException;
import java.util.List;
import java.util.Objects;

/**
 * @Author yyj
 * @Version 1.0
 * @Company 东方标准
 * @Date 2019/12/19 16:52
 * @Description
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringMybatisConfig.class)
public class TestSSM {

    @Autowired
    DruidDataSource druidDataSource;

    @Autowired
    SqlSessionFactoryBean factoryBean;

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserService userService;

    @Test
    public void testDataSource() throws SQLException {
        System.out.println(druidDataSource.getConnection());
    }

    @Test
    public void testFactoryBean() throws Exception {
        System.out.println(Objects.requireNonNull(factoryBean.getObject()).openSession().getConnection());
    }

    @Test
    public void testSelectOne() {
        User user = userMapper.selectByPrimaryKey(1);
        System.out.println(user);
    }

    @Test
    public void testSelectAll() {
        List<User> users = userService.selectAll();
        for (User user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void testTx() {
        User user = new User();
        user.setUsername("大标");
        int i = userService.insertBatch(user);
    }
}
