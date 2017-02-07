package aula114.springmvc.service;

import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.core.BeanPropertyRowMapper;

import java.util.List;
import java.util.ArrayList;
import java.util.Set;

import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aula114.springmvc.domain.Contact;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

	@Autowired
    	private RedisTemplate<String, String> redisTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        	this.jdbcTemplate = jdbcTemplate;
    	}
	
	private List<String> listId = new ArrayList<String>();

	@Override
	public List<String> listIdEmployee() {
        //  Se obtiene desde Redis
       		String KEY = "Contact"; //Tomado del proyecto springLoadDataRedis
	    	Set<Object> list = redisTemplate.opsForHash().keys(KEY);
	    
		ArrayList<String> listId1 = new ArrayList(list);

	    	listId = listId1;
        	return listId;
	}

	@Transactional(readOnly=true)
	public Contact show(String id) {
        //  Se obtiene desde MySQL
		Contact contact = new Contact();

		String sql = "select name, email, address, telephone from contact where contact_id = ?";
  		
		contact = jdbcTemplate.queryForObject(sql, new Object[]{id}, new EmployeeMapper());

        	return contact;
	}


}
